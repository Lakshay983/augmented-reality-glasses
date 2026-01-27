// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "ximage_passthrough.h"

extern XImage_passthrough_Config XImage_passthrough_ConfigTable[];

XImage_passthrough_Config *XImage_passthrough_LookupConfig(u16 DeviceId) {
	XImage_passthrough_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XIMAGE_PASSTHROUGH_NUM_INSTANCES; Index++) {
		if (XImage_passthrough_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XImage_passthrough_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XImage_passthrough_Initialize(XImage_passthrough *InstancePtr, u16 DeviceId) {
	XImage_passthrough_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XImage_passthrough_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XImage_passthrough_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

