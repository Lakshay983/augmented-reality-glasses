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
  {SRCNAME {bgr2gray<9, 0, 484, 644, 1, 3872, 3872>_Pipeline_columnloop} MODELNAME bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop RTLNAME accelerator_v2_bgr2gray_9_0_484_644_1_3872_3872_Pipeline_columnloop
    SUBMODULES {
      {MODELNAME accelerator_v2_mul_mul_8ns_14ns_22_4_1 RTLNAME accelerator_v2_mul_mul_8ns_14ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_8ns_12ns_22ns_22_4_1 RTLNAME accelerator_v2_mac_muladd_8ns_12ns_22ns_22_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_8ns_15ns_22ns_23_4_1 RTLNAME accelerator_v2_mac_muladd_8ns_15ns_22ns_23_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {bgr2gray<9, 0, 484, 644, 1, 3872, 3872>} MODELNAME bgr2gray_9_0_484_644_1_3872_3872_s RTLNAME accelerator_v2_bgr2gray_9_0_484_644_1_3872_3872_s}
  {SRCNAME xFGaussianFilter5x5_Pipeline_Clear_Row_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Clear_Row_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Clear_Row_Loop}
  {SRCNAME xFGaussianFilter5x5_Pipeline_Read_Row2_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Read_Row2_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Read_Row2_Loop}
  {SRCNAME {xfapplygaussian5x5<1, 0, false>} MODELNAME xfapplygaussian5x5_1_0_false_s RTLNAME accelerator_v2_xfapplygaussian5x5_1_0_false_s
    SUBMODULES {
      {MODELNAME accelerator_v2_ama_addmuladd_8ns_8ns_7ns_18s_19_4_0 RTLNAME accelerator_v2_ama_addmuladd_8ns_8ns_7ns_18s_19_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_8ns_7ns_17s_18_4_0 RTLNAME accelerator_v2_mac_muladd_8ns_7ns_17s_18_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_v2_mac_muladd_24ns_7ns_30s_32_4_0 RTLNAME accelerator_v2_mac_muladd_24ns_7ns_30s_32_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME xFGaussianFilter5x5_Pipeline_Col_Loop MODELNAME xFGaussianFilter5x5_Pipeline_Col_Loop RTLNAME accelerator_v2_xFGaussianFilter5x5_Pipeline_Col_Loop
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_53_8_1_1 RTLNAME accelerator_v2_mux_53_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {xFGaussianFilter5x5<0, 484, 644, 1, 0, 1, 3872, 3872, 1, 644, false>} MODELNAME xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s RTLNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s
    SUBMODULES {
      {MODELNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_buf_V_RAM_S2P_BRAbkb RTLNAME accelerator_v2_xFGaussianFilter5x5_0_484_644_1_0_1_3872_3872_1_644_false_s_buf_V_RAM_S2P_BRAbkb BINDTYPE storage TYPE ram_s2p IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {GaussianBlur<5, 1, 0, 484, 644, 1, 3872, 3872>} MODELNAME GaussianBlur_5_1_0_484_644_1_3872_3872_s RTLNAME accelerator_v2_GaussianBlur_5_1_0_484_644_1_3872_3872_s}
  {SRCNAME mat_to_stream MODELNAME mat_to_stream RTLNAME accelerator_v2_mat_to_stream}
  {SRCNAME process_pixels MODELNAME process_pixels RTLNAME accelerator_v2_process_pixels
    SUBMODULES {
      {MODELNAME accelerator_v2_fifo_w24_d3872_A RTLNAME accelerator_v2_fifo_w24_d3872_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bgr_mat_data_U}
      {MODELNAME accelerator_v2_fifo_w8_d3872_A RTLNAME accelerator_v2_fifo_w8_d3872_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gray_mat_data_U}
      {MODELNAME accelerator_v2_fifo_w8_d3872_A RTLNAME accelerator_v2_fifo_w8_d3872_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME blurred_mat_data_U}
      {MODELNAME accelerator_v2_start_for_bgr2gray_9_0_484_644_1_3872_3872_U0 RTLNAME accelerator_v2_start_for_bgr2gray_9_0_484_644_1_3872_3872_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_bgr2gray_9_0_484_644_1_3872_3872_U0_U}
      {MODELNAME accelerator_v2_start_for_GaussianBlur_5_1_0_484_644_1_3872_3872_U0 RTLNAME accelerator_v2_start_for_GaussianBlur_5_1_0_484_644_1_3872_3872_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_GaussianBlur_5_1_0_484_644_1_3872_3872_U0_U}
      {MODELNAME accelerator_v2_start_for_mat_to_stream_U0 RTLNAME accelerator_v2_start_for_mat_to_stream_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_mat_to_stream_U0_U}
    }
  }
  {SRCNAME repack_Pipeline_VITIS_LOOP_206_2 MODELNAME repack_Pipeline_VITIS_LOOP_206_2 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_206_2}
  {SRCNAME repack_Pipeline_VITIS_LOOP_212_3 MODELNAME repack_Pipeline_VITIS_LOOP_212_3 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_212_3
    SUBMODULES {
      {MODELNAME accelerator_v2_mux_21_8_1_1 RTLNAME accelerator_v2_mux_21_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME repack_Pipeline_VITIS_LOOP_239_5 MODELNAME repack_Pipeline_VITIS_LOOP_239_5 RTLNAME accelerator_v2_repack_Pipeline_VITIS_LOOP_239_5}
  {SRCNAME repack MODELNAME repack RTLNAME accelerator_v2_repack
    SUBMODULES {
      {MODELNAME accelerator_v2_repack_row_pixels_V_RAM_1WNR_AUTO_1R1W RTLNAME accelerator_v2_repack_row_pixels_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Block_entry110_proc MODELNAME Block_entry110_proc RTLNAME accelerator_v2_Block_entry110_proc}
  {SRCNAME accelerator_v2 MODELNAME accelerator_v2 RTLNAME accelerator_v2 IS_TOP 1
    SUBMODULES {
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_out_tmp_channel_U}
      {MODELNAME accelerator_v2_fifo_w24_d1288_A RTLNAME accelerator_v2_fifo_w24_d1288_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bgr_stream_U}
      {MODELNAME accelerator_v2_fifo_w8_d512_A RTLNAME accelerator_v2_fifo_w8_d512_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME hdr_stream_U}
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_c_channel_U}
      {MODELNAME accelerator_v2_fifo_w1_d2_S RTLNAME accelerator_v2_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_start_c17_channel_U}
      {MODELNAME accelerator_v2_fifo_w24_d1932_A RTLNAME accelerator_v2_fifo_w24_d1932_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME padded_stream_U}
      {MODELNAME accelerator_v2_fifo_w8_d3220_A RTLNAME accelerator_v2_fifo_w8_d3220_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME gray_stream_U}
      {MODELNAME accelerator_v2_start_for_pad_U0 RTLNAME accelerator_v2_start_for_pad_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pad_U0_U}
      {MODELNAME accelerator_v2_start_for_repack_U0 RTLNAME accelerator_v2_start_for_repack_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_repack_U0_U}
      {MODELNAME accelerator_v2_start_for_process_pixels_U0 RTLNAME accelerator_v2_start_for_process_pixels_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_process_pixels_U0_U}
    }
  }
}
