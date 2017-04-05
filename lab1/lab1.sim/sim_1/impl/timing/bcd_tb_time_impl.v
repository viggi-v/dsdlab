// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Jan 20 15:59:59 2017
// Host        : dsp7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/dsdlab/friday/250_202/lab1/lab1.sim/sim_1/impl/timing/bcd_tb_time_impl.v
// Design      : bcd_to_seven_seg
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "994180a3" *) 
(* NotValidForBitStream *)
module bcd_to_seven_seg
   (bcd,
    seg,
    enab);
  input [3:0]bcd;
  output [7:0]seg;
  output [7:0]enab;

  wire [3:0]bcd;
  wire [3:0]bcd_IBUF;
  wire [7:0]enab;
  wire [7:0]seg;
  wire [7:0]seg_OBUF;

initial begin
 $sdf_annotate("bcd_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \bcd_IBUF[0]_inst 
       (.I(bcd[0]),
        .O(bcd_IBUF[0]));
  IBUF \bcd_IBUF[1]_inst 
       (.I(bcd[1]),
        .O(bcd_IBUF[1]));
  IBUF \bcd_IBUF[2]_inst 
       (.I(bcd[2]),
        .O(bcd_IBUF[2]));
  IBUF \bcd_IBUF[3]_inst 
       (.I(bcd[3]),
        .O(bcd_IBUF[3]));
  OBUF \enab_OBUF[0]_inst 
       (.I(1'b1),
        .O(enab[0]));
  OBUF \enab_OBUF[1]_inst 
       (.I(1'b1),
        .O(enab[1]));
  OBUF \enab_OBUF[2]_inst 
       (.I(1'b1),
        .O(enab[2]));
  OBUF \enab_OBUF[3]_inst 
       (.I(1'b1),
        .O(enab[3]));
  OBUF \enab_OBUF[4]_inst 
       (.I(1'b1),
        .O(enab[4]));
  OBUF \enab_OBUF[5]_inst 
       (.I(1'b1),
        .O(enab[5]));
  OBUF \enab_OBUF[6]_inst 
       (.I(1'b1),
        .O(enab[6]));
  OBUF \enab_OBUF[7]_inst 
       (.I(1'b0),
        .O(enab[7]));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(bcd_IBUF[1]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[3]),
        .O(seg_OBUF[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  LUT4 #(
    .INIT(16'hF8C3)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(bcd_IBUF[0]),
        .I1(bcd_IBUF[1]),
        .I2(bcd_IBUF[3]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  LUT4 #(
    .INIT(16'hF8CE)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(bcd_IBUF[0]),
        .I1(bcd_IBUF[1]),
        .I2(bcd_IBUF[3]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(bcd_IBUF[0]),
        .I1(bcd_IBUF[2]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[3]),
        .O(seg_OBUF[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  LUT4 #(
    .INIT(16'hEAB4)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[0]),
        .I2(bcd_IBUF[2]),
        .I3(bcd_IBUF[1]),
        .O(seg_OBUF[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  LUT4 #(
    .INIT(16'hCCD0)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(bcd_IBUF[0]),
        .I1(bcd_IBUF[3]),
        .I2(bcd_IBUF[1]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  LUT4 #(
    .INIT(16'hBE88)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[1]),
        .I2(bcd_IBUF[0]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[6]));
  OBUF \seg_OBUF[7]_inst 
       (.I(seg_OBUF[7]),
        .O(seg[7]));
  LUT4 #(
    .INIT(16'hAB98)) 
    \seg_OBUF[7]_inst_i_1 
       (.I0(bcd_IBUF[3]),
        .I1(bcd_IBUF[1]),
        .I2(bcd_IBUF[0]),
        .I3(bcd_IBUF[2]),
        .O(seg_OBUF[7]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
