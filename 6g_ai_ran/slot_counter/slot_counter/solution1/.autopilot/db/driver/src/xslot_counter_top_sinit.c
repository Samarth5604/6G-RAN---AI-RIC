// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xslot_counter_top.h"

extern XSlot_counter_top_Config XSlot_counter_top_ConfigTable[];

#ifdef SDT
XSlot_counter_top_Config *XSlot_counter_top_LookupConfig(UINTPTR BaseAddress) {
	XSlot_counter_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSlot_counter_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSlot_counter_top_ConfigTable[Index].Ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XSlot_counter_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSlot_counter_top_Initialize(XSlot_counter_top *InstancePtr, UINTPTR BaseAddress) {
	XSlot_counter_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSlot_counter_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSlot_counter_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSlot_counter_top_Config *XSlot_counter_top_LookupConfig(u16 DeviceId) {
	XSlot_counter_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSLOT_COUNTER_TOP_NUM_INSTANCES; Index++) {
		if (XSlot_counter_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSlot_counter_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSlot_counter_top_Initialize(XSlot_counter_top *InstancePtr, u16 DeviceId) {
	XSlot_counter_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSlot_counter_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSlot_counter_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

