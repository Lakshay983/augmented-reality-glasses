#include <hls_stream.h>
#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <iostream>
#include <cstdlib>

#define IMG_W 640
#define IMG_H 480
#define TITLE_H 32


typedef ap_axiu<24,1,1,1> axis_rgb_t;




void image_passthrough(
	hls::stream<axis_rgb_t>& in_stream,
	hls::stream<axis_rgb_t>& out_stream,
	volatile ap_uint<1>* in_breath_gpio,
	volatile ap_uint<1>* out_breath_gpio

);

int main() {
	hls::stream<axis_rgb_t> in_stream;
	hls::stream<axis_rgb_t> out_stream;

	ap_uint<1> in_breath_gpio = 0;
	ap_uint<1> out_breath_gpio = 0;

	std::cout << "Generating input frame..." << std::endl;

	int pixel_count = 0;
	    for (int y = 0; y < IMG_H; y++) {
	        for (int x = 0; x < IMG_W; x++) {
	            axis_rgb_t pix;
	            pix.data = (pixel_count & 0xFFFFFF);
	            pix.keep = -1;
	            pix.last = (x == IMG_W - 1);
	            pix.user = (pixel_count == 0);

	            in_stream.write(pix);
	            pixel_count++;
	        }
	    }

	    std::cout << "Running DUT..." << std::endl;

	    image_passthrough(
			in_stream,
			out_stream,
			&in_breath_gpio,
			&out_breath_gpio
	    );


	    std::cout << "Checking output stream..." << std::endl;

		bool sof_seen = false;
		int errors = 0;
		pixel_count = 0;

		for (int y = 0; y < IMG_H; y++) {
			for (int x = 0; x < IMG_W; x++) {
				if (out_stream.empty()) {
					std::cerr << "ERROR: Output stream underflow\n";
					return 1;
				}

				axis_rgb_t pix = out_stream.read();

				ap_uint<24> expected = (pixel_count & 0xFFFFFF);

				if (pix.data != expected) {
					std::cerr << "ERROR: Pixel mismatch at "
							  << "(" << y << "," << x << ") "
							  << "expected=" << expected
							  << " got=" << pix.data << "\n";
					errors++;
				}

				if (pix.user) {
					if (pixel_count != 0) {
						std::cerr << "ERROR: Unexpected SOF at pixel "
								  << pixel_count << "\n";
						errors++;
					}
					sof_seen = true;
				}

				if (pix.last && x != IMG_W - 1) {
					std::cerr << "ERROR: TLAST early at x=" << x << "\n";
					errors++;
				}

				pixel_count++;
			}
		}

		if (!out_stream.empty()) {
			std::cerr << "ERROR: Output stream overflow\n";
			errors++;
		}

		std::cout << "GPIO results:\n";
		std::cout << "  in_breath_gpio  = " << in_breath_gpio << "\n";
		std::cout << "  out_breath_gpio = " << out_breath_gpio << "\n";

		if (!sof_seen) {
			std::cerr << "ERROR: No SOF detected in output\n";
			errors++;
		}

		if (errors == 0) {
			std::cout << "TEST PASSED\n";
			return 0;
		} else {
			std::cerr << "TEST FAILED with " << errors << " errors\n";
			return 1;
		}

}
