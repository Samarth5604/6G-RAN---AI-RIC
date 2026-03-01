############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project chan_est
set_top chan_est_top
add_files chan_est.cpp
add_files chan_est.h
add_files dmrs_pilots.h
add_files -tb chan_est_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3.33 -name default
config_export -format ip_catalog -output /home/samarth/Desktop/6g_ai_ran/channel_estimation -rtl verilog
#source "./chan_est/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output /home/samarth/Desktop/6g_ai_ran/channel_estimation
