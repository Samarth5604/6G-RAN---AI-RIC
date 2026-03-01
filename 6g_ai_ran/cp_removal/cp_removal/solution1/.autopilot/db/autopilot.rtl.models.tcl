set SynModuleInfo {
  {SRCNAME cp_removal_Pipeline_cp_discard MODELNAME cp_removal_Pipeline_cp_discard RTLNAME cp_removal_cp_removal_Pipeline_cp_discard
    SUBMODULES {
      {MODELNAME cp_removal_flow_control_loop_pipe_sequential_init RTLNAME cp_removal_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME cp_removal_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME cp_removal_Pipeline_cp_forward MODELNAME cp_removal_Pipeline_cp_forward RTLNAME cp_removal_cp_removal_Pipeline_cp_forward}
  {SRCNAME cp_removal MODELNAME cp_removal RTLNAME cp_removal IS_TOP 1
    SUBMODULES {
      {MODELNAME cp_removal_regslice_both RTLNAME cp_removal_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
