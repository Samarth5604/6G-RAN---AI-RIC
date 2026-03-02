############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project sc_mapping
set_top sc_mapper_rx
add_files sc_map_table.h
add_files sc_mapper.cpp
add_files sc_mapper.h
add_files -tb sc_mapper_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3.53 -name default
config_export -output /home/samarth/Desktop/6G-RAN---AI-RIC/6g_ai_ran/subcarrier_mapping
#source "./sc_mapping/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/samarth/Desktop/6G-RAN---AI-RIC/6g_ai_ran/subcarrier_mapping
