// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XSLOT_COUNTER_TOP_H
#define XSLOT_COUNTER_TOP_H

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
#include "xslot_counter_top_hw.h"

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
    u64 Ctrl_BaseAddress;
} XSlot_counter_top_Config;
#endif

typedef struct {
    u64 Ctrl_BaseAddress;
    u32 IsReady;
} XSlot_counter_top;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSlot_counter_top_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSlot_counter_top_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSlot_counter_top_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSlot_counter_top_ReadReg(BaseAddress, RegOffset) \
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
int XSlot_counter_top_Initialize(XSlot_counter_top *InstancePtr, UINTPTR BaseAddress);
XSlot_counter_top_Config* XSlot_counter_top_LookupConfig(UINTPTR BaseAddress);
#else
int XSlot_counter_top_Initialize(XSlot_counter_top *InstancePtr, u16 DeviceId);
XSlot_counter_top_Config* XSlot_counter_top_LookupConfig(u16 DeviceId);
#endif
int XSlot_counter_top_CfgInitialize(XSlot_counter_top *InstancePtr, XSlot_counter_top_Config *ConfigPtr);
#else
int XSlot_counter_top_Initialize(XSlot_counter_top *InstancePtr, const char* InstanceName);
int XSlot_counter_top_Release(XSlot_counter_top *InstancePtr);
#endif


void XSlot_counter_top_Set_sync_req(XSlot_counter_top *InstancePtr, u32 Data);
u32 XSlot_counter_top_Get_sync_req(XSlot_counter_top *InstancePtr);
void XSlot_counter_top_Set_sync_symbol(XSlot_counter_top *InstancePtr, u32 Data);
u32 XSlot_counter_top_Get_sync_symbol(XSlot_counter_top *InstancePtr);
void XSlot_counter_top_Set_sync_slot(XSlot_counter_top *InstancePtr, u32 Data);
u32 XSlot_counter_top_Get_sync_slot(XSlot_counter_top *InstancePtr);
u32 XSlot_counter_top_Get_symbol_num_out(XSlot_counter_top *InstancePtr);
u32 XSlot_counter_top_Get_symbol_num_out_vld(XSlot_counter_top *InstancePtr);
u32 XSlot_counter_top_Get_slot_num_out(XSlot_counter_top *InstancePtr);
u32 XSlot_counter_top_Get_slot_num_out_vld(XSlot_counter_top *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
