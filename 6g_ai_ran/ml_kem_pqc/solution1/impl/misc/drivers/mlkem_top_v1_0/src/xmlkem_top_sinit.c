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
#include "xmlkem_top.h"

extern XMlkem_top_Config XMlkem_top_ConfigTable[];

#ifdef SDT
XMlkem_top_Config *XMlkem_top_LookupConfig(UINTPTR BaseAddress) {
	XMlkem_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMlkem_top_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMlkem_top_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMlkem_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMlkem_top_Initialize(XMlkem_top *InstancePtr, UINTPTR BaseAddress) {
	XMlkem_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMlkem_top_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMlkem_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMlkem_top_Config *XMlkem_top_LookupConfig(u16 DeviceId) {
	XMlkem_top_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMLKEM_TOP_NUM_INSTANCES; Index++) {
		if (XMlkem_top_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMlkem_top_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMlkem_top_Initialize(XMlkem_top *InstancePtr, u16 DeviceId) {
	XMlkem_top_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMlkem_top_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMlkem_top_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

