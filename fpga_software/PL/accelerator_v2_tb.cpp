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
#define TB_FIFO_DEPTH    (5 * IMG_W)

// TX: 2 byte header + 5 rows BGR = 9602 bytes = 601 bursts
#define TX_HEADER_BYTES  2
#define TX_PIXEL_BYTES   (ROWS_PER_TX * IMG_W * 3)
#define TX_TOTAL_BYTES   (TX_HEADER_BYTES + TX_PIXEL_BYTES)
#define TX_BURSTS        ((TX_TOTAL_BYTES + 15) / 16)  // 601

// RX: 2 byte header + 1 row gray = 642 bytes = 41 bursts
#define RX_HEADER_BYTES  2
#define RX_PIXEL_BYTES   IMG_W
#define RX_TOTAL_BYTES   (RX_HEADER_BYTES + RX_PIXEL_BYTES)
#define RX_BURSTS        ((RX_TOTAL_BYTES + 15) / 16)  // 41

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
    fgets(line, sizeof(line), f);  // skip header line

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

// Pack bursts matching the new PS format:
// each transaction = 2 byte header + 5 rows of raw BGR
// packed into 601 bursts of 128 bits
void pack_bursts(unsigned char* bgr_buf, hls::stream<AxiBurst>& s)
{
    int txCount = IMG_H / ROWS_PER_TX;  // 96

    for (int tx = 0; tx < txCount; tx++)
    {
        // Build byte array for this transaction
        unsigned char txBuf[TX_TOTAL_BYTES];

        // 16-bit header = tx index
        txBuf[0] = (tx >> 0) & 0xFF;
        txBuf[1] = (tx >> 8) & 0xFF;

        // 5 rows of BGR
        for (int r = 0; r < ROWS_PER_TX; r++)
        {
            int srcRow = tx * ROWS_PER_TX + r;
            for (int c = 0; c < IMG_W; c++)
            {
                int srcIdx = (srcRow * IMG_W + c) * 3;
                int dstIdx = TX_HEADER_BYTES + r * IMG_W * 3 + c * 3;
                txBuf[dstIdx + 0] = bgr_buf[srcIdx + 0]; // B
                txBuf[dstIdx + 1] = bgr_buf[srcIdx + 1]; // G
                txBuf[dstIdx + 2] = bgr_buf[srcIdx + 2]; // R
            }
        }

        // Pack into 601 bursts of 16 bytes
        for (int b = 0; b < TX_BURSTS; b++)
        {
            AxiBurst burst;
            burst.data = 0;
            burst.keep = -1;
            burst.strb = -1;
            burst.user = (tx == 0 && b == 0) ? 1 : 0;
            burst.last = (tx == txCount - 1 && b == TX_BURSTS - 1) ? 1 : 0;

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

// Unpack output: each row = 2 byte header + 640 gray pixels = 642 bytes = 41 bursts
// PAD_H = 484 rows total output, but we only keep IMG_H = 480 real rows
void unpack_output(hls::stream<AxiBurst>& s, unsigned char* gray_out)
{
    int total = 0;

    for (int row = 0; row < IMG_H; row++)
    {
        // Collect 41 bursts = 642 bytes
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
        }

        // Check header
        uint16_t header = (uint16_t)rxBuf[0] | ((uint16_t)rxBuf[1] << 8);
        if (header != (uint16_t)row)
            printf("  WARNING: row %d header mismatch got %d\n", row, (int)header);

        // Copy 640 gray pixels
        memcpy(gray_out + row * IMG_W, rxBuf + RX_HEADER_BYTES, IMG_W);
        total += IMG_W;
    }

    printf("  Unpacked %d output pixels\n", total);
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
                       i, i / IMG_W, i % IMG_W, got[i], ref[i], abs((int)got[i]-(int)ref[i]));
            mismatches++;
        }
    }
    if (mismatches == 0)
        printf("  %s PASS — all %d pixels within tolerance ±%d\n", label, n, tolerance);
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
    if (n != TOTAL_PIXELS * 3) { printf("ERROR: BGR file: expected %d got %d\n", TOTAL_PIXELS*3, n); return 1; }

    n = parse_hexdump(FILE_GRAY,    ref_gray,    sizeof(ref_gray));
    if (n != TOTAL_PIXELS)     { printf("ERROR: gray file: expected %d got %d\n", TOTAL_PIXELS, n); return 1; }

    n = parse_hexdump(FILE_BLURRED, ref_blurred, sizeof(ref_blurred));
    if (n != TOTAL_PIXELS)     { printf("ERROR: blur file: expected %d got %d\n", TOTAL_PIXELS, n); return 1; }

    int failures = 0;
    failures += test_full(bgr_buf, ref_blurred);

    printf("\n=============================\n");
    printf(failures == 0 ? "ALL TESTS PASSED\n" : "TESTS FAILED\n");
    printf("=============================\n");

    return failures == 0 ? 0 : 1;
}
