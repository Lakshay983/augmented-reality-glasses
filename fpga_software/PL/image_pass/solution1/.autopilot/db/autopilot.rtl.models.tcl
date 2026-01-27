set SynModuleInfo {
  {SRCNAME image_passthrough MODELNAME image_passthrough RTLNAME image_passthrough IS_TOP 1
    SUBMODULES {
      {MODELNAME image_passthrough_CTRL_s_axi RTLNAME image_passthrough_CTRL_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME image_passthrough_regslice_both RTLNAME image_passthrough_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME image_passthrough_regslice_both_U}
    }
  }
}
