#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "common/xf_common.hpp"
#include "common/xf_infra.hpp"
#include "imgproc/xf_gaussian_filter.hpp"

#define MAX_HEIGHT 460
#define MAX_WIDTH 640
#define NPPC XF_NPPC4

// --- OUR CUSTOM RTL HARDWARE BLOCK ---
// This safely reads the 128-bit AXI stream (RGBA), ignores the Alpha channel,
// computes the grayscale value, and writes directly to the Vitis Mat.
void custom_axi_to_gray(
    hls::stream<ap_axiu<128, 0, 0, 0>>& stream_in,
    xf::cv::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPPC>& img_gray,
    int rows,
    int cols)
{
    // Tell HLS to isolate this block so it runs simultaneously in the pipeline
    #pragma HLS INLINE off

    int total_beats = (rows * cols) / 4; // 4 pixels per clock cycle

    for (int i = 0; i < total_beats; i++) {
        #pragma HLS PIPELINE II=1
    	ap_axiu<128, 0, 0, 0> in_word = stream_in.read();
		ap_uint<32> gray_word = 0; // CRITICAL: Initialize to 0!

		for (int p = 0; p < 4; p++) {
			#pragma HLS UNROLL

			// Pure bit-shifting extraction (Immune to .range() compiler bugs)
			ap_uint<8> r = (in_word.data >> (p*32 + 0)) & 0xFF;
			ap_uint<8> g = (in_word.data >> (p*32 + 8)) & 0xFF;
			ap_uint<8> b = (in_word.data >> (p*32 + 16)) & 0xFF;

			ap_uint<16> y = (r * 77 + g * 150 + b * 29) >> 8;

			// Pure bitwise OR packing
			gray_word |= ((ap_uint<32>)y << (p * 8));
		}

		// Write the packed 4-pixel word into the Vitis Mat
		img_gray.write(i, gray_word);

    }
}

void image_passthrough(
    hls::stream<ap_axiu<128, 0, 0, 0>>& stream_in,
    hls::stream<ap_axiu<32, 0, 0, 0>>& stream_out)
{
    #pragma HLS INTERFACE axis port=stream_in
    #pragma HLS INTERFACE axis port=stream_out
    #pragma HLS INTERFACE s_axilite port=rows
    #pragma HLS INTERFACE s_axilite port=cols
    #pragma HLS INTERFACE s_axilite port=return

    #pragma HLS DATAFLOW

    // Notice we no longer need the XF_8UC4 img_in Mat!
    xf::cv::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPPC> img_gray(MAX_HEIGHT, MAX_WIDTH);
    xf::cv::Mat<XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPPC> img_blur(MAX_HEIGHT, MAX_WIDTH);

    // 1. Eat the raw AXI stream, dump the Alpha, and convert to Grayscale
    custom_axi_to_gray(stream_in, img_gray, MAX_HEIGHT, MAX_WIDTH);

    // 2. Apply Gaussian Blur
    xf::cv::GaussianBlur<3, XF_BORDER_REPLICATE, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPPC>(img_gray, img_blur, 1.0f);

    // 3. Output to AXI Stream
    xf::cv::xfMat2axiStrm<32, XF_8UC1, MAX_HEIGHT, MAX_WIDTH, NPPC>(img_blur, stream_out);
}
