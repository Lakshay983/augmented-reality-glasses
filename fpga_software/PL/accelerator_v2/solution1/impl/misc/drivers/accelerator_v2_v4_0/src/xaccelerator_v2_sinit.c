// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xaccelerator_v2.h"

extern XAccelerator_v2_Config XAccelerator_v2_ConfigTable[];

XAccelerator_v2_Config *XAccelerator_v2_LookupConfig(u16 DeviceId) {
	XAccelerator_v2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCELERATOR_V2_NUM_INSTANCES; Index++) {
		if (XAccelerator_v2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccelerator_v2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_v2_Initialize(XAccelerator_v2 *InstancePtr, u16 DeviceId) {
	XAccelerator_v2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_v2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_v2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

