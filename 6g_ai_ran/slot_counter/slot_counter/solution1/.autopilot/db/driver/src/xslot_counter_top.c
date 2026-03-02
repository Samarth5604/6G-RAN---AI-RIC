// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xslot_counter_top.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSlot_counter_top_CfgInitialize(XSlot_counter_top *InstancePtr, XSlot_counter_top_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSlot_counter_top_Set_sync_req(XSlot_counter_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlot_counter_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_REQ_DATA, Data);
}

u32 XSlot_counter_top_Get_sync_req(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_REQ_DATA);
    return Data;
}

void XSlot_counter_top_Set_sync_symbol(XSlot_counter_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlot_counter_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_SYMBOL_DATA, Data);
}

u32 XSlot_counter_top_Get_sync_symbol(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_SYMBOL_DATA);
    return Data;
}

void XSlot_counter_top_Set_sync_slot(XSlot_counter_top *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSlot_counter_top_WriteReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_SLOT_DATA, Data);
}

u32 XSlot_counter_top_Get_sync_slot(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYNC_SLOT_DATA);
    return Data;
}

u32 XSlot_counter_top_Get_symbol_num_out(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYMBOL_NUM_OUT_DATA);
    return Data;
}

u32 XSlot_counter_top_Get_symbol_num_out_vld(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SYMBOL_NUM_OUT_CTRL);
    return Data & 0x1;
}

u32 XSlot_counter_top_Get_slot_num_out(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SLOT_NUM_OUT_DATA);
    return Data;
}

u32 XSlot_counter_top_Get_slot_num_out_vld(XSlot_counter_top *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSlot_counter_top_ReadReg(InstancePtr->Ctrl_BaseAddress, XSLOT_COUNTER_TOP_CTRL_ADDR_SLOT_NUM_OUT_CTRL);
    return Data & 0x1;
}

