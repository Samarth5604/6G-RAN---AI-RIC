set_property SRC_FILE_INFO {cfile:/home/samarth/Desktop/6g_ai_ran/project_1/project_1.srcs/constrs_1/new/impl_1.xdc rfile:../../../project_1.srcs/constrs_1/new/impl_1.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
create_pblock pblock_chan_est
resize_pblock [get_pblocks pblock_chan_est] -add {SLICE_X50Y0:SLICE_X100Y100}
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
add_cells_to_pblock [get_pblocks pblock_chan_est] [get_cells -quiet [list thz_pipeline_top_i/chan_est_top_0]]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets {thz_pipeline_top_i/zynq_ultra_ps_e_0/inst/pl_clk_unbuffered[0]}]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -hold -from [get_clocks clk_pl_0] -to [get_cells {thz_pipeline_top_i/chan_est_top_0/inst/ap_CS_fsm_reg[*]}] 1
