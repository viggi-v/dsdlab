// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Fri Mar 24 14:40:08 2017
// Host        : dsp7 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim {d:/dsdlab/friday/250_202/lab
//               8/project_1/project_1.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_funcsim.v}
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0,{}" *) (* core_generation_info = "c_counter_binary_0,c_counter_binary_v12_0,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_counter_binary,x_ipVersion=12.0,x_ipCoreRevision=6,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_IMPLEMENTATION=0,C_VERBOSITY=0,C_XDEVICEFAMILY=artix7,C_WIDTH=4,C_HAS_CE=1,C_HAS_SCLR=1,C_RESTRICT_COUNT=1,C_COUNT_TO=1001,C_COUNT_BY=1,C_COUNT_MODE=0,C_THRESH0_VALUE=1001,C_CE_OVERRIDES_SYNC=0,C_HAS_THRESH0=1,C_HAS_LOAD=0,C_LOAD_LOW=0,C_LATENCY=1,C_FB_LATENCY=0,C_AINIT_VAL=0,C_SINIT_VAL=0,C_SCLR_OVERRIDES_SSET=1,C_HAS_SSET=0,C_HAS_SINIT=0}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "c_counter_binary_v12_0,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
   (CLK,
    CE,
    SCLR,
    THRESH0,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 thresh0_intf DATA" *) output THRESH0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]Q;
  wire SCLR;
  wire THRESH0;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* DONT_TOUCH *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0 U0
       (.CE(CE),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(THRESH0),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1001" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "1" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "1" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "1" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "1" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1001" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire CE;
  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire SCLR;
  wire SINIT;
  wire SSET;
  wire THRESH0;
  wire UP;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1001" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "1" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "1" *) 
  (* c_thresh0_value = "1001" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_counter_binary_0_c_counter_binary_v12_0_viv i_synth
       (.CE(CE),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(SINIT),
        .SSET(SSET),
        .THRESH0(THRESH0),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
NtlHUOe6MM1p/PV12drrbV0GunfNFAMFX1RN0lgNr+rN7sdvgk4W2eSP7O5acplxmGXfRUoYQnIP
E9ycVdxD2g==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
RR/eBO0H72jaFKQhUnMcVNDU4bY8R82UfatTcvUVXDAERtdIYD6R0cRToKXax574OuBkZPzbEdds
tfMLVMggMoYjJM26JTU0xswFgJWQ++3jV5NqMCzJXv9UsqJOZsw8tH8vrCdAkauMJ+mJlkOgjGRq
tsk179rfUIuMuGMNNNY=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
m0urT1YktOTFldyCVLxe8GtDrkkWCLw9marxyt12BsF4SkU+/s5FXg+kM93e0SsGE5FqmS04134n
tnoG5XdhifA9DiqB1lQowow7WuO+GXPUDxRAqwriKjOvxfNYmiRlNQWuL0TcbXbkZooFGa0BwhYU
euAEph8dZmS86+3bULtMBfVJsF/W3DUM9TsL2VGjEy1wL2sL8/9LVBwF/yI4YDmlAvx8ZSPQOddT
dD5bKm5ZGlYDSSS6arW0Lu/v6hhOu+ZTHSPKOXVvZRHFZnqSRW762hQ1lKEXgPSy43k4MfcQmZOP
rhCXaSD3vlgnH7EF+7A2yYMIcmLr7YvDoWcDrw==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
DvriFSs33CF0bAVH6O8uB2iZOrDQ50U7ADRBlmazwrJgLezS2hm0HS4L4vr42c+CJV/hvDZqiLjZ
BENFIowi6niSqc7ofAVHnt2PbldFPTDpypDuNSs0qcoQa34sv9KoJ7jUZLeLlglBwLI3eLkAtmDh
cf3yXBIrtjNKUcachJM=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
LPlcR0MOIcwKiQiBeI+zQH1fkCR6PvnIh3LLTtIAYbs0MSbVsvzgRKAcoCY7Xt2wD2P1TCdnC8dX
DgVkrz4QLo0T+uQmGQpEcdLjbVwNUmhSUUf+E5mHJ251V0S8eseJqV9bS51oCqlN4HpqNuel/jd9
W0ZCCyVNaf06n0HXILF2q0+nZPU9+B4pYMZo8wXQjjfoU+H5L3VrtwY2O1ehfnjSNIW7DtN5IVaV
YFPY7EdCN+vyK8J1QYijYEZP2FSxOstecyh4vQRZvl8bTRMZwSdhat5/wTPshQDDBu/prSynB24N
w/HM/X47E135dffHfrzpkAl03R1icEJOdP13GQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
K+GFcUREtsGHdxb+Kjipmeq/02lzvnBIb222tFjjXbykeCFS7GiQ+ShV0AdkgzvBDCsqOXxU0KV5
FrgUNNBsZLfmElSUHdoq7/KLmMjFFruqhFvVOwMJGB00vzaMFUTxwGs6TRXeBPN7rJQ0RNIDyh3t
FltTMLVzcFwzy7n8QDM/nZelufLHlAtlBpVEB2LtZGSAtPJmhO1Rts2p/b7IWGK9erth9U0lrtGD
/z2h//Fm5BCXVI1/mEqMEwk8r+8RUno/flnI8mrAKa5eP17uJIQSHnj2f6Y54qKLhvINvFvg1D7c
2oo748M9S4CYafDs2MxMCIQ38aOTb/oeP6sVyw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iXBYvPc9M4eGbCdNrVVgauZC4ylASmIs+2VN67OMAEAubfsWTCcAbLUEOINhmxxKPFam+XkV01kt
Lc8+PLS0dnQzA8UYWeKtiVTL5AoMYVJzn/TxZXascaUvPGTFUPZVGMg3LRflcEXycQ2Oad6myuO2
6uYQHpiOjm5X37MKqWDEIBZ7vQd6buoroJPCKLIDqFp87bbm/lycES0XSbrTDmt8lBYNTrc1WHMk
mi76pyVtLktpa1XEpwvf2IYgJ3ZQoR1AoxrSm+NXIzE1bHsIensId2QeqvPOI0U9lXH3bn8btlEw
664ZAH/KTZeRYWuw9Jm3S6WZcqQ8ApP4hDJUcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2832)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
NtlHUOe6MM1p/PV12drrbV0GunfNFAMFX1RN0lgNr+rN7sdvgk4W2eSP7O5acplxmGXfRUoYQnIP
E9ycVdxD2g==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
RR/eBO0H72jaFKQhUnMcVNDU4bY8R82UfatTcvUVXDAERtdIYD6R0cRToKXax574OuBkZPzbEdds
tfMLVMggMoYjJM26JTU0xswFgJWQ++3jV5NqMCzJXv9UsqJOZsw8tH8vrCdAkauMJ+mJlkOgjGRq
tsk179rfUIuMuGMNNNY=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
m0urT1YktOTFldyCVLxe8GtDrkkWCLw9marxyt12BsF4SkU+/s5FXg+kM93e0SsGE5FqmS04134n
tnoG5XdhifA9DiqB1lQowow7WuO+GXPUDxRAqwriKjOvxfNYmiRlNQWuL0TcbXbkZooFGa0BwhYU
euAEph8dZmS86+3bULtMBfVJsF/W3DUM9TsL2VGjEy1wL2sL8/9LVBwF/yI4YDmlAvx8ZSPQOddT
dD5bKm5ZGlYDSSS6arW0Lu/v6hhOu+ZTHSPKOXVvZRHFZnqSRW762hQ1lKEXgPSy43k4MfcQmZOP
rhCXaSD3vlgnH7EF+7A2yYMIcmLr7YvDoWcDrw==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
DvriFSs33CF0bAVH6O8uB2iZOrDQ50U7ADRBlmazwrJgLezS2hm0HS4L4vr42c+CJV/hvDZqiLjZ
BENFIowi6niSqc7ofAVHnt2PbldFPTDpypDuNSs0qcoQa34sv9KoJ7jUZLeLlglBwLI3eLkAtmDh
cf3yXBIrtjNKUcachJM=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
LPlcR0MOIcwKiQiBeI+zQH1fkCR6PvnIh3LLTtIAYbs0MSbVsvzgRKAcoCY7Xt2wD2P1TCdnC8dX
DgVkrz4QLo0T+uQmGQpEcdLjbVwNUmhSUUf+E5mHJ251V0S8eseJqV9bS51oCqlN4HpqNuel/jd9
W0ZCCyVNaf06n0HXILF2q0+nZPU9+B4pYMZo8wXQjjfoU+H5L3VrtwY2O1ehfnjSNIW7DtN5IVaV
YFPY7EdCN+vyK8J1QYijYEZP2FSxOstecyh4vQRZvl8bTRMZwSdhat5/wTPshQDDBu/prSynB24N
w/HM/X47E135dffHfrzpkAl03R1icEJOdP13GQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
K+GFcUREtsGHdxb+Kjipmeq/02lzvnBIb222tFjjXbykeCFS7GiQ+ShV0AdkgzvBDCsqOXxU0KV5
FrgUNNBsZLfmElSUHdoq7/KLmMjFFruqhFvVOwMJGB00vzaMFUTxwGs6TRXeBPN7rJQ0RNIDyh3t
FltTMLVzcFwzy7n8QDM/nZelufLHlAtlBpVEB2LtZGSAtPJmhO1Rts2p/b7IWGK9erth9U0lrtGD
/z2h//Fm5BCXVI1/mEqMEwk8r+8RUno/flnI8mrAKa5eP17uJIQSHnj2f6Y54qKLhvINvFvg1D7c
2oo748M9S4CYafDs2MxMCIQ38aOTb/oeP6sVyw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iXBYvPc9M4eGbCdNrVVgauZC4ylASmIs+2VN67OMAEAubfsWTCcAbLUEOINhmxxKPFam+XkV01kt
Lc8+PLS0dnQzA8UYWeKtiVTL5AoMYVJzn/TxZXascaUvPGTFUPZVGMg3LRflcEXycQ2Oad6myuO2
6uYQHpiOjm5X37MKqWDEIBZ7vQd6buoroJPCKLIDqFp87bbm/lycES0XSbrTDmt8lBYNTrc1WHMk
mi76pyVtLktpa1XEpwvf2IYgJ3ZQoR1AoxrSm+NXIzE1bHsIensId2QeqvPOI0U9lXH3bn8btlEw
664ZAH/KTZeRYWuw9Jm3S6WZcqQ8ApP4hDJUcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2096)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2014"
`pragma protect key_keyowner = "Cadence Design Systems.", key_keyname= "cds_rsa_key", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 64)
`pragma protect key_block
NtlHUOe6MM1p/PV12drrbV0GunfNFAMFX1RN0lgNr+rN7sdvgk4W2eSP7O5acplxmGXfRUoYQnIP
E9ycVdxD2g==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-VERIF-SIM-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
RR/eBO0H72jaFKQhUnMcVNDU4bY8R82UfatTcvUVXDAERtdIYD6R0cRToKXax574OuBkZPzbEdds
tfMLVMggMoYjJM26JTU0xswFgJWQ++3jV5NqMCzJXv9UsqJOZsw8tH8vrCdAkauMJ+mJlkOgjGRq
tsk179rfUIuMuGMNNNY=


`pragma protect key_keyowner = "Xilinx", key_keyname= "xilinx_2014_03", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
m0urT1YktOTFldyCVLxe8GtDrkkWCLw9marxyt12BsF4SkU+/s5FXg+kM93e0SsGE5FqmS04134n
tnoG5XdhifA9DiqB1lQowow7WuO+GXPUDxRAqwriKjOvxfNYmiRlNQWuL0TcbXbkZooFGa0BwhYU
euAEph8dZmS86+3bULtMBfVJsF/W3DUM9TsL2VGjEy1wL2sL8/9LVBwF/yI4YDmlAvx8ZSPQOddT
dD5bKm5ZGlYDSSS6arW0Lu/v6hhOu+ZTHSPKOXVvZRHFZnqSRW762hQ1lKEXgPSy43k4MfcQmZOP
rhCXaSD3vlgnH7EF+7A2yYMIcmLr7YvDoWcDrw==


`pragma protect key_keyowner = "Synopsys", key_keyname= "SNPS-VCS-RSA-1", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 128)
`pragma protect key_block
DvriFSs33CF0bAVH6O8uB2iZOrDQ50U7ADRBlmazwrJgLezS2hm0HS4L4vr42c+CJV/hvDZqiLjZ
BENFIowi6niSqc7ofAVHnt2PbldFPTDpypDuNSs0qcoQa34sv9KoJ7jUZLeLlglBwLI3eLkAtmDh
cf3yXBIrtjNKUcachJM=


`pragma protect key_keyowner = "Aldec", key_keyname= "ALDEC08_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
LPlcR0MOIcwKiQiBeI+zQH1fkCR6PvnIh3LLTtIAYbs0MSbVsvzgRKAcoCY7Xt2wD2P1TCdnC8dX
DgVkrz4QLo0T+uQmGQpEcdLjbVwNUmhSUUf+E5mHJ251V0S8eseJqV9bS51oCqlN4HpqNuel/jd9
W0ZCCyVNaf06n0HXILF2q0+nZPU9+B4pYMZo8wXQjjfoU+H5L3VrtwY2O1ehfnjSNIW7DtN5IVaV
YFPY7EdCN+vyK8J1QYijYEZP2FSxOstecyh4vQRZvl8bTRMZwSdhat5/wTPshQDDBu/prSynB24N
w/HM/X47E135dffHfrzpkAl03R1icEJOdP13GQ==


`pragma protect key_keyowner = "Mentor Graphics Corporation", key_keyname= "MGC-PREC-RSA", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
K+GFcUREtsGHdxb+Kjipmeq/02lzvnBIb222tFjjXbykeCFS7GiQ+ShV0AdkgzvBDCsqOXxU0KV5
FrgUNNBsZLfmElSUHdoq7/KLmMjFFruqhFvVOwMJGB00vzaMFUTxwGs6TRXeBPN7rJQ0RNIDyh3t
FltTMLVzcFwzy7n8QDM/nZelufLHlAtlBpVEB2LtZGSAtPJmhO1Rts2p/b7IWGK9erth9U0lrtGD
/z2h//Fm5BCXVI1/mEqMEwk8r+8RUno/flnI8mrAKa5eP17uJIQSHnj2f6Y54qKLhvINvFvg1D7c
2oo748M9S4CYafDs2MxMCIQ38aOTb/oeP6sVyw==


`pragma protect key_keyowner = "Synplicity", key_keyname= "SYNP05_001", key_method = "rsa"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 256)
`pragma protect key_block
iXBYvPc9M4eGbCdNrVVgauZC4ylASmIs+2VN67OMAEAubfsWTCcAbLUEOINhmxxKPFam+XkV01kt
Lc8+PLS0dnQzA8UYWeKtiVTL5AoMYVJzn/TxZXascaUvPGTFUPZVGMg3LRflcEXycQ2Oad6myuO2
6uYQHpiOjm5X37MKqWDEIBZ7vQd6buoroJPCKLIDqFp87bbm/lycES0XSbrTDmt8lBYNTrc1WHMk
mi76pyVtLktpa1XEpwvf2IYgJ3ZQoR1AoxrSm+NXIzE1bHsIensId2QeqvPOI0U9lXH3bn8btlEw
664ZAH/KTZeRYWuw9Jm3S6WZcqQ8ApP4hDJUcA==


`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2160)
`pragma protect data_block
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
`pragma protect end_protected
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
