// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "ximage_passthrough.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XImage_passthrough_CfgInitialize(XImage_passthrough *InstancePtr, XImage_passthrough_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XImage_passthrough_Start(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL) & 0x80;
    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XImage_passthrough_IsDone(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XImage_passthrough_IsIdle(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XImage_passthrough_IsReady(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XImage_passthrough_EnableAutoRestart(XImage_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL, 0x80);
}

void XImage_passthrough_DisableAutoRestart(XImage_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_AP_CTRL, 0);
}

void XImage_passthrough_Set_in_breath_i(XImage_passthrough *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_I_DATA, Data);
}

u32 XImage_passthrough_Get_in_breath_i(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_I_DATA);
    return Data;
}

u32 XImage_passthrough_Get_in_breath_o(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_O_DATA);
    return Data;
}

u32 XImage_passthrough_Get_in_breath_o_vld(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IN_BREATH_O_CTRL);
    return Data & 0x1;
}

void XImage_passthrough_Set_out_breath_i(XImage_passthrough *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_I_DATA, Data);
}

u32 XImage_passthrough_Get_out_breath_i(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_I_DATA);
    return Data;
}

u32 XImage_passthrough_Get_out_breath_o(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_O_DATA);
    return Data;
}

u32 XImage_passthrough_Get_out_breath_o_vld(XImage_passthrough *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_OUT_BREATH_O_CTRL);
    return Data & 0x1;
}

void XImage_passthrough_InterruptGlobalEnable(XImage_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_GIE, 1);
}

void XImage_passthrough_InterruptGlobalDisable(XImage_passthrough *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_GIE, 0);
}

void XImage_passthrough_InterruptEnable(XImage_passthrough *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IER);
    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IER, Register | Mask);
}

void XImage_passthrough_InterruptDisable(XImage_passthrough *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IER);
    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IER, Register & (~Mask));
}

void XImage_passthrough_InterruptClear(XImage_passthrough *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XImage_passthrough_WriteReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_ISR, Mask);
}

u32 XImage_passthrough_InterruptGetEnabled(XImage_passthrough *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_IER);
}

u32 XImage_passthrough_InterruptGetStatus(XImage_passthrough *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XImage_passthrough_ReadReg(InstancePtr->Ctrl_BaseAddress, XIMAGE_PASSTHROUGH_CTRL_ADDR_ISR);
}

