#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <cctype>
#include <libgen.h>
#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_cvt_color.hpp"
#include "imgproc/xf_gaussian_filter.hpp"

#define IMG_W            640
#define IMG_H            480
#define PAD              2
#define PAD_W            (IMG_W + 2*PAD)
#define PAD_H            (IMG_H + 2*PAD)
#define ROWS_PER_TX      5
#define KERNEL_SIZE      5
#define TOTAL_PIXELS     (IMG_W * IMG_H)

#define TX_HEADER_BYTES  16
#define TX_PIXEL_BYTES   (ROWS_PER_TX * IMG_W * 3)
#define TX_TOTAL_BYTES   (TX_HEADER_BYTES + TX_PIXEL_BYTES)
#define TX_BURSTS        ((TX_TOTAL_BYTES + 15) / 16)

#define RX_HEADER_BYTES  16
#define RX_PIXEL_BYTES   IMG_W
#define RX_TOTAL_BYTES   (RX_HEADER_BYTES + RX_PIXEL_BYTES)
#define RX_BURSTS        ((RX_TOTAL_BYTES + 15) / 16)

typedef ap_axiu<128, 1, 1, 1> AxiBurst;

static char FILE_BGR    [512];
static char FILE_GRAY   [512];
static char FILE_BLURRED[512];

static void build_paths()
{
    char tmp[512];
    strncpy(tmp, __FILE__, sizeof(tmp));
    char* dir = dirname(tmp);
    snprintf(FILE_BGR,     sizeof(FILE_BGR),     "%s/tb_data/message4.txt", dir);
    snprintf(FILE_GRAY,    sizeof(FILE_GRAY),    "%s/tb_data/message5.txt", dir);
    snprintf(FILE_BLURRED, sizeof(FILE_BLURRED), "%s/tb_data/message6.txt", dir);
    printf("  BGR file:     %s\n", FILE_BGR);
    printf("  Gray file:    %s\n", FILE_GRAY);
    printf("  Blurred file: %s\n", FILE_BLURRED);
}

void accelerator_v2(
    hls::stream<AxiBurst>&  in_stream,
    hls::stream<AxiBurst>&  out_stream,
    volatile ap_uint<1>*    in_breath,
    volatile ap_uint<1>*    out_breath);

int parse_hexdump(const char* filename, unsigned char* buf, int max_bytes)
{
    FILE* f = fopen(filename, "r");
    if (!f) {
        printf("ERROR: could not open %s\n", filename);
        return -1;
    }

    char line[256];
    fgets(line, sizeof(line), f);

    int total = 0;
    while (fgets(line, sizeof(line), f) && total < max_bytes) {
        char* p = line;
        if (strlen(p) < 10) continue;
        p += 10;

        for (int i = 0; i < 16 && total < max_bytes; i++) {
            while (*p == ' ') p++;
            if (!*p || *p == '\n' || *p == '\r' || !isxdigit((unsigned char)*p)) break;
            unsigned int val;
            if (sscanf(p, "%02x", &val) == 1) {
                buf[total++] = (unsigned char)val;
                p += 2;
            } else break;
        }
    }

    fclose(f);
    printf("  Parsed %d bytes from %s\n", total, filename);
    return total;
}

// Each 5-row block is a separate MM2S transaction with its own TLAST,
// matching the PS DMA behavior.
void pack_bursts(unsigned char* bgr_buf, hls::stream<AxiBurst>& s)
{
    int txCount = IMG_H / ROWS_PER_TX;  // 96

    for (int tx = 0; tx < txCount; tx++)
    {
        unsigned char txBuf[TX_TOTAL_BYTES];
        memset(txBuf, 0, sizeof(txBuf));

        // 16-byte header: tx index in bytes [1:0]
        txBuf[0] = (tx >> 0) & 0xFF;
        txBuf[1] = (tx >> 8) & 0xFF;

        // 5 rows of BGR pixels starting at byte 16
        for (int r = 0; r < ROWS_PER_TX; r++)
        {
            int srcRow = tx * ROWS_PER_TX + r;
            for (int c = 0; c < IMG_W; c++)
            {
                int srcIdx = (srcRow * IMG_W + c) * 3;
                int dstIdx = TX_HEADER_BYTES + r * IMG_W * 3 + c * 3;
                txBuf[dstIdx + 0] = bgr_buf[srcIdx + 0];
                txBuf[dstIdx + 1] = bgr_buf[srcIdx + 1];
                txBuf[dstIdx + 2] = bgr_buf[srcIdx + 2];
            }
        }

        // pack into TX_BURSTS bursts — TLAST on last burst of each block
        for (int b = 0; b < TX_BURSTS; b++)
        {
            AxiBurst burst;
            burst.data = 0;
            burst.keep = -1;
            burst.strb = -1;
            burst.user = (tx == 0 && b == 0) ? 1 : 0;
            burst.last = (b == TX_BURSTS - 1) ? 1 : 0;

            for (int i = 0; i < 16; i++)
            {
                int byteIdx = b * 16 + i;
                if (byteIdx < TX_TOTAL_BYTES)
                    burst.data(i*8+7, i*8) = txBuf[byteIdx];
            }

            s.write(burst);
        }
    }

    printf("  Packed %d transactions (%d bursts each, %d total)\n",
           txCount, TX_BURSTS, txCount * TX_BURSTS);
}

