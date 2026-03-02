// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSNR_MONITOR_TOP_H
#define XSNR_MONITOR_TOP_H

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
#include "xsnr_monitor_top_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Snr_BaseAddress;
} XSnr_monitor_top_Config;
#endif

typedef struct {
    u64 Snr_BaseAddress;
    u32 IsReady;
} XSnr_monitor_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSnr_monitor_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSnr_monitor_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSnr_monitor_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSnr_monitor_top_ReadReg(BaseAddress, RegOffset) \
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
#ifdef SDT
int XSnr_monitor_top_Initialize(XSnr_monitor_top *InstancePtr, UINTPTR BaseAddress);
XSnr_monitor_top_Config* XSnr_monitor_top_LookupConfig(UINTPTR BaseAddress);
#else
int XSnr_monitor_top_Initialize(XSnr_monitor_top *InstancePtr, u16 DeviceId);
XSnr_monitor_top_Config* XSnr_monitor_top_LookupConfig(u16 DeviceId);
#endif
int XSnr_monitor_top_CfgInitialize(XSnr_monitor_top *InstancePtr, XSnr_monitor_top_Config *ConfigPtr);
#else
int XSnr_monitor_top_Initialize(XSnr_monitor_top *InstancePtr, const char* InstanceName);
int XSnr_monitor_top_Release(XSnr_monitor_top *InstancePtr);
#endif

void XSnr_monitor_top_Start(XSnr_monitor_top *InstancePtr);
u32 XSnr_monitor_top_IsDone(XSnr_monitor_top *InstancePtr);
u32 XSnr_monitor_top_IsIdle(XSnr_monitor_top *InstancePtr);
u32 XSnr_monitor_top_IsReady(XSnr_monitor_top *InstancePtr);
void XSnr_monitor_top_EnableAutoRestart(XSnr_monitor_top *InstancePtr);
void XSnr_monitor_top_DisableAutoRestart(XSnr_monitor_top *InstancePtr);

u32 XSnr_monitor_top_Get_snr_out(XSnr_monitor_top *InstancePtr);
u32 XSnr_monitor_top_Get_snr_out_vld(XSnr_monitor_top *InstancePtr);

void XSnr_monitor_top_InterruptGlobalEnable(XSnr_monitor_top *InstancePtr);
void XSnr_monitor_top_InterruptGlobalDisable(XSnr_monitor_top *InstancePtr);
void XSnr_monitor_top_InterruptEnable(XSnr_monitor_top *InstancePtr, u32 Mask);
void XSnr_monitor_top_InterruptDisable(XSnr_monitor_top *InstancePtr, u32 Mask);
void XSnr_monitor_top_InterruptClear(XSnr_monitor_top *InstancePtr, u32 Mask);
u32 XSnr_monitor_top_InterruptGetEnabled(XSnr_monitor_top *InstancePtr);
u32 XSnr_monitor_top_InterruptGetStatus(XSnr_monitor_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
