// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov  7 17:39:09 2020
// Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/OAkun/Desktop/PersonalProject/New
//               folder/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_dvid_generator_0_0/HDMIZYBOZ7_dvid_generator_0_0_stub.v}
// Design      : HDMIZYBOZ7_dvid_generator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dvid_generator,Vivado 2019.1" *)
module HDMIZYBOZ7_dvid_generator_0_0(clk_in, clk_dvi, clk_dvin, clk_vga, g_rgb, pix_x, 
  pix_y, h_video, v_video, data_p, data_n, clk_p, clk_n, reset)
/* synthesis syn_black_box black_box_pad_pin="clk_in,clk_dvi,clk_dvin,clk_vga,g_rgb[23:0],pix_x[11:0],pix_y[11:0],h_video,v_video,data_p[2:0],data_n[2:0],clk_p,clk_n,reset" */;
  input clk_in;
  input clk_dvi;
  input clk_dvin;
  input clk_vga;
  input [23:0]g_rgb;
  output [11:0]pix_x;
  output [11:0]pix_y;
  output h_video;
  output v_video;
  output [2:0]data_p;
  output [2:0]data_n;
  output clk_p;
  output clk_n;
  input reset;
endmodule
