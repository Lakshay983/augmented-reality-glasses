set SynModuleInfo {
  {SRCNAME Block_entry1_proc MODELNAME Block_entry1_proc RTLNAME accelerator_v2_Block_entry1_proc}
  {SRCNAME unpack MODELNAME unpack RTLNAME accelerator_v2_unpack
    SUBMODULES {
      {MODELNAME accelerator_v2_regslice_both RTLNAME accelerator_v2_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME accelerator_v2_regslice_both_U}
    }
  }
  {SRCNAME Block_entry14_proc MODELNAME Block_entry14_proc RTLNAME accelerator_v2_Block_entry14_proc}
  {SRCNAME pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2 MODELNAME pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2 RTLNAME accelerator_v2_pad_Pipeline_VITIS_LOOP_67_1_VITIS_LOOP_68_2
    SUBMODULES {
      {MODELNAME accelerator_v2_flow_control_loop_pipe_sequential_init RTLNAME accelerator_v2_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accelerator_v2_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME pad_Pipeline_VITIS_LOOP_79_4 MODELNAME pad_Pipeline_VITIS_LOOP_79_4 RTLNAME accelerator_v2_pad_Pipeline_VITIS_LOOP_79_4
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_32_24_1_1 RTLNAME accelerator_v2_mux_32_24_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pad_Pipeline_VITIS_LOOP_94_6 MODELNAME pad_Pipeline_VITIS_LOOP_94_6 RTLNAME accelerator_v2_pad_Pipeline_VITIS_LOOP_94_6}
  {SRCNAME pad_Pipeline_VITIS_LOOP_102_7 MODELNAME pad_Pipeline_VITIS_LOOP_102_7 RTLNAME accelerator_v2_pad_Pipeline_VITIS_LOOP_102_7
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_42_24_1_1 RTLNAME accelerator_v2_mux_42_24_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pad_Pipeline_VITIS_LOOP_116_9 MODELNAME pad_Pipeline_VITIS_LOOP_116_9 RTLNAME accelerator_v2_pad_Pipeline_VITIS_LOOP_116_9
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_21_24_1_1 RTLNAME accelerator_v2_mux_21_24_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME pad MODELNAME pad RTLNAME accelerator_v2_pad
    SUBMODULES {
      {MODELNAME accelerator_v2_pad_row_buf_V_RAM_2P_BRAM_1R1W RTLNAME accelerator_v2_pad_row_buf_V_RAM_2P_BRAM_1R1W BINDTYPE storage TYPE ram_2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME stream_to_mat MODELNAME stream_to_mat RTLNAME accelerator_v2_stream_to_mat
    SUBMODULES {
      {MODELNAME accelerator_v2_flow_control_loop_pipe RTLNAME accelerator_v2_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accelerator_v2_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME {bgr2gray<9, 0, 484, 644, 1, 311696, 311696>_Pipeline_columnloop} MODELNAME bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop RTLNAME accelerator_v2_bgr2gray_9_0_484_644_1_311696_311696_Pipeline_columnloop
    SUBMODULES {
      {MODELNAME accelerator_v2_mul_mul_8ns_14ns_22_4_1 RTLNAME accelerator_v2_mul_mul_8ns_14ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_8ns_12ns_22ns_22_4_1 RTLNAME accelerator_v2_mac_muladd_8ns_12ns_22ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_8ns_15ns_22ns_23_4_1 RTLNAME accelerator_v2_mac_muladd_8ns_15ns_22ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {bgr2gray<9, 0, 484, 644, 1, 311696, 311696>} MODELNAME bgr2gray_9_0_484_644_1_311696_311696_s RTLNAME accelerator_v2_bgr2gray_9_0_484_644_1_311696_311696_s}
  {SRCNAME {GaussianBlur<5, 1, 0, 484, 644, 1, 311696, 311696>_Pipeline_VITIS_LOOP_85_1} MODELNAME GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1 RTLNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_85_1
    SUBMODULES {
      {MODELNAME accelerator_v2_sitofp_32s_32_4_no_dsp_1 RTLNAME accelerator_v2_sitofp_32s_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_fexp_32ns_32ns_32_8_full_dsp_1 RTLNAME accelerator_v2_fexp_32ns_32ns_32_8_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {GaussianBlur<5, 1, 0, 484, 644, 1, 311696, 311696>_Pipeline_VITIS_LOOP_94_2} MODELNAME GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2 RTLNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_311696_311696_Pipeline_VITIS_LOOP_94_2
    SUBMODULES {
      {MODELNAME accelerator_v2_sitofp_32ns_32_4_no_dsp_1 RTLNAME accelerator_v2_sitofp_32ns_32_4_no_dsp_1 BINDTYPE op TYPE sitofp IMPL auto LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_fpext_32ns_64_2_no_dsp_1 RTLNAME accelerator_v2_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME accelerator_v2_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xFGaussianFilter5x5_Pipeline_Clear_Row_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Clear_Row_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop}
  {SRCNAME xFGaussianFilter5x5_Pipeline_Read_Row2_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Read_Row2_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop}
  {SRCNAME {xfapplygaussian5x5<1, 0, false>} MODELNAME xfapplygaussian5x5_1_0_false_s RTLNAME accelerator_v2_xfapplygaussian5x5_1_0_false_s
    SUBMODULES {
      {MODELNAME accelerator_v2_mul_8ns_8ns_16_1_0 RTLNAME accelerator_v2_mul_8ns_8ns_16_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_am_addmul_8ns_8ns_8ns_17_4_0 RTLNAME accelerator_v2_am_addmul_8ns_8ns_8ns_17_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_am_addmul_9ns_9ns_8ns_18_4_0 RTLNAME accelerator_v2_am_addmul_9ns_9ns_8ns_18_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0 RTLNAME accelerator_v2_ama_addmuladd_8ns_8ns_8ns_17ns_18_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0 RTLNAME accelerator_v2_ama_addmuladd_9ns_9ns_8ns_18ns_19_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_am_addmul_19ns_17ns_8ns_28_4_0 RTLNAME accelerator_v2_am_addmul_19ns_17ns_8ns_28_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0 RTLNAME accelerator_v2_ama_addmuladd_19ns_17ns_8ns_16ns_28_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0 RTLNAME accelerator_v2_ama_addmuladd_18ns_16ns_8ns_28ns_28_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xFGaussianFilter5x5_Pipeline_Col_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Col_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_53_8_1_1 RTLNAME accelerator_v2_mux_53_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFGaussianFilter5x5<0, 484, 644, 1, 0, 1, 311696, 311696, 1, 644, false>} MODELNAME xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s RTLNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s
    SUBMODULES {
      {MODELNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_buf_V_RAM_S2Pbkb RTLNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_311696_311696_1_644_false_s_buf_V_RAM_S2Pbkb BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {GaussianBlur<5, 1, 0, 484, 644, 1, 311696, 311696>} MODELNAME GaussianBlur_5_1_0_484_644_1_311696_311696_s RTLNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_311696_311696_s
    SUBMODULES {
      {MODELNAME accelerator_v2_fdiv_32ns_32ns_32_10_no_dsp_1 RTLNAME accelerator_v2_fdiv_32ns_32ns_32_10_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 9 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME accelerator_v2_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME accelerator_v2_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_311696_311696_s_cf_RAM_AUTO_1R1W RTLNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_311696_311696_s_cf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME mat_to_stream MODELNAME mat_to_stream RTLNAME accelerator_v2_mat_to_stream}
  {SRCNAME process_pixels MODELNAME process_pixels RTLNAME accelerator_v2_process_pixels
    SUBMODULES {
      {MODELNAME accelerator_v2_fifo_w24_d311696_A RTLNAME accelerator_v2_fifo_w24_d311696_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bgr_mat_data_U}
      {MODELNAME accelerator_v2_fifo_w8_d311696_A RTLNAME accelerator_v2_fifo_w8_d311696_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gray_mat_data_U}
      {MODELNAME accelerator_v2_fifo_w8_d311696_A RTLNAME accelerator_v2_fifo_w8_d311696_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME blurred_mat_data_U}
      {MODELNAME accelerator_v2_start_for_bgr2gray_9_0_484_644_1_311696_311696_U0 RTLNAME accelerator_v2_start_for_bgr2gray_9_0_484_644_1_311696_311696_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_bgr2gray_9_0_484_644_1_311696_311696_U0_U}
      {MODELNAME accelerator_v2_start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0 RTLNAME accelerator_v2_start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_GaussianBlur_5_1_0_484_644_1_311696_311696_U0_U}
      {MODELNAME accelerator_v2_start_for_mat_to_stream_U0 RTLNAME accelerator_v2_start_for_mat_to_stream_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_mat_to_stream_U0_U}
    }
  }
  {SRCNAME repack_Pipeline_VITIS_LOOP_205_2 MODELNAME repack_Pipeline_VITIS_LOOP_205_2 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_205_2}
  {SRCNAME repack_Pipeline_VITIS_LOOP_211_3 MODELNAME repack_Pipeline_VITIS_LOOP_211_3 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_211_3
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_21_8_1_1 RTLNAME accelerator_v2_mux_21_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME repack_Pipeline_VITIS_LOOP_238_5 MODELNAME repack_Pipeline_VITIS_LOOP_238_5 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_238_5}
  {SRCNAME repack MODELNAME repack RTLNAME accelerator_v2_repack
    SUBMODULES {
      {MODELNAME accelerator_v2_repack_row_pixels_V_RAM_1WNR_AUTO_1R1W RTLNAME accelerator_v2_repack_row_pixels_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry110_proc MODELNAME Block_entry110_proc RTLNAME accelerator_v2_Block_entry110_proc}
  {SRCNAME accelerator_v2 MODELNAME accelerator_v2 RTLNAME accelerator_v2 IS_TOP 1
    SUBMODULES {
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_out_tmp_channel_U}
      {MODELNAME accelerator_v2_fifo_w24_d307200_A RTLNAME accelerator_v2_fifo_w24_d307200_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bgr_stream_U}
      {MODELNAME accelerator_v2_fifo_w8_d61440_A RTLNAME accelerator_v2_fifo_w8_d61440_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hdr_stream_U}
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_c_channel_U}
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_c17_channel_U}
      {MODELNAME accelerator_v2_fifo_w24_d311296_A RTLNAME accelerator_v2_fifo_w24_d311296_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME padded_stream_U}
      {MODELNAME accelerator_v2_fifo_w8_d311296_A RTLNAME accelerator_v2_fifo_w8_d311296_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gray_stream_U}
      {MODELNAME accelerator_v2_start_for_pad_U0 RTLNAME accelerator_v2_start_for_pad_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pad_U0_U}
      {MODELNAME accelerator_v2_start_for_repack_U0 RTLNAME accelerator_v2_start_for_repack_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_repack_U0_U}
      {MODELNAME accelerator_v2_start_for_process_pixels_U0 RTLNAME accelerator_v2_start_for_process_pixels_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_process_pixels_U0_U}
    }
  }
}
