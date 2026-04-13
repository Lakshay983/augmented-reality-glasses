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
// 0x10 : Data signal of in_breath
//        bit 7~0 - in_breath[7:0] (Read)
//        others  - reserved
// 0x14 : Control signal of in_breath
//        bit 0  - in_breath_ap_vld (Read/COR)
//        others - reserved
// 0x20 : Data signal of out_breath
//        bit 7~0 - out_breath[7:0] (Read)
//        others  - reserved
// 0x24 : Control signal of out_breath
//        bit 0  - out_breath_ap_vld (Read/COR)
//        others - reserved
// 0x30 : Data signal of bgr_fifo_breath
//        bit 7~0 - bgr_fifo_breath[7:0] (Read)
//        others  - reserved
// 0x34 : Control signal of bgr_fifo_breath
//        bit 0  - bgr_fifo_breath_ap_vld (Read/COR)
//        others - reserved
// 0x40 : Data signal of pad_fifo_breath
//        bit 7~0 - pad_fifo_breath[7:0] (Read)
//        others  - reserved
// 0x44 : Control signal of pad_fifo_breath
//        bit 0  - pad_fifo_breath_ap_vld (Read/COR)
//        others - reserved
// 0x50 : Data signal of gray_fifo_breath
//        bit 7~0 - gray_fifo_breath[7:0] (Read)
//        others  - reserved
// 0x54 : Control signal of gray_fifo_breath
//        bit 0  - gray_fifo_breath_ap_vld (Read/COR)
//        others - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XACCELERATOR_V2_CTRL_ADDR_AP_CTRL               0x00
#define XACCELERATOR_V2_CTRL_ADDR_GIE                   0x04
#define XACCELERATOR_V2_CTRL_ADDR_IER                   0x08
#define XACCELERATOR_V2_CTRL_ADDR_ISR                   0x0c
#define XACCELERATOR_V2_CTRL_ADDR_IN_BREATH_DATA        0x10
#define XACCELERATOR_V2_CTRL_BITS_IN_BREATH_DATA        8
#define XACCELERATOR_V2_CTRL_ADDR_IN_BREATH_CTRL        0x14
#define XACCELERATOR_V2_CTRL_ADDR_OUT_BREATH_DATA       0x20
#define XACCELERATOR_V2_CTRL_BITS_OUT_BREATH_DATA       8
#define XACCELERATOR_V2_CTRL_ADDR_OUT_BREATH_CTRL       0x24
#define XACCELERATOR_V2_CTRL_ADDR_BGR_FIFO_BREATH_DATA  0x30
#define XACCELERATOR_V2_CTRL_BITS_BGR_FIFO_BREATH_DATA  8
#define XACCELERATOR_V2_CTRL_ADDR_BGR_FIFO_BREATH_CTRL  0x34
#define XACCELERATOR_V2_CTRL_ADDR_PAD_FIFO_BREATH_DATA  0x40
#define XACCELERATOR_V2_CTRL_BITS_PAD_FIFO_BREATH_DATA  8
#define XACCELERATOR_V2_CTRL_ADDR_PAD_FIFO_BREATH_CTRL  0x44
#define XACCELERATOR_V2_CTRL_ADDR_GRAY_FIFO_BREATH_DATA 0x50
#define XACCELERATOR_V2_CTRL_BITS_GRAY_FIFO_BREATH_DATA 8
#define XACCELERATOR_V2_CTRL_ADDR_GRAY_FIFO_BREATH_CTRL 0x54

