#include <hls_stream.h>
#include <ap_axi_sdata.h> 
#include <ap_int.h>

void image_passthrough(
	hls::stream<ap_axiu<8,1,1,1>>& in_stream,
	hls::stream<ap_axiu<8,1,1,1>>& out_stream,
	volatile ap_uint<1>* in_breath,
	volatile ap_uint<1>* out_breath

){
	#pragma HLS INTERFACE axis port=in_stream
	#pragma HLS INTERFACE axis port=out_stream
	
	#pragma HLS INTERFACE s_axilite port=in_breath bundle=CTRL
	#pragma HLS INTERFACE s_axilite port=out_breath bundle=CTRL
	#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
	
	ap_axiu<8,1,1,1> pix;

	do {
		#pragma HLS PIPELINE II=1
		pix = in_stream.read();
		
		if(pix.user){
			ap_uint<1> t = *in_breath;
			*in_breath = t ^ 1;
		}
		
		out_stream.write(pix);
		
		if(pix.last){
			ap_uint<1> t = *out_breath;
			*out_breath = t ^ 1;
		}

	} while(!pix.last);



}
