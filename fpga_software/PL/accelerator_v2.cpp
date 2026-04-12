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
#define PAD_W            (IMG_W + 2*PAD)  // 644
#define PAD_H            (IMG_H + 2*PAD)  // 484
#define FIFO_DEPTH       (5 * PAD_W)      // 5-row line buffer depth for xf::cv::Mat FIFOs
#define ROWS_PER_TX      5
#define KERNEL_SIZE      5
#define TX_HEADER_BYTES  2
#define TX_PIXEL_BYTES   (ROWS_PER_TX * IMG_W * 3)          // 9600
#define TX_TOTAL_BYTES   (TX_HEADER_BYTES + TX_PIXEL_BYTES)  // 9602
#define TX_BURSTS        ((TX_TOTAL_BYTES + 15) / 16)        // 601

typedef ap_axiu<128, 1, 1, 1> AxiBurst;

// ─────────────────────────────────────────────────────────────────────────────
// unpack
//   Reads TX_BURSTS×128-bit bursts per 5-row transaction.
//   Strips the 2-byte header and emits BGR pixels into bgr_stream.
//   Uses a 3-byte carry window — no large flat partitioned array.
// ─────────────────────────────────────────────────────────────────────────────
void unpack(
    hls::stream<AxiBurst>&    burst_in,
    hls::stream<ap_uint<24>>& bgr_stream,
    volatile ap_uint<1>*      in_breath)
{
#pragma HLS INLINE off

    for (int tx = 0; tx < IMG_H / ROWS_PER_TX; tx++)
    {
        if (tx == 0) *in_breath = 1;

        ap_uint<8> carry[3];
#pragma HLS ARRAY_PARTITION variable=carry complete

        const int TOTAL_PIX = ROWS_PER_TX * IMG_W;
        int pixel_emit = 0;

        for (int b = 0; b < TX_BURSTS && pixel_emit < TOTAL_PIX; b++)
        {
#pragma HLS PIPELINE II=1
            AxiBurst burst = burst_in.read();

            for (int i = 0; i < 16; i++)
            {
#pragma HLS UNROLL
                int global_byte = b * 16 + i;
                if (global_byte >= TX_TOTAL_BYTES) break;
                if (global_byte < TX_HEADER_BYTES) continue;

                int payload_byte  = global_byte - TX_HEADER_BYTES;
                int byte_in_pixel = payload_byte % 3;

                ap_uint<8> bval = burst.data(i*8+7, i*8);

                if      (byte_in_pixel == 0) carry[0] = bval;
                else if (byte_in_pixel == 1) carry[1] = bval;
                else {
                    ap_uint<24> bgr = ((ap_uint<24>)bval     << 16) |
                                      ((ap_uint<24>)carry[1] <<  8) |
                                       (ap_uint<24>)carry[0];
                    bgr_stream.write(bgr);
                    pixel_emit++;
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// pad  —  REFLECT_101, 4-slot row buffer
// ─────────────────────────────────────────────────────────────────────────────
void pad(
    hls::stream<ap_uint<24>>& in,
    hls::stream<ap_uint<24>>& out)
{
#pragma HLS INLINE off

    ap_uint<24> row_buf[4][IMG_W];
#pragma HLS ARRAY_PARTITION variable=row_buf complete dim=1
#pragma HLS BIND_STORAGE variable=row_buf type=RAM_2P impl=BRAM

    // buffer top 3 rows
    for (int r = 0; r < 3; r++) {
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            row_buf[r][c] = in.read();
        }
    }

    // REFLECT_101 top pad: emit row2 then row1
    for (int r = 2; r >= 1; r--) {
        out.write(row_buf[r][2]);
        out.write(row_buf[r][1]);
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            out.write(row_buf[r][c]);
        }
        out.write(row_buf[r][IMG_W-2]);
        out.write(row_buf[r][IMG_W-3]);
    }

    // main body
    for (int r = 0; r < IMG_H; r++) {
        int slot;
        if (r < 3) {
            slot = r;
        } else {
            slot = r % 2 + 2;
            for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
                row_buf[slot][c] = in.read();
            }
        }
        out.write(row_buf[slot][2]);
        out.write(row_buf[slot][1]);
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            out.write(row_buf[slot][c]);
        }
        out.write(row_buf[slot][IMG_W-2]);
        out.write(row_buf[slot][IMG_W-3]);
    }

    // REFLECT_101 bottom pad: emit row H-2 then row H-3
    for (int r = IMG_H-2; r >= IMG_H-3; r--) {
        int slot = (r < 3) ? r : (r % 2 + 2);
        out.write(row_buf[slot][2]);
        out.write(row_buf[slot][1]);
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            out.write(row_buf[slot][c]);
        }
        out.write(row_buf[slot][IMG_W-2]);
        out.write(row_buf[slot][IMG_W-3]);
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// stream_to_mat / mat_to_stream
// ─────────────────────────────────────────────────────────────────────────────
void stream_to_mat(
    hls::stream<ap_uint<24>>& in,
    xf::cv::Mat<XF_8UC3, PAD_H, PAD_W, XF_NPPC1, FIFO_DEPTH>& out,
    int rows, int cols)
{
#pragma HLS INLINE off
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
#pragma HLS PIPELINE II=1
            ap_uint<24> px = in.read();
            out.write(r * cols + c, (ap_uint<32>)px);
        }
    }
}

