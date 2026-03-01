############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project ml_kem_pqc
set_top mlkem_top
add_files mlkem_ip.cpp
add_files mlkem_types.h
add_files ntt_engine.cpp
add_files -tb mlkem_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3.33 -name default
config_export -format ip_catalog -output /home/samarth/Desktop/6g_ai_ran -rtl verilog
source "./ml_kem_pqc/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/samarth/Desktop/6g_ai_ran
