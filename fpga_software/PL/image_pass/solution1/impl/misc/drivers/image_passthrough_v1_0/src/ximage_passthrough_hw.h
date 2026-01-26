// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_breath_i
//        bit 0  - in_breath_i[0] (Read/Write)
//        others - reserved
// 0x14 : reserved
// 0x18 : Data signal of in_breath_o
//        bit 0  - in_breath_o[0] (Read)
//        others - reserved
// 0x1c : Control signal of in_breath_o
//        bit 0  - in_breath_o_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of out_breath_i
//        bit 0  - out_breath_i[0] (Read/Write)
//        others - reserved
// 0x24 : reserved
// 0x28 : Data signal of out_breath_o
//        bit 0  - out_breath_o[0] (Read)
//        others - reserved
// 0x2c : Control signal of out_breath_o
//        bit 0  - out_breath_o_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL           0x00
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_GIE               0x04
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_IER               0x08
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_ISR               0x0c
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_I_DATA  0x10
#define XIMAGE_PASSTHROUGH_CTRL_BITS_IN_BREATH_I_DATA  1
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_O_DATA  0x18
#define XIMAGE_PASSTHROUGH_CTRL_BITS_IN_BREATH_O_DATA  1
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_O_CTRL  0x1c
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_I_DATA 0x20
#define XIMAGE_PASSTHROUGH_CTRL_BITS_OUT_BREATH_I_DATA 1
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_O_DATA 0x28
#define XIMAGE_PASSTHROUGH_CTRL_BITS_OUT_BREATH_O_DATA 1
#define XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_O_CTRL 0x2c

