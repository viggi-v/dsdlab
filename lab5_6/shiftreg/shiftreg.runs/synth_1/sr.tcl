# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {Common-41} -limit 4294967295
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/dsdlab/friday/250_202/lab5/shiftreg/shiftreg.cache/wt [current_project]
set_property parent.project_path D:/dsdlab/friday/250_202/lab5/shiftreg/shiftreg.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib D:/dsdlab/friday/250_202/lab5/shiftreg/shiftreg.srcs/sources_1/new/sr.vhd
read_xdc D:/dsdlab/friday/250_202/lab5/shiftreg/shiftreg.srcs/constrs_1/new/constrain.xdc
set_property used_in_implementation false [get_files D:/dsdlab/friday/250_202/lab5/shiftreg/shiftreg.srcs/constrs_1/new/constrain.xdc]

synth_design -top sr -part xc7a100tcsg324-1
write_checkpoint -noxdef sr.dcp
catch { report_utilization -file sr_utilization_synth.rpt -pb sr_utilization_synth.pb }
