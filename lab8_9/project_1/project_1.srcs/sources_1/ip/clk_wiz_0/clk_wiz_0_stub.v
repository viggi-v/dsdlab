// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Mar 24 14:24:45 2017
// Host        : dsp7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub {d:/dsdlab/friday/250_202/lab
//               8/project_1/project_1.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_stub.v}
// Design      : clk_wiz_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_wiz_0(clk_5, clk_out1, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_5,clk_out1,reset,locked" */;
  input clk_5;
  output clk_out1;
  input reset;
  output locked;
endmodule
