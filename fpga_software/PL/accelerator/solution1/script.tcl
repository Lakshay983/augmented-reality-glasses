############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project accelerator
add_files accelerator.cpp -cflags "-Wno-unknown-pragmas -I/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include"
add_files -tb accelerator_tb.cpp -cflags "-I/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/resources/Vitis_Libraries/vision/L1/include -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
#source "./accelerator/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
