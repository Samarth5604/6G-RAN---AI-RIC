onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xilinx_vip -L xpm -L xil_defaultlib -L xlconstant_v1_1_9 -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L xbip_utils_v3_0_13 -L axi_utils_v2_0_9 -L c_reg_fd_v12_0_9 -L xbip_dsp48_wrapper_v3_0_6 -L xbip_pipe_v3_0_9 -L xbip_dsp48_addsub_v3_0_9 -L xbip_addsub_v3_0_9 -L c_addsub_v12_0_18 -L c_mux_bit_v12_0_9 -L c_shift_ram_v12_0_17 -L xbip_bram18k_v3_0_9 -L mult_gen_v12_0_21 -L cmpy_v6_0_24 -L floating_point_v7_0_23 -L xfft_v9_1_12 -L generic_baseblocks_v2_1_2 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L axis_infrastructure_v1_1_1 -L axis_data_fifo_v2_0_13 -L lib_pkg_v1_0_4 -L lib_fifo_v1_0_19 -L lib_srl_fifo_v1_0_4 -L axi_datamover_v5_1_33 -L axi_sg_v4_1_18 -L axi_dma_v7_1_32 -L axis_broadcaster_v1_1_30 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_5 -L axi_gpio_v2_0_33 -L axi_protocol_converter_v2_1_31 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.thz_pipeline_top xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {thz_pipeline_top.udo}

run 1000ns

quit -force
