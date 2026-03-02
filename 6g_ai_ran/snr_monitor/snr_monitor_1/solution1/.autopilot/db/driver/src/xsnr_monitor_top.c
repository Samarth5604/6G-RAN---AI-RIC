// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xsnr_monitor_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSnr_monitor_top_CfgInitialize(XSnr_monitor_top *InstancePtr, XSnr_monitor_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Snr_BaseAddress = ConfigPtr->Snr_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSnr_monitor_top_Start(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL) & 0x80;
    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL, Data | 0x01);
}

u32 XSnr_monitor_top_IsDone(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XSnr_monitor_top_IsIdle(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XSnr_monitor_top_IsReady(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XSnr_monitor_top_EnableAutoRestart(XSnr_monitor_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL, 0x80);
}

void XSnr_monitor_top_DisableAutoRestart(XSnr_monitor_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_AP_CTRL, 0);
}

u32 XSnr_monitor_top_Get_snr_out(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_SNR_OUT_DATA);
    return Data;
}

u32 XSnr_monitor_top_Get_snr_out_vld(XSnr_monitor_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_SNR_OUT_CTRL);
    return Data & 0x1;
}

void XSnr_monitor_top_InterruptGlobalEnable(XSnr_monitor_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_GIE, 1);
}

void XSnr_monitor_top_InterruptGlobalDisable(XSnr_monitor_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_GIE, 0);
}

void XSnr_monitor_top_InterruptEnable(XSnr_monitor_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_IER);
    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_IER, Register | Mask);
}

void XSnr_monitor_top_InterruptDisable(XSnr_monitor_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_IER);
    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_IER, Register & (~Mask));
}

void XSnr_monitor_top_InterruptClear(XSnr_monitor_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSnr_monitor_top_WriteReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_ISR, Mask);
}

u32 XSnr_monitor_top_InterruptGetEnabled(XSnr_monitor_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_IER);
}

u32 XSnr_monitor_top_InterruptGetStatus(XSnr_monitor_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XSnr_monitor_top_ReadReg(InstancePtr->Snr_BaseAddress, XSNR_MONITOR_TOP_SNR_ADDR_ISR);
}

