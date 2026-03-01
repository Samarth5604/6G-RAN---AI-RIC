set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME mlkem_top_entry_proc}
  {SRCNAME read_phase_Pipeline_VITIS_LOOP_30_1 MODELNAME read_phase_Pipeline_VITIS_LOOP_30_1 RTLNAME mlkem_top_read_phase_Pipeline_VITIS_LOOP_30_1
    SUBMODULES {
      {MODELNAME mlkem_top_flow_control_loop_pipe_sequential_init RTLNAME mlkem_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mlkem_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME read_phase MODELNAME read_phase RTLNAME mlkem_top_read_phase
    SUBMODULES {
      {MODELNAME mlkem_top_regslice_both RTLNAME mlkem_top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME process_phase_Pipeline_VITIS_LOOP_44_1 MODELNAME process_phase_Pipeline_VITIS_LOOP_44_1 RTLNAME mlkem_top_process_phase_Pipeline_VITIS_LOOP_44_1
    SUBMODULES {
      {MODELNAME mlkem_top_mul_16s_13ns_29_1_1 RTLNAME mlkem_top_mul_16s_13ns_29_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mlkem_top_mul_16s_12ns_28_1_1 RTLNAME mlkem_top_mul_16s_12ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mlkem_top_mul_16s_13s_16_1_1 RTLNAME mlkem_top_mul_16s_13s_16_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mlkem_top_mac_muladd_16s_13s_26s_29_4_1 RTLNAME mlkem_top_mac_muladd_16s_13s_26s_29_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME mlkem_top_mac_muladd_16s_13s_29s_29_4_1 RTLNAME mlkem_top_mac_muladd_16s_13s_29s_29_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME mlkem_top_mac_muladd_16s_13s_28s_29_4_1 RTLNAME mlkem_top_mac_muladd_16s_13s_28s_29_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME process_phase MODELNAME process_phase RTLNAME mlkem_top_process_phase}
  {SRCNAME write_phase MODELNAME write_phase RTLNAME mlkem_top_write_phase
    SUBMODULES {
      {MODELNAME mlkem_top_flow_control_loop_pipe RTLNAME mlkem_top_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mlkem_top_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME mlkem_top MODELNAME mlkem_top RTLNAME mlkem_top IS_TOP 1
    SUBMODULES {
      {MODELNAME mlkem_top_fifo_w32_d3_S RTLNAME mlkem_top_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME mode_c_U}
      {MODELNAME mlkem_top_fifo_w16_d256_A RTLNAME mlkem_top_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME coeff_stream_U}
      {MODELNAME mlkem_top_fifo_w16_d256_A RTLNAME mlkem_top_fifo_w16_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME result_stream_U}
      {MODELNAME mlkem_top_start_for_process_phase_U0 RTLNAME mlkem_top_start_for_process_phase_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_process_phase_U0_U}
      {MODELNAME mlkem_top_start_for_write_phase_U0 RTLNAME mlkem_top_start_for_write_phase_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_write_phase_U0_U}
      {MODELNAME mlkem_top_control_s_axi RTLNAME mlkem_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
