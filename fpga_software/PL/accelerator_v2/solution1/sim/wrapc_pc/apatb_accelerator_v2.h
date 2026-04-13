// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_accelerator_v2 (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&in_stream),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&out_stream),
volatile void* in_breath,
volatile void* out_breath,
volatile void* bgr_fifo_breath,
volatile void* pad_fifo_breath,
volatile void* gray_fifo_breath);
