#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_cvt_color.hpp"
#include "imgproc/xf_gaussian_filter.hpp"

#define IMG_W            640
#define IMG_H            480
#define FIFO_DEPTH       (3 * IMG_W)
#define FULL_BURSTS_OUT  42
#define PARTIAL_PIX_OUT  10
#define TOTAL_BURSTS_OUT 43
#define INPUT_BURSTS_ROW 128
#define KERNEL_SIZE 3

typedef ap_axiu<128, 1, 1, 1> AxiBurst;

void stream_to_mat(
    hls::stream<ap_uint<24>>& in,
    xf::cv::Mat<XF_8UC3, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH>& out,
    int rows, int cols)
{
#pragma HLS PIPELINE II=1
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
    xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH>& in,
    hls::stream<ap_uint<8>>& out,
    int rows, int cols)
{
#pragma HLS PIPELINE II=1
#pragma HLS INLINE off
    for (int r = 0; r < rows; r++) {
        for (int c = 0; c < cols; c++) {
#pragma HLS PIPELINE II=1
            ap_uint<32> px = in.read(r * cols + c);
            out.write(px(7, 0));
        }
    }
}



void unpack(
    hls::stream<AxiBurst>&    burst_in,
    hls::stream<ap_uint<24>>& bgr_stream,
    hls::stream<ap_uint<8>>&  hdr_stream,
    bool&                     frame_start_out)
{
#pragma HLS PIPELINE II=1
#pragma HLS INLINE off

    static bool frame_started = false;

    if (burst_in.empty()) return;

    AxiBurst burst = burst_in.read();

    if (burst.user && !frame_started) {
        frame_start_out = true;
        frame_started   = true;
    }
    if (burst.last) frame_started = false;

    hdr_stream.write(burst.data(7, 0));

    bgr_stream.write(burst.data(31,  8));    // pix0
    bgr_stream.write(burst.data(55,  32));   // pix1
    bgr_stream.write(burst.data(79,  56));   // pix2
    bgr_stream.write(burst.data(103, 80));   // pix3
    bgr_stream.write(burst.data(127, 104));  // pix4
}


void process_pixels(
    hls::stream<ap_uint<24>>& bgr_stream,
    hls::stream<ap_uint<8>>&  gray_stream_out,
    int rows, int cols)
{
#pragma HLS DATAFLOW

    xf::cv::Mat<XF_8UC3, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> bgr_mat(rows, cols);
    xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> gray_mat(rows, cols);
    xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1, FIFO_DEPTH> blurred_mat(rows, cols);

    stream_to_mat(bgr_stream, bgr_mat, rows, cols);

    xf::cv::cvtColor<XF_BGR2GRAY, XF_8UC3, XF_8UC1, IMG_H, IMG_W, XF_NPPC1>(
        bgr_mat, gray_mat);

    xf::cv::GaussianBlur<KERNAL_SIZE, XF_BORDER_CONSTANT, XF_8UC1, IMG_H, IMG_W, XF_NPPC1>(
        gray_mat, blurred_mat, 1.0f);

    mat_to_stream(blurred_mat, gray_stream_out, rows, cols);
}

void repack(
    hls::stream<ap_uint<8>>& gray_stream,
    hls::stream<ap_uint<8>>& hdr_stream,
    hls::stream<AxiBurst>&   burst_out,
    int rows)
{
#pragma HLS INLINE off

    for (int r = 0; r < rows; r++) {
        for (int ob = 0; ob < TOTAL_BURSTS_OUT; ob++) {
#pragma HLS PIPELINE II=15

            AxiBurst out_burst;
            out_burst.data = 0;
            out_burst.keep = -1;
            out_burst.strb = -1;

            int n_pix = (ob < FULL_BURSTS_OUT) ? 15 : PARTIAL_PIX_OUT;

            for (int p = 0; p < 15; p++) {
#pragma HLS UNROLL
                if (p < n_pix) {
                    ap_uint<8> gray = gray_stream.read();
                    int bit_hi = 127 - p * 8;
                    out_burst.data(bit_hi, bit_hi - 7) = gray;
                }
            }

            out_burst.data(7, 0) = (ap_uint<8>)ob;
            out_burst.last       = (ob == TOTAL_BURSTS_OUT - 1) && (r == rows - 1);
            out_burst.user       = (ob == 0) && (r == 0);

            burst_out.write(out_burst);
        }

        // Drain input headers for this row (not forwarded to output)
        for (int ib = 0; ib < INPUT_BURSTS_ROW; ib++) {
#pragma HLS PIPELINE II=1
            hdr_stream.read();
        }
    }
}








void accelerator_v2(
	hls::stream<ap_axiu<128,1,1,1>>& in_stream,
	hls::stream<ap_axiu<128,1,1,1>>& out_stream,
	volatile ap_uint<1>* in_breath,
	volatile ap_uint<1>* out_breath
){
#pragma HLS INTERFACE axis port=in_stream
#pragma HLS INTERFACE axis port=out_stream
#pragma HLS INTERFACE ap_none port=in_breath
#pragma HLS INTERFACE ap_none port=out_breath
#pragma HLS DATAFLOW

    hls::stream<ap_uint<24>> bgr_stream("bgr_stream");
    hls::stream<ap_uint<8>>  gray_stream("gray_stream");
    hls::stream<ap_uint<8>>  hdr_stream("hdr_stream");
#pragma HLS STREAM variable=bgr_stream  depth=32
#pragma HLS STREAM variable=gray_stream depth=32
#pragma HLS STREAM variable=hdr_stream  depth=256

    bool frame_start = false;

    unpack(in_stream, bgr_stream, hdr_stream, frame_start);

    *in_breath = frame_start ? 1 : 0;

    process_pixels(bgr_stream, gray_stream, IMG_H, IMG_W);

    repack(gray_stream, hdr_stream, out_stream, IMG_H);

    *out_breath = frame_start ? 1 : 0;


}












