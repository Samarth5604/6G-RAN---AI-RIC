set SynModuleInfo {
  {SRCNAME sc_mapper_rx MODELNAME sc_mapper_rx RTLNAME sc_mapper_rx IS_TOP 1
    SUBMODULES {
      {MODELNAME sc_mapper_rx_DATA_SC_IDX_ROM_AUTO_1R RTLNAME sc_mapper_rx_DATA_SC_IDX_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME sc_mapper_rx_regslice_both RTLNAME sc_mapper_rx_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME sc_mapper_rx_flow_control_loop_delay_pipe RTLNAME sc_mapper_rx_flow_control_loop_delay_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sc_mapper_rx_flow_control_loop_delay_pipe_U}
    }
  }
}
