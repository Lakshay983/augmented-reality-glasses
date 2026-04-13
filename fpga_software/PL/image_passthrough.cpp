#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"

#define IMG_W 640
#define IMG_H 480
#define TILE_H 32
#define NPC XF_NPPC1

typedef ap_axiu<24,1,1,1> axis_rgb_t;

void image_passthrough(
    hls::stream<axis_rgb_t>& in_stream,
    hls::stream<axis_rgb_t>& out_stream,
    volatile ap_uint<1>* in_breath_gpio,
    volatile ap_uint<1>* out_breath_gpio
){
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream

	#pragma HLS INTERFACE ap_none port=in_breath_gpio
    #pragma HLS INTERFACE ap_none port=out_breath_gpio

	#pragma HLS INTERFACE s_axilite port=return bundle=CTRL

	#pragma HLS DATAFLOW

    static xf::cv::Mat<XF_8UC3, TILE_H, IMG_W, XF_NPPC1> tile_ping;
    static xf::cv::Mat<XF_8UC3, TILE_H, IMG_W, XF_NPPC1> tile_pong;

    bool use_ping = true;
    bool sof_seen = false;
    bool first_out_pixel = true;

    for (int tile_y = 0; tile_y < IMG_H; tile_y += TILE_H){

        xf::cv::Mat<XF_8UC3, TILE_H, IMG_W, XF_NPPC1>* in_tile  = use_ping ? &tile_ping : &tile_pong;
        xf::cv::Mat<XF_8UC3, TILE_H, IMG_W, XF_NPPC1>* out_tile = use_ping ? &tile_pong : &tile_ping;


        for (int r = 0; r < TILE_H; r++){
            for (int c = 0; c < IMG_W; c++){
                #pragma HLS PIPELINE II=1
                axis_rgb_t pix = in_stream.read();
                if(pix.user && !sof_seen){
                    ap_uint<1> tmp_in = *in_breath_gpio;
                    tmp_in ^= ap_uint<1>(1);
                    *in_breath_gpio = tmp_in;
                    sof_seen = true;
                }
                in_tile->write(r * IMG_W + c, (ap_uint<24>)pix.data);
            }
        }


        for (int r = 0; r < TILE_H; r++){
            for (int c = 0; c < IMG_W; c++){
                #pragma HLS PIPELINE II=1
                out_tile->write(r * IMG_W + c, in_tile->read(r * IMG_W + c));
            }
        }


        for (int r = 0; r < TILE_H; r++){
            for (int c = 0; c < IMG_W; c++){
                #pragma HLS PIPELINE II=1
                axis_rgb_t out_pix;
                out_pix.data = out_tile->read(r * IMG_W + c);
                out_pix.keep = -1;
                out_pix.user = (first_out_pixel && r == 0 && c == 0);
                out_pix.last = (c == IMG_W - 1);
                first_out_pixel = false;
                out_stream.write(out_pix);
            }
        }

        use_ping ^= 1;
    }

    ap_uint<1> tmp_out = *out_breath_gpio;
    tmp_out ^= ap_uint<1>(1);
    *out_breath_gpio = tmp_out;
}
