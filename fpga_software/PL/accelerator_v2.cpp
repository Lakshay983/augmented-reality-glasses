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
#define FIFO_DEPTH       (5 * PAD_W)      // 5-row line buffer
#define ROWS_PER_TX      1
#define KERNEL_SIZE      5
#define TX_HEADER_BYTES  16
#define TX_PIXEL_BYTES   (ROWS_PER_TX * IMG_W * 3)                  // 1920
#define TX_TOTAL_BYTES   (TX_HEADER_BYTES + TX_PIXEL_BYTES)          // 1936
#define TX_BURSTS        ((TX_TOTAL_BYTES + 15) / 16)                // 121
#define RX_HEADER_BYTES  16
#define RX_PIXEL_BYTES   IMG_W                                       // 640
#define RX_TOTAL_BYTES   (RX_HEADER_BYTES + RX_PIXEL_BYTES)          // 656
#define RX_BURSTS        ((RX_TOTAL_BYTES + 15) / 16)                // 41

typedef ap_axiu<128, 1, 1, 1> AxiBurst;

void unpack(
    hls::stream<AxiBurst>&    burst_in,
    hls::stream<ap_uint<24>>& bgr_stream,
    volatile ap_uint<1>*      in_breath)
{
#pragma HLS INLINE off

    for (int tx = 0; tx < IMG_H / ROWS_PER_TX; tx++)  // 480 iterations
    {
        if (tx == 0) *in_breath = 1;

        AxiBurst hdr_burst = burst_in.read();
        (void)hdr_burst;

        const int TOTAL_BYTES = ROWS_PER_TX * IMG_W * 3;  // 1920

        ap_uint<8> carry_b = 0;
        ap_uint<8> carry_g = 0;
        AxiBurst   cur_burst;

        for (int byte_idx = 0; byte_idx < TOTAL_BYTES; byte_idx++)
        {
#pragma HLS PIPELINE II=1
            if (byte_idx % 16 == 0)
                cur_burst = burst_in.read();

            ap_uint<8> bval = cur_burst.data((byte_idx % 16)*8+7, (byte_idx % 16)*8);
            int        lane = byte_idx % 3;

            if      (lane == 0) { carry_b = bval; }
            else if (lane == 1) { carry_g = bval; }
            else {
                ap_uint<24> bgr = ((ap_uint<24>)bval    << 16) |
                                  ((ap_uint<24>)carry_g <<  8) |
                                   (ap_uint<24>)carry_b;
                bgr_stream.write(bgr);
            }
        }
    }
}

void pad(
    hls::stream<ap_uint<24>>& in,
    hls::stream<ap_uint<24>>& out)
{
#pragma HLS INLINE off

    ap_uint<24> row_buf[4][IMG_W];
#pragma HLS ARRAY_PARTITION variable=row_buf complete dim=1
#pragma HLS BIND_STORAGE variable=row_buf type=RAM_2P impl=BRAM

    for (int r = 0; r < 3; r++) {
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            row_buf[r][c] = in.read();
        }
    }

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

        {
            AxiBurst hdr_burst;
            hdr_burst.data = 0;
            hdr_burst.keep = -1;
            hdr_burst.strb = -1;
            hdr_burst.user = (out_row == 0) ? 1 : 0;
            hdr_burst.last = 0;
            hdr_burst.data(15, 0) = (ap_uint<16>)out_row;
            burst_out.write(hdr_burst);
        }

        for (int b = 0; b < 40; b++) {
#pragma HLS PIPELINE II=1
            AxiBurst out_burst;
            out_burst.data = 0;
            out_burst.keep = -1;
            out_burst.strb = -1;
            out_burst.user = 0;

            int base_pix = b * 16;
            for (int p = 0; p < 16; p++) {
#pragma HLS UNROLL
                out_burst.data(p*8+7, p*8) = row_pixels[PAD + base_pix + p];
            }

            out_burst.last = (b == 39) ? 1 : 0;
            burst_out.write(out_burst);
        }
    }
}

void accelerator_v2(
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

#pragma HLS STREAM variable=bgr_stream    depth=2560
#pragma HLS STREAM variable=padded_stream depth=3864
#pragma HLS STREAM variable=gray_stream   depth=3864

    unpack(in_stream, bgr_stream, in_breath);
    pad(bgr_stream, padded_stream);
    process_pixels(padded_stream, gray_stream, PAD_H, PAD_W);
    repack(gray_stream, out_stream, out_breath);
}
