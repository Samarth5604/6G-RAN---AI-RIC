#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/samarth/Desktop/Vitis/2024.1/bin:/home/samarth/Desktop/Vivado/2024.1/ids_lite/ISE/bin/lin64:/home/samarth/Desktop/Vivado/2024.1/bin
else
  PATH=/home/samarth/Desktop/Vitis/2024.1/bin:/home/samarth/Desktop/Vivado/2024.1/ids_lite/ISE/bin/lin64:/home/samarth/Desktop/Vivado/2024.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/samarth/Desktop/6g_ai_ran/project_1/project_1.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log thz_pipeline_top_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source thz_pipeline_top_wrapper.tcl -notrace


