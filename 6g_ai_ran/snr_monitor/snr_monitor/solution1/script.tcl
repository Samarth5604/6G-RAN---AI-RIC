############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project snr_monitor
set_top snr_monitor_top
add_files ../channel_estimation/chan_est.cpp
add_files ../channel_estimation/chan_est.h
add_files ../channel_estimation/dmrs_pilots.h
add_files snr_monitor.cpp
add_files snr_monitor.h
add_files -tb snr_monitor_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 3.33 -name default
#source "./snr_monitor/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
