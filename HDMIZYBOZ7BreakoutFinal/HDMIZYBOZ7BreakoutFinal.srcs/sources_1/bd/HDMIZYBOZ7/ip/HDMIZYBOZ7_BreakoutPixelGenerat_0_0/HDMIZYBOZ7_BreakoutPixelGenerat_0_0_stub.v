// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Nov 11 12:41:55 2020
// Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/OAkun/Desktop/PersonalProject/HDMIZYBO/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_BreakoutPixelGenerat_0_0/HDMIZYBOZ7_BreakoutPixelGenerat_0_0_stub.v
// Design      : HDMIZYBOZ7_BreakoutPixelGenerat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BreakoutPixelGenerator,Vivado 2019.1" *)
module HDMIZYBOZ7_BreakoutPixelGenerat_0_0(clk, tick, reset, btn1, LR, h_video, v_video, pixel_x, 
  pixel_y, rgb_next, gameover, status, speed, brickstaken, player_name)
/* synthesis syn_black_box black_box_pad_pin="clk,tick,reset,btn1,LR[1:0],h_video,v_video,pixel_x[11:0],pixel_y[11:0],rgb_next[23:0],gameover,status,speed[3:0],brickstaken[4:0],player_name[23:0]" */;
  input clk;
  input tick;
  input reset;
  input btn1;
  input [1:0]LR;
  input h_video;
  input v_video;
  input [11:0]pixel_x;
  input [11:0]pixel_y;
  output [23:0]rgb_next;
  output gameover;
  output status;
  input [3:0]speed;
  output [4:0]brickstaken;
  input [23:0]player_name;
endmodule