void mat_to_stream(
    xf::cv::Mat<XF_8UC1, PAD_H, PAD_W, XF_NPPC1, FIFO_DEPTH>& in,
    hls::stream<ap_uint<8>>& out,
    int rows, int cols)
{
#pragma HLS INLINE off
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
#pragma HLS PIPELINE II=1
            ap_uint<32> px = in.read(r * cols + c);
            out.write(px(7, 0));
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// process_pixels
//   Uses xf::cv library calls unchanged from v2.
//   FIFO_DEPTH = 5*PAD_W makes xf::cv::Mat behave as a streaming FIFO
//   (not a frame buffer) so the DATAFLOW pipeline is truly streaming.
//   GaussianBlur maintains its own internal 5-row line buffer.
// ─────────────────────────────────────────────────────────────────────────────
void process_pixels(
    hls::stream<ap_uint<24>>& bgr_stream,
    hls::stream<ap_uint<8>>&  gray_stream_out,
    int rows, int cols)
{
#pragma HLS DATAFLOW

    xf::cv::Mat<XF_8UC3, PAD_H, PAD_W, XF_NPPC1, FIFO_DEPTH> bgr_mat(rows, cols);
    xf::cv::Mat<XF_8UC1, PAD_H, PAD_W, XF_NPPC1, FIFO_DEPTH> gray_mat(rows, cols);
    xf::cv::Mat<XF_8UC1, PAD_H, PAD_W, XF_NPPC1, FIFO_DEPTH> blurred_mat(rows, cols);

    stream_to_mat(bgr_stream, bgr_mat, rows, cols);

    xf::cv::bgr2gray<XF_8UC3, XF_8UC1, PAD_H, PAD_W, XF_NPPC1>(bgr_mat, gray_mat);

#pragma HLS DEPENDENCE variable=gray_mat inter false
#pragma HLS DEPENDENCE variable=blurred_mat inter false

    xf::cv::GaussianBlur<KERNEL_SIZE, XF_BORDER_REPLICATE, XF_8UC1, PAD_H, PAD_W, XF_NPPC1>(
        gray_mat, blurred_mat, 0.0f);

    mat_to_stream(blurred_mat, gray_stream_out, rows, cols);
}

// ─────────────────────────────────────────────────────────────────────────────
// repack
// ─────────────────────────────────────────────────────────────────────────────
void repack(
    hls::stream<ap_uint<8>>& gray_stream,
    hls::stream<AxiBurst>&   burst_out,
    volatile ap_uint<1>*     out_breath)
{
#pragma HLS INLINE off
    *out_breath = 1;

    for (int r = 0; r < PAD_H; r++)
    {
        ap_uint<8> row_pixels[PAD_W];
        for (int c = 0; c < PAD_W; c++) {
#pragma HLS PIPELINE II=1
            row_pixels[c] = gray_stream.read();
        }

        if (r < PAD || r >= PAD_H - PAD) continue;

        int out_row = r - PAD;

        // first burst: 16-bit row header + 14 pixels
        {
            AxiBurst out_burst;
            out_burst.data = 0;
            out_burst.keep = -1;
            out_burst.strb = -1;
            out_burst.user = (out_row == 0) ? 1 : 0;
            out_burst.last = 0;

            out_burst.data(15, 0) = (ap_uint<16>)out_row;
            for (int p = 0; p < 14; p++) {
#pragma HLS UNROLL
                out_burst.data(16 + p*8 + 7, 16 + p*8) = row_pixels[PAD + p];
            }
            burst_out.write(out_burst);
        }

        // 40 more bursts: 39×16 + 1×2 = 626 pixels covering cols 14..639
        for (int b = 0; b < 40; b++) {
#pragma HLS PIPELINE II=1
            AxiBurst out_burst;
            out_burst.data = 0;
            out_burst.keep = -1;
            out_burst.strb = -1;
            out_burst.user = 0;

            int base_pix = 14 + b * 16;
            int n_pix    = (b < 39) ? 16 : 2;

            for (int p = 0; p < 16; p++) {
#pragma HLS UNROLL
                if (p < n_pix)
                    out_burst.data(p*8+7, p*8) = row_pixels[PAD + base_pix + p];
            }

            out_burst.last = (b == 39 && out_row == IMG_H-1) ? 1 : 0;
            burst_out.write(out_burst);
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// top-level
// ─────────────────────────────────────────────────────────────────────────────
void accelerator_v3(
    hls::stream<ap_axiu<128,1,1,1>>& in_stream,
    hls::stream<ap_axiu<128,1,1,1>>& out_stream,
    volatile ap_uint<1>* in_breath,
    volatile ap_uint<1>* out_breath)
{
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE ap_none port=in_breath
#pragma HLS INTERFACE ap_none port=out_breath
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS DATAFLOW

    hls::stream<ap_uint<24>> bgr_stream("bgr_stream");
    hls::stream<ap_uint<24>> padded_stream("padded_stream");
    hls::stream<ap_uint<8>>  gray_stream("gray_stream");

#pragma HLS STREAM variable=bgr_stream    depth=1288
#pragma HLS STREAM variable=padded_stream depth=1932
#pragma HLS STREAM variable=gray_stream   depth=1932

    unpack(in_stream, bgr_stream, in_breath);
    pad(bgr_stream, padded_stream);
    process_pixels(padded_stream, gray_stream, PAD_H, PAD_W);
    repack(gray_stream, out_stream, out_breath);
}
