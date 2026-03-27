create_project prj -part xcvu11p-flga2577-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_sitofp_32s_32_2_no_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_fexp_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_sitofp_32ns_32_2_no_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_fpext_32ns_64_1_no_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_dadd_64ns_64ns_64_4_full_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_fdiv_32ns_32ns_32_7_no_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_faddfsub_32ns_32ns_32_3_full_dsp_1_ip.tcl"
source "/misc/scratch/gwl459/augmented-reality-glasses/fpga_software/PL/accelerator_v2/solution1/syn/verilog/accelerator_v2_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
