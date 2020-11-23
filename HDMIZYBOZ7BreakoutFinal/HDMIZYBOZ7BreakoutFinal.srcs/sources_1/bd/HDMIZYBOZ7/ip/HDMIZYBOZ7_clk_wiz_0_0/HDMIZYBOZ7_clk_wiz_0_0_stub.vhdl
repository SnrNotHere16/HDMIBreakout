-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov  7 17:37:05 2020
-- Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/OAkun/Desktop/PersonalProject/New
--               folder/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_clk_wiz_0_0/HDMIZYBOZ7_clk_wiz_0_0_stub.vhdl}
-- Design      : HDMIZYBOZ7_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMIZYBOZ7_clk_wiz_0_0 is
  Port ( 
    clk_vga : out STD_LOGIC;
    clk_dvi : out STD_LOGIC;
    clk_dvin : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end HDMIZYBOZ7_clk_wiz_0_0;

architecture stub of HDMIZYBOZ7_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_vga,clk_dvi,clk_dvin,reset,locked,clk_in1";
begin
end;
