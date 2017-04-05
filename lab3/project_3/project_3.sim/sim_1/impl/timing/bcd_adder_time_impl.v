// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Feb 03 15:01:42 2017
// Host        : dsp7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/dsdlab/friday/250_202/lab3/project_3/project_3.sim/sim_1/impl/timing/bcd_adder_time_impl.v
// Design      : bcd_adder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "14834c51" *) 
(* NotValidForBitStream *)
module bcd_adder
   (bcd_a,
    bcd_b,
    bcd_cin,
    bcd_cout,
    bcd_seg,
    bcd_enab);
  input [3:0]bcd_a;
  input [3:0]bcd_b;
  input bcd_cin;
  output bcd_cout;
  output [7:0]bcd_seg;
  output [7:0]bcd_enab;

  wire [3:0]bcd_a;
  wire [3:0]bcd_a_IBUF;
  wire \bcd_adder_first/sum4 ;
  wire [3:0]bcd_b;
  wire [3:0]bcd_b_IBUF;
  wire bcd_cin;
  wire bcd_cin_IBUF;
  wire bcd_cout;
  wire bcd_cout_OBUF;
  wire [7:0]bcd_enab;
  wire [7:0]bcd_seg;
  wire [7:0]bcd_seg_OBUF;
  wire \bcd_seg_OBUF[7]_inst_i_4_n_0 ;
  wire [3:1]bcd_sum;
  wire [1:1]sum;

initial begin
 $sdf_annotate("bcd_adder_time_impl.sdf",,,,"tool_control");
