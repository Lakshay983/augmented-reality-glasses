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
#define TOTAL_PIXELS     (IMG_W * IMG_H)
#define FIFO_DEPTH       (5 * IMG_W)
#define FULL_BURSTS_OUT  42
#define PARTIAL_PIX_OUT  10
#define TOTAL_BURSTS_OUT 43
#define INPUT_BURSTS_ROW 128

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
        p += 10;  // skip 8-char address + 2 spaces

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


void pack_bursts(unsigned char* bgr_buf, hls::stream<AxiBurst>& s)
{
    for (int row = 0; row < IMG_H; row++) {
        for (int b = 0; b < INPUT_BURSTS_ROW; b++) {
            AxiBurst burst;
            burst.data = 0;
            burst.keep = -1;
            burst.strb = -1;
            burst.data(7, 0) = (ap_uint<8>)b;  // header = burst index 0..127

            int base_pix = row * IMG_W + b * 5;
            for (int p = 0; p < 5; p++) {
                int idx = (base_pix + p) * 3;
                // Memory order: B at idx+0, G at idx+1, R at idx+2
                ap_uint<24> bgr = ((ap_uint<24>)bgr_buf[idx + 2] << 16) |  // R -> [23:16]
                                  ((ap_uint<24>)bgr_buf[idx + 1] <<  8) |  // G -> [15:8]
                                  ((ap_uint<24>)bgr_buf[idx + 0]);          // B -> [7:0]
                int bit_lo = 8 + p * 24;
                burst.data(bit_lo + 23, bit_lo) = bgr;
            }

            burst.user = (row == 0 && b == 0) ? 1 : 0;
            burst.last = (row == IMG_H - 1 && b == INPUT_BURSTS_ROW - 1) ? 1 : 0;
            s.write(burst);
        }
    }
    printf("  Packed %d input bursts\n", IMG_H * INPUT_BURSTS_ROW);
}


void unpack_output(hls::stream<AxiBurst>& s, unsigned char* gray_out)
{
    int total = 0;
    for (int row = 0; row < IMG_H; row++) {
        for (int ob = 0; ob < TOTAL_BURSTS_OUT; ob++) {
            AxiBurst burst = s.read();
            int n_pix = (ob < FULL_BURSTS_OUT) ? 15 : PARTIAL_PIX_OUT;
            for (int p = 0; p < n_pix; p++) {
                int bit_hi = 127 - p * 8;
                gray_out[total] = (unsigned char)burst.data(bit_hi, bit_hi - 7);
                if (total < 10)
                    printf("  debug out[%d] = 0x%02x\n", total, gray_out[total]);
                total++;
            }
        }
    }
    printf("  Unpacked %d output pixels\n", total);
}

int compare(unsigned char* got, unsigned char* ref, int n, int tolerance, const char* label)
{
    int mismatches = 0;
    for (int i = 0; i < n; i++) {
        if (abs((int)got[i] - (int)ref[i]) > tolerance) {
            if (mismatches == 0) {
                printf("  First mismatch at pixel %d (row %d col %d): got 0x%02x  ref 0x%02x\n",
                       i, i / IMG_W, i % IMG_W, got[i], ref[i]);
            }
            mismatches++;
        }
    }
    if (mismatches == 0)
        printf("  %s PASS — all %d pixels within tolerance ±%d\n", label, n, tolerance);
    else
        printf("  %s FAIL — %d / %d pixels out of tolerance\n", label, mismatches, n);
    return mismatches;
}



int test_cvtcolor(unsigned char* bgr_buf, unsigned char* ref_gray)
{
    printf("\n[Checkpoint 1] cvtColor BGR->Gray\n");

    static xf::cv::Mat<XF_8UC3, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> bgr_mat(IMG_H, IMG_W);
    static xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> gray_mat(IMG_H, IMG_W);

    for (int i = 0; i < TOTAL_PIXELS; i++) {
        // Memory: B at i*3+0, G at i*3+1, R at i*3+2
    	ap_uint<32> px = ((ap_uint<32>)bgr_buf[i*3+2] << 16) |  // R -> [23:16]
    	                 ((ap_uint<32>)bgr_buf[i*3+1] <<  8) |  // G -> [15:8]
    	                 ((ap_uint<32>)bgr_buf[i*3+0]);          // B -> [7:0]
    	bgr_mat.write(i, px);
    }

    xf::cv::bgr2gray<XF_8UC3, XF_8UC1, IMG_H, IMG_W, XF_NPPC1>(bgr_mat, gray_mat);

    static unsigned char got[TOTAL_PIXELS];
    for (int i = 0; i < TOTAL_PIXELS; i++) {
        ap_uint<32> px = gray_mat.read(i);
        got[i] = (unsigned char)px(7, 0);
    }

    return compare(got, ref_gray, TOTAL_PIXELS, 1, "cvtColor BGR->Gray");
}



