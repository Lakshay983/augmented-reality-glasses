dict set slaves CTRL {ports {in_breath {type o_ap_vld width 8} out_breath {type o_ap_vld width 8} bgr_fifo_breath {type o_ap_vld width 8} pad_fifo_breath {type o_ap_vld width 8} gray_fifo_breath {type o_ap_vld width 8} ap_start {type ap_ctrl width 1} ap_done {type ap_ctrl width 1} ap_ready {type ap_ctrl width 1} ap_idle {type ap_ctrl width 1}} mems {} has_ctrl 1}
set datawidth 32
set addrwidth 64
set intr_clr_mode TOW
