# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config  -string {{temp_reg}}  -suppress 
set_msg_config  -string {{mem_reg}}  -suppress 
set_msg_config  -string {{tempStr}}  -suppress 
set_msg_config  -string {{sendStr}}  -suppress 
set_msg_config  -string {{strEnd}}  -suppress 
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.cache/wt [current_project]
set_property parent.project_path G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib {
  G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/sources_1/imports/Basys3_Basic_Demo_1/UART_TX_CTRL.vhd
  G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/sources_1/imports/Downloads/sorting_algo.vhd
  G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/sources_1/new/Interface.vhd
  G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/sources_1/new/binary_to_ascii.vhd
}
read_xdc G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/constrs_1/imports/basys3_master/Basys3_Master.xdc
set_property used_in_implementation false [get_files G:/Users/Steven/FPGADesignProjects/final_project/project_1/project_1.srcs/constrs_1/imports/basys3_master/Basys3_Master.xdc]

synth_design -top Interface -part xc7a35tcpg236-1
write_checkpoint -noxdef Interface.dcp
catch { report_utilization -file Interface_utilization_synth.rpt -pb Interface_utilization_synth.pb }
