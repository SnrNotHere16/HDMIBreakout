// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov  7 17:37:05 2020
// Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/OAkun/Desktop/PersonalProject/New
//               folder/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_clk_wiz_0_0/HDMIZYBOZ7_clk_wiz_0_0_stub.v}
// Design      : HDMIZYBOZ7_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module HDMIZYBOZ7_clk_wiz_0_0(clk_vga, clk_dvi, clk_dvin, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_vga,clk_dvi,clk_dvin,reset,locked,clk_in1" */;
  output clk_vga;
  output clk_dvi;
  output clk_dvin;
  input reset;
  output locked;
  input clk_in1;
endmodule
