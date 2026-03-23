#include<hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_remap.hpp"
#include "imgproc/xf_cvt_color.hpp"


#define IMG_W 640
#define IMG_H 480
#define NUM_BURSTS_IN (IMG_H * IMG_W / 5)
#define NUM_BURSTS_OUT (IMG_H * IMG_W / 15)

//For testing, need actual values from camera
// Placeholder calibration - replace with real values after camera calibration
#define FX 320.0f
#define FY 320.0f
#define CX 320.0f  // IMG_W / 2
#define CY 240.0f  // IMG_H / 2
#define K1 0.1f
#define K2 0.01f
#define P1 0.0f
#define P2 0.0f
#define K3 0.0f

void generate_maps(
    xf::cv::Mat<XF_32FC1, IMG_H, IMG_W, XF_NPPC1>& map1,
    xf::cv::Mat<XF_32FC1, IMG_H, IMG_W, XF_NPPC1>& map2
){
    for(int y = 0; y < IMG_H; y++){
        for(int x = 0; x < IMG_W; x++){
            #pragma HLS PIPELINE II=1

            // Step 1: normalize
            float x_norm = (x - CX) / FX;
            float y_norm = (y - CY) / FY;

            // Step 2: radius
            float r2 = x_norm*x_norm + y_norm*y_norm;
            float r4 = r2 * r2;
            float r6 = r4 * r2;

            // Step 3: distortion formula
            float scale = 1.0f + K1*r2 + K2*r4 + K3*r6;
            float x_dist = x_norm*scale + 2.0f*P1*x_norm*y_norm + P2*(r2 + 2.0f*x_norm*x_norm);
            float y_dist = y_norm*scale + P1*(r2 + 2.0f*y_norm*y_norm) + 2.0f*P2*x_norm*y_norm;

            // Step 4: back to pixel coordinates
            float map1_val = x_dist * FX + CX;
            float map2_val = y_dist * FY + CY;

            map1.write(y * IMG_W + x, *reinterpret_cast<ap_uint<32>*>(&map1_val));
            map2.write(y * IMG_W + x, *reinterpret_cast<ap_uint<32>*>(&map2_val));
        }
    }
}




void accelerator(
	hls::stream<ap_axiu<128,1,1,1>>& in_stream,
	hls::stream<ap_axiu<128,1,1,1>>& out_stream,
	volatile ap_uint<1>* in_breath,
	volatile ap_uint<1>* out_breath
){

	#pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE ap_none port=in_breath
    #pragma HLS INTERFACE ap_none port=out_breath
    #pragma HLS INTERFACE s_axilite port=return bundle=CTRL



	//Static maps for testing for undistrotion
    xf::cv::Mat<XF_32FC1, IMG_H, IMG_W, XF_NPPC1> map1;
    xf::cv::Mat<XF_32FC1, IMG_H, IMG_W, XF_NPPC1> map2;
    #pragma HLS BIND_STORAGE variable=map1 type=ram_t2p impl=uram
    #pragma HLS BIND_STORAGE variable=map2 type=ram_t2p impl=uram

    generate_maps(map1, map2);


	xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1> gray_mat;
	#pragma HLS BIND_STORAGE variable=gray_mat type=ram_t2p impl=uram

	//Smaller mats for the pixel bursts
	xf::cv::Mat<XF_8UC3, 1, 5, XF_NPPC1> small_rgb;
	xf::cv::Mat<XF_8UC1, 1, 5, XF_NPPC1> small_gray;




	for(int burst_idx = 0; burst_idx < NUM_BURSTS_IN; burst_idx++){
	        #pragma HLS PIPELINE II=1

		//Unpack the stream we get into pixels
		ap_axiu<128,1,1,1> busrt = in_stream.read();

        if(burst.user){
            ap_uint<1> tmp = *in_breath;
            tmp ^= ap_uint<1>(1);
            *in_breath = tmp;
        }


		//Header
		ap_uint<8> group_id = burst.data(7, 0);

		//Rest of the pixels
		ap_uint<24> pix[5];
		pix[0] = burst.data(31,  8);
		pix[1] = burst.data(55,  32);
		pix[2] = burst.data(79,  56);
		pix[3] = burst.data(103, 80);
		pix[4] = burst.data(127, 104);


		for(int i = 0; i < 5; i++){
			#pragma HLS PIPELINE II=1
			small_rgb.write(i, pix[i]);
		}

		//Grayscale the pixels
		xf::cv::cvtColor<XF_RGB2GRAY, XF_8UC3, XF_8UC1, 1, 5, XF_NPPC1>(small_rgb, small_gray);

		//Compile image for undistrotion
		int base_index = group_id * 5;
		for(int i = 0; i < 5; i++){
			#pragma HLS PIPELINE II=1
			gray_mat.write(base_index + i, small_gray.read(i));
		}
	}

	//Undistort the image
	xf::cv::Mat<XF_8UC1, IMG_H, IMG_W, XF_NPPC1> undist_mat;
	#pragma HLS BIND_STORAGE variable=undist_mat type=ram_t2p impl=uram

	xf::cv::remap<XF_REMAP_BUFSIZE, XF_INTERPOLATION_BILINEAR, XF_8UC1, XF_32FC1, IMG_H, IMG_W, XF_NPPC1>(
		gray_mat,
		undist_mat,
		map1,
		map2
	);

	//Steam the image in to guassian (don't do this yet)
	//Pending on other stuff working
	for(int burst_idx = 0; burst_idx < NUM_BURSTS_OUT; burst_idx++){
	    #pragma HLS PIPELINE II=1

	    int base_index = burst_idx * 15;

	    ap_axiu<128,1,1,1> out_burst;

	    // Header - group id
	    out_burst.data(7, 0) = (ap_uint<8>)burst_idx;

	    // Pack 15 gray pixels into bits 8-127
	    for(int i = 0; i < 15; i++){
	        #pragma HLS UNROLL
	        ap_uint<8> gray = undist_mat.read(base_index + i);
	        out_burst.data(15 + i*8, 8 + i*8) = gray;
	    }

	    out_burst.keep = -1;
	    out_burst.user = (burst_idx == 0) ? 1 : 0;
	    out_burst.last = (burst_idx == NUM_BURSTS_OUT - 1) ? 1 : 0;

	    out_stream.write(out_burst);
	}

	//Pack up the pixels and send them back


	ap_uint<1> tmp = *out_breath;
	tmp ^= ap_uint<1>(1);
	*out_breath = tmp;


}
