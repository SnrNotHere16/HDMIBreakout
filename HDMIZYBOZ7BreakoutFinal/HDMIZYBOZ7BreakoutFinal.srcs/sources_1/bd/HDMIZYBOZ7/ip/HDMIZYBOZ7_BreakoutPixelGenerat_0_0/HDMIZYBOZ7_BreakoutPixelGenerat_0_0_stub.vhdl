-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Nov 11 12:41:55 2020
-- Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/OAkun/Desktop/PersonalProject/HDMIZYBO/HDMIZYBOZ7BreakoutFinal/HDMIZYBOZ7BreakoutFinal.srcs/sources_1/bd/HDMIZYBOZ7/ip/HDMIZYBOZ7_BreakoutPixelGenerat_0_0/HDMIZYBOZ7_BreakoutPixelGenerat_0_0_stub.vhdl
-- Design      : HDMIZYBOZ7_BreakoutPixelGenerat_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HDMIZYBOZ7_BreakoutPixelGenerat_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    tick : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    LR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    h_video : in STD_LOGIC;
    v_video : in STD_LOGIC;
    pixel_x : in STD_LOGIC_VECTOR ( 11 downto 0 );
    pixel_y : in STD_LOGIC_VECTOR ( 11 downto 0 );
    rgb_next : out STD_LOGIC_VECTOR ( 23 downto 0 );
    gameover : out STD_LOGIC;
    status : out STD_LOGIC;
    speed : in STD_LOGIC_VECTOR ( 3 downto 0 );
    brickstaken : out STD_LOGIC_VECTOR ( 4 downto 0 );
    player_name : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end HDMIZYBOZ7_BreakoutPixelGenerat_0_0;

architecture stub of HDMIZYBOZ7_BreakoutPixelGenerat_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,tick,reset,btn1,LR[1:0],h_video,v_video,pixel_x[11:0],pixel_y[11:0],rgb_next[23:0],gameover,status,speed[3:0],brickstaken[4:0],player_name[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BreakoutPixelGenerator,Vivado 2019.1";
begin
end;
