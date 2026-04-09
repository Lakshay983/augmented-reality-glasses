// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0__HH__
#define __image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0__HH__
#include "image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int din3_WIDTH,
    int dout_WIDTH>
SC_MODULE(image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_in< sc_dt::sc_lv<din3_WIDTH> >   din3;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5 image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U;

    SC_CTOR(image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0):  image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U ("image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U") {
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.clk(clk);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.rst(reset);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.ce(ce);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.in0(din0);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.in1(din1);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.in2(din2);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.in3(din3);
        image_passthrough_ama_addmuladd_17ns_10ns_8ns_16ns_24_4_0_DSP48_5_U.dout(dout);

    }

};

#endif //
