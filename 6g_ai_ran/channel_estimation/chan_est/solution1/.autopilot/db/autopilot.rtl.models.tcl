set SynModuleInfo {
  {SRCNAME chan_est_top_Pipeline_buf_loop MODELNAME chan_est_top_Pipeline_buf_loop RTLNAME chan_est_top_chan_est_top_Pipeline_buf_loop
    SUBMODULES {
      {MODELNAME chan_est_top_flow_control_loop_pipe_sequential_init RTLNAME chan_est_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME chan_est_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME chan_est_top_Pipeline_pilot_scan MODELNAME chan_est_top_Pipeline_pilot_scan RTLNAME chan_est_top_chan_est_top_Pipeline_pilot_scan
    SUBMODULES {
      {MODELNAME chan_est_top_mul_16s_15s_30_1_1 RTLNAME chan_est_top_mul_16s_15s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME chan_est_top_mac_muladd_16s_15s_30s_30_4_1 RTLNAME chan_est_top_mac_muladd_16s_15s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME chan_est_top_mac_mulsub_16s_15s_30s_30_4_1 RTLNAME chan_est_top_mac_mulsub_16s_15s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME chan_est_top_chan_est_top_Pipeline_pilot_scan_DMRS_RE_ROM_AUTO_1R RTLNAME chan_est_top_chan_est_top_Pipeline_pilot_scan_DMRS_RE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME chan_est_top_chan_est_top_Pipeline_pilot_scan_DMRS_IM_ROM_AUTO_1R RTLNAME chan_est_top_chan_est_top_Pipeline_pilot_scan_DMRS_IM_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME chan_est_top_Pipeline_zoh_fill MODELNAME chan_est_top_Pipeline_zoh_fill RTLNAME chan_est_top_chan_est_top_Pipeline_zoh_fill
    SUBMODULES {
      {MODELNAME chan_est_top_chan_est_top_Pipeline_zoh_fill_PILOT_FOR_K_ROM_AUTO_1R RTLNAME chan_est_top_chan_est_top_Pipeline_zoh_fill_PILOT_FOR_K_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME chan_est_top_Pipeline_weight_out MODELNAME chan_est_top_Pipeline_weight_out RTLNAME chan_est_top_chan_est_top_Pipeline_weight_out}
  {SRCNAME chan_est_top MODELNAME chan_est_top RTLNAME chan_est_top IS_TOP 1
    SUBMODULES {
      {MODELNAME chan_est_top_fft_re_RAM_AUTO_1R1W RTLNAME chan_est_top_fft_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME chan_est_top_pilot_h_re_RAM_AUTO_1R1W RTLNAME chan_est_top_pilot_h_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME chan_est_top_regslice_both RTLNAME chan_est_top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
