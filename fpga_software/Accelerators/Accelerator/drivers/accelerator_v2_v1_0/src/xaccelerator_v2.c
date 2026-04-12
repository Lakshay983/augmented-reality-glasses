// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccelerator_v2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccelerator_v2_CfgInitialize(XAccelerator_v2 *InstancePtr, XAccelerator_v2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccelerator_v2_Start(XAccelerator_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL) & 0x80;
    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccelerator_v2_IsDone(XAccelerator_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccelerator_v2_IsIdle(XAccelerator_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccelerator_v2_IsReady(XAccelerator_v2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccelerator_v2_EnableAutoRestart(XAccelerator_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL, 0x80);
}

void XAccelerator_v2_DisableAutoRestart(XAccelerator_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_AP_CTRL, 0);
}

void XAccelerator_v2_InterruptGlobalEnable(XAccelerator_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_GIE, 1);
}

void XAccelerator_v2_InterruptGlobalDisable(XAccelerator_v2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_GIE, 0);
}

void XAccelerator_v2_InterruptEnable(XAccelerator_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_IER);
    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_IER, Register | Mask);
}

void XAccelerator_v2_InterruptDisable(XAccelerator_v2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_IER);
    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_IER, Register & (~Mask));
}

void XAccelerator_v2_InterruptClear(XAccelerator_v2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_v2_WriteReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_ISR, Mask);
}

u32 XAccelerator_v2_InterruptGetEnabled(XAccelerator_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_IER);
}

u32 XAccelerator_v2_InterruptGetStatus(XAccelerator_v2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_v2_ReadReg(InstancePtr->Ctrl_BaseAddress, XACCELERATOR_V2_CTRL_ADDR_ISR);
}

