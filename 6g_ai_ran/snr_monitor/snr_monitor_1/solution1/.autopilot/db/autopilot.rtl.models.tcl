set SynModuleInfo {
  {SRCNAME snr_monitor_top_Pipeline_buf_loop MODELNAME snr_monitor_top_Pipeline_buf_loop RTLNAME snr_monitor_top_snr_monitor_top_Pipeline_buf_loop
    SUBMODULES {
      {MODELNAME snr_monitor_top_flow_control_loop_pipe_sequential_init RTLNAME snr_monitor_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME snr_monitor_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME snr_monitor_top_Pipeline_weight_drain MODELNAME snr_monitor_top_Pipeline_weight_drain RTLNAME snr_monitor_top_snr_monitor_top_Pipeline_weight_drain}
  {SRCNAME snr_monitor_top_Pipeline_pilot_snr MODELNAME snr_monitor_top_Pipeline_pilot_snr RTLNAME snr_monitor_top_snr_monitor_top_Pipeline_pilot_snr
    SUBMODULES {
      {MODELNAME snr_monitor_top_mul_16s_15s_30_1_1 RTLNAME snr_monitor_top_mul_16s_15s_30_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME snr_monitor_top_mul_16s_16s_32_1_1 RTLNAME snr_monitor_top_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME snr_monitor_top_mac_mulsub_16s_15s_30s_30_4_1 RTLNAME snr_monitor_top_mac_mulsub_16s_15s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME snr_monitor_top_mac_muladd_16s_15s_30s_30_4_1 RTLNAME snr_monitor_top_mac_muladd_16s_15s_30s_30_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME snr_monitor_top_mac_muladd_16s_16s_32s_33_4_1 RTLNAME snr_monitor_top_mac_muladd_16s_16s_32s_33_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME snr_monitor_top_snr_monitor_top_Pipeline_pilot_snr_DMRS_RE_ROM_AUTO_1R RTLNAME snr_monitor_top_snr_monitor_top_Pipeline_pilot_snr_DMRS_RE_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME snr_monitor_top_snr_monitor_top_Pipeline_pilot_snr_DMRS_IM_ROM_AUTO_1R RTLNAME snr_monitor_top_snr_monitor_top_Pipeline_pilot_snr_DMRS_IM_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME snr_monitor_top MODELNAME snr_monitor_top RTLNAME snr_monitor_top IS_TOP 1
    SUBMODULES {
      {MODELNAME snr_monitor_top_udiv_64s_39ns_32_68_seq_1 RTLNAME snr_monitor_top_udiv_64s_39ns_32_68_seq_1 BINDTYPE op TYPE udiv IMPL auto_seq LATENCY 67 ALLOW_PRAGMA 1}
      {MODELNAME snr_monitor_top_fft_re_RAM_AUTO_1R1W RTLNAME snr_monitor_top_fft_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME snr_monitor_top_SNR_s_axi RTLNAME snr_monitor_top_SNR_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME snr_monitor_top_regslice_both RTLNAME snr_monitor_top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