// Each row is a separate S2MM transaction with its own TLAST,
// matching receive_dma_frame arming S2MM once per row.
void unpack_output(hls::stream<AxiBurst>& s, unsigned char* gray_out)
{
    int total = 0;
    int tlast_warnings = 0;
    int header_warnings = 0;

    for (int row = 0; row < IMG_H; row++)
    {
        unsigned char rxBuf[RX_TOTAL_BYTES];
        memset(rxBuf, 0, sizeof(rxBuf));

        for (int b = 0; b < RX_BURSTS; b++)
        {
            AxiBurst burst = s.read();

            for (int i = 0; i < 16; i++)
            {
                int byteIdx = b * 16 + i;
                if (byteIdx < RX_TOTAL_BYTES)
                    rxBuf[byteIdx] = (unsigned char)burst.data(i*8+7, i*8);
            }

            // TLAST must be set on last burst of every row
            if (b == RX_BURSTS - 1)
            {
                if (!burst.last)
                {
                    printf("  WARNING: row %d last burst missing TLAST\n", row);
                    tlast_warnings++;
                }
            }
            else
            {
                if (burst.last)
                    printf("  WARNING: row %d burst %d has unexpected TLAST\n", row, b);
            }
        }

        // check header — row index in bytes [1:0]
        uint16_t header = (uint16_t)rxBuf[0] | ((uint16_t)rxBuf[1] << 8);
        if (header != (uint16_t)row)
        {
            printf("  WARNING: row %d header mismatch got %d\n", row, (int)header);
            header_warnings++;
        }

        memcpy(gray_out + row * IMG_W, rxBuf + RX_HEADER_BYTES, IMG_W);
        total += IMG_W;
    }

    printf("  Unpacked %d output pixels\n", total);
    if (tlast_warnings)  printf("  TLAST warnings:  %d\n", tlast_warnings);
    if (header_warnings) printf("  Header warnings: %d\n", header_warnings);
}

int compare(unsigned char* got, unsigned char* ref, int n, int tolerance, const char* label)
{
    int mismatches = 0;
    for (int i = 0; i < n; i++) {
        if (abs((int)got[i] - (int)ref[i]) > tolerance) {
            if (mismatches == 0)
                printf("  First mismatch at pixel %d (row %d col %d): got 0x%02x  ref 0x%02x\n",
                       i, i / IMG_W, i % IMG_W, got[i], ref[i]);
            if (mismatches < 20)
                printf("  Mismatch at pixel %d (row %d col %d): got 0x%02x  ref 0x%02x  diff=%d\n",
                       i, i / IMG_W, i % IMG_W, got[i], ref[i],
                       abs((int)got[i] - (int)ref[i]));
            mismatches++;
        }
    }
    if (mismatches == 0)
        printf("  %s PASS — all %d pixels within tolerance +/-%d\n", label, n, tolerance);
    else
        printf("  %s FAIL — %d / %d pixels out of tolerance\n", label, mismatches, n);
    return mismatches;
}

int test_full(unsigned char* bgr_buf, unsigned char* ref_blurred)
{
    printf("\n[Test] Full accelerator_v2 end-to-end (5-row streaming)\n");

    static hls::stream<AxiBurst> in_stream ("tb_in");
    static hls::stream<AxiBurst> out_stream("tb_out");
    volatile ap_uint<1> in_breath  = 0;
    volatile ap_uint<1> out_breath = 0;

    pack_bursts(bgr_buf, in_stream);

    accelerator_v2(in_stream, out_stream, &in_breath, &out_breath);

    printf("  in_breath=%d  out_breath=%d\n",
           (int)(ap_uint<1>)in_breath, (int)(ap_uint<1>)out_breath);

    static unsigned char got[TOTAL_PIXELS];
    unpack_output(out_stream, got);

    return compare(got, ref_blurred, TOTAL_PIXELS, 2, "accelerator_v2 end-to-end");
}

int main()
{
    printf("Building file paths...\n");
    build_paths();

    printf("\nLoading reference files...\n");
    static unsigned char bgr_buf    [TOTAL_PIXELS * 3];
    static unsigned char ref_gray   [TOTAL_PIXELS];
    static unsigned char ref_blurred[TOTAL_PIXELS];

    int n;
    n = parse_hexdump(FILE_BGR,     bgr_buf,     sizeof(bgr_buf));
    if (n != TOTAL_PIXELS * 3) {
        printf("ERROR: BGR file: expected %d got %d\n", TOTAL_PIXELS * 3, n);
        return 1;
    }

    n = parse_hexdump(FILE_GRAY,    ref_gray,    sizeof(ref_gray));
    if (n != TOTAL_PIXELS) {
        printf("ERROR: gray file: expected %d got %d\n", TOTAL_PIXELS, n);
        return 1;
    }

    n = parse_hexdump(FILE_BLURRED, ref_blurred, sizeof(ref_blurred));
    if (n != TOTAL_PIXELS) {
        printf("ERROR: blur file: expected %d got %d\n", TOTAL_PIXELS, n);
        return 1;
    }

    int failures = 0;
    failures += test_full(bgr_buf, ref_blurred);

    printf("\n=============================\n");
    printf(failures == 0 ? "ALL TESTS PASSED\n" : "TESTS FAILED\n");
    printf("=============================\n");

    return failures == 0 ? 0 : 1;
}