end
  IBUF \bcd_a_IBUF[0]_inst 
       (.I(bcd_a[0]),
        .O(bcd_a_IBUF[0]));
  IBUF \bcd_a_IBUF[1]_inst 
       (.I(bcd_a[1]),
        .O(bcd_a_IBUF[1]));
  IBUF \bcd_a_IBUF[2]_inst 
       (.I(bcd_a[2]),
        .O(bcd_a_IBUF[2]));
  IBUF \bcd_a_IBUF[3]_inst 
       (.I(bcd_a[3]),
        .O(bcd_a_IBUF[3]));
  IBUF \bcd_b_IBUF[0]_inst 
       (.I(bcd_b[0]),
        .O(bcd_b_IBUF[0]));
  IBUF \bcd_b_IBUF[1]_inst 
       (.I(bcd_b[1]),
        .O(bcd_b_IBUF[1]));
  IBUF \bcd_b_IBUF[2]_inst 
       (.I(bcd_b[2]),
        .O(bcd_b_IBUF[2]));
  IBUF \bcd_b_IBUF[3]_inst 
       (.I(bcd_b[3]),
        .O(bcd_b_IBUF[3]));
  IBUF bcd_cin_IBUF_inst
       (.I(bcd_cin),
        .O(bcd_cin_IBUF));
  OBUF bcd_cout_OBUF_inst
       (.I(bcd_cout_OBUF),
        .O(bcd_cout));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEE880)) 
    bcd_cout_OBUF_inst_i_1
       (.I0(\bcd_adder_first/sum4 ),
        .I1(bcd_b_IBUF[2]),
        .I2(bcd_a_IBUF[2]),
        .I3(sum),
        .I4(bcd_a_IBUF[3]),
        .I5(bcd_b_IBUF[3]),
        .O(bcd_cout_OBUF));
  LUT5 #(
    .INIT(32'hFEEAA880)) 
    bcd_cout_OBUF_inst_i_2
       (.I0(bcd_b_IBUF[1]),
        .I1(bcd_a_IBUF[0]),
        .I2(bcd_cin_IBUF),
        .I3(bcd_b_IBUF[0]),
        .I4(bcd_a_IBUF[1]),
        .O(\bcd_adder_first/sum4 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    bcd_cout_OBUF_inst_i_3
       (.I0(bcd_a_IBUF[1]),
        .I1(bcd_b_IBUF[1]),
        .I2(bcd_b_IBUF[0]),
        .I3(bcd_cin_IBUF),
        .I4(bcd_a_IBUF[0]),
        .O(sum));
  OBUF \bcd_enab_OBUF[0]_inst 
       (.I(1'b1),
        .O(bcd_enab[0]));
  OBUF \bcd_enab_OBUF[1]_inst 
       (.I(1'b1),
        .O(bcd_enab[1]));
  OBUF \bcd_enab_OBUF[2]_inst 
       (.I(1'b1),
        .O(bcd_enab[2]));
  OBUF \bcd_enab_OBUF[3]_inst 
       (.I(1'b1),
        .O(bcd_enab[3]));
  OBUF \bcd_enab_OBUF[4]_inst 
       (.I(1'b1),
        .O(bcd_enab[4]));
  OBUF \bcd_enab_OBUF[5]_inst 
       (.I(1'b1),
        .O(bcd_enab[5]));
  OBUF \bcd_enab_OBUF[6]_inst 
       (.I(1'b1),
        .O(bcd_enab[6]));
  OBUF \bcd_enab_OBUF[7]_inst 
       (.I(1'b0),
        .O(bcd_enab[7]));
  OBUF \bcd_seg_OBUF[0]_inst 
       (.I(bcd_seg_OBUF[0]),
        .O(bcd_seg[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \bcd_seg_OBUF[0]_inst_i_1 
       (.I0(bcd_sum[1]),
        .I1(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .I2(bcd_sum[3]),
        .O(bcd_seg_OBUF[0]));
  OBUF \bcd_seg_OBUF[1]_inst 
       (.I(bcd_seg_OBUF[1]),
        .O(bcd_seg[1]));
  LUT6 #(
    .INIT(64'hFFFF9600FF0000FF)) 
    \bcd_seg_OBUF[1]_inst_i_1 
       (.I0(bcd_a_IBUF[0]),
        .I1(bcd_b_IBUF[0]),
        .I2(bcd_cin_IBUF),
        .I3(bcd_sum[1]),
        .I4(bcd_sum[3]),
        .I5(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .O(bcd_seg_OBUF[1]));
  OBUF \bcd_seg_OBUF[2]_inst 
       (.I(bcd_seg_OBUF[2]),
        .O(bcd_seg[2]));
  LUT6 #(
    .INIT(64'hFFFF9600FF00FF96)) 
    \bcd_seg_OBUF[2]_inst_i_1 
       (.I0(bcd_cin_IBUF),
        .I1(bcd_b_IBUF[0]),
        .I2(bcd_a_IBUF[0]),
        .I3(bcd_sum[1]),
        .I4(bcd_sum[3]),
        .I5(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .O(bcd_seg_OBUF[2]));
  OBUF \bcd_seg_OBUF[3]_inst 
       (.I(bcd_seg_OBUF[3]),
        .O(bcd_seg[3]));
  LUT6 #(
    .INIT(64'hFFFFFF969696FF96)) 
    \bcd_seg_OBUF[3]_inst_i_1 
       (.I0(bcd_cin_IBUF),
        .I1(bcd_b_IBUF[0]),
        .I2(bcd_a_IBUF[0]),
        .I3(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .I4(bcd_sum[1]),
        .I5(bcd_sum[3]),
        .O(bcd_seg_OBUF[3]));
  OBUF \bcd_seg_OBUF[4]_inst 
       (.I(bcd_seg_OBUF[4]),
        .O(bcd_seg[4]));
  LUT6 #(
    .INIT(64'hEBBEAAAABEEB4114)) 
    \bcd_seg_OBUF[4]_inst_i_1 
       (.I0(bcd_sum[3]),
        .I1(bcd_a_IBUF[0]),
        .I2(bcd_b_IBUF[0]),
        .I3(bcd_cin_IBUF),
        .I4(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .I5(bcd_sum[1]),
        .O(bcd_seg_OBUF[4]));
  OBUF \bcd_seg_OBUF[5]_inst 
       (.I(bcd_seg_OBUF[5]),
        .O(bcd_seg[5]));
  LUT6 #(
    .INIT(64'hFF00FF00FF690000)) 
    \bcd_seg_OBUF[5]_inst_i_1 
       (.I0(bcd_cin_IBUF),
        .I1(bcd_b_IBUF[0]),
        .I2(bcd_a_IBUF[0]),
        .I3(bcd_sum[3]),
        .I4(bcd_sum[1]),
        .I5(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .O(bcd_seg_OBUF[5]));
  OBUF \bcd_seg_OBUF[6]_inst 
       (.I(bcd_seg_OBUF[6]),
        .O(bcd_seg[6]));
  LUT6 #(
    .INIT(64'hBEEBEBBE88888888)) 
    \bcd_seg_OBUF[6]_inst_i_1 
       (.I0(bcd_sum[3]),
        .I1(bcd_sum[1]),
        .I2(bcd_a_IBUF[0]),
        .I3(bcd_b_IBUF[0]),
        .I4(bcd_cin_IBUF),
        .I5(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .O(bcd_seg_OBUF[6]));
  OBUF \bcd_seg_OBUF[7]_inst 
       (.I(bcd_seg_OBUF[7]),
        .O(bcd_seg[7]));
  LUT6 #(
    .INIT(64'hABBABAAB98898998)) 
    \bcd_seg_OBUF[7]_inst_i_1 
       (.I0(bcd_sum[3]),
        .I1(bcd_sum[1]),
        .I2(bcd_cin_IBUF),
        .I3(bcd_b_IBUF[0]),
        .I4(bcd_a_IBUF[0]),
        .I5(\bcd_seg_OBUF[7]_inst_i_4_n_0 ),
        .O(bcd_seg_OBUF[7]));
  LUT6 #(
    .INIT(64'h17E8E8007E818168)) 
    \bcd_seg_OBUF[7]_inst_i_2 
       (.I0(bcd_a_IBUF[2]),
        .I1(bcd_b_IBUF[2]),
        .I2(\bcd_adder_first/sum4 ),
        .I3(bcd_b_IBUF[3]),
        .I4(bcd_a_IBUF[3]),
        .I5(sum),
        .O(bcd_sum[3]));
  LUT6 #(
    .INIT(64'h0F0E0E1E0E1E1E18)) 
    \bcd_seg_OBUF[7]_inst_i_3 
       (.I0(bcd_b_IBUF[3]),
        .I1(bcd_a_IBUF[3]),
        .I2(sum),
        .I3(bcd_a_IBUF[2]),
        .I4(bcd_b_IBUF[2]),
        .I5(\bcd_adder_first/sum4 ),
        .O(bcd_sum[1]));
  LUT6 #(
    .INIT(64'hAA5454AB54ABAB40)) 
    \bcd_seg_OBUF[7]_inst_i_4 
       (.I0(sum),
        .I1(bcd_a_IBUF[3]),
        .I2(bcd_b_IBUF[3]),
        .I3(\bcd_adder_first/sum4 ),
        .I4(bcd_b_IBUF[2]),
        .I5(bcd_a_IBUF[2]),
        .O(\bcd_seg_OBUF[7]_inst_i_4_n_0 ));
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
