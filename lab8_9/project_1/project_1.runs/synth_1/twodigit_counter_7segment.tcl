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
set_property webtalk.parent_dir {D:/dsdlab/friday/250_202/lab 8/project_1/project_1.cache/wt} [current_project]
set_property parent.project_path {D:/dsdlab/friday/250_202/lab 8/project_1/project_1.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files -quiet {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/c_counter_binary_0_synth_1/c_counter_binary_0.dcp}}
set_property used_in_implementation false [get_files {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/c_counter_binary_0_synth_1/c_counter_binary_0.dcp}}]
add_files -quiet {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/clk_5MHz_synth_1/clk_5MHz.dcp}}
set_property used_in_implementation false [get_files {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/clk_5MHz_synth_1/clk_5MHz.dcp}}]
add_files -quiet {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/ila_dig0_synth_1/ila_dig0.dcp}}
set_property used_in_implementation false [get_files {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/ila_dig0_synth_1/ila_dig0.dcp}}]
read_vhdl -library xil_defaultlib {
  {D:/dsdlab/friday/250_202/lab 8/lab8-20170323/clk_divider_refresh_rate_2display.vhd}
  {D:/dsdlab/friday/250_202/lab 8/lab8-20170323/clk_divider_1hz_behavior.vhd}
  {D:/dsdlab/friday/250_202/lab 8/lab8-20170323/bcd27seg.vhd}
  {D:/dsdlab/friday/250_202/lab 8/lab8-20170323/twodigit_counter_7segment_-_to_be_edited.vhd}
}
read_xdc {{D:/dsdlab/friday/250_202/lab 8/lab8-20170323/two_digit_counter_7segment.xdc}}
set_property used_in_implementation false [get_files {{D:/dsdlab/friday/250_202/lab 8/lab8-20170323/two_digit_counter_7segment.xdc}}]

read_xdc {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/constrs_1/new/two_digit_temp.xdc}}
set_property used_in_implementation false [get_files {{D:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/constrs_1/new/two_digit_temp.xdc}}]

synth_design -top twodigit_counter_7segment -part xc7a100tcsg324-1
write_checkpoint -noxdef twodigit_counter_7segment.dcp
catch { report_utilization -file twodigit_counter_7segment_utilization_synth.rpt -pb twodigit_counter_7segment_utilization_synth.pb }