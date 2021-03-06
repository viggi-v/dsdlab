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
set_property webtalk.parent_dir D:/dsdlab/friday/250_202/lab10/simpson/simpson.cache/wt [current_project]
set_property parent.project_path D:/dsdlab/friday/250_202/lab10/simpson/simpson.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files d:/dsdlab/friday/250_202/lab10/simpson/values_bart.coe
add_files -quiet D:/dsdlab/friday/250_202/lab10/simpson/simpson.runs/blk_mem_gen_1_synth_1/blk_mem_gen_1.dcp
set_property used_in_implementation false [get_files D:/dsdlab/friday/250_202/lab10/simpson/simpson.runs/blk_mem_gen_1_synth_1/blk_mem_gen_1.dcp]
add_files -quiet D:/dsdlab/friday/250_202/lab10/simpson/simpson.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp
set_property used_in_implementation false [get_files D:/dsdlab/friday/250_202/lab10/simpson/simpson.runs/clk_wiz_0_synth_1/clk_wiz_0.dcp]
read_vhdl -library xil_defaultlib {
  D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/sources_1/new/reader.vhd
  D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/sources_1/new/vga_controller.vhd
  D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/sources_1/new/mux.vhd
  D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/sources_1/new/encryption.vhd
  D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/sources_1/new/main_-_to_be_edited.vhd
}
read_xdc D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/constrs_1/new/pins.xdc
set_property used_in_implementation false [get_files D:/dsdlab/friday/250_202/lab10/simpson/simpson.srcs/constrs_1/new/pins.xdc]

synth_design -top main -part xc7a100tcsg324-1
write_checkpoint -noxdef main.dcp
catch { report_utilization -file main_utilization_synth.rpt -pb main_utilization_synth.pb }
