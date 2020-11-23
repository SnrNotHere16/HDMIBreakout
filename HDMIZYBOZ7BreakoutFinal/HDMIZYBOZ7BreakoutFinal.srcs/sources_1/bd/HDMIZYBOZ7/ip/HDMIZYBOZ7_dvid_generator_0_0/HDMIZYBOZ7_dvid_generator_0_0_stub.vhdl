-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov  7 17:39:09 2020
-- Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/OAkun/Desktop/PersonalProject/New
--               folder/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_dvid_generator_0_0/HDMIZYBOZ7_dvid_generator_0_0_stub.vhdl}
-- Design      : HDMIZYBOZ7_dvid_generator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMIZYBOZ7_dvid_generator_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    clk_dvi : in STD_LOGIC;
    clk_dvin : in STD_LOGIC;
    clk_vga : in STD_LOGIC;
    g_rgb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    pix_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pix_y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    h_video : out STD_LOGIC;
    v_video : out STD_LOGIC;
    data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_p : out STD_LOGIC;
    clk_n : out STD_LOGIC;
    reset : in STD_LOGIC
  );

end HDMIZYBOZ7_dvid_generator_0_0;

architecture stub of HDMIZYBOZ7_dvid_generator_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,clk_dvi,clk_dvin,clk_vga,g_rgb[23:0],pix_x[11:0],pix_y[11:0],h_video,v_video,data_p[2:0],data_n[2:0],clk_p,clk_n,reset";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dvid_generator,Vivado 2019.1";
begin
end;
