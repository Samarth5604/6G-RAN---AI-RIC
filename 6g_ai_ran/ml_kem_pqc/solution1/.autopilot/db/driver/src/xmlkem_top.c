// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmlkem_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMlkem_top_CfgInitialize(XMlkem_top *InstancePtr, XMlkem_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMlkem_top_Start(XMlkem_top *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMlkem_top_IsDone(XMlkem_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMlkem_top_IsIdle(XMlkem_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMlkem_top_IsReady(XMlkem_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMlkem_top_EnableAutoRestart(XMlkem_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMlkem_top_DisableAutoRestart(XMlkem_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_AP_CTRL, 0);
}

void XMlkem_top_Set_mode(XMlkem_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_MODE_DATA, Data);
}

u32 XMlkem_top_Get_mode(XMlkem_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_MODE_DATA);
    return Data;
}

void XMlkem_top_InterruptGlobalEnable(XMlkem_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_GIE, 1);
}

void XMlkem_top_InterruptGlobalDisable(XMlkem_top *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_GIE, 0);
}

void XMlkem_top_InterruptEnable(XMlkem_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_IER);
    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_IER, Register | Mask);
}

void XMlkem_top_InterruptDisable(XMlkem_top *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_IER);
    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMlkem_top_InterruptClear(XMlkem_top *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMlkem_top_WriteReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_ISR, Mask);
}

u32 XMlkem_top_InterruptGetEnabled(XMlkem_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_IER);
}

u32 XMlkem_top_InterruptGetStatus(XMlkem_top *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMlkem_top_ReadReg(InstancePtr->Control_BaseAddress, XMLKEM_TOP_CONTROL_ADDR_ISR);
}

