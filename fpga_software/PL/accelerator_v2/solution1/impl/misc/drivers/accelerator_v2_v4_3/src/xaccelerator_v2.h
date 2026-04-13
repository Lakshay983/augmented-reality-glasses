// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XACCELERATOR_V2_H
#define XACCELERATOR_V2_H

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
#include "xaccelerator_v2_hw.h"

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
} XAccelerator_v2_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XAccelerator_v2;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccelerator_v2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccelerator_v2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccelerator_v2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccelerator_v2_ReadReg(BaseAddress, RegOffset) \
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
int XAccelerator_v2_Initialize(XAccelerator_v2 *InstancePtr, u16 DeviceId);
XAccelerator_v2_Config* XAccelerator_v2_LookupConfig(u16 DeviceId);
int XAccelerator_v2_CfgInitialize(XAccelerator_v2 *InstancePtr, XAccelerator_v2_Config *ConfigPtr);
#else
int XAccelerator_v2_Initialize(XAccelerator_v2 *InstancePtr, const char* InstanceName);
int XAccelerator_v2_Release(XAccelerator_v2 *InstancePtr);
#endif

void XAccelerator_v2_Start(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_IsDone(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_IsIdle(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_IsReady(XAccelerator_v2 *InstancePtr);
void XAccelerator_v2_EnableAutoRestart(XAccelerator_v2 *InstancePtr);
void XAccelerator_v2_DisableAutoRestart(XAccelerator_v2 *InstancePtr);

u32 XAccelerator_v2_Get_in_breath(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_in_breath_vld(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_out_breath(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_out_breath_vld(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_bgr_fifo_breath(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_bgr_fifo_breath_vld(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_pad_fifo_breath(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_pad_fifo_breath_vld(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_gray_fifo_breath(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_Get_gray_fifo_breath_vld(XAccelerator_v2 *InstancePtr);

void XAccelerator_v2_InterruptGlobalEnable(XAccelerator_v2 *InstancePtr);
void XAccelerator_v2_InterruptGlobalDisable(XAccelerator_v2 *InstancePtr);
void XAccelerator_v2_InterruptEnable(XAccelerator_v2 *InstancePtr, u32 Mask);
void XAccelerator_v2_InterruptDisable(XAccelerator_v2 *InstancePtr, u32 Mask);
void XAccelerator_v2_InterruptClear(XAccelerator_v2 *InstancePtr, u32 Mask);
u32 XAccelerator_v2_InterruptGetEnabled(XAccelerator_v2 *InstancePtr);
u32 XAccelerator_v2_InterruptGetStatus(XAccelerator_v2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