int test_gaussian(unsigned char* bgr_buf, unsigned char* ref_blurred)
{
    printf("\n[Checkpoint 2] cvtColor BGR->Gray + GaussianBlur\n");

    static xf::cv::Mat<XF_8UC3, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> bgr_mat(IMG_H, IMG_W);
    static xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> gray_mat(IMG_H, IMG_W);
    static xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> blurred_mat(IMG_H, IMG_W);

    for (int i = 0; i < TOTAL_PIXELS; i++) {
    	ap_uint<32> px = ((ap_uint<32>)bgr_buf[i*3+2] << 16) |  // R -> [23:16]
    	    	         ((ap_uint<32>)bgr_buf[i*3+1] <<  8) |  // G -> [15:8]
    	    	         ((ap_uint<32>)bgr_buf[i*3+0]);          // B -> [7:0]
        bgr_mat.write(i, px);
    }

    xf::cv::bgr2gray<XF_8UC3, XF_8UC1, IMG_H, IMG_W, XF_NPPC1>(bgr_mat, gray_mat);

    xf::cv::GaussianBlur<5, XF_BORDER_REFLECT_101, XF_8UC1, IMG_H, IMG_W, XF_NPPC1>(
        gray_mat, blurred_mat, 0.0f);

    static unsigned char got[TOTAL_PIXELS];
    for (int i = 0; i < TOTAL_PIXELS; i++) {
        ap_uint<32> px = blurred_mat.read(i);
        got[i] = (unsigned char)px(7, 0);
    }

    return compare(got, ref_blurred, TOTAL_PIXELS, 1, "cvtColor BGR->Gray + GaussianBlur");
}




int test_full(unsigned char* bgr_buf, unsigned char* ref_blurred)
{
    printf("\n[Checkpoint 3] Full accelerator_v2 end-to-end\n");

    static hls::stream<AxiBurst> in_stream ("tb_in");
    static hls::stream<AxiBurst> out_stream("tb_out");
    volatile ap_uint<1> in_breath  = 0;
    volatile ap_uint<1> out_breath = 0;

    pack_bursts(bgr_buf, in_stream);

    accelerator_v2(in_stream, out_stream, &in_breath, &out_breath);

    printf("  in_breath=%d  out_breath=%d\n", (int)(ap_uint<1>)in_breath, (int)(ap_uint<1>)out_breath);

    static unsigned char got[TOTAL_PIXELS];
    unpack_output(out_stream, got);

    return compare(got, ref_blurred, TOTAL_PIXELS, 1, "accelerator_v2 end-to-end");
}


int main()
{
    printf("Building file paths...\n");
    build_paths();

    printf("\nLoading reference files...\n");
    static unsigned char bgr_buf    [TOTAL_PIXELS * 3];  // 921600 bytes BGR
    static unsigned char ref_gray   [TOTAL_PIXELS];      // 307200 bytes grayscale
    static unsigned char ref_blurred[TOTAL_PIXELS];      // 307200 bytes blurred

    int n;
    n = parse_hexdump(FILE_BGR,     bgr_buf,     sizeof(bgr_buf));
    if (n != TOTAL_PIXELS * 3) { printf("ERROR: BGR file: expected %d bytes got %d\n",   TOTAL_PIXELS*3, n); return 1; }

    n = parse_hexdump(FILE_GRAY,    ref_gray,    sizeof(ref_gray));
    if (n != TOTAL_PIXELS)     { printf("ERROR: gray file: expected %d bytes got %d\n",  TOTAL_PIXELS,   n); return 1; }

    n = parse_hexdump(FILE_BLURRED, ref_blurred, sizeof(ref_blurred));
    if (n != TOTAL_PIXELS)     { printf("ERROR: blur file: expected %d bytes got %d\n",  TOTAL_PIXELS,   n); return 1; }

    int failures = 0;
    failures += test_cvtcolor(bgr_buf, ref_gray);
    failures += test_gaussian(bgr_buf, ref_blurred);
    failures += test_full    (bgr_buf, ref_blurred);

    printf("\n=============================\n");
    printf(failures == 0 ? "ALL TESTS PASSED\n" : "TESTS FAILED\n");
    printf("=============================\n");

    return failures == 0 ? 0 : 1;
}










