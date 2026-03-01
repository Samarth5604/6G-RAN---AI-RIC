
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [1:0] axis_block_sigs;
wire [7:0] inst_idle_sigs;
wire [3:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~read_phase_U0.grp_read_phase_Pipeline_VITIS_LOOP_30_1_fu_52.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~write_phase_U0.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc_U0.ap_done & ~entry_proc_U0.ap_continue) | ~entry_proc_U0.mode_c_blk_n;
assign inst_idle_sigs[1] = read_phase_U0.ap_idle;
assign inst_block_sigs[1] = (read_phase_U0.ap_done & ~read_phase_U0.ap_continue) | ~read_phase_U0.grp_read_phase_Pipeline_VITIS_LOOP_30_1_fu_52.coeff_stream_blk_n;
assign inst_idle_sigs[2] = process_phase_U0.ap_idle;
assign inst_block_sigs[2] = (process_phase_U0.ap_done & ~process_phase_U0.ap_continue) | ~process_phase_U0.mode_blk_n | ~process_phase_U0.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.coeff_stream_blk_n | ~process_phase_U0.grp_process_phase_Pipeline_VITIS_LOOP_44_1_fu_38.result_stream_blk_n;
assign inst_idle_sigs[3] = write_phase_U0.ap_idle;
assign inst_block_sigs[3] = (write_phase_U0.ap_done & ~write_phase_U0.ap_continue) | ~write_phase_U0.result_stream_blk_n;

assign inst_idle_sigs[4] = 1'b0;
assign inst_idle_sigs[5] = read_phase_U0.ap_idle;
assign inst_idle_sigs[6] = read_phase_U0.grp_read_phase_Pipeline_VITIS_LOOP_30_1_fu_52.ap_idle;
assign inst_idle_sigs[7] = write_phase_U0.ap_idle;

mlkem_top_hls_deadlock_idx0_monitor mlkem_top_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
