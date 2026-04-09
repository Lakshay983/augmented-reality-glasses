#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <iostream>

void image_passthrough(
	hls::stream<ap_axiu<8,1,1,1>>& in_stream,
	hls::stream<ap_axiu<8,1,1,1>>& out_stream,
	volatile ap_uint<1>* in_breath,
	volatile ap_uint<1>* out_breath

);

int main() {
	hls::stream<ap_axiu<8,1,1,1>> in_stream;
	hls::stream<ap_axiu<8,1,1,1>> out_stream;

	ap_uint<1> in_breath = 0;
	ap_uint<1> out_breath = 0;

	const int WIDTH = 8;
	const int HEIGHT = 4;
	const int NUM_PIXELS = WIDTH * HEIGHT;

	for (int i = 0; i < NUM_PIXELS; i++){
		ap_axiu<8,1,1,1> pix;

		pix.data = i;
		pix.keep = -1;
		pix.strb = -1;

		pix.user = (i == 0) ? 1:0;
		pix.last = (i == NUM_PIXELS -1) ? 1 : 0;

		pix.id = 0;
		pix.dest = 0;

		in_stream.write(pix);


	}

	image_passthrough(in_stream, out_stream, &in_breath, &out_breath);


	int error_count = 0;

	for(int i = 0; i < NUM_PIXELS; i++){
		if(out_stream.empty()){
			std::cout << "ERROR: Output stream is empty early\n";
			return 1;

		}

		ap_axiu<8,1,1,1> pix = out_stream.read();

		if(pix.data != i){
			std::cout << "DATA MISMATCH at " << i << " got " << pix.data << "\n";
			error_count++;
		}



		if(i == 0 && pix.user != 1){
			std::cout << "ERROR: SOF missing\n";
			error_count ++;
		}

		if(i == NUM_PIXELS-1 && pix.last != 1){
			std::cout << "ERROR: EOF missing\n";
			error_count ++;
		}


	}


	std::cout << "in_breath = " << in_breath << "\n";
	std::cout << "out_breath = " << out_breath << "\n";

	if(error_count == 0){
		std::cout << "TEST PASSED \n";

	} else{
		std::cout << "TEST FAILED errors = " << error_count << "\n";
	}

	return error_count;




}
