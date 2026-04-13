
/usr/local/packages/Xilinx_2022.2/Vivado/2022.2/bin/xelab xil_defaultlib.apatb_accelerator_v2_top glbl -Oenable_linking_all_libraries  -prj accelerator_v2.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_15 --lib "ieee_proposed=./ieee_proposed" -s accelerator_v2 -debug wave
/usr/local/packages/Xilinx_2022.2/Vivado/2022.2/bin/xsim --noieeewarnings accelerator_v2 -tclbatch accelerator_v2.tcl -view accelerator_v2_dataflow_ana.wcfg -protoinst accelerator_v2.protoinst

