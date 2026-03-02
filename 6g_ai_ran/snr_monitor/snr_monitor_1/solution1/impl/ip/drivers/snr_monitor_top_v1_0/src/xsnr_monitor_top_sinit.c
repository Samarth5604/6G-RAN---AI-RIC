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
#include "xsnr_monitor_top.h"

extern XSnr_monitor_top_Config XSnr_monitor_top_ConfigTable[];

#ifdef SDT
XSnr_monitor_top_Config *XSnr_monitor_top_LookupConfig(UINTPTR BaseAddress) {
	XSnr_monitor_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XSnr_monitor_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XSnr_monitor_top_ConfigTable[Index].Snr_BaseAddress == BaseAddress) {
			ConfigPtr = &XSnr_monitor_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSnr_monitor_top_Initialize(XSnr_monitor_top *InstancePtr, UINTPTR BaseAddress) {
	XSnr_monitor_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSnr_monitor_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSnr_monitor_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XSnr_monitor_top_Config *XSnr_monitor_top_LookupConfig(u16 DeviceId) {
	XSnr_monitor_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSNR_MONITOR_TOP_NUM_INSTANCES; Index++) {
		if (XSnr_monitor_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSnr_monitor_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSnr_monitor_top_Initialize(XSnr_monitor_top *InstancePtr, u16 DeviceId) {
	XSnr_monitor_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSnr_monitor_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSnr_monitor_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

