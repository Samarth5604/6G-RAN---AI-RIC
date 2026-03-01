vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_17
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_pkg_v1_0_4
vlib questa_lib/msim/fifo_generator_v13_2_10
vlib questa_lib/msim/lib_fifo_v1_0_19
vlib questa_lib/msim/lib_srl_fifo_v1_0_4
vlib questa_lib/msim/lib_cdc_v1_0_3
vlib questa_lib/msim/axi_datamover_v5_1_33
vlib questa_lib/msim/axi_sg_v4_1_18
vlib questa_lib/msim/axi_dma_v7_1_32
vlib questa_lib/msim/proc_sys_reset_v5_0_15
vlib questa_lib/msim/xlconstant_v1_1_9
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_31
vlib questa_lib/msim/generic_baseblocks_v2_1_2
vlib questa_lib/msim/axi_data_fifo_v2_1_30
vlib questa_lib/msim/axi_protocol_converter_v2_1_31
vlib questa_lib/msim/axis_infrastructure_v1_1_1
vlib questa_lib/msim/axis_data_fifo_v2_0_13

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 questa_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_pkg_v1_0_4 questa_lib/msim/lib_pkg_v1_0_4
vmap fifo_generator_v13_2_10 questa_lib/msim/fifo_generator_v13_2_10
vmap lib_fifo_v1_0_19 questa_lib/msim/lib_fifo_v1_0_19
vmap lib_srl_fifo_v1_0_4 questa_lib/msim/lib_srl_fifo_v1_0_4
vmap lib_cdc_v1_0_3 questa_lib/msim/lib_cdc_v1_0_3
vmap axi_datamover_v5_1_33 questa_lib/msim/axi_datamover_v5_1_33
vmap axi_sg_v4_1_18 questa_lib/msim/axi_sg_v4_1_18
vmap axi_dma_v7_1_32 questa_lib/msim/axi_dma_v7_1_32
vmap proc_sys_reset_v5_0_15 questa_lib/msim/proc_sys_reset_v5_0_15
vmap xlconstant_v1_1_9 questa_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_31 questa_lib/msim/axi_register_slice_v2_1_31
vmap generic_baseblocks_v2_1_2 questa_lib/msim/generic_baseblocks_v2_1_2
vmap axi_data_fifo_v2_1_30 questa_lib/msim/axi_data_fifo_v2_1_30
vmap axi_protocol_converter_v2_1_31 questa_lib/msim/axi_protocol_converter_v2_1_31
vmap axis_infrastructure_v1_1_1 questa_lib/msim/axis_infrastructure_v1_1_1
vmap axis_data_fifo_v2_0_13 questa_lib/msim/axis_data_fifo_v2_0_13

vlog -work xilinx_vip -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"/home/samarth/Desktop/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/home/samarth/Desktop/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/home/samarth/Desktop/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_zynq_ultra_ps_e_0_0/sim/thz_pipeline_top_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_pkg_v1_0_4 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_19 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/0a12/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_33 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/bf20/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_18 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/6f54/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_32 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/8830/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_dma_0_0/sim/thz_pipeline_top_axi_dma_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_15 -64 -93  \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_rst_ps8_0_266M_0/sim/thz_pipeline_top_rst_ps8_0_266M_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/sim/bd_fc49.v" \

vlog -work xlconstant_v1_1_9 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_0/sim/bd_fc49_one_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_1/sim/bd_fc49_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_2/sim/bd_fc49_arsw_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_3/sim/bd_fc49_rsw_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_4/sim/bd_fc49_awsw_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_5/sim/bd_fc49_wsw_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_6/sim/bd_fc49_bsw_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/98d8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_7/sim/bd_fc49_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_8/sim/bd_fc49_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/a950/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_9/sim/bd_fc49_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_10/sim/bd_fc49_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_11/sim/bd_fc49_sarn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_12/sim/bd_fc49_srn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_13/sim/bd_fc49_s01mmu_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_14/sim/bd_fc49_s01tr_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_15/sim/bd_fc49_s01sic_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_16/sim/bd_fc49_s01a2s_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_17/sim/bd_fc49_sawn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_18/sim/bd_fc49_swn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_19/sim/bd_fc49_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_20/sim/bd_fc49_m00s2a_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_21/sim/bd_fc49_m00arn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_22/sim/bd_fc49_m00rn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_23/sim/bd_fc49_m00awn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_24/sim/bd_fc49_m00wn_0.sv" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_25/sim/bd_fc49_m00bn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/1f04/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu  -sv -L axi_vip_v1_1_17 -L smartconnect_v1_0 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/bd_0/ip/ip_26/sim/bd_fc49_m00e_0.sv" \

vlog -work axi_register_slice_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axi_smc_0/sim/thz_pipeline_top_axi_smc_0.v" \
"../../../bd/thz_pipeline_top/sim/thz_pipeline_top.v" \

vlog -work generic_baseblocks_v2_1_2 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_30 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_auto_pc_0/sim/thz_pipeline_top_auto_pc_0.v" \

vlog -work axis_infrastructure_v1_1_1 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_13 -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/2e12/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/a317/hdl" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/434f/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/f0b6/hdl/verilog" "+incdir+../../../../project_1.gen/sources_1/bd/thz_pipeline_top/ipshared/c783/hdl/verilog" "+incdir+../../../../project_1.srcs/sources_1/bd/thz_pipeline_top/ipshared/ec67/hdl" "+incdir+/home/samarth/Desktop/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/thz_pipeline_top/ip/thz_pipeline_top_axis_data_fifo_0_0/sim/thz_pipeline_top_axis_data_fifo_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

