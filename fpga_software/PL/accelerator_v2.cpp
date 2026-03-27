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
#define FIFO_DEPTH       (5 * PAD_W)
#define FULL_BURSTS_OUT  42
#define PARTIAL_PIX_OUT  10
#define TOTAL_BURSTS_OUT 43
#define INPUT_BURSTS_ROW 128
#define KERNEL_SIZE      5

typedef ap_axiu<128, 1, 1, 1> AxiBurst;

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


void pad(
    hls::stream<ap_uint<24>>& in,
    hls::stream<ap_uint<24>>& out)
{
#pragma HLS INLINE off

    ap_uint<24> row_buf[4][IMG_W];
#pragma HLS ARRAY_PARTITION variable=row_buf complete dim=1

    // Buffer top 3 rows (need row2 for REFLECT_101 top pad)
    for (int r = 0; r < 3; r++) {
        for (int c = 0; c < IMG_W; c++) {
#pragma HLS PIPELINE II=1
            row_buf[r][c] = in.read();
        }
    }

    // REFLECT_101 top pad: emit row2, then row1
    // (row0 is the border row — skipped per reflect-101)
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

    // Main body: rows 0..IMG_H-1
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

    // REFLECT_101 bottom pad: emit row H-2, then row H-3
    // (row H-1 is the border row — skipped per reflect-101)
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


//void pad(
//    hls::stream<ap_uint<24>>& in,
//    hls::stream<ap_uint<24>>& out)
//{
//#pragma HLS INLINE off
//
//    ap_uint<24> row_buf[4][IMG_W];
//#pragma HLS ARRAY_PARTITION variable=row_buf complete dim=1
//
//    // Buffer top two rows
//    for (int r = 0; r < 2; r++) {
//        for (int c = 0; c < IMG_W; c++) {
//#pragma HLS PIPELINE II=1
//            row_buf[r][c] = in.read();
//        }
//    }
//
//    // Emit reflected top rows: Row1, Row0
//    for (int r = 1; r >= 0; r--) {
//
//        out.write(row_buf[r][1]);
//        out.write(row_buf[r][0]);
//
//        for (int c = 0; c < IMG_W; c++) {
//#pragma HLS PIPELINE II=1
//            out.write(row_buf[r][c]);
//        }
//
//        out.write(row_buf[r][IMG_W-2]);
//        out.write(row_buf[r][IMG_W-1]);
//    }
//
//    // Main body rows (including original top rows)
//    for (int r = 0; r < IMG_H; r++) {
//
//        int slot;
//        if (r < 2) {
//            slot = r;              // use buffered rows
//        } else {
//            slot = r % 2 + 2;      // rotating buffer for remaining rows
//            for (int c = 0; c < IMG_W; c++) {
//#pragma HLS PIPELINE II=1
//                row_buf[slot][c] = in.read();
//            }
//        }
//
//        out.write(row_buf[slot][1]);
//        out.write(row_buf[slot][0]);
//
//        for (int c = 0; c < IMG_W; c++) {
//#pragma HLS PIPELINE II=1
//            out.write(row_buf[slot][c]);
//        }
//
//        out.write(row_buf[slot][IMG_W-2]);
//        out.write(row_buf[slot][IMG_W-1]);
//    }
//
//    // Emit reflected bottom rows: Row(H-1), Row(H-2)
//    for (int r = IMG_H-1; r >= IMG_H-2; r--) {
//
//        int slot = (r < 2) ? r : (r % 2 + 2);
//
//        out.write(row_buf[slot][1]);
//        out.write(row_buf[slot][0]);
//
//        for (int c = 0; c < IMG_W; c++) {
//#pragma HLS PIPELINE II=1
//            out.write(row_buf[slot][c]);
//        }
//
//        out.write(row_buf[slot][IMG_W-2]);
//        out.write(row_buf[slot][IMG_W-1]);
//    }
//}


void unpack(
    hls::stream<AxiBurst>&    burst_in,
    hls::stream<ap_uint<24>>& bgr_stream,
    hls::stream<ap_uint<8>>&  hdr_stream,
    volatile bool&            frame_start_out)
{
#pragma HLS INLINE off
    static bool frame_started = false;

    for (int row = 0; row < IMG_H; row++) {
        for (int b = 0; b < INPUT_BURSTS_ROW; b++) {
#pragma HLS PIPELINE II=1
            AxiBurst burst = burst_in.read();

            if (burst.user && !frame_started) {
                frame_start_out = true;
                frame_started   = true;
            }
            if (burst.last) frame_started = false;

            hdr_stream.write(burst.data(7, 0));

            bgr_stream.write(burst.data(31,  8));
            bgr_stream.write(burst.data(55,  32));
            bgr_stream.write(burst.data(79,  56));
            bgr_stream.write(burst.data(103, 80));
            bgr_stream.write(burst.data(127, 104));
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

    // Convert BGR to Gray
    xf::cv::bgr2gray<XF_8UC3, XF_8UC1, PAD_H, PAD_W, XF_NPPC1>(bgr_mat, gray_mat);

    // Gaussian Filter - Ensure sigma is provided if not using 0.0f
    xf::cv::GaussianBlur<KERNEL_SIZE, XF_BORDER_CONSTANT, XF_8UC1, PAD_H, PAD_W, XF_NPPC1>(
        gray_mat, blurred_mat, 0.0f); // Try 1.0f instead of 0.0f to see if it stabilizes

    mat_to_stream(blurred_mat, gray_stream_out, rows, cols);
}






void repack(
    hls::stream<ap_uint<8>>& gray_stream,
    hls::stream<ap_uint<8>>& hdr_stream,
    hls::stream<AxiBurst>&   burst_out,
    int rows)
{
#pragma HLS INLINE off

    for (int r = 0; r < PAD_H; r++) {
        // Read full padded row from gray_stream
        ap_uint<8> row_pixels[PAD_W];
        for (int c = 0; c < PAD_W; c++) {
#pragma HLS PIPELINE II=1
            row_pixels[c] = gray_stream.read();
        }

        // Only pack and output interior rows
        if (r >= PAD && r < PAD_H - PAD) {
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
                        // offset by PAD to skip left border
                        ap_uint<8> gray = row_pixels[PAD + ob * 15 + p];
                        int bit_hi = 127 - p * 8;
                        out_burst.data(bit_hi, bit_hi - 7) = gray;
                    }
                }

                out_burst.data(7, 0) = (ap_uint<8>)ob;
                int out_row = r - PAD;
                out_burst.last = (ob == TOTAL_BURSTS_OUT-1) && (out_row == IMG_H-1);
                out_burst.user = (ob == 0) && (out_row == 0);

                burst_out.write(out_burst);
            }

            // Drain header for this row
            for (int ib = 0; ib < INPUT_BURSTS_ROW; ib++) {
#pragma HLS PIPELINE II=1
                hdr_stream.read();
            }
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
    hls::stream<ap_uint<24>> padded_stream("padded_stream");
    hls::stream<ap_uint<8>>  gray_stream("gray_stream");
    hls::stream<ap_uint<8>>  hdr_stream("hdr_stream");
#pragma HLS STREAM variable=bgr_stream  depth=307200
#pragma HLS STREAM variable=padded_stream depth=307200
#pragma HLS STREAM variable=gray_stream depth=307200
#pragma HLS STREAM variable=hdr_stream  depth=61440

    volatile bool frame_start = false;

    unpack(in_stream, bgr_stream, hdr_stream, frame_start);

    *in_breath = frame_start ? 1 : 0;

    pad(bgr_stream, padded_stream);

    process_pixels(padded_stream, gray_stream, PAD_H, PAD_W);

    repack(gray_stream, hdr_stream, out_stream, IMG_H);

    *out_breath = frame_start ? 1 : 0;


}












