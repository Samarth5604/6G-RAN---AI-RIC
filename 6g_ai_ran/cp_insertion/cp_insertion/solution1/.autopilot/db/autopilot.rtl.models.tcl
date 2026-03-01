set SynModuleInfo {
  {SRCNAME cp_insertion_Pipeline_buf_fill MODELNAME cp_insertion_Pipeline_buf_fill RTLNAME cp_insertion_cp_insertion_Pipeline_buf_fill
    SUBMODULES {
      {MODELNAME cp_insertion_flow_control_loop_pipe_sequential_init RTLNAME cp_insertion_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cp_insertion_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cp_insertion_Pipeline_cp_out MODELNAME cp_insertion_Pipeline_cp_out RTLNAME cp_insertion_cp_insertion_Pipeline_cp_out
    SUBMODULES {
      {MODELNAME cp_insertion_sparsemux_9_2_32_1_1 RTLNAME cp_insertion_sparsemux_9_2_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME cp_insertion_sparsemux_9_2_4_1_1 RTLNAME cp_insertion_sparsemux_9_2_4_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME cp_insertion_Pipeline_data_out MODELNAME cp_insertion_Pipeline_data_out RTLNAME cp_insertion_cp_insertion_Pipeline_data_out}
  {SRCNAME cp_insertion MODELNAME cp_insertion RTLNAME cp_insertion IS_TOP 1
    SUBMODULES {
      {MODELNAME cp_insertion_buf_data_RAM_AUTO_1R1W RTLNAME cp_insertion_buf_data_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cp_insertion_buf_strb_RAM_AUTO_1R1W RTLNAME cp_insertion_buf_strb_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cp_insertion_regslice_both RTLNAME cp_insertion_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
