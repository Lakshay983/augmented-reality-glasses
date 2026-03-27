// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0__HH__
#define __accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0__HH__
#include "accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int din3_WIDTH,
    int dout_WIDTH>
SC_MODULE(accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_in< sc_dt::sc_lv<din3_WIDTH> >   din3;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8 accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U;

    SC_CTOR(accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0):  accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U ("accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U") {
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.clk(clk);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.rst(reset);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.ce(ce);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.in0(din0);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.in1(din1);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.in2(din2);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.in3(din3);
        accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0_DSP48_8_U.dout(dout);

    }

};

#endif //
