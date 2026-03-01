// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMLKEM_TOP_H
#define XMLKEM_TOP_H

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
#include "xmlkem_top_hw.h"

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
    u64 Control_BaseAddress;
} XMlkem_top_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMlkem_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMlkem_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMlkem_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMlkem_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMlkem_top_ReadReg(BaseAddress, RegOffset) \
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
int XMlkem_top_Initialize(XMlkem_top *InstancePtr, UINTPTR BaseAddress);
XMlkem_top_Config* XMlkem_top_LookupConfig(UINTPTR BaseAddress);
#else
int XMlkem_top_Initialize(XMlkem_top *InstancePtr, u16 DeviceId);
XMlkem_top_Config* XMlkem_top_LookupConfig(u16 DeviceId);
#endif
int XMlkem_top_CfgInitialize(XMlkem_top *InstancePtr, XMlkem_top_Config *ConfigPtr);
#else
int XMlkem_top_Initialize(XMlkem_top *InstancePtr, const char* InstanceName);
int XMlkem_top_Release(XMlkem_top *InstancePtr);
#endif

void XMlkem_top_Start(XMlkem_top *InstancePtr);
u32 XMlkem_top_IsDone(XMlkem_top *InstancePtr);
u32 XMlkem_top_IsIdle(XMlkem_top *InstancePtr);
u32 XMlkem_top_IsReady(XMlkem_top *InstancePtr);
void XMlkem_top_EnableAutoRestart(XMlkem_top *InstancePtr);
void XMlkem_top_DisableAutoRestart(XMlkem_top *InstancePtr);

void XMlkem_top_Set_mode(XMlkem_top *InstancePtr, u32 Data);
u32 XMlkem_top_Get_mode(XMlkem_top *InstancePtr);

void XMlkem_top_InterruptGlobalEnable(XMlkem_top *InstancePtr);
void XMlkem_top_InterruptGlobalDisable(XMlkem_top *InstancePtr);
void XMlkem_top_InterruptEnable(XMlkem_top *InstancePtr, u32 Mask);
void XMlkem_top_InterruptDisable(XMlkem_top *InstancePtr, u32 Mask);
void XMlkem_top_InterruptClear(XMlkem_top *InstancePtr, u32 Mask);
u32 XMlkem_top_InterruptGetEnabled(XMlkem_top *InstancePtr);
u32 XMlkem_top_InterruptGetStatus(XMlkem_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
