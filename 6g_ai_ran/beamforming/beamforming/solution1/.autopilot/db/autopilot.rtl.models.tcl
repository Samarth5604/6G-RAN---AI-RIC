set SynModuleInfo {
  {SRCNAME beamformer_top_Pipeline_weight_load MODELNAME beamformer_top_Pipeline_weight_load RTLNAME beamformer_top_beamformer_top_Pipeline_weight_load
    SUBMODULES {
      {MODELNAME beamformer_top_flow_control_loop_pipe_sequential_init RTLNAME beamformer_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME beamformer_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME beamformer_top_Pipeline_subcarrier_loop MODELNAME beamformer_top_Pipeline_subcarrier_loop RTLNAME beamformer_top_beamformer_top_Pipeline_subcarrier_loop
    SUBMODULES {
      {MODELNAME beamformer_top_mul_16s_16s_32_1_1 RTLNAME beamformer_top_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME beamformer_top MODELNAME beamformer_top RTLNAME beamformer_top IS_TOP 1
    SUBMODULES {
      {MODELNAME beamformer_top_weights_re_RAM_AUTO_1R1W RTLNAME beamformer_top_weights_re_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME beamformer_top_regslice_both RTLNAME beamformer_top_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
