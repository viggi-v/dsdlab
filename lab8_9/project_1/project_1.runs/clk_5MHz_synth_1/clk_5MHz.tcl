# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/dsdlab/friday/250_202/lab 8/project_1/project_1.cache/wt} [current_project]
set_property parent.project_path {D:/dsdlab/friday/250_202/lab 8/project_1/project_1.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
read_ip {{d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xci}}
set_property is_locked true [get_files {{d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz.xci}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top clk_5MHz -part xc7a100tcsg324-1 -mode out_of_context
rename_ref -prefix_all clk_5MHz_
write_checkpoint -noxdef clk_5MHz.dcp
catch { report_utilization -file clk_5MHz_utilization_synth.rpt -pb clk_5MHz_utilization_synth.pb }
if { [catch {
  file copy -force {D:/dsdlab/friday/250_202/lab 8/project_1/project_1.runs/clk_5MHz_synth_1/clk_5MHz.dcp} {d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz.dcp}
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub {d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub {d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim {d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz_funcsim.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim {d:/dsdlab/friday/250_202/lab 8/project_1/project_1.srcs/sources_1/ip/clk_5MHz/clk_5MHz_funcsim.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
