# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/dsdlab/friday/250_202/lab5/twoscompl/twoscompl.cache/wt [current_project]
set_property parent.project_path D:/dsdlab/friday/250_202/lab5/twoscompl/twoscompl.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_vhdl -library xil_defaultlib D:/dsdlab/friday/250_202/lab5/twoscompl/twoscompl.srcs/sources_1/new/twoscomp.vhd
read_xdc D:/dsdlab/friday/250_202/lab5/twoscompl/twoscompl.srcs/constrs_1/new/pin_config.xdc
set_property used_in_implementation false [get_files D:/dsdlab/friday/250_202/lab5/twoscompl/twoscompl.srcs/constrs_1/new/pin_config.xdc]

synth_design -top twoscomp -part xc7a100tcsg324-1
write_checkpoint -noxdef twoscomp.dcp
catch { report_utilization -file twoscomp_utilization_synth.rpt -pb twoscomp_utilization_synth.pb }
