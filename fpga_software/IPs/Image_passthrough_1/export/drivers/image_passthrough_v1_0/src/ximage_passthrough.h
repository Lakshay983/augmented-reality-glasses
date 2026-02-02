// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XIMAGE_PASSTHROUGH_H
#define XIMAGE_PASSTHROUGH_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "ximage_passthrough_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Ctrl_BaseAddress;
} XImage_passthrough_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XImage_passthrough;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XImage_passthrough_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XImage_passthrough_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XImage_passthrough_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XImage_passthrough_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XImage_passthrough_Initialize(XImage_passthrough *InstancePtr, u16 DeviceId);
XImage_passthrough_Config* XImage_passthrough_LookupConfig(u16 DeviceId);
int XImage_passthrough_CfgInitialize(XImage_passthrough *InstancePtr, XImage_passthrough_Config *ConfigPtr);
#else
int XImage_passthrough_Initialize(XImage_passthrough *InstancePtr, const char* InstanceName);
int XImage_passthrough_Release(XImage_passthrough *InstancePtr);
#endif

void XImage_passthrough_Start(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_IsDone(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_IsIdle(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_IsReady(XImage_passthrough *InstancePtr);
void XImage_passthrough_EnableAutoRestart(XImage_passthrough *InstancePtr);
void XImage_passthrough_DisableAutoRestart(XImage_passthrough *InstancePtr);

void XImage_passthrough_Set_in_breath_i(XImage_passthrough *InstancePtr, u32 Data);
u32 XImage_passthrough_Get_in_breath_i(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_Get_in_breath_o(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_Get_in_breath_o_vld(XImage_passthrough *InstancePtr);
void XImage_passthrough_Set_out_breath_i(XImage_passthrough *InstancePtr, u32 Data);
u32 XImage_passthrough_Get_out_breath_i(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_Get_out_breath_o(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_Get_out_breath_o_vld(XImage_passthrough *InstancePtr);

void XImage_passthrough_InterruptGlobalEnable(XImage_passthrough *InstancePtr);
void XImage_passthrough_InterruptGlobalDisable(XImage_passthrough *InstancePtr);
void XImage_passthrough_InterruptEnable(XImage_passthrough *InstancePtr, u32 Mask);
void XImage_passthrough_InterruptDisable(XImage_passthrough *InstancePtr, u32 Mask);
void XImage_passthrough_InterruptClear(XImage_passthrough *InstancePtr, u32 Mask);
u32 XImage_passthrough_InterruptGetEnabled(XImage_passthrough *InstancePtr);
u32 XImage_passthrough_InterruptGetStatus(XImage_passthrough *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
