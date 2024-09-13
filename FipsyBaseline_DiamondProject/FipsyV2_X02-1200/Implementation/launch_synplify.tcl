#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files/Implementation/launch_synplify.tcl
#-- Written on Tue Aug 27 18:57:32 2024

project -close
set filename "C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files/Implementation/Implementation_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_1200HC
set_option -package SG32C
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency auto
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	set_option -frequency 1
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -include_path "C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files"
add_file -verilog -vlog_std v2001 "C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files/Source/Fipsy_Top.v"
add_file -verilog -vlog_std v2001 "C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files/Source/AppModules/FreqDiv20Bit.v"
#-- top module name
set_option -top_module {}
project -result_file {C:/Users/enact/Projects/Fipsy-FPGA-edu/Examples/FipsyV2 - XO2-1200/1. Blinky/project_files/Implementation/Implementation.edi}
project -save "$filename"
