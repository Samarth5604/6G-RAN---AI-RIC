create_pblock pblock_chan_est
add_cells_to_pblock [get_pblocks pblock_chan_est] [get_cells -quiet [list thz_pipeline_top_i/chan_est_top_0]]
resize_pblock [get_pblocks pblock_chan_est] -add {SLICE_X50Y0:SLICE_X100Y100}
set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets {thz_pipeline_top_i/zynq_ultra_ps_e_0/inst/pl_clk_unbuffered[0]}]

set_multicycle_path -hold -from [get_clocks clk_pl_0] -to [get_cells {thz_pipeline_top_i/chan_est_top_0/inst/ap_CS_fsm_reg[*]}] 1
