-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Nov  7 17:39:08 2020
-- Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMIZYBOZ7_dvid_generator_0_0_sim_netlist.vhdl
-- Design      : HDMIZYBOZ7_dvid_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  port (
    \dc_bias_reg[3]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[1]_0\ : out STD_LOGIC;
    \dc_bias_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \dc_bias[3]_i_5__1\ : in STD_LOGIC;
    \dc_bias[3]_i_5__1_0\ : in STD_LOGIC;
    \dc_bias[3]_i_5__1_1\ : in STD_LOGIC;
    \dc_bias_reg[2]_0\ : in STD_LOGIC;
    \dc_bias_reg[2]_1\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_vga : in STD_LOGIC;
    \encoded_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \r_reg[vSync]\ : in STD_LOGIC;
    \r_reg[hSync]\ : in STD_LOGIC;
    \encoded_reg[8]_0\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder is
  signal \^dc_bias_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
begin
  \dc_bias_reg[3]_1\(3 downto 0) <= \^dc_bias_reg[3]_1\(3 downto 0);
\dc_bias[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^dc_bias_reg[3]_1\(0),
      I1 => \^dc_bias_reg[3]_1\(2),
      I2 => \^dc_bias_reg[3]_1\(1),
      I3 => \^dc_bias_reg[3]_1\(3),
      O => \dc_bias_reg[0]_0\
    );
\dc_bias[2]_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \^dc_bias_reg[3]_1\(1),
      I1 => \dc_bias_reg[2]_0\,
      I2 => \dc_bias_reg[2]_1\,
      I3 => \^dc_bias_reg[3]_1\(2),
      O => \dc_bias_reg[1]_0\
    );
\dc_bias[3]_i_17__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9AA95A95595"
    )
        port map (
      I0 => \^dc_bias_reg[3]_1\(3),
      I1 => \dc_bias[3]_i_5__1\,
      I2 => \^dc_bias_reg[3]_1\(1),
      I3 => \dc_bias[3]_i_5__1_0\,
      I4 => \dc_bias[3]_i_5__1_1\,
      I5 => \^dc_bias_reg[3]_1\(2),
      O => \dc_bias_reg[3]_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_2\(0),
      Q => \^dc_bias_reg[3]_1\(0),
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_2\(1),
      Q => \^dc_bias_reg[3]_1\(1),
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_2\(2),
      Q => \^dc_bias_reg[3]_1\(2),
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_2\(3),
      Q => \^dc_bias_reg[3]_1\(3),
      R => p_1_in(0)
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \r_reg[hSync]\,
      I1 => p_1_in(0),
      I2 => \encoded_reg[8]_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C300C3FFC3AAC3AA"
    )
        port map (
      I0 => \encoded_reg[9]_0\,
      I1 => \r_reg[vSync]\,
      I2 => \r_reg[hSync]\,
      I3 => p_1_in(0),
      I4 => \encoded_reg[8]_0\,
      I5 => \encoded_reg[9]_1\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(0),
      Q => D(0),
      R => '0'
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(1),
      Q => D(1),
      R => '0'
    );
\encoded_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(2),
      Q => D(2),
      R => '0'
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(3),
      Q => D(3),
      R => '0'
    );
\encoded_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(4),
      Q => D(4),
      R => '0'
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(5),
      Q => D(5),
      R => '0'
    );
\encoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(6),
      Q => D(6),
      R => '0'
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\(7),
      Q => D(7),
      R => '0'
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  port (
    \dc_bias_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[2]_1\ : out STD_LOGIC;
    \dc_bias_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \dc_bias[2]_i_4__0\ : in STD_LOGIC;
    Green : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[2]_i_4__0_0\ : in STD_LOGIC;
    \dc_bias[3]_i_4\ : in STD_LOGIC;
    \dc_bias[3]_i_4_0\ : in STD_LOGIC;
    \dc_bias[3]_i_4_1\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_vga : in STD_LOGIC;
    \encoded_reg[7]_0\ : in STD_LOGIC;
    \encoded_reg[5]_0\ : in STD_LOGIC;
    \encoded_reg[3]_0\ : in STD_LOGIC;
    \encoded_reg[1]_0\ : in STD_LOGIC;
    \encoded_reg[0]_0\ : in STD_LOGIC;
    \encoded_reg[6]_0\ : in STD_LOGIC;
    \encoded_reg[4]_0\ : in STD_LOGIC;
    \encoded_reg[2]_0\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    \encoded_reg[8]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dc_bias_reg[2]_0\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair0";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \dc_bias_reg[2]_0\ <= \^dc_bias_reg[2]_0\;
\dc_bias[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6656565A6A6A665"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dc_bias[2]_i_4__0\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => Green(0),
      I5 => \dc_bias[2]_i_4__0_0\,
      O => \dc_bias_reg[2]_1\
    );
\dc_bias[3]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556556A56AA6A"
    )
        port map (
      I0 => \^q\(3),
      I1 => \dc_bias[3]_i_4\,
      I2 => \^q\(1),
      I3 => \dc_bias[3]_i_4_0\,
      I4 => \dc_bias[3]_i_4_1\,
      I5 => \^q\(2),
      O => \dc_bias_reg[3]_0\
    );
\dc_bias[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(1),
      I4 => \encoded_reg[9]_0\,
      O => \^dc_bias_reg[2]_0\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_1\(0),
      Q => \^q\(0),
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_1\(1),
      Q => \^q\(1),
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_1\(2),
      Q => \^q\(2),
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \dc_bias_reg[3]_1\(3),
      Q => \^q\(3),
      R => p_1_in(0)
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \encoded_reg[8]_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDF"
    )
        port map (
      I0 => \encoded_reg[9]_1\,
      I1 => p_1_in(0),
      I2 => \^dc_bias_reg[2]_0\,
      I3 => \encoded_reg[8]_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[0]_0\,
      Q => D(0),
      R => p_1_in(0)
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[1]_0\,
      Q => D(1),
      R => p_1_in(0)
    );
\encoded_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[2]_0\,
      Q => D(2),
      S => p_1_in(0)
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[3]_0\,
      Q => D(3),
      R => p_1_in(0)
    );
\encoded_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[4]_0\,
      Q => D(4),
      S => p_1_in(0)
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[5]_0\,
      Q => D(5),
      R => p_1_in(0)
    );
\encoded_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[6]_0\,
      Q => D(6),
      S => p_1_in(0)
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\,
      Q => D(7),
      R => p_1_in(0)
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => D(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => D(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  port (
    \dc_bias_reg[3]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_1\ : out STD_LOGIC;
    \dc_bias_reg[2]_0\ : out STD_LOGIC;
    \encoded_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \dc_bias[3]_i_8\ : in STD_LOGIC;
    \dc_bias[3]_i_8_0\ : in STD_LOGIC;
    \dc_bias[3]_i_8_1\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    \dc_bias[2]_i_5\ : in STD_LOGIC;
    Red : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[2]_i_5_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_vga : in STD_LOGIC;
    \encoded_reg[6]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \encoded_reg[7]_0\ : in STD_LOGIC;
    \encoded_reg[5]_0\ : in STD_LOGIC;
    \encoded_reg[3]_0\ : in STD_LOGIC;
    \encoded_reg[1]_0\ : in STD_LOGIC;
    \encoded_reg[0]_0\ : in STD_LOGIC;
    \encoded_reg[4]_0\ : in STD_LOGIC;
    \encoded_reg[2]_0\ : in STD_LOGIC;
    \encoded_reg[9]_2\ : in STD_LOGIC;
    \encoded_reg[8]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 : entity is "TDMS_encoder";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dc_bias_reg[3]_1\ : STD_LOGIC;
  signal \encoded[8]_i_1_n_0\ : STD_LOGIC;
  signal \encoded[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \encoded[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \encoded[9]_i_1\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \dc_bias_reg[3]_1\ <= \^dc_bias_reg[3]_1\;
\dc_bias[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6656565A6A6A665"
    )
        port map (
      I0 => \^q\(2),
      I1 => \dc_bias[2]_i_5\,
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => Red(0),
      I5 => \dc_bias[2]_i_5_0\,
      O => \dc_bias_reg[2]_0\
    );
\dc_bias[3]_i_13__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA9AA95A95595"
    )
        port map (
      I0 => \^q\(3),
      I1 => \dc_bias[3]_i_8\,
      I2 => \^q\(1),
      I3 => \dc_bias[3]_i_8_0\,
      I4 => \dc_bias[3]_i_8_1\,
      I5 => \^q\(2),
      O => \dc_bias_reg[3]_0\
    );
\dc_bias[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \encoded_reg[9]_1\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(0),
      O => \^dc_bias_reg[3]_1\
    );
\dc_bias_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => D(0),
      Q => \^q\(0),
      R => p_1_in(0)
    );
\dc_bias_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => D(1),
      Q => \^q\(1),
      R => p_1_in(0)
    );
\dc_bias_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => D(2),
      Q => \^q\(2),
      R => p_1_in(0)
    );
\dc_bias_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => D(3),
      Q => \^q\(3),
      R => p_1_in(0)
    );
\encoded[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_1_in(0),
      I1 => \encoded_reg[8]_0\,
      O => \encoded[8]_i_1_n_0\
    );
\encoded[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ECEF"
    )
        port map (
      I0 => \encoded_reg[9]_2\,
      I1 => p_1_in(0),
      I2 => \^dc_bias_reg[3]_1\,
      I3 => \encoded_reg[8]_0\,
      O => \encoded[9]_i_1_n_0\
    );
\encoded_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[0]_0\,
      Q => \encoded_reg[9]_0\(0),
      R => p_1_in(0)
    );
\encoded_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[1]_0\,
      Q => \encoded_reg[9]_0\(1),
      R => p_1_in(0)
    );
\encoded_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[2]_0\,
      Q => \encoded_reg[9]_0\(2),
      S => p_1_in(0)
    );
\encoded_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[3]_0\,
      Q => \encoded_reg[9]_0\(3),
      R => p_1_in(0)
    );
\encoded_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[4]_0\,
      Q => \encoded_reg[9]_0\(4),
      S => p_1_in(0)
    );
\encoded_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[5]_0\,
      Q => \encoded_reg[9]_0\(5),
      R => p_1_in(0)
    );
\encoded_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[6]_0\(0),
      Q => \encoded_reg[9]_0\(6),
      R => '0'
    );
\encoded_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded_reg[7]_0\,
      Q => \encoded_reg[9]_0\(7),
      R => p_1_in(0)
    );
\encoded_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[8]_i_1_n_0\,
      Q => \encoded_reg[9]_0\(8),
      R => '0'
    );
\encoded_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk_vga,
      CE => '1',
      D => \encoded[9]_i_1_n_0\,
      Q => \encoded_reg[9]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga is
  port (
    \r_reg[vSync]\ : out STD_LOGIC;
    v_video : out STD_LOGIC;
    p_1_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[hSync]\ : out STD_LOGIC;
    \r_reg[red][0]_0\ : out STD_LOGIC;
    \r_reg[red][0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[red][7]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]\ : out STD_LOGIC;
    \r_reg[blank]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[red][5]_0\ : out STD_LOGIC;
    \r_reg[red][6]_0\ : out STD_LOGIC;
    \r_reg[green][0]_0\ : out STD_LOGIC;
    \r_reg[green][0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \r_reg[green][7]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]_0\ : out STD_LOGIC;
    \r_reg[green][4]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]_1\ : out STD_LOGIC;
    \r_reg[blue][7]_0\ : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \r_reg[hCounter][11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \r_reg[blue][0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_reg[red][1]_0\ : out STD_LOGIC;
    \r_reg[red][3]_0\ : out STD_LOGIC;
    \r_reg[red][5]_1\ : out STD_LOGIC;
    \r_reg[red][1]_1\ : out STD_LOGIC;
    \r_reg[red][4]_0\ : out STD_LOGIC;
    \r_reg[red][6]_1\ : out STD_LOGIC;
    \r_reg[red][4]_1\ : out STD_LOGIC;
    \r_reg[red][7]_1\ : out STD_LOGIC;
    \r_reg[red][0]_2\ : out STD_LOGIC;
    \r_reg[red][0]_3\ : out STD_LOGIC;
    \dc_bias_reg[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \r_reg[green][6]_0\ : out STD_LOGIC;
    \r_reg[green][1]_0\ : out STD_LOGIC;
    \r_reg[green][3]_0\ : out STD_LOGIC;
    \r_reg[green][4]_1\ : out STD_LOGIC;
    \r_reg[green][1]_1\ : out STD_LOGIC;
    \r_reg[green][4]_2\ : out STD_LOGIC;
    \r_reg[green][4]_3\ : out STD_LOGIC;
    \r_reg[green][6]_1\ : out STD_LOGIC;
    \r_reg[green][0]_2\ : out STD_LOGIC;
    \r_reg[green][4]_4\ : out STD_LOGIC;
    \r_reg[green][7]_1\ : out STD_LOGIC;
    \r_reg[green][0]_3\ : out STD_LOGIC;
    \dc_bias_reg[2]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[0]\ : out STD_LOGIC;
    \r_reg[blue][0]_1\ : out STD_LOGIC;
    \r_reg[hSync]__0_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \r_reg[blue][4]_0\ : out STD_LOGIC;
    \r_reg[blue][0]_2\ : out STD_LOGIC;
    \r_reg[blue][7]_1\ : out STD_LOGIC;
    clk_vga : in STD_LOGIC;
    \dc_bias_reg[3]_3\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[1]\ : in STD_LOGIC;
    \dc_bias_reg[3]_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_i_4_0\ : in STD_LOGIC;
    \dc_bias_reg[2]_0\ : in STD_LOGIC;
    \dc_bias_reg[3]_6\ : in STD_LOGIC;
    \dc_bias_reg[2]_1\ : in STD_LOGIC;
    \dc_bias_reg[2]_2\ : in STD_LOGIC;
    \dc_bias_reg[3]_7\ : in STD_LOGIC;
    \dc_bias_reg[1]_0\ : in STD_LOGIC;
    g_rgb : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga is
  signal Blue : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Green : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal Red : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \dc_bias[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[0]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_10__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_10_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_11__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_12__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_12_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_9__0_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_9__1_n_0\ : STD_LOGIC;
  signal \dc_bias[1]_i_9_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_12__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_12_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_13__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_14__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_14_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_15__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_15_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_16__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_16_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_17__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_17_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_18__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_19__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_19_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_20__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_20_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_21_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_24_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_25_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_26_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_2_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_5__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_5_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_6_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[2]_i_9__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_10_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_11_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_12_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_13_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_14_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_15_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_16__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_16_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_17__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_18_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_19__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_19_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_20_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_21_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_22__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_23__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_24__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_24_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_25__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_25_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_26__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_26_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_27_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_28__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_29__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_30__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_33_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_34_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_4_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_7_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_8_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9__0_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9__1_n_0\ : STD_LOGIC;
  signal \dc_bias[3]_i_9_n_0\ : STD_LOGIC;
  signal \^dc_bias_reg[0]\ : STD_LOGIC;
  signal \^dc_bias_reg[3]\ : STD_LOGIC;
  signal \^dc_bias_reg[3]_0\ : STD_LOGIC;
  signal \^dc_bias_reg[3]_1\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \dc_bias_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \encoded[1]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[3]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[4]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[5]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_2_n_0\ : STD_LOGIC;
  signal \encoded[6]_i_3_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_4_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_5_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_6_n_0\ : STD_LOGIC;
  signal \encoded[7]_i_7_n_0\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal geqOp : STD_LOGIC;
  signal geqOp1_in : STD_LOGIC;
  signal \geqOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \geqOp_carry__0_n_3\ : STD_LOGIC;
  signal geqOp_carry_i_1_n_0 : STD_LOGIC;
  signal geqOp_carry_i_2_n_0 : STD_LOGIC;
  signal geqOp_carry_i_3_n_0 : STD_LOGIC;
  signal geqOp_carry_i_4_n_0 : STD_LOGIC;
  signal geqOp_carry_i_5_n_0 : STD_LOGIC;
  signal geqOp_carry_i_6_n_0 : STD_LOGIC;
  signal geqOp_carry_i_7_n_0 : STD_LOGIC;
  signal geqOp_carry_n_0 : STD_LOGIC;
  signal geqOp_carry_n_1 : STD_LOGIC;
  signal geqOp_carry_n_2 : STD_LOGIC;
  signal geqOp_carry_n_3 : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \geqOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal ltOp : STD_LOGIC;
  signal ltOp0_in : STD_LOGIC;
  signal ltOp2_in : STD_LOGIC;
  signal ltOp3_in : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \ltOp_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \n[h_v]\ : STD_LOGIC;
  signal \n[vCounter]\ : STD_LOGIC;
  signal \n[vSync]\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^p_1_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \r[hCounter][11]_i_3_n_0\ : STD_LOGIC;
  signal \r[hCounter][11]_i_4_n_0\ : STD_LOGIC;
  signal \r[hCounter][3]_i_2_n_0\ : STD_LOGIC;
  signal \r[hSync]_i_1_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_10_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_11_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_12_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_13_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_14_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_15_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_4_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_5_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_6_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_7_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_8_n_0\ : STD_LOGIC;
  signal \r[h_v]_i_9_n_0\ : STD_LOGIC;
  signal \r[red][7]_i_1_n_0\ : STD_LOGIC;
  signal \r[vCounter][11]_i_3_n_0\ : STD_LOGIC;
  signal \r[vCounter][11]_i_4_n_0\ : STD_LOGIC;
  signal \r[vCounter][3]_i_2_n_0\ : STD_LOGIC;
  signal \^r_reg[blue][0]_0\ : STD_LOGIC;
  signal \^r_reg[blue][0]_1\ : STD_LOGIC;
  signal \^r_reg[blue][0]_2\ : STD_LOGIC;
  signal \^r_reg[blue][4]_0\ : STD_LOGIC;
  signal \^r_reg[blue][7]_0\ : STD_LOGIC;
  signal \^r_reg[blue][7]_1\ : STD_LOGIC;
  signal \^r_reg[green][0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^r_reg[green][4]_0\ : STD_LOGIC;
  signal \^r_reg[green][4]_4\ : STD_LOGIC;
  signal \^r_reg[green][6]_0\ : STD_LOGIC;
  signal \^r_reg[green][7]_0\ : STD_LOGIC;
  signal \^r_reg[green][7]_1\ : STD_LOGIC;
  signal \^r_reg[hcounter][11]_0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \r_reg[hCounter][11]_i_2_n_1\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_4\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_5\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_6\ : STD_LOGIC;
  signal \r_reg[hCounter][11]_i_2_n_7\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg[hCounter][3]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg[hCounter][7]_i_1_n_7\ : STD_LOGIC;
  signal \^r_reg[hsync]\ : STD_LOGIC;
  signal \r_reg[h_v]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[h_v]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[h_v]_i_3_n_1\ : STD_LOGIC;
  signal \r_reg[h_v]_i_3_n_2\ : STD_LOGIC;
  signal \r_reg[h_v]_i_3_n_3\ : STD_LOGIC;
  signal \^r_reg[red][0]_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^r_reg[red][4]_1\ : STD_LOGIC;
  signal \^r_reg[red][5]_0\ : STD_LOGIC;
  signal \^r_reg[red][6]_0\ : STD_LOGIC;
  signal \^r_reg[red][7]_0\ : STD_LOGIC;
  signal \^r_reg[red][7]_1\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_1\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_2\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_3\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_4\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_5\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_6\ : STD_LOGIC;
  signal \r_reg[vCounter][11]_i_2_n_7\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg[vCounter][3]_i_1_n_7\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_0\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_1\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_2\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_3\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_4\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_5\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_6\ : STD_LOGIC;
  signal \r_reg[vCounter][7]_i_1_n_7\ : STD_LOGIC;
  signal NLW_geqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[hCounter][11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[h_v]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_reg[h_v]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[h_v]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r_reg[vCounter][11]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \dc_bias[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_3__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_4__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_5\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_5__0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \dc_bias[0]_i_8\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_10__1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_11__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_3__0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_3__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_5\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_5__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_6__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_6__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_7\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_7__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_8\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_8__1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \dc_bias[1]_i_9__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_10__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_11\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_11__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_12__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_13\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_14\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_14__0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_15\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_15__0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_16__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_18__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_19__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_20__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_23\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_24\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_25\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_26\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_4__1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \dc_bias[2]_i_9\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_10__1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_11__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_12\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_12__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_15\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_15__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_16\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_16__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_17\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_18\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_19\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_20__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_21\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_21__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_22\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_22__0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_24\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_25\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_25__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_26__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_27\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_27__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_29\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_29__0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_30\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_32\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_33\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_8__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \dc_bias[3]_i_9__1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \encoded[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \encoded[0]_i_1__1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \encoded[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \encoded[1]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \encoded[1]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \encoded[3]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \encoded[3]_i_2__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \encoded[3]_i_2__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \encoded[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \encoded[4]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \encoded[4]_i_1__1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \encoded[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \encoded[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \encoded[5]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \encoded[5]_i_2__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \encoded[6]_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \encoded[6]_i_2__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \encoded[6]_i_3\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \encoded[7]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \encoded[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \encoded[7]_i_2__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \encoded[7]_i_2__1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \encoded[7]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \encoded[7]_i_6\ : label is "soft_lutpair62";
begin
  \dc_bias_reg[0]\ <= \^dc_bias_reg[0]\;
  \dc_bias_reg[3]\ <= \^dc_bias_reg[3]\;
  \dc_bias_reg[3]_0\ <= \^dc_bias_reg[3]_0\;
  \dc_bias_reg[3]_1\ <= \^dc_bias_reg[3]_1\;
  \out\(11 downto 0) <= \^out\(11 downto 0);
  p_1_in(0) <= \^p_1_in\(0);
  \r_reg[blue][0]_0\ <= \^r_reg[blue][0]_0\;
  \r_reg[blue][0]_1\ <= \^r_reg[blue][0]_1\;
  \r_reg[blue][0]_2\ <= \^r_reg[blue][0]_2\;
  \r_reg[blue][4]_0\ <= \^r_reg[blue][4]_0\;
  \r_reg[blue][7]_0\ <= \^r_reg[blue][7]_0\;
  \r_reg[blue][7]_1\ <= \^r_reg[blue][7]_1\;
  \r_reg[green][0]_1\(0) <= \^r_reg[green][0]_1\(0);
  \r_reg[green][4]_0\ <= \^r_reg[green][4]_0\;
  \r_reg[green][4]_4\ <= \^r_reg[green][4]_4\;
  \r_reg[green][6]_0\ <= \^r_reg[green][6]_0\;
  \r_reg[green][7]_0\ <= \^r_reg[green][7]_0\;
  \r_reg[green][7]_1\ <= \^r_reg[green][7]_1\;
  \r_reg[hCounter][11]_0\(11 downto 0) <= \^r_reg[hcounter][11]_0\(11 downto 0);
  \r_reg[hSync]\ <= \^r_reg[hsync]\;
  \r_reg[red][0]_1\(0) <= \^r_reg[red][0]_1\(0);
  \r_reg[red][4]_1\ <= \^r_reg[red][4]_1\;
  \r_reg[red][5]_0\ <= \^r_reg[red][5]_0\;
  \r_reg[red][6]_0\ <= \^r_reg[red][6]_0\;
  \r_reg[red][7]_0\ <= \^r_reg[red][7]_0\;
  \r_reg[red][7]_1\ <= \^r_reg[red][7]_1\;
\dc_bias[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"906F6F90"
    )
        port map (
      I0 => \^dc_bias_reg[3]\,
      I1 => \^r_reg[red][7]_0\,
      I2 => \dc_bias_reg[3]_3\,
      I3 => Q(0),
      I4 => \dc_bias[0]_i_3__0_n_0\,
      O => D(0)
    );
\dc_bias[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6F60606F"
    )
        port map (
      I0 => \^dc_bias_reg[3]_0\,
      I1 => \dc_bias[0]_i_2__0_n_0\,
      I2 => \dc_bias_reg[1]\,
      I3 => \dc_bias_reg[3]_4\(0),
      I4 => \dc_bias[0]_i_3__1_n_0\,
      O => \dc_bias_reg[3]_2\(0)
    );
\dc_bias[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F60606F606F6F60"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(0),
      I1 => \dc_bias[0]_i_2__1_n_0\,
      I2 => \^dc_bias_reg[0]\,
      I3 => \^dc_bias_reg[3]_1\,
      I4 => \dc_bias[0]_i_3_n_0\,
      I5 => \dc_bias[0]_i_4__1_n_0\,
      O => \dc_bias_reg[2]\(0)
    );
\dc_bias[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044504455555555D"
    )
        port map (
      I0 => \dc_bias[0]_i_4_n_0\,
      I1 => \dc_bias[0]_i_5__0_n_0\,
      I2 => \dc_bias[0]_i_6_n_0\,
      I3 => Red(7),
      I4 => \^r_reg[red][0]_1\(0),
      I5 => \dc_bias[0]_i_7_n_0\,
      O => \^r_reg[red][7]_0\
    );
\dc_bias[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => \dc_bias_reg[3]_4\(0),
      I2 => \^r_reg[green][6]_0\,
      I3 => \dc_bias[3]_i_19_n_0\,
      I4 => Green(6),
      I5 => \encoded[4]_i_2_n_0\,
      O => \dc_bias[0]_i_2__0_n_0\
    );
\dc_bias[0]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Blue(0),
      I1 => \encoded[7]_i_2__1_n_0\,
      I2 => \dc_bias[0]_i_5_n_0\,
      I3 => \encoded[5]_i_2__1_n_0\,
      I4 => \dc_bias[2]_i_14__0_n_0\,
      O => \dc_bias[0]_i_2__1_n_0\
    );
\dc_bias[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \encoded[3]_i_2__1_n_0\,
      I1 => Blue(5),
      I2 => Blue(0),
      I3 => \dc_bias_reg[3]_5\(0),
      I4 => Blue(7),
      O => \dc_bias[0]_i_3_n_0\
    );
\dc_bias[0]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \dc_bias[2]_i_11_n_0\,
      I1 => \^r_reg[red][0]_1\(0),
      I2 => \dc_bias[0]_i_8_n_0\,
      I3 => \encoded[5]_i_2_n_0\,
      I4 => Red(6),
      O => \dc_bias[0]_i_3__0_n_0\
    );
\dc_bias[0]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dc_bias[3]_i_19_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => Green(7),
      I3 => \dc_bias[0]_i_4__0_n_0\,
      I4 => \dc_bias[0]_i_5__1_n_0\,
      O => \dc_bias[0]_i_3__1_n_0\
    );
\dc_bias[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => Red(2),
      I1 => Red(3),
      I2 => Red(1),
      I3 => Red(5),
      I4 => Red(6),
      I5 => Red(4),
      O => \dc_bias[0]_i_4_n_0\
    );
\dc_bias[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => Green(6),
      I1 => Green(5),
      I2 => \encoded[3]_i_2__0_n_0\,
      I3 => Green(2),
      I4 => Green(3),
      I5 => Green(4),
      O => \dc_bias[0]_i_4__0_n_0\
    );
\dc_bias[0]_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Blue(2),
      I1 => \^r_reg[blue][7]_0\,
      O => \dc_bias[0]_i_4__1_n_0\
    );
\dc_bias[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Blue(5),
      I1 => Blue(6),
      O => \dc_bias[0]_i_5_n_0\
    );
\dc_bias[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Red(1),
      I1 => Red(3),
      I2 => Red(2),
      O => \dc_bias[0]_i_5__0_n_0\
    );
\dc_bias[0]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Green(6),
      I1 => Green(3),
      I2 => Green(2),
      I3 => \^r_reg[green][0]_1\(0),
      I4 => Green(1),
      I5 => Green(4),
      O => \dc_bias[0]_i_5__1_n_0\
    );
\dc_bias[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Red(4),
      I1 => Red(6),
      I2 => Red(5),
      O => \dc_bias[0]_i_6_n_0\
    );
\dc_bias[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFE8FFE8E8E8"
    )
        port map (
      I0 => Red(2),
      I1 => Red(3),
      I2 => Red(1),
      I3 => Red(5),
      I4 => Red(6),
      I5 => Red(4),
      O => \dc_bias[0]_i_7_n_0\
    );
\dc_bias[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => Red(7),
      I1 => \encoded[5]_i_2_n_0\,
      I2 => Red(5),
      I3 => Red(6),
      O => \dc_bias[0]_i_8_n_0\
    );
\dc_bias[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dc_bias[1]_i_2_n_0\,
      I1 => \^dc_bias_reg[3]\,
      I2 => \dc_bias[1]_i_3_n_0\,
      I3 => \dc_bias_reg[3]_3\,
      I4 => \dc_bias[1]_i_4_n_0\,
      O => D(1)
    );
\dc_bias[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => Q(0),
      I1 => \^r_reg[red][0]_1\(0),
      I2 => \^r_reg[red][6]_0\,
      I3 => \^r_reg[red][5]_0\,
      I4 => Q(1),
      O => \dc_bias[1]_i_10_n_0\
    );
\dc_bias[1]_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBEBEEB"
    )
        port map (
      I0 => \dc_bias_reg[3]_4\(0),
      I1 => \dc_bias[0]_i_5__1_n_0\,
      I2 => \dc_bias[1]_i_12__0_n_0\,
      I3 => \^r_reg[green][0]_1\(0),
      I4 => \dc_bias[3]_i_19_n_0\,
      O => \dc_bias[1]_i_10__0_n_0\
    );
\dc_bias[1]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Blue(0),
      I1 => Blue(1),
      I2 => \^r_reg[blue][7]_0\,
      O => \dc_bias[1]_i_10__1_n_0\
    );
\dc_bias[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A6A95"
    )
        port map (
      I0 => \dc_bias_reg[3]_4\(1),
      I1 => \dc_bias[3]_i_19_n_0\,
      I2 => \dc_bias[3]_i_18__0_n_0\,
      I3 => \dc_bias[3]_i_20_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \dc_bias[1]_i_11_n_0\
    );
\dc_bias[1]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBEBEEB"
    )
        port map (
      I0 => Q(0),
      I1 => \dc_bias[1]_i_13_n_0\,
      I2 => \dc_bias[0]_i_8_n_0\,
      I3 => \^r_reg[red][0]_1\(0),
      I4 => \dc_bias[2]_i_11_n_0\,
      O => \dc_bias[1]_i_11__0_n_0\
    );
\dc_bias[1]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Blue(2),
      I1 => Blue(0),
      I2 => Blue(1),
      O => \dc_bias[1]_i_11__1_n_0\
    );
\dc_bias[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996699669"
    )
        port map (
      I0 => Q(1),
      I1 => \^r_reg[red][5]_0\,
      I2 => \dc_bias[2]_i_8_n_0\,
      I3 => \dc_bias[2]_i_12_n_0\,
      I4 => \dc_bias[2]_i_10__0_n_0\,
      I5 => \dc_bias[2]_i_11_n_0\,
      O => \dc_bias[1]_i_12_n_0\
    );
\dc_bias[1]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => Green(7),
      I1 => Green(4),
      I2 => \encoded[5]_i_2__0_n_0\,
      I3 => Green(6),
      O => \dc_bias[1]_i_12__0_n_0\
    );
\dc_bias[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Red(6),
      I1 => Red(3),
      I2 => Red(2),
      I3 => \^r_reg[red][0]_1\(0),
      I4 => Red(1),
      I5 => Red(4),
      O => \dc_bias[1]_i_13_n_0\
    );
\dc_bias[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dc_bias[1]_i_2__0_n_0\,
      I1 => \^dc_bias_reg[3]_0\,
      I2 => \dc_bias[1]_i_3__0_n_0\,
      I3 => \dc_bias_reg[1]\,
      I4 => \dc_bias[1]_i_4__0_n_0\,
      O => \dc_bias_reg[3]_2\(1)
    );
\dc_bias[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \dc_bias[1]_i_2__1_n_0\,
      I1 => \^dc_bias_reg[0]\,
      I2 => \dc_bias[1]_i_3__1_n_0\,
      I3 => \^dc_bias_reg[3]_1\,
      I4 => \dc_bias[1]_i_4__1_n_0\,
      O => \dc_bias_reg[2]\(1)
    );
\dc_bias[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C36996C3"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \dc_bias[2]_i_7__1_n_0\,
      I3 => \dc_bias[0]_i_3__0_n_0\,
      I4 => \^r_reg[red][7]_0\,
      O => \dc_bias[1]_i_2_n_0\
    );
\dc_bias[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A595965A69A9A59"
    )
        port map (
      I0 => \dc_bias[3]_i_16__0_n_0\,
      I1 => \encoded[5]_i_2__0_n_0\,
      I2 => \dc_bias[1]_i_5__0_n_0\,
      I3 => Green(7),
      I4 => \dc_bias[1]_i_6__1_n_0\,
      I5 => \dc_bias[1]_i_7__1_n_0\,
      O => \dc_bias[1]_i_2__0_n_0\
    );
\dc_bias[1]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69FF6900690069FF"
    )
        port map (
      I0 => \dc_bias[1]_i_5__1_n_0\,
      I1 => \dc_bias[1]_i_6_n_0\,
      I2 => \dc_bias[2]_i_11__0_n_0\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => \dc_bias[3]_i_15__1_n_0\,
      I5 => \dc_bias[1]_i_7__0_n_0\,
      O => \dc_bias[1]_i_2__1_n_0\
    );
\dc_bias[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"781EE1781E87781E"
    )
        port map (
      I0 => \dc_bias[1]_i_5_n_0\,
      I1 => \dc_bias[1]_i_6__0_n_0\,
      I2 => \dc_bias[2]_i_14_n_0\,
      I3 => \dc_bias[1]_i_7_n_0\,
      I4 => Red(7),
      I5 => \dc_bias[1]_i_8_n_0\,
      O => \dc_bias[1]_i_3_n_0\
    );
\dc_bias[1]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666669"
    )
        port map (
      I0 => \dc_bias[2]_i_6__0_n_0\,
      I1 => \dc_bias_reg[3]_4\(1),
      I2 => \^r_reg[green][7]_0\,
      I3 => \dc_bias[0]_i_3__1_n_0\,
      I4 => \dc_bias_reg[3]_4\(0),
      O => \dc_bias[1]_i_3__0_n_0\
    );
\dc_bias[1]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \^r_reg[blue][0]_0\,
      I1 => \dc_bias_reg[3]_5\(1),
      I2 => \^r_reg[blue][7]_0\,
      I3 => \dc_bias[0]_i_2__1_n_0\,
      I4 => \dc_bias_reg[3]_5\(0),
      O => \dc_bias[1]_i_3__1_n_0\
    );
\dc_bias[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"960096FF96FF9600"
    )
        port map (
      I0 => \dc_bias[1]_i_9_n_0\,
      I1 => \dc_bias[1]_i_10_n_0\,
      I2 => \dc_bias[2]_i_8_n_0\,
      I3 => \^r_reg[red][7]_0\,
      I4 => \dc_bias[1]_i_11__0_n_0\,
      I5 => \dc_bias[1]_i_12_n_0\,
      O => \dc_bias[1]_i_4_n_0\
    );
\dc_bias[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"690069FF69FF6900"
    )
        port map (
      I0 => \dc_bias[1]_i_8__0_n_0\,
      I1 => \dc_bias[1]_i_9__0_n_0\,
      I2 => \dc_bias[3]_i_21_n_0\,
      I3 => \^r_reg[green][7]_0\,
      I4 => \dc_bias[1]_i_10__0_n_0\,
      I5 => \dc_bias[1]_i_11_n_0\,
      O => \dc_bias[1]_i_4__0_n_0\
    );
\dc_bias[1]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A6A69A596565A6"
    )
        port map (
      I0 => \dc_bias[2]_i_17__0_n_0\,
      I1 => \dc_bias[1]_i_8__1_n_0\,
      I2 => Blue(7),
      I3 => \dc_bias[1]_i_9__1_n_0\,
      I4 => \dc_bias[1]_i_10__1_n_0\,
      I5 => \dc_bias[1]_i_11__1_n_0\,
      O => \dc_bias[1]_i_4__1_n_0\
    );
\dc_bias[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => Red(1),
      I2 => \^r_reg[red][7]_0\,
      O => \dc_bias[1]_i_5_n_0\
    );
\dc_bias[1]_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => \dc_bias_reg[3]_4\(0),
      O => \dc_bias[1]_i_5__0_n_0\
    );
\dc_bias[1]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6F99F06609009"
    )
        port map (
      I0 => \encoded[5]_i_2__1_n_0\,
      I1 => \dc_bias[0]_i_5_n_0\,
      I2 => \dc_bias[1]_i_9__1_n_0\,
      I3 => \encoded[7]_i_2__1_n_0\,
      I4 => \^r_reg[blue][7]_0\,
      I5 => \dc_bias[2]_i_14__0_n_0\,
      O => \dc_bias[1]_i_5__1_n_0\
    );
\dc_bias[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \dc_bias[3]_i_25__0_n_0\,
      I1 => \dc_bias_reg[3]_5\(0),
      I2 => Blue(0),
      I3 => \dc_bias[2]_i_12__0_n_0\,
      I4 => \dc_bias_reg[3]_5\(1),
      O => \dc_bias[1]_i_6_n_0\
    );
\dc_bias[1]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Red(2),
      I1 => \^r_reg[red][0]_1\(0),
      I2 => Red(1),
      O => \dc_bias[1]_i_6__0_n_0\
    );
\dc_bias[1]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Green(2),
      I1 => \^r_reg[green][0]_1\(0),
      I2 => Green(1),
      O => \dc_bias[1]_i_6__1_n_0\
    );
\dc_bias[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Red(5),
      I1 => Red(1),
      I2 => \^r_reg[red][0]_1\(0),
      I3 => Red(2),
      I4 => Red(3),
      O => \dc_bias[1]_i_7_n_0\
    );
\dc_bias[1]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669966996"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(1),
      I1 => \dc_bias[2]_i_11__0_n_0\,
      I2 => \dc_bias[2]_i_12__0_n_0\,
      I3 => \dc_bias[2]_i_13__0_n_0\,
      I4 => \dc_bias[2]_i_15__0_n_0\,
      I5 => \dc_bias[2]_i_14__0_n_0\,
      O => \dc_bias[1]_i_7__0_n_0\
    );
\dc_bias[1]_i_7__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => Green(1),
      I2 => \^r_reg[green][7]_0\,
      O => \dc_bias[1]_i_7__1_n_0\
    );
\dc_bias[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => Q(0),
      O => \dc_bias[1]_i_8_n_0\
    );
\dc_bias[1]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8D1D1B8D1B8B8D1"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => \dc_bias[0]_i_5__1_n_0\,
      I2 => \dc_bias[3]_i_19_n_0\,
      I3 => \dc_bias[1]_i_12__0_n_0\,
      I4 => \dc_bias_reg[3]_4\(0),
      I5 => \^r_reg[green][0]_1\(0),
      O => \dc_bias[1]_i_8__0_n_0\
    );
\dc_bias[1]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Blue(5),
      I1 => Blue(1),
      I2 => Blue(0),
      I3 => Blue(2),
      I4 => Blue(3),
      O => \dc_bias[1]_i_8__1_n_0\
    );
\dc_bias[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F06F690F6909F06"
    )
        port map (
      I0 => Red(6),
      I1 => \encoded[5]_i_2_n_0\,
      I2 => \^r_reg[red][7]_0\,
      I3 => \dc_bias[2]_i_11_n_0\,
      I4 => \dc_bias[0]_i_8_n_0\,
      I5 => \dc_bias[1]_i_8_n_0\,
      O => \dc_bias[1]_i_9_n_0\
    );
\dc_bias[1]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"599AA665"
    )
        port map (
      I0 => \^r_reg[green][4]_0\,
      I1 => \^r_reg[green][6]_0\,
      I2 => \dc_bias_reg[3]_4\(0),
      I3 => \^r_reg[green][0]_1\(0),
      I4 => \dc_bias_reg[3]_4\(1),
      O => \dc_bias[1]_i_9__0_n_0\
    );
\dc_bias[1]_i_9__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Blue(0),
      I1 => \dc_bias_reg[3]_5\(0),
      O => \dc_bias[1]_i_9__1_n_0\
    );
\dc_bias[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \dc_bias[2]_i_2_n_0\,
      I1 => \^dc_bias_reg[3]\,
      I2 => \dc_bias[2]_i_4_n_0\,
      I3 => \dc_bias_reg[3]_3\,
      I4 => \dc_bias[2]_i_5_n_0\,
      O => D(2)
    );
\dc_bias[2]_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Red(5),
      I1 => Red(7),
      I2 => \^r_reg[red][0]_1\(0),
      O => \dc_bias[2]_i_10__0_n_0\
    );
\dc_bias[2]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Red(3),
      I1 => \^r_reg[red][0]_1\(0),
      I2 => Red(1),
      O => \dc_bias[2]_i_11_n_0\
    );
\dc_bias[2]_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"693CC369"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => Blue(1),
      I2 => Blue(0),
      I3 => Blue(2),
      I4 => Blue(3),
      O => \dc_bias[2]_i_11__0_n_0\
    );
\dc_bias[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA3AACA33ACAA3AC"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => \^r_reg[red][7]_0\,
      I2 => Red(7),
      I3 => \encoded[5]_i_2_n_0\,
      I4 => Red(5),
      I5 => Red(6),
      O => \dc_bias[2]_i_12_n_0\
    );
\dc_bias[2]_i_12__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A96A"
    )
        port map (
      I0 => \encoded[6]_i_2__0_n_0\,
      I1 => Blue(5),
      I2 => \^r_reg[blue][7]_0\,
      I3 => Blue(6),
      O => \dc_bias[2]_i_12__0_n_0\
    );
\dc_bias[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => Red(2),
      I1 => \^r_reg[red][7]_0\,
      I2 => Red(1),
      I3 => \^r_reg[red][0]_1\(0),
      O => \dc_bias[2]_i_13_n_0\
    );
\dc_bias[2]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35C5535CC5355C53"
    )
        port map (
      I0 => Blue(0),
      I1 => \^r_reg[blue][7]_0\,
      I2 => Blue(7),
      I3 => \encoded[6]_i_2__0_n_0\,
      I4 => Blue(5),
      I5 => Blue(6),
      O => \dc_bias[2]_i_13__0_n_0\
    );
\dc_bias[2]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \^r_reg[red][4]_1\,
      I1 => \^r_reg[red][7]_1\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^r_reg[red][0]_1\(0),
      O => \dc_bias[2]_i_14_n_0\
    );
\dc_bias[2]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Blue(3),
      I1 => Blue(0),
      I2 => Blue(1),
      O => \dc_bias[2]_i_14__0_n_0\
    );
\dc_bias[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"066F6F06"
    )
        port map (
      I0 => \dc_bias[2]_i_24_n_0\,
      I1 => Red(5),
      I2 => Red(7),
      I3 => \^r_reg[red][0]_1\(0),
      I4 => Q(0),
      O => \dc_bias[2]_i_15_n_0\
    );
\dc_bias[2]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Blue(5),
      I1 => Blue(7),
      I2 => Blue(0),
      O => \dc_bias[2]_i_15__0_n_0\
    );
\dc_bias[2]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009099009909009"
    )
        port map (
      I0 => \dc_bias[1]_i_6__0_n_0\,
      I1 => \dc_bias[1]_i_5_n_0\,
      I2 => Red(7),
      I3 => Q(0),
      I4 => \^r_reg[red][0]_1\(0),
      I5 => \dc_bias[1]_i_7_n_0\,
      O => \dc_bias[2]_i_16_n_0\
    );
\dc_bias[2]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB7D"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => Blue(1),
      I2 => Blue(0),
      I3 => Blue(2),
      O => \dc_bias[2]_i_16__0_n_0\
    );
\dc_bias[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D44242422BBDBDBD"
    )
        port map (
      I0 => \^r_reg[red][4]_1\,
      I1 => \^r_reg[red][7]_1\,
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^r_reg[red][0]_1\(0),
      I5 => Q(2),
      O => \dc_bias[2]_i_17_n_0\
    );
\dc_bias[2]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \^r_reg[blue][4]_0\,
      I1 => \dc_bias_reg[3]_5\(1),
      I2 => \^r_reg[blue][0]_2\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => Blue(7),
      I5 => \dc_bias[2]_i_20__0_n_0\,
      O => \dc_bias[2]_i_17__0_n_0\
    );
\dc_bias[2]_i_18__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => Blue(2),
      I2 => \dc_bias[0]_i_3_n_0\,
      O => \dc_bias[2]_i_18__0_n_0\
    );
\dc_bias[2]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DD71441"
    )
        port map (
      I0 => \dc_bias[1]_i_9_n_0\,
      I1 => Q(1),
      I2 => \^r_reg[red][5]_0\,
      I3 => \dc_bias[2]_i_25_n_0\,
      I4 => \dc_bias[2]_i_8_n_0\,
      O => \dc_bias[2]_i_19_n_0\
    );
\dc_bias[2]_i_19__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"066F6F06"
    )
        port map (
      I0 => \encoded[3]_i_2__1_n_0\,
      I1 => Blue(5),
      I2 => Blue(7),
      I3 => Blue(0),
      I4 => \dc_bias_reg[3]_5\(0),
      O => \dc_bias[2]_i_19__0_n_0\
    );
\dc_bias[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \dc_bias[2]_i_2__0_n_0\,
      I1 => \^dc_bias_reg[3]_0\,
      I2 => \dc_bias[2]_i_3_n_0\,
      I3 => \dc_bias_reg[1]\,
      I4 => \dc_bias[2]_i_4__0_n_0\,
      O => \dc_bias_reg[3]_2\(2)
    );
\dc_bias[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B88BBBBBB88B8888"
    )
        port map (
      I0 => \dc_bias[2]_i_2__1_n_0\,
      I1 => \^dc_bias_reg[0]\,
      I2 => \dc_bias[2]_i_4__1_n_0\,
      I3 => \dc_bias_reg[2]_2\,
      I4 => \^dc_bias_reg[3]_1\,
      I5 => \dc_bias[2]_i_7__0_n_0\,
      O => \dc_bias_reg[2]\(2)
    );
\dc_bias[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF20FB04FB0420DF"
    )
        port map (
      I0 => Q(0),
      I1 => \dc_bias[0]_i_3__0_n_0\,
      I2 => \^r_reg[red][7]_0\,
      I3 => \dc_bias[2]_i_6_n_0\,
      I4 => \dc_bias[2]_i_7__1_n_0\,
      I5 => Q(1),
      O => \dc_bias[2]_i_2_n_0\
    );
\dc_bias[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88E8EE88EE8E88E"
    )
        port map (
      I0 => \dc_bias[1]_i_11__0_n_0\,
      I1 => Q(1),
      I2 => \dc_bias[2]_i_26_n_0\,
      I3 => \dc_bias[2]_i_12_n_0\,
      I4 => \dc_bias[2]_i_8_n_0\,
      I5 => \^r_reg[red][5]_0\,
      O => \dc_bias[2]_i_20_n_0\
    );
\dc_bias[2]_i_20__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Blue(6),
      I1 => Blue(5),
      I2 => \encoded[6]_i_2__0_n_0\,
      O => \dc_bias[2]_i_20__0_n_0\
    );
\dc_bias[2]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77E7717771771171"
    )
        port map (
      I0 => \^r_reg[red][5]_0\,
      I1 => \dc_bias[2]_i_8_n_0\,
      I2 => \dc_bias[3]_i_10__1_n_0\,
      I3 => \^r_reg[red][6]_0\,
      I4 => \^r_reg[red][0]_1\(0),
      I5 => \dc_bias[2]_i_11_n_0\,
      O => \dc_bias[2]_i_21_n_0\
    );
\dc_bias[2]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CC396699669C33C"
    )
        port map (
      I0 => Red(4),
      I1 => \encoded[3]_i_2_n_0\,
      I2 => Red(2),
      I3 => Red(3),
      I4 => Red(5),
      I5 => \^r_reg[red][7]_0\,
      O => \^r_reg[red][4]_1\
    );
\dc_bias[2]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \^r_reg[red][7]_0\,
      I1 => Red(7),
      I2 => \encoded[5]_i_2_n_0\,
      I3 => Red(5),
      I4 => Red(6),
      O => \^r_reg[red][7]_1\
    );
\dc_bias[2]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Red(3),
      I1 => Red(2),
      I2 => \^r_reg[red][0]_1\(0),
      I3 => Red(1),
      O => \dc_bias[2]_i_24_n_0\
    );
\dc_bias[2]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"009696FF"
    )
        port map (
      I0 => \encoded[6]_i_2_n_0\,
      I1 => Red(7),
      I2 => \^r_reg[red][7]_0\,
      I3 => \^r_reg[red][0]_1\(0),
      I4 => Q(0),
      O => \dc_bias[2]_i_25_n_0\
    );
\dc_bias[2]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96690000"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => \dc_bias[0]_i_8_n_0\,
      I2 => \encoded[5]_i_2_n_0\,
      I3 => Red(6),
      I4 => \dc_bias[2]_i_11_n_0\,
      O => \dc_bias[2]_i_26_n_0\
    );
\dc_bias[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A6A6AA5"
    )
        port map (
      I0 => \dc_bias[3]_i_13_n_0\,
      I1 => \dc_bias[3]_i_17__0_n_0\,
      I2 => \dc_bias[3]_i_14_n_0\,
      I3 => \dc_bias[3]_i_15_n_0\,
      I4 => \dc_bias[3]_i_16__0_n_0\,
      O => \dc_bias[2]_i_2__0_n_0\
    );
\dc_bias[2]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8B8BBBB8B8B88"
    )
        port map (
      I0 => \dc_bias[2]_i_8__0_n_0\,
      I1 => \^r_reg[blue][7]_0\,
      I2 => \^r_reg[blue][0]_0\,
      I3 => \dc_bias_reg[3]_5\(1),
      I4 => \dc_bias[3]_i_15__1_n_0\,
      I5 => \dc_bias[2]_i_9__0_n_0\,
      O => \dc_bias[2]_i_2__1_n_0\
    );
\dc_bias[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FE807F7F8001FE"
    )
        port map (
      I0 => \dc_bias_reg[3]_4\(0),
      I1 => \dc_bias[0]_i_3__1_n_0\,
      I2 => \^r_reg[green][7]_0\,
      I3 => \dc_bias[2]_i_5__0_n_0\,
      I4 => \dc_bias[2]_i_6__0_n_0\,
      I5 => \dc_bias_reg[3]_4\(1),
      O => \dc_bias[2]_i_3_n_0\
    );
\dc_bias[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBBAAAAAAAAAAEEB"
    )
        port map (
      I0 => \dc_bias_reg[1]_0\,
      I1 => \dc_bias[2]_i_11__0_n_0\,
      I2 => \dc_bias[2]_i_12__0_n_0\,
      I3 => \dc_bias[2]_i_13__0_n_0\,
      I4 => \dc_bias[2]_i_14__0_n_0\,
      I5 => \dc_bias[2]_i_15__0_n_0\,
      O => \^dc_bias_reg[0]\
    );
\dc_bias[2]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5595959595A9A9A9"
    )
        port map (
      I0 => Q(3),
      I1 => \dc_bias[2]_i_8_n_0\,
      I2 => \^r_reg[red][5]_0\,
      I3 => \dc_bias[2]_i_10__0_n_0\,
      I4 => \dc_bias[2]_i_11_n_0\,
      I5 => \dc_bias[2]_i_12_n_0\,
      O => \^dc_bias_reg[3]\
    );
\dc_bias[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000422BBDD4"
    )
        port map (
      I0 => \dc_bias[2]_i_13_n_0\,
      I1 => \dc_bias[2]_i_14_n_0\,
      I2 => \dc_bias[2]_i_15_n_0\,
      I3 => \dc_bias[2]_i_16_n_0\,
      I4 => \dc_bias[2]_i_17_n_0\,
      I5 => \^dc_bias_reg[3]\,
      O => \dc_bias[2]_i_4_n_0\
    );
\dc_bias[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90909F909F9F90"
    )
        port map (
      I0 => \dc_bias[3]_i_9__0_n_0\,
      I1 => \dc_bias_reg[2]_1\,
      I2 => \^r_reg[green][7]_0\,
      I3 => \dc_bias[3]_i_11__0_n_0\,
      I4 => \dc_bias[3]_i_10_n_0\,
      I5 => \dc_bias_reg[3]_4\(2),
      O => \dc_bias[2]_i_4__0_n_0\
    );
\dc_bias[2]_i_4__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99F99099"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(1),
      I1 => \^r_reg[blue][0]_0\,
      I2 => \^r_reg[blue][7]_0\,
      I3 => \dc_bias[0]_i_2__1_n_0\,
      I4 => \dc_bias_reg[3]_5\(0),
      O => \dc_bias[2]_i_4__1_n_0\
    );
\dc_bias[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F90909F909F9F90"
    )
        port map (
      I0 => \dc_bias_reg[2]_0\,
      I1 => \dc_bias[2]_i_19_n_0\,
      I2 => \^r_reg[red][7]_0\,
      I3 => \dc_bias[2]_i_20_n_0\,
      I4 => \dc_bias[2]_i_21_n_0\,
      I5 => Q(2),
      O => \dc_bias[2]_i_5_n_0\
    );
\dc_bias[2]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA556A556A9555"
    )
        port map (
      I0 => \dc_bias_reg[3]_4\(2),
      I1 => \dc_bias[3]_i_18__0_n_0\,
      I2 => \dc_bias[3]_i_19_n_0\,
      I3 => \dc_bias[3]_i_20_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \dc_bias[2]_i_5__0_n_0\
    );
\dc_bias[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA556A556A9555"
    )
        port map (
      I0 => Q(2),
      I1 => \dc_bias[2]_i_10__0_n_0\,
      I2 => \dc_bias[2]_i_11_n_0\,
      I3 => \dc_bias[2]_i_12_n_0\,
      I4 => \dc_bias[2]_i_8_n_0\,
      I5 => \^r_reg[red][5]_0\,
      O => \dc_bias[2]_i_6_n_0\
    );
\dc_bias[2]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E78E18711871E78E"
    )
        port map (
      I0 => \dc_bias[3]_i_19_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \^r_reg[green][6]_0\,
      I3 => \dc_bias[3]_i_28__0_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \dc_bias[2]_i_6__0_n_0\
    );
\dc_bias[2]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65A6A6A655656565"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(3),
      I1 => \dc_bias[2]_i_11__0_n_0\,
      I2 => \dc_bias[2]_i_12__0_n_0\,
      I3 => \dc_bias[2]_i_15__0_n_0\,
      I4 => \dc_bias[2]_i_14__0_n_0\,
      I5 => \dc_bias[2]_i_13__0_n_0\,
      O => \^dc_bias_reg[3]_1\
    );
\dc_bias[2]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A69A9A59"
    )
        port map (
      I0 => \dc_bias[3]_i_19__0_n_0\,
      I1 => \dc_bias[2]_i_16__0_n_0\,
      I2 => \dc_bias[2]_i_17__0_n_0\,
      I3 => \dc_bias[2]_i_18__0_n_0\,
      I4 => \dc_bias[2]_i_19__0_n_0\,
      O => \dc_bias[2]_i_7__0_n_0\
    );
\dc_bias[2]_i_7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1871E78EE78E1871"
    )
        port map (
      I0 => \dc_bias[2]_i_11_n_0\,
      I1 => \^r_reg[red][0]_1\(0),
      I2 => \^r_reg[red][6]_0\,
      I3 => \dc_bias[3]_i_10__1_n_0\,
      I4 => \dc_bias[2]_i_8_n_0\,
      I5 => \^r_reg[red][5]_0\,
      O => \dc_bias[2]_i_7__1_n_0\
    );
\dc_bias[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D4BB4"
    )
        port map (
      I0 => Red(2),
      I1 => Red(3),
      I2 => \^r_reg[red][0]_1\(0),
      I3 => Red(1),
      I4 => \^r_reg[red][7]_0\,
      O => \dc_bias[2]_i_8_n_0\
    );
\dc_bias[2]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6659AA69AA6599A"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(2),
      I1 => \dc_bias[1]_i_5__1_n_0\,
      I2 => \dc_bias[3]_i_24_n_0\,
      I3 => \dc_bias[2]_i_12__0_n_0\,
      I4 => \dc_bias_reg[3]_5\(1),
      I5 => \dc_bias[2]_i_11__0_n_0\,
      O => \dc_bias[2]_i_8__0_n_0\
    );
\dc_bias[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E718"
    )
        port map (
      I0 => \^r_reg[red][7]_0\,
      I1 => Red(5),
      I2 => Red(6),
      I3 => \encoded[5]_i_2_n_0\,
      O => \^r_reg[red][5]_0\
    );
\dc_bias[2]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6559A665A665A665"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(2),
      I1 => \dc_bias[2]_i_11__0_n_0\,
      I2 => \dc_bias[2]_i_12__0_n_0\,
      I3 => \dc_bias[2]_i_13__0_n_0\,
      I4 => \dc_bias[2]_i_14__0_n_0\,
      I5 => \dc_bias[2]_i_15__0_n_0\,
      O => \dc_bias[2]_i_9__0_n_0\
    );
\dc_bias[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00EEEEFFFFEEEE"
    )
        port map (
      I0 => \dc_bias[3]_i_2__0_n_0\,
      I1 => \dc_bias[3]_i_3_n_0\,
      I2 => \dc_bias[3]_i_4_n_0\,
      I3 => \^dc_bias_reg[3]_0\,
      I4 => \dc_bias_reg[1]\,
      I5 => \dc_bias[3]_i_7__0_n_0\,
      O => \dc_bias_reg[3]_2\(3)
    );
\dc_bias[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77E7717771771171"
    )
        port map (
      I0 => \^r_reg[green][4]_0\,
      I1 => \dc_bias[3]_i_21_n_0\,
      I2 => \dc_bias[3]_i_28__0_n_0\,
      I3 => \^r_reg[green][6]_0\,
      I4 => \^r_reg[green][0]_1\(0),
      I5 => \dc_bias[3]_i_19_n_0\,
      O => \dc_bias[3]_i_10_n_0\
    );
\dc_bias[3]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => Blue(1),
      I1 => Blue(3),
      I2 => Blue(2),
      I3 => Blue(4),
      I4 => Blue(6),
      I5 => Blue(5),
      O => \dc_bias[3]_i_10__0_n_0\
    );
\dc_bias[3]_i_10__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^r_reg[red][7]_0\,
      I1 => \encoded[5]_i_2_n_0\,
      I2 => Red(6),
      O => \dc_bias[3]_i_10__1_n_0\
    );
\dc_bias[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFB2FB2FB2FF2F"
    )
        port map (
      I0 => \dc_bias[2]_i_8_n_0\,
      I1 => \dc_bias[1]_i_9_n_0\,
      I2 => \dc_bias[2]_i_25_n_0\,
      I3 => Q(1),
      I4 => \^r_reg[red][5]_0\,
      I5 => Q(2),
      O => \dc_bias[3]_i_11_n_0\
    );
\dc_bias[3]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88E8EE88EE8E88E"
    )
        port map (
      I0 => \dc_bias[1]_i_10__0_n_0\,
      I1 => \dc_bias_reg[3]_4\(1),
      I2 => \dc_bias[3]_i_29__0_n_0\,
      I3 => \dc_bias[3]_i_20_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \dc_bias[3]_i_11__0_n_0\
    );
\dc_bias[3]_i_11__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Blue(1),
      I1 => Blue(3),
      I2 => Blue(2),
      O => \dc_bias[3]_i_11__1_n_0\
    );
\dc_bias[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BFF002B"
    )
        port map (
      I0 => \^r_reg[red][6]_0\,
      I1 => \^r_reg[red][0]_1\(0),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \^r_reg[red][5]_0\,
      O => \dc_bias[3]_i_12_n_0\
    );
\dc_bias[3]_i_12__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Blue(4),
      I1 => Blue(6),
      I2 => Blue(5),
      O => \dc_bias[3]_i_12__1_n_0\
    );
\dc_bias[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBDBDBDD4424242"
    )
        port map (
      I0 => \^r_reg[green][4]_4\,
      I1 => \^r_reg[green][7]_1\,
      I2 => \dc_bias_reg[3]_4\(1),
      I3 => \dc_bias_reg[3]_4\(0),
      I4 => \^r_reg[green][0]_1\(0),
      I5 => \dc_bias_reg[3]_4\(2),
      O => \dc_bias[3]_i_13_n_0\
    );
\dc_bias[3]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001700171717"
    )
        port map (
      I0 => Blue(1),
      I1 => Blue(3),
      I2 => Blue(2),
      I3 => Blue(4),
      I4 => Blue(6),
      I5 => Blue(5),
      O => \dc_bias[3]_i_13__0_n_0\
    );
\dc_bias[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEBFFEBFFFF"
    )
        port map (
      I0 => \encoded[5]_i_2__0_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \dc_bias_reg[3]_4\(0),
      I3 => Green(7),
      I4 => \dc_bias[1]_i_6__1_n_0\,
      I5 => \dc_bias[1]_i_7__1_n_0\,
      O => \dc_bias[3]_i_14_n_0\
    );
\dc_bias[3]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81177EE87EE88117"
    )
        port map (
      I0 => \dc_bias[2]_i_14__0_n_0\,
      I1 => Blue(0),
      I2 => \dc_bias[3]_i_25__0_n_0\,
      I3 => \dc_bias[3]_i_26__0_n_0\,
      I4 => \dc_bias[2]_i_12__0_n_0\,
      I5 => \dc_bias[2]_i_11__0_n_0\,
      O => \^r_reg[blue][0]_0\
    );
\dc_bias[3]_i_14__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56555555AA6A6A56"
    )
        port map (
      I0 => Q(3),
      I1 => \^r_reg[red][5]_0\,
      I2 => \dc_bias[2]_i_8_n_0\,
      I3 => \dc_bias[2]_i_12_n_0\,
      I4 => \dc_bias[2]_i_26_n_0\,
      I5 => Q(2),
      O => \dc_bias[3]_i_14__1_n_0\
    );
\dc_bias[3]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => Green(2),
      I1 => \^r_reg[green][7]_0\,
      I2 => Green(1),
      I3 => \^r_reg[green][0]_1\(0),
      O => \dc_bias[3]_i_15_n_0\
    );
\dc_bias[3]_i_15__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^r_reg[red][7]_0\,
      I1 => \dc_bias[0]_i_3__0_n_0\,
      I2 => Q(0),
      O => \dc_bias[3]_i_15__0_n_0\
    );
\dc_bias[3]_i_15__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBEBEEB"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(0),
      I1 => Blue(3),
      I2 => Blue(1),
      I3 => \dc_bias[3]_i_26__0_n_0\,
      I4 => \dc_bias[3]_i_25__0_n_0\,
      O => \dc_bias[3]_i_15__1_n_0\
    );
\dc_bias[3]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => Q(0),
      I1 => \dc_bias[0]_i_3__0_n_0\,
      I2 => \^r_reg[red][7]_0\,
      O => \dc_bias[3]_i_16_n_0\
    );
\dc_bias[3]_i_16__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \^r_reg[green][4]_4\,
      I1 => \dc_bias_reg[3]_4\(1),
      I2 => \dc_bias_reg[3]_4\(0),
      I3 => \^r_reg[green][0]_1\(0),
      I4 => \^r_reg[green][7]_1\,
      O => \dc_bias[3]_i_16__0_n_0\
    );
\dc_bias[3]_i_16__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2444444D444D4DDD"
    )
        port map (
      I0 => \dc_bias[2]_i_11__0_n_0\,
      I1 => \dc_bias[2]_i_12__0_n_0\,
      I2 => \dc_bias[3]_i_26__0_n_0\,
      I3 => \dc_bias[3]_i_25__0_n_0\,
      I4 => Blue(0),
      I5 => \dc_bias[2]_i_14__0_n_0\,
      O => \^r_reg[blue][0]_1\
    );
\dc_bias[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => Q(0),
      O => \r_reg[red][0]_3\
    );
\dc_bias[3]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB8282008200EB82"
    )
        port map (
      I0 => \encoded[5]_i_2__0_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \dc_bias_reg[3]_4\(0),
      I3 => Green(7),
      I4 => \dc_bias[1]_i_6__1_n_0\,
      I5 => \dc_bias[1]_i_7__1_n_0\,
      O => \dc_bias[3]_i_17__0_n_0\
    );
\dc_bias[3]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEBEB82"
    )
        port map (
      I0 => \dc_bias[2]_i_16__0_n_0\,
      I1 => \dc_bias[3]_i_30__0_n_0\,
      I2 => \^r_reg[blue][4]_0\,
      I3 => \dc_bias[2]_i_18__0_n_0\,
      I4 => \dc_bias[2]_i_19__0_n_0\,
      O => \dc_bias[3]_i_18_n_0\
    );
\dc_bias[3]_i_18__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Green(6),
      I1 => \encoded[4]_i_2_n_0\,
      I2 => \dc_bias[0]_i_4__0_n_0\,
      I3 => Green(7),
      I4 => \^r_reg[green][0]_1\(0),
      O => \dc_bias[3]_i_18__0_n_0\
    );
\dc_bias[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Green(3),
      I1 => \^r_reg[green][0]_1\(0),
      I2 => Green(1),
      O => \dc_bias[3]_i_19_n_0\
    );
\dc_bias[3]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBDBDBDD4424242"
    )
        port map (
      I0 => \^r_reg[blue][4]_0\,
      I1 => \^r_reg[blue][7]_1\,
      I2 => \dc_bias_reg[3]_5\(1),
      I3 => \dc_bias_reg[3]_5\(0),
      I4 => Blue(0),
      I5 => \dc_bias_reg[3]_5\(2),
      O => \dc_bias[3]_i_19__0_n_0\
    );
\dc_bias[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB00AB00AB00ABAB"
    )
        port map (
      I0 => \dc_bias[3]_i_2__1_n_0\,
      I1 => \^r_reg[blue][7]_0\,
      I2 => \dc_bias[3]_i_4__0_n_0\,
      I3 => \dc_bias[3]_i_5__1_n_0\,
      I4 => \dc_bias[3]_i_6__0_n_0\,
      I5 => \dc_bias[3]_i_7__1_n_0\,
      O => \dc_bias_reg[2]\(3)
    );
\dc_bias[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAACA33AA33ACAAC"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => \^r_reg[green][7]_0\,
      I2 => Green(7),
      I3 => \dc_bias[0]_i_4__0_n_0\,
      I4 => \encoded[4]_i_2_n_0\,
      I5 => Green(6),
      O => \dc_bias[3]_i_20_n_0\
    );
\dc_bias[3]_i_20__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90000000"
    )
        port map (
      I0 => \^r_reg[blue][4]_0\,
      I1 => \dc_bias[3]_i_30__0_n_0\,
      I2 => \dc_bias[2]_i_16__0_n_0\,
      I3 => \dc_bias[2]_i_19__0_n_0\,
      I4 => \dc_bias[2]_i_18__0_n_0\,
      O => \dc_bias[3]_i_20__0_n_0\
    );
\dc_bias[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D22D4BB4"
    )
        port map (
      I0 => Green(2),
      I1 => Green(3),
      I2 => \^r_reg[green][0]_1\(0),
      I3 => Green(1),
      I4 => \^r_reg[green][7]_0\,
      O => \dc_bias[3]_i_21_n_0\
    );
\dc_bias[3]_i_21__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(0),
      I1 => \dc_bias[0]_i_2__1_n_0\,
      I2 => \^r_reg[blue][7]_0\,
      O => \dc_bias[3]_i_21__0_n_0\
    );
\dc_bias[3]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C39669C3"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => Green(4),
      I2 => \dc_bias[3]_i_33_n_0\,
      I3 => Green(5),
      I4 => Green(6),
      O => \^r_reg[green][4]_0\
    );
\dc_bias[3]_i_22__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => \dc_bias[0]_i_2__1_n_0\,
      I2 => \dc_bias_reg[3]_5\(0),
      O => \dc_bias[3]_i_22__0_n_0\
    );
\dc_bias[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800618661860010"
    )
        port map (
      I0 => \dc_bias[3]_i_19_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \^r_reg[green][6]_0\,
      I3 => \dc_bias[3]_i_28__0_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \r_reg[green][0]_2\
    );
\dc_bias[3]_i_23__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7008F770FFFFFFFF"
    )
        port map (
      I0 => \dc_bias[2]_i_15__0_n_0\,
      I1 => \dc_bias[2]_i_14__0_n_0\,
      I2 => \dc_bias[2]_i_13__0_n_0\,
      I3 => \dc_bias[2]_i_12__0_n_0\,
      I4 => \dc_bias[2]_i_11__0_n_0\,
      I5 => \dc_bias_reg[3]_5\(2),
      O => \dc_bias[3]_i_23__0_n_0\
    );
\dc_bias[3]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1771"
    )
        port map (
      I0 => Blue(0),
      I1 => \dc_bias_reg[3]_5\(0),
      I2 => \encoded[7]_i_2__1_n_0\,
      I3 => \^r_reg[blue][7]_0\,
      O => \dc_bias[3]_i_24_n_0\
    );
\dc_bias[3]_i_24__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69969696FFFFFFFF"
    )
        port map (
      I0 => \^r_reg[green][4]_0\,
      I1 => \dc_bias[3]_i_21_n_0\,
      I2 => \dc_bias[3]_i_20_n_0\,
      I3 => \dc_bias[3]_i_18__0_n_0\,
      I4 => \dc_bias[3]_i_19_n_0\,
      I5 => \dc_bias_reg[3]_4\(1),
      O => \dc_bias[3]_i_24__0_n_0\
    );
\dc_bias[3]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \dc_bias[0]_i_3__1_n_0\,
      I1 => \dc_bias_reg[3]_4\(0),
      I2 => \^r_reg[green][7]_0\,
      O => \dc_bias[3]_i_25_n_0\
    );
\dc_bias[3]_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Blue(6),
      I1 => Blue(5),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => Blue(7),
      I4 => \^r_reg[blue][7]_0\,
      O => \dc_bias[3]_i_25__0_n_0\
    );
\dc_bias[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2882822882282882"
    )
        port map (
      I0 => \dc_bias[3]_i_34_n_0\,
      I1 => \^r_reg[green][4]_0\,
      I2 => \dc_bias[3]_i_21_n_0\,
      I3 => \dc_bias[3]_i_20_n_0\,
      I4 => \dc_bias[3]_i_29__0_n_0\,
      I5 => \dc_bias_reg[3]_4\(1),
      O => \dc_bias[3]_i_26_n_0\
    );
\dc_bias[3]_i_26__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Blue(6),
      I1 => \^r_reg[blue][7]_0\,
      I2 => \encoded[6]_i_2__0_n_0\,
      O => \dc_bias[3]_i_26__0_n_0\
    );
\dc_bias[3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"006969FF"
    )
        port map (
      I0 => \dc_bias[0]_i_4__0_n_0\,
      I1 => Green(7),
      I2 => \^r_reg[green][7]_0\,
      I3 => \dc_bias_reg[3]_4\(0),
      I4 => \^r_reg[green][0]_1\(0),
      O => \dc_bias[3]_i_27_n_0\
    );
\dc_bias[3]_i_27__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Blue(0),
      I1 => \dc_bias_reg[3]_5\(0),
      O => \^r_reg[blue][0]_2\
    );
\dc_bias[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BD4D42BD42B2BD4"
    )
        port map (
      I0 => Blue(4),
      I1 => Blue(5),
      I2 => \^r_reg[blue][7]_0\,
      I3 => \encoded[1]_i_2_n_0\,
      I4 => Blue(2),
      I5 => Blue(3),
      O => \^r_reg[blue][4]_0\
    );
\dc_bias[3]_i_28__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => Green(4),
      I1 => \encoded[3]_i_2__0_n_0\,
      I2 => Green(2),
      I3 => Green(3),
      I4 => Green(6),
      I5 => \^r_reg[green][7]_0\,
      O => \dc_bias[3]_i_28__0_n_0\
    );
\dc_bias[3]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => Blue(7),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => Blue(5),
      I4 => Blue(6),
      O => \^r_reg[blue][7]_1\
    );
\dc_bias[3]_i_29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96690000"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => Green(7),
      I2 => \dc_bias[0]_i_4__0_n_0\,
      I3 => \dc_bias[0]_i_5__1_n_0\,
      I4 => \dc_bias[3]_i_19_n_0\,
      O => \dc_bias[3]_i_29__0_n_0\
    );
\dc_bias[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88288288"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => \dc_bias_reg[3]_4\(3),
      I2 => \dc_bias[3]_i_8__0_n_0\,
      I3 => \dc_bias_reg[3]_4\(2),
      I4 => \dc_bias[3]_i_9__0_n_0\,
      O => \dc_bias[3]_i_2__0_n_0\
    );
\dc_bias[3]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD5DD5DD55D55D55"
    )
        port map (
      I0 => \^dc_bias_reg[0]\,
      I1 => \^r_reg[blue][7]_0\,
      I2 => \dc_bias[3]_i_8__1_n_0\,
      I3 => \dc_bias[3]_i_9__1_n_0\,
      I4 => \dc_bias_reg[3]_5\(2),
      I5 => \dc_bias_reg[3]_5\(3),
      O => \dc_bias[3]_i_2__1_n_0\
    );
\dc_bias[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54400115"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => \dc_bias_reg[3]_4\(2),
      I2 => \dc_bias[3]_i_10_n_0\,
      I3 => \dc_bias[3]_i_11__0_n_0\,
      I4 => \^dc_bias_reg[3]_0\,
      O => \dc_bias[3]_i_3_n_0\
    );
\dc_bias[3]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => \dc_bias_reg[3]_4\(0),
      O => \r_reg[green][0]_3\
    );
\dc_bias[3]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17E8E8E8E8171717"
    )
        port map (
      I0 => \dc_bias[2]_i_20__0_n_0\,
      I1 => Blue(7),
      I2 => \^r_reg[blue][7]_0\,
      I3 => Blue(0),
      I4 => \dc_bias_reg[3]_5\(0),
      I5 => \dc_bias_reg[3]_5\(1),
      O => \dc_bias[3]_i_30__0_n_0\
    );
\dc_bias[3]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB4B44BD22D2DD2"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => Green(4),
      I2 => Green(3),
      I3 => Green(2),
      I4 => \encoded[3]_i_2__0_n_0\,
      I5 => Green(5),
      O => \^r_reg[green][4]_4\
    );
\dc_bias[3]_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \^r_reg[green][7]_0\,
      I1 => Green(7),
      I2 => Green(4),
      I3 => \encoded[5]_i_2__0_n_0\,
      I4 => Green(6),
      O => \^r_reg[green][7]_1\
    );
\dc_bias[3]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Green(3),
      I1 => Green(2),
      I2 => \^r_reg[green][0]_1\(0),
      I3 => Green(1),
      O => \dc_bias[3]_i_33_n_0\
    );
\dc_bias[3]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF9F6F6F9"
    )
        port map (
      I0 => \dc_bias[3]_i_19_n_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \^r_reg[green][7]_0\,
      I3 => \dc_bias[1]_i_12__0_n_0\,
      I4 => \dc_bias[0]_i_5__1_n_0\,
      I5 => \dc_bias_reg[3]_4\(0),
      O => \dc_bias[3]_i_34_n_0\
    );
\dc_bias[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DD50445D55D0445"
    )
        port map (
      I0 => \dc_bias[3]_i_10__0_n_0\,
      I1 => \dc_bias[3]_i_11__1_n_0\,
      I2 => Blue(7),
      I3 => \dc_bias[3]_i_12__1_n_0\,
      I4 => \dc_bias[3]_i_13__0_n_0\,
      I5 => Blue(0),
      O => \^r_reg[blue][7]_0\
    );
\dc_bias[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A995A9999995"
    )
        port map (
      I0 => \dc_bias_reg[3]_6\,
      I1 => \dc_bias[3]_i_13_n_0\,
      I2 => \dc_bias[3]_i_14_n_0\,
      I3 => \dc_bias[3]_i_15_n_0\,
      I4 => \dc_bias[3]_i_16__0_n_0\,
      I5 => \dc_bias[3]_i_17__0_n_0\,
      O => \dc_bias[3]_i_4_n_0\
    );
\dc_bias[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A665AAAA5555A665"
    )
        port map (
      I0 => \^dc_bias_reg[3]_1\,
      I1 => \^r_reg[blue][0]_0\,
      I2 => \dc_bias_reg[3]_5\(1),
      I3 => \dc_bias[3]_i_15__1_n_0\,
      I4 => \^r_reg[blue][0]_1\,
      I5 => \dc_bias_reg[3]_5\(2),
      O => \dc_bias[3]_i_4__0_n_0\
    );
\dc_bias[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF9E799E79FFEF"
    )
        port map (
      I0 => \dc_bias[2]_i_11_n_0\,
      I1 => \^r_reg[red][0]_1\(0),
      I2 => \^r_reg[red][6]_0\,
      I3 => \dc_bias[3]_i_10__1_n_0\,
      I4 => \dc_bias[2]_i_8_n_0\,
      I5 => \^r_reg[red][5]_0\,
      O => \r_reg[red][0]_2\
    );
\dc_bias[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9555AA95AA95AAAA"
    )
        port map (
      I0 => \dc_bias_reg[3]_4\(3),
      I1 => \dc_bias[3]_i_18__0_n_0\,
      I2 => \dc_bias[3]_i_19_n_0\,
      I3 => \dc_bias[3]_i_20_n_0\,
      I4 => \dc_bias[3]_i_21_n_0\,
      I5 => \^r_reg[green][4]_0\,
      O => \^dc_bias_reg[3]_0\
    );
\dc_bias[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABABABABBABAABBA"
    )
        port map (
      I0 => \^dc_bias_reg[0]\,
      I1 => \^dc_bias_reg[3]_1\,
      I2 => \dc_bias_reg[3]_7\,
      I3 => \dc_bias[3]_i_18_n_0\,
      I4 => \dc_bias[3]_i_19__0_n_0\,
      I5 => \dc_bias[3]_i_20__0_n_0\,
      O => \dc_bias[3]_i_5__1_n_0\
    );
\dc_bias[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"990909099D9D9909"
    )
        port map (
      I0 => \dc_bias_reg[3]_5\(2),
      I1 => \^r_reg[blue][0]_1\,
      I2 => \dc_bias[3]_i_21__0_n_0\,
      I3 => \dc_bias[3]_i_22__0_n_0\,
      I4 => \dc_bias_reg[3]_5\(1),
      I5 => \^r_reg[blue][0]_0\,
      O => \dc_bias[3]_i_6__0_n_0\
    );
\dc_bias[3]_i_6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5656566A566A6A6A"
    )
        port map (
      I0 => \^dc_bias_reg[3]\,
      I1 => Q(2),
      I2 => \dc_bias[2]_i_21_n_0\,
      I3 => \dc_bias[2]_i_7__1_n_0\,
      I4 => Q(1),
      I5 => \dc_bias[1]_i_11__0_n_0\,
      O => \dc_bias[3]_i_6__1_n_0\
    );
\dc_bias[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A659"
    )
        port map (
      I0 => \dc_bias[3]_i_11_n_0\,
      I1 => \dc_bias[3]_i_12_n_0\,
      I2 => Q(2),
      I3 => Q(3),
      O => \dc_bias[3]_i_7_n_0\
    );
\dc_bias[3]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE7E78EE7"
    )
        port map (
      I0 => \dc_bias[3]_i_10_n_0\,
      I1 => \dc_bias_reg[3]_4\(2),
      I2 => \dc_bias[3]_i_24__0_n_0\,
      I3 => \dc_bias[3]_i_25_n_0\,
      I4 => \dc_bias[3]_i_26_n_0\,
      I5 => \^dc_bias_reg[3]_0\,
      O => \dc_bias[3]_i_7__0_n_0\
    );
\dc_bias[3]_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FBFFFF"
    )
        port map (
      I0 => \dc_bias[3]_i_21__0_n_0\,
      I1 => \dc_bias_reg[3]_5\(1),
      I2 => \^r_reg[blue][0]_0\,
      I3 => \dc_bias[3]_i_23__0_n_0\,
      I4 => \^dc_bias_reg[3]_1\,
      O => \dc_bias[3]_i_7__1_n_0\
    );
\dc_bias[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"022BBFFFFDD44000"
    )
        port map (
      I0 => \dc_bias[2]_i_13_n_0\,
      I1 => \dc_bias[2]_i_14_n_0\,
      I2 => \dc_bias[2]_i_15_n_0\,
      I3 => \dc_bias[2]_i_16_n_0\,
      I4 => \dc_bias[2]_i_17_n_0\,
      I5 => \dc_bias_reg[3]_i_4_0\,
      O => \dc_bias[3]_i_8_n_0\
    );
\dc_bias[3]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BFF002B"
    )
        port map (
      I0 => \^r_reg[green][6]_0\,
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \dc_bias_reg[3]_4\(0),
      I3 => \dc_bias_reg[3]_4\(1),
      I4 => \^r_reg[green][4]_0\,
      O => \dc_bias[3]_i_8__0_n_0\
    );
\dc_bias[3]_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBE8228"
    )
        port map (
      I0 => \dc_bias[2]_i_11__0_n_0\,
      I1 => \dc_bias_reg[3]_5\(1),
      I2 => \dc_bias[2]_i_12__0_n_0\,
      I3 => \dc_bias[3]_i_24_n_0\,
      I4 => \dc_bias[1]_i_5__1_n_0\,
      O => \dc_bias[3]_i_8__1_n_0\
    );
\dc_bias[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99595955AA999999"
    )
        port map (
      I0 => \dc_bias[3]_i_14__1_n_0\,
      I1 => \dc_bias[2]_i_6_n_0\,
      I2 => \dc_bias[3]_i_15__0_n_0\,
      I3 => Q(1),
      I4 => \dc_bias[2]_i_7__1_n_0\,
      I5 => \dc_bias[3]_i_16_n_0\,
      O => \dc_bias[3]_i_9_n_0\
    );
\dc_bias[3]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2BB2B22B"
    )
        port map (
      I0 => \dc_bias[3]_i_21_n_0\,
      I1 => \dc_bias[1]_i_8__0_n_0\,
      I2 => \^r_reg[green][4]_0\,
      I3 => \dc_bias[3]_i_27_n_0\,
      I4 => \dc_bias_reg[3]_4\(1),
      O => \dc_bias[3]_i_9__0_n_0\
    );
\dc_bias[3]_i_9__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17FF0017"
    )
        port map (
      I0 => Blue(0),
      I1 => \dc_bias_reg[3]_5\(0),
      I2 => \dc_bias[3]_i_25__0_n_0\,
      I3 => \dc_bias_reg[3]_5\(1),
      I4 => \dc_bias[2]_i_12__0_n_0\,
      O => \dc_bias[3]_i_9__1_n_0\
    );
\dc_bias_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \dc_bias_reg[3]_i_3_n_0\,
      I1 => \dc_bias_reg[3]_i_4_n_0\,
      O => D(3),
      S => \dc_bias_reg[3]_3\
    );
\dc_bias_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dc_bias[3]_i_6__1_n_0\,
      I1 => \dc_bias[3]_i_7_n_0\,
      O => \dc_bias_reg[3]_i_3_n_0\,
      S => \^r_reg[red][7]_0\
    );
\dc_bias_reg[3]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \dc_bias[3]_i_8_n_0\,
      I1 => \dc_bias[3]_i_9_n_0\,
      O => \dc_bias_reg[3]_i_4_n_0\,
      S => \^dc_bias_reg[3]\
    );
\encoded[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => Blue(0),
      I3 => \encoded[6]_i_3_n_0\,
      O => \r_reg[hSync]__0_0\(0)
    );
\encoded[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"59A9"
    )
        port map (
      I0 => \^r_reg[red][0]_1\(0),
      I1 => \^r_reg[red][7]_0\,
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^dc_bias_reg[3]\,
      O => \r_reg[red][0]_0\
    );
\encoded[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A959"
    )
        port map (
      I0 => \^r_reg[green][0]_1\(0),
      I1 => \^r_reg[green][7]_0\,
      I2 => \dc_bias_reg[1]\,
      I3 => \^dc_bias_reg[3]_0\,
      O => \r_reg[green][0]_0\
    );
\encoded[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666696"
    )
        port map (
      I0 => Red(1),
      I1 => \^r_reg[red][0]_1\(0),
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^dc_bias_reg[3]\,
      I4 => \^r_reg[red][7]_0\,
      O => \r_reg[red][1]_0\
    );
\encoded[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66969666"
    )
        port map (
      I0 => Green(1),
      I1 => \^r_reg[green][0]_1\(0),
      I2 => \dc_bias_reg[1]\,
      I3 => \^dc_bias_reg[3]_0\,
      I4 => \^r_reg[green][7]_0\,
      O => \r_reg[green][1]_0\
    );
\encoded[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8B88BBB8888B"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \^dc_bias_reg[0]\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => \encoded[1]_i_2_n_0\,
      I5 => \^dc_bias_reg[3]_1\,
      O => \r_reg[hSync]__0_0\(1)
    );
\encoded[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Blue(1),
      I1 => Blue(0),
      O => \encoded[1]_i_2_n_0\
    );
\encoded[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969966996969669"
    )
        port map (
      I0 => Red(1),
      I1 => \^r_reg[red][0]_1\(0),
      I2 => Red(2),
      I3 => \^r_reg[red][7]_0\,
      I4 => \dc_bias_reg[3]_3\,
      I5 => \^dc_bias_reg[3]\,
      O => \r_reg[red][1]_1\
    );
\encoded[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966969699669"
    )
        port map (
      I0 => Green(1),
      I1 => \^r_reg[green][0]_1\(0),
      I2 => Green(2),
      I3 => \^r_reg[green][7]_0\,
      I4 => \dc_bias_reg[1]\,
      I5 => \^dc_bias_reg[3]_0\,
      O => \r_reg[green][1]_1\
    );
\encoded[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7447477447747447"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => Blue(1),
      I3 => Blue(0),
      I4 => Blue(2),
      I5 => \encoded[6]_i_3_n_0\,
      O => \r_reg[hSync]__0_0\(2)
    );
\encoded[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996969696966996"
    )
        port map (
      I0 => Red(3),
      I1 => Red(2),
      I2 => \encoded[3]_i_2_n_0\,
      I3 => \dc_bias_reg[3]_3\,
      I4 => \^dc_bias_reg[3]\,
      I5 => \^r_reg[red][7]_0\,
      O => \r_reg[red][3]_0\
    );
\encoded[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696699669969696"
    )
        port map (
      I0 => Green(3),
      I1 => Green(2),
      I2 => \encoded[3]_i_2__0_n_0\,
      I3 => \dc_bias_reg[1]\,
      I4 => \^dc_bias_reg[3]_0\,
      I5 => \^r_reg[green][7]_0\,
      O => \r_reg[green][3]_0\
    );
\encoded[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8B88BBB8888B"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \^dc_bias_reg[0]\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => \encoded[3]_i_2__1_n_0\,
      I5 => \^dc_bias_reg[3]_1\,
      O => \r_reg[hSync]__0_0\(3)
    );
\encoded[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Red(1),
      I1 => \^r_reg[red][0]_1\(0),
      O => \encoded[3]_i_2_n_0\
    );
\encoded[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Green(1),
      I1 => \^r_reg[green][0]_1\(0),
      O => \encoded[3]_i_2__0_n_0\
    );
\encoded[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Blue(3),
      I1 => Blue(2),
      I2 => Blue(0),
      I3 => Blue(1),
      O => \encoded[3]_i_2__1_n_0\
    );
\encoded[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \encoded[5]_i_2_n_0\,
      I1 => \^r_reg[red][7]_0\,
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^dc_bias_reg[3]\,
      O => \r_reg[red][4]_0\
    );
\encoded[4]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \encoded[4]_i_2_n_0\,
      I1 => \^r_reg[green][7]_0\,
      I2 => \dc_bias_reg[1]\,
      I3 => \^dc_bias_reg[3]_0\,
      O => \r_reg[green][4]_2\
    );
\encoded[4]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4774"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => \encoded[6]_i_3_n_0\,
      O => \r_reg[hSync]__0_0\(4)
    );
\encoded[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Green(4),
      I1 => Green(1),
      I2 => \^r_reg[green][0]_1\(0),
      I3 => Green(2),
      I4 => Green(3),
      O => \encoded[4]_i_2_n_0\
    );
\encoded[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999969"
    )
        port map (
      I0 => \encoded[5]_i_2_n_0\,
      I1 => Red(5),
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^dc_bias_reg[3]\,
      I4 => \^r_reg[red][7]_0\,
      O => \r_reg[red][5]_1\
    );
\encoded[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696999"
    )
        port map (
      I0 => \encoded[5]_i_2__0_n_0\,
      I1 => Green(4),
      I2 => \dc_bias_reg[1]\,
      I3 => \^dc_bias_reg[3]_0\,
      I4 => \^r_reg[green][7]_0\,
      O => \r_reg[green][4]_1\
    );
\encoded[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8B88BBB8888B"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \^dc_bias_reg[0]\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => \encoded[5]_i_2__1_n_0\,
      I5 => \^dc_bias_reg[3]_1\,
      O => \r_reg[hSync]__0_0\(5)
    );
\encoded[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Red(4),
      I1 => Red(1),
      I2 => \^r_reg[red][0]_1\(0),
      I3 => Red(2),
      I4 => Red(3),
      O => \encoded[5]_i_2_n_0\
    );
\encoded[5]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Green(5),
      I1 => Green(1),
      I2 => \^r_reg[green][0]_1\(0),
      I3 => Green(2),
      I4 => Green(3),
      O => \encoded[5]_i_2__0_n_0\
    );
\encoded[5]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Blue(5),
      I1 => Blue(3),
      I2 => Blue(2),
      I3 => Blue(0),
      I4 => Blue(1),
      I5 => Blue(4),
      O => \encoded[5]_i_2__1_n_0\
    );
\encoded[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699696966996"
    )
        port map (
      I0 => Green(4),
      I1 => \encoded[5]_i_2__0_n_0\,
      I2 => Green(6),
      I3 => \^r_reg[green][7]_0\,
      I4 => \dc_bias_reg[1]\,
      I5 => \^dc_bias_reg[3]_0\,
      O => \r_reg[green][4]_3\
    );
\encoded[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4774744774474774"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \encoded[6]_i_2__0_n_0\,
      I3 => Blue(5),
      I4 => Blue(6),
      I5 => \encoded[6]_i_3_n_0\,
      O => \r_reg[hSync]__0_0\(6)
    );
\encoded[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBAEAEF"
    )
        port map (
      I0 => \^p_1_in\(0),
      I1 => \^dc_bias_reg[3]\,
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^r_reg[red][7]_0\,
      I4 => \encoded[6]_i_2_n_0\,
      O => \r_reg[blank]_0\(0)
    );
\encoded[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Red(6),
      I1 => Red(5),
      I2 => \encoded[5]_i_2_n_0\,
      O => \encoded[6]_i_2_n_0\
    );
\encoded[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Blue(4),
      I1 => Blue(1),
      I2 => Blue(0),
      I3 => Blue(2),
      I4 => Blue(3),
      O => \encoded[6]_i_2__0_n_0\
    );
\encoded[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \^r_reg[blue][7]_0\,
      I1 => \^dc_bias_reg[0]\,
      I2 => \^dc_bias_reg[3]_1\,
      O => \encoded[6]_i_3_n_0\
    );
\encoded[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A656"
    )
        port map (
      I0 => \^r_reg[red][6]_0\,
      I1 => \^r_reg[red][7]_0\,
      I2 => \dc_bias_reg[3]_3\,
      I3 => \^dc_bias_reg[3]\,
      O => \r_reg[red][6]_1\
    );
\encoded[7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^r_reg[green][6]_0\,
      I1 => \^r_reg[green][7]_0\,
      I2 => \dc_bias_reg[1]\,
      I3 => \^dc_bias_reg[3]_0\,
      O => \r_reg[green][6]_1\
    );
\encoded[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BB8B88BBB8888B"
    )
        port map (
      I0 => \^r_reg[hsync]\,
      I1 => \^p_1_in\(0),
      I2 => \^dc_bias_reg[0]\,
      I3 => \^r_reg[blue][7]_0\,
      I4 => \encoded[7]_i_2__1_n_0\,
      I5 => \^dc_bias_reg[3]_1\,
      O => \r_reg[hSync]__0_0\(7)
    );
\encoded[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Red(6),
      I1 => Red(5),
      I2 => \encoded[5]_i_2_n_0\,
      I3 => Red(7),
      I4 => \^r_reg[red][7]_0\,
      O => \^r_reg[red][6]_0\
    );
\encoded[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => Green(6),
      I1 => \encoded[5]_i_2__0_n_0\,
      I2 => Green(4),
      I3 => Green(7),
      I4 => \^r_reg[green][7]_0\,
      O => \^r_reg[green][6]_0\
    );
\encoded[7]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => Blue(7),
      I1 => \encoded[6]_i_2__0_n_0\,
      I2 => Blue(5),
      I3 => Blue(6),
      O => \encoded[7]_i_2__1_n_0\
    );
\encoded[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55D71051557D1051"
    )
        port map (
      I0 => \encoded[7]_i_4_n_0\,
      I1 => Green(7),
      I2 => \encoded[7]_i_5_n_0\,
      I3 => \encoded[7]_i_6_n_0\,
      I4 => \encoded[7]_i_7_n_0\,
      I5 => \^r_reg[green][0]_1\(0),
      O => \^r_reg[green][7]_0\
    );
\encoded[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E8E8E800E8000000"
    )
        port map (
      I0 => Green(2),
      I1 => Green(3),
      I2 => Green(1),
      I3 => Green(4),
      I4 => Green(6),
      I5 => Green(5),
      O => \encoded[7]_i_4_n_0\
    );
\encoded[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => Green(6),
      I1 => Green(5),
      I2 => Green(4),
      O => \encoded[7]_i_5_n_0\
    );
\encoded[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Green(1),
      I1 => Green(3),
      I2 => Green(2),
      O => \encoded[7]_i_6_n_0\
    );
\encoded[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001700171717"
    )
        port map (
      I0 => Green(4),
      I1 => Green(6),
      I2 => Green(5),
      I3 => Green(2),
      I4 => Green(3),
      I5 => Green(1),
      O => \encoded[7]_i_7_n_0\
    );
geqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => geqOp_carry_n_0,
      CO(2) => geqOp_carry_n_1,
      CO(1) => geqOp_carry_n_2,
      CO(0) => geqOp_carry_n_3,
      CYINIT => '1',
      DI(3) => geqOp_carry_i_1_n_0,
      DI(2) => \^r_reg[hcounter][11]_0\(5),
      DI(1) => geqOp_carry_i_2_n_0,
      DI(0) => geqOp_carry_i_3_n_0,
      O(3 downto 0) => NLW_geqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => geqOp_carry_i_4_n_0,
      S(2) => geqOp_carry_i_5_n_0,
      S(1) => geqOp_carry_i_6_n_0,
      S(0) => geqOp_carry_i_7_n_0
    );
\geqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => geqOp_carry_n_0,
      CO(3 downto 2) => \NLW_geqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp1_in,
      CO(0) => \geqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \geqOp_carry__0_i_1_n_0\,
      DI(0) => \geqOp_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_geqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \geqOp_carry__0_i_3_n_0\,
      S(0) => \geqOp_carry__0_i_4_n_0\
    );
\geqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(10),
      I1 => \^r_reg[hcounter][11]_0\(11),
      O => \geqOp_carry__0_i_1_n_0\
    );
\geqOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(8),
      I1 => \^r_reg[hcounter][11]_0\(9),
      O => \geqOp_carry__0_i_2_n_0\
    );
\geqOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(10),
      I1 => \^r_reg[hcounter][11]_0\(11),
      O => \geqOp_carry__0_i_3_n_0\
    );
\geqOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(9),
      I1 => \^r_reg[hcounter][11]_0\(8),
      O => \geqOp_carry__0_i_4_n_0\
    );
geqOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(6),
      I1 => \^r_reg[hcounter][11]_0\(7),
      O => geqOp_carry_i_1_n_0
    );
geqOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(2),
      I1 => \^r_reg[hcounter][11]_0\(3),
      O => geqOp_carry_i_2_n_0
    );
geqOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(0),
      I1 => \^r_reg[hcounter][11]_0\(1),
      O => geqOp_carry_i_3_n_0
    );
geqOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(7),
      I1 => \^r_reg[hcounter][11]_0\(6),
      O => geqOp_carry_i_4_n_0
    );
geqOp_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(4),
      I1 => \^r_reg[hcounter][11]_0\(5),
      O => geqOp_carry_i_5_n_0
    );
geqOp_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(2),
      I1 => \^r_reg[hcounter][11]_0\(3),
      O => geqOp_carry_i_6_n_0
    );
geqOp_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(0),
      I1 => \^r_reg[hcounter][11]_0\(1),
      O => geqOp_carry_i_7_n_0
    );
\geqOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \geqOp_inferred__0/i__carry_n_0\,
      CO(2) => \geqOp_inferred__0/i__carry_n_1\,
      CO(1) => \geqOp_inferred__0/i__carry_n_2\,
      CO(0) => \geqOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \i__carry_i_1_n_0\,
      DI(1) => \i__carry_i_2_n_0\,
      DI(0) => \i__carry_i_3_n_0\,
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4_n_0\,
      S(2) => \i__carry_i_5_n_0\,
      S(1) => \i__carry_i_6__1_n_0\,
      S(0) => \i__carry_i_7__0_n_0\
    );
\geqOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \geqOp_inferred__0/i__carry_n_0\,
      CO(3 downto 2) => \NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => geqOp,
      CO(0) => \geqOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \i__carry__0_i_1_n_0\,
      DI(0) => \^out\(9),
      O(3 downto 0) => \NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \i__carry__0_i_2_n_0\,
      S(0) => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^out\(10),
      I1 => \^out\(11),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^out\(10),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^out\(10),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(9),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(4),
      I1 => \^out\(5),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(9),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(9),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(2),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^out\(7),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(6),
      I1 => \^r_reg[hcounter][11]_0\(7),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(5),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(4),
      I1 => \^r_reg[hcounter][11]_0\(5),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^out\(7),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^out\(2),
      I1 => \^out\(3),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(10),
      I1 => \^r_reg[hcounter][11]_0\(11),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(4),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(9),
      I1 => \^r_reg[hcounter][11]_0\(8),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(9),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(6),
      I1 => \^r_reg[hcounter][11]_0\(7),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^out\(7),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(2),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(4),
      I1 => \^r_reg[hcounter][11]_0\(5),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(4),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(3),
      I1 => \^out\(2),
      O => \i__carry_i_8_n_0\
    );
\ltOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp0_in,
      CO(2) => \ltOp_inferred__1/i__carry_n_1\,
      CO(1) => \ltOp_inferred__1/i__carry_n_2\,
      CO(0) => \ltOp_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__0_n_0\,
      DI(1) => \i__carry_i_2__1_n_0\,
      DI(0) => \i__carry_i_3__1_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_4__1_n_0\,
      S(2) => \i__carry_i_5__0_n_0\,
      S(1) => \i__carry_i_6_n_0\,
      S(0) => \i__carry_i_7_n_0\
    );
\ltOp_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ltOp_inferred__2/i__carry_n_0\,
      CO(2) => \ltOp_inferred__2/i__carry_n_1\,
      CO(1) => \ltOp_inferred__2/i__carry_n_2\,
      CO(0) => \ltOp_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\ltOp_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ltOp_inferred__2/i__carry_n_0\,
      CO(3 downto 1) => \NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => ltOp,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \i__carry__0_i_1__0_n_0\
    );
\r[hCounter][11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \r[hCounter][11]_i_3_n_0\,
      I1 => \r[hCounter][11]_i_4_n_0\,
      O => eqOp
    );
\r[hCounter][11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(10),
      I1 => \^r_reg[hcounter][11]_0\(7),
      I2 => \^r_reg[hcounter][11]_0\(11),
      I3 => \^r_reg[hcounter][11]_0\(9),
      I4 => \^r_reg[hcounter][11]_0\(5),
      I5 => \^r_reg[hcounter][11]_0\(6),
      O => \r[hCounter][11]_i_3_n_0\
    );
\r[hCounter][11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(0),
      I1 => \^r_reg[hcounter][11]_0\(1),
      I2 => \^r_reg[hcounter][11]_0\(2),
      I3 => \^r_reg[hcounter][11]_0\(3),
      I4 => \^r_reg[hcounter][11]_0\(4),
      I5 => \^r_reg[hcounter][11]_0\(8),
      O => \r[hCounter][11]_i_4_n_0\
    );
\r[hCounter][3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(0),
      O => \r[hCounter][3]_i_2_n_0\
    );
\r[hSync]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => geqOp1_in,
      I1 => ltOp0_in,
      O => \r[hSync]_i_1_n_0\
    );
\r[h_v]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ltOp3_in,
      I1 => ltOp2_in,
      O => \n[h_v]\
    );
\r[h_v]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^out\(7),
      O => \r[h_v]_i_10_n_0\
    );
\r[h_v]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(5),
      O => \r[h_v]_i_11_n_0\
    );
\r[h_v]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(11),
      I1 => \^out\(10),
      O => \r[h_v]_i_12_n_0\
    );
\r[h_v]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(9),
      O => \r[h_v]_i_13_n_0\
    );
\r[h_v]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^out\(6),
      I1 => \^out\(7),
      O => \r[h_v]_i_14_n_0\
    );
\r[h_v]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(4),
      O => \r[h_v]_i_15_n_0\
    );
\r[h_v]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(9),
      O => \r[h_v]_i_4_n_0\
    );
\r[h_v]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(7),
      O => \r[h_v]_i_5_n_0\
    );
\r[h_v]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(10),
      I1 => \^r_reg[hcounter][11]_0\(11),
      O => \r[h_v]_i_6_n_0\
    );
\r[h_v]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(9),
      I1 => \^r_reg[hcounter][11]_0\(8),
      O => \r[h_v]_i_7_n_0\
    );
\r[h_v]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^r_reg[hcounter][11]_0\(7),
      I1 => \^r_reg[hcounter][11]_0\(6),
      O => \r[h_v]_i_8_n_0\
    );
\r[h_v]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(8),
      I1 => \^out\(9),
      O => \r[h_v]_i_9_n_0\
    );
\r[red][7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ltOp2_in,
      I1 => ltOp3_in,
      O => \r[red][7]_i_1_n_0\
    );
\r[vCounter][11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => eqOp,
      I1 => \r[vCounter][11]_i_3_n_0\,
      I2 => \^out\(11),
      I3 => \^out\(10),
      I4 => \^out\(8),
      I5 => \^out\(1),
      O => \n[vCounter]\
    );
\r[vCounter][11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^out\(5),
      I1 => \^out\(4),
      I2 => \^out\(7),
      I3 => \^out\(6),
      I4 => \r[vCounter][11]_i_4_n_0\,
      O => \r[vCounter][11]_i_3_n_0\
    );
\r[vCounter][11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^out\(9),
      I1 => \^out\(0),
      I2 => \^out\(3),
      I3 => \^out\(2),
      O => \r[vCounter][11]_i_4_n_0\
    );
\r[vCounter][3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^out\(0),
      O => \r[vCounter][3]_i_2_n_0\
    );
\r[vSync]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => geqOp,
      I1 => ltOp,
      O => \n[vSync]\
    );
\r_reg[blank]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r[red][7]_i_1_n_0\,
      Q => \^p_1_in\(0),
      R => '0'
    );
\r_reg[blue][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(16),
      Q => Blue(0),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(17),
      Q => Blue(1),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(18),
      Q => Blue(2),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(19),
      Q => Blue(3),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(20),
      Q => Blue(4),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(21),
      Q => Blue(5),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(22),
      Q => Blue(6),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[blue][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(23),
      Q => Blue(7),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(8),
      Q => \^r_reg[green][0]_1\(0),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(9),
      Q => Green(1),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(10),
      Q => Green(2),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(11),
      Q => Green(3),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(12),
      Q => Green(4),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(13),
      Q => Green(5),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(14),
      Q => Green(6),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[green][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(15),
      Q => Green(7),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[hCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][3]_i_1_n_7\,
      Q => \^r_reg[hcounter][11]_0\(0),
      R => eqOp
    );
\r_reg[hCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][11]_i_2_n_5\,
      Q => \^r_reg[hcounter][11]_0\(10),
      R => eqOp
    );
\r_reg[hCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][11]_i_2_n_4\,
      Q => \^r_reg[hcounter][11]_0\(11),
      R => eqOp
    );
\r_reg[hCounter][11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[hCounter][7]_i_1_n_0\,
      CO(3) => \NLW_r_reg[hCounter][11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \r_reg[hCounter][11]_i_2_n_1\,
      CO(1) => \r_reg[hCounter][11]_i_2_n_2\,
      CO(0) => \r_reg[hCounter][11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg[hCounter][11]_i_2_n_4\,
      O(2) => \r_reg[hCounter][11]_i_2_n_5\,
      O(1) => \r_reg[hCounter][11]_i_2_n_6\,
      O(0) => \r_reg[hCounter][11]_i_2_n_7\,
      S(3 downto 0) => \^r_reg[hcounter][11]_0\(11 downto 8)
    );
\r_reg[hCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][3]_i_1_n_6\,
      Q => \^r_reg[hcounter][11]_0\(1),
      R => eqOp
    );
\r_reg[hCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][3]_i_1_n_5\,
      Q => \^r_reg[hcounter][11]_0\(2),
      R => eqOp
    );
\r_reg[hCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][3]_i_1_n_4\,
      Q => \^r_reg[hcounter][11]_0\(3),
      R => eqOp
    );
\r_reg[hCounter][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[hCounter][3]_i_1_n_0\,
      CO(2) => \r_reg[hCounter][3]_i_1_n_1\,
      CO(1) => \r_reg[hCounter][3]_i_1_n_2\,
      CO(0) => \r_reg[hCounter][3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_reg[hCounter][3]_i_1_n_4\,
      O(2) => \r_reg[hCounter][3]_i_1_n_5\,
      O(1) => \r_reg[hCounter][3]_i_1_n_6\,
      O(0) => \r_reg[hCounter][3]_i_1_n_7\,
      S(3 downto 1) => \^r_reg[hcounter][11]_0\(3 downto 1),
      S(0) => \r[hCounter][3]_i_2_n_0\
    );
\r_reg[hCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][7]_i_1_n_7\,
      Q => \^r_reg[hcounter][11]_0\(4),
      R => eqOp
    );
\r_reg[hCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][7]_i_1_n_6\,
      Q => \^r_reg[hcounter][11]_0\(5),
      R => eqOp
    );
\r_reg[hCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][7]_i_1_n_5\,
      Q => \^r_reg[hcounter][11]_0\(6),
      R => eqOp
    );
\r_reg[hCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][7]_i_1_n_4\,
      Q => \^r_reg[hcounter][11]_0\(7),
      R => eqOp
    );
\r_reg[hCounter][7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[hCounter][3]_i_1_n_0\,
      CO(3) => \r_reg[hCounter][7]_i_1_n_0\,
      CO(2) => \r_reg[hCounter][7]_i_1_n_1\,
      CO(1) => \r_reg[hCounter][7]_i_1_n_2\,
      CO(0) => \r_reg[hCounter][7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg[hCounter][7]_i_1_n_4\,
      O(2) => \r_reg[hCounter][7]_i_1_n_5\,
      O(1) => \r_reg[hCounter][7]_i_1_n_6\,
      O(0) => \r_reg[hCounter][7]_i_1_n_7\,
      S(3 downto 0) => \^r_reg[hcounter][11]_0\(7 downto 4)
    );
\r_reg[hCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][11]_i_2_n_7\,
      Q => \^r_reg[hcounter][11]_0\(8),
      R => eqOp
    );
\r_reg[hCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r_reg[hCounter][11]_i_2_n_6\,
      Q => \^r_reg[hcounter][11]_0\(9),
      R => eqOp
    );
\r_reg[hSync]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \r[hSync]_i_1_n_0\,
      Q => \^r_reg[hsync]\,
      R => '0'
    );
\r_reg[h_v]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \n[h_v]\,
      Q => v_video,
      R => '0'
    );
\r_reg[h_v]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_r_reg[h_v]_i_2_CO_UNCONNECTED\(3),
      CO(2) => ltOp3_in,
      CO(1) => \r_reg[h_v]_i_2_n_2\,
      CO(0) => \r_reg[h_v]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \r[h_v]_i_4_n_0\,
      DI(0) => \r[h_v]_i_5_n_0\,
      O(3 downto 0) => \NLW_r_reg[h_v]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \r[h_v]_i_6_n_0\,
      S(1) => \r[h_v]_i_7_n_0\,
      S(0) => \r[h_v]_i_8_n_0\
    );
\r_reg[h_v]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp2_in,
      CO(2) => \r_reg[h_v]_i_3_n_1\,
      CO(1) => \r_reg[h_v]_i_3_n_2\,
      CO(0) => \r_reg[h_v]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \r[h_v]_i_9_n_0\,
      DI(1) => \r[h_v]_i_10_n_0\,
      DI(0) => \r[h_v]_i_11_n_0\,
      O(3 downto 0) => \NLW_r_reg[h_v]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \r[h_v]_i_12_n_0\,
      S(2) => \r[h_v]_i_13_n_0\,
      S(1) => \r[h_v]_i_14_n_0\,
      S(0) => \r[h_v]_i_15_n_0\
    );
\r_reg[red][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(0),
      Q => \^r_reg[red][0]_1\(0),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(1),
      Q => Red(1),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(2),
      Q => Red(2),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(3),
      Q => Red(3),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(4),
      Q => Red(4),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(5),
      Q => Red(5),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(6),
      Q => Red(6),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[red][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => g_rgb(7),
      Q => Red(7),
      R => \r[red][7]_i_1_n_0\
    );
\r_reg[vCounter][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][3]_i_1_n_7\,
      Q => \^out\(0),
      R => \n[vCounter]\
    );
\r_reg[vCounter][10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][11]_i_2_n_5\,
      Q => \^out\(10),
      R => \n[vCounter]\
    );
\r_reg[vCounter][11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][11]_i_2_n_4\,
      Q => \^out\(11),
      R => \n[vCounter]\
    );
\r_reg[vCounter][11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[vCounter][7]_i_1_n_0\,
      CO(3) => \NLW_r_reg[vCounter][11]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \r_reg[vCounter][11]_i_2_n_1\,
      CO(1) => \r_reg[vCounter][11]_i_2_n_2\,
      CO(0) => \r_reg[vCounter][11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg[vCounter][11]_i_2_n_4\,
      O(2) => \r_reg[vCounter][11]_i_2_n_5\,
      O(1) => \r_reg[vCounter][11]_i_2_n_6\,
      O(0) => \r_reg[vCounter][11]_i_2_n_7\,
      S(3 downto 0) => \^out\(11 downto 8)
    );
\r_reg[vCounter][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][3]_i_1_n_6\,
      Q => \^out\(1),
      R => \n[vCounter]\
    );
\r_reg[vCounter][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][3]_i_1_n_5\,
      Q => \^out\(2),
      R => \n[vCounter]\
    );
\r_reg[vCounter][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][3]_i_1_n_4\,
      Q => \^out\(3),
      R => \n[vCounter]\
    );
\r_reg[vCounter][3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_reg[vCounter][3]_i_1_n_0\,
      CO(2) => \r_reg[vCounter][3]_i_1_n_1\,
      CO(1) => \r_reg[vCounter][3]_i_1_n_2\,
      CO(0) => \r_reg[vCounter][3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_reg[vCounter][3]_i_1_n_4\,
      O(2) => \r_reg[vCounter][3]_i_1_n_5\,
      O(1) => \r_reg[vCounter][3]_i_1_n_6\,
      O(0) => \r_reg[vCounter][3]_i_1_n_7\,
      S(3 downto 1) => \^out\(3 downto 1),
      S(0) => \r[vCounter][3]_i_2_n_0\
    );
\r_reg[vCounter][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][7]_i_1_n_7\,
      Q => \^out\(4),
      R => \n[vCounter]\
    );
\r_reg[vCounter][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][7]_i_1_n_6\,
      Q => \^out\(5),
      R => \n[vCounter]\
    );
\r_reg[vCounter][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][7]_i_1_n_5\,
      Q => \^out\(6),
      R => \n[vCounter]\
    );
\r_reg[vCounter][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][7]_i_1_n_4\,
      Q => \^out\(7),
      R => \n[vCounter]\
    );
\r_reg[vCounter][7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_reg[vCounter][3]_i_1_n_0\,
      CO(3) => \r_reg[vCounter][7]_i_1_n_0\,
      CO(2) => \r_reg[vCounter][7]_i_1_n_1\,
      CO(1) => \r_reg[vCounter][7]_i_1_n_2\,
      CO(0) => \r_reg[vCounter][7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_reg[vCounter][7]_i_1_n_4\,
      O(2) => \r_reg[vCounter][7]_i_1_n_5\,
      O(1) => \r_reg[vCounter][7]_i_1_n_6\,
      O(0) => \r_reg[vCounter][7]_i_1_n_7\,
      S(3 downto 0) => \^out\(7 downto 4)
    );
\r_reg[vCounter][8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][11]_i_2_n_7\,
      Q => \^out\(8),
      R => \n[vCounter]\
    );
\r_reg[vCounter][9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => eqOp,
      D => \r_reg[vCounter][11]_i_2_n_6\,
      Q => \^out\(9),
      R => \n[vCounter]\
    );
\r_reg[vSync]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => \n[vSync]\,
      Q => \r_reg[vSync]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  port (
    red_s : out STD_LOGIC;
    green_s : out STD_LOGIC;
    blue_s : out STD_LOGIC;
    clock_s : out STD_LOGIC;
    \dc_bias_reg[3]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_2\ : out STD_LOGIC;
    \dc_bias_reg[2]\ : out STD_LOGIC;
    \dc_bias_reg[2]_0\ : out STD_LOGIC;
    \dc_bias_reg[3]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[2]_1\ : out STD_LOGIC;
    \dc_bias_reg[3]_4\ : out STD_LOGIC;
    \dc_bias_reg[1]\ : out STD_LOGIC;
    \dc_bias_reg[0]\ : out STD_LOGIC;
    clk_dvi : in STD_LOGIC;
    clk_dvin : in STD_LOGIC;
    \dc_bias[3]_i_8\ : in STD_LOGIC;
    \dc_bias[3]_i_8_0\ : in STD_LOGIC;
    \dc_bias[3]_i_8_1\ : in STD_LOGIC;
    \dc_bias[3]_i_5__1\ : in STD_LOGIC;
    \dc_bias[3]_i_5__1_0\ : in STD_LOGIC;
    \dc_bias[3]_i_5__1_1\ : in STD_LOGIC;
    \encoded_reg[9]\ : in STD_LOGIC;
    \dc_bias[2]_i_5\ : in STD_LOGIC;
    Red : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[2]_i_5_0\ : in STD_LOGIC;
    \encoded_reg[9]_0\ : in STD_LOGIC;
    \dc_bias[2]_i_4__0\ : in STD_LOGIC;
    Green : in STD_LOGIC_VECTOR ( 0 to 0 );
    \dc_bias[2]_i_4__0_0\ : in STD_LOGIC;
    \dc_bias[3]_i_4\ : in STD_LOGIC;
    \dc_bias[3]_i_4_0\ : in STD_LOGIC;
    \dc_bias[3]_i_4_1\ : in STD_LOGIC;
    \dc_bias_reg[2]_2\ : in STD_LOGIC;
    \dc_bias_reg[2]_3\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_vga : in STD_LOGIC;
    \dc_bias_reg[3]_5\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \dc_bias_reg[3]_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \encoded_reg[6]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \encoded_reg[7]\ : in STD_LOGIC;
    \encoded_reg[5]\ : in STD_LOGIC;
    \encoded_reg[3]\ : in STD_LOGIC;
    \encoded_reg[1]\ : in STD_LOGIC;
    \encoded_reg[0]\ : in STD_LOGIC;
    \encoded_reg[4]\ : in STD_LOGIC;
    \encoded_reg[2]\ : in STD_LOGIC;
    \encoded_reg[9]_1\ : in STD_LOGIC;
    \encoded_reg[8]\ : in STD_LOGIC;
    \encoded_reg[7]_0\ : in STD_LOGIC;
    \encoded_reg[5]_0\ : in STD_LOGIC;
    \encoded_reg[3]_0\ : in STD_LOGIC;
    \encoded_reg[1]_0\ : in STD_LOGIC;
    \encoded_reg[0]_0\ : in STD_LOGIC;
    \encoded_reg[6]_0\ : in STD_LOGIC;
    \encoded_reg[4]_0\ : in STD_LOGIC;
    \encoded_reg[2]_0\ : in STD_LOGIC;
    \encoded_reg[9]_2\ : in STD_LOGIC;
    \encoded_reg[8]_0\ : in STD_LOGIC;
    \encoded_reg[7]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \encoded_reg[9]_3\ : in STD_LOGIC;
    \r_reg[vSync]\ : in STD_LOGIC;
    \r_reg[hSync]\ : in STD_LOGIC;
    \encoded_reg[8]_1\ : in STD_LOGIC;
    \encoded_reg[9]_4\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid is
  signal D0 : STD_LOGIC;
  signal D1 : STD_LOGIC;
  signal TDMS_encoder_blue_n_10 : STD_LOGIC;
  signal TDMS_encoder_blue_n_11 : STD_LOGIC;
  signal TDMS_encoder_blue_n_12 : STD_LOGIC;
  signal TDMS_encoder_blue_n_13 : STD_LOGIC;
  signal TDMS_encoder_blue_n_14 : STD_LOGIC;
  signal TDMS_encoder_blue_n_15 : STD_LOGIC;
  signal TDMS_encoder_blue_n_16 : STD_LOGIC;
  signal TDMS_encoder_blue_n_7 : STD_LOGIC;
  signal TDMS_encoder_blue_n_8 : STD_LOGIC;
  signal TDMS_encoder_blue_n_9 : STD_LOGIC;
  signal TDMS_encoder_green_n_10 : STD_LOGIC;
  signal TDMS_encoder_green_n_11 : STD_LOGIC;
  signal TDMS_encoder_green_n_12 : STD_LOGIC;
  signal TDMS_encoder_green_n_13 : STD_LOGIC;
  signal TDMS_encoder_green_n_14 : STD_LOGIC;
  signal TDMS_encoder_green_n_15 : STD_LOGIC;
  signal TDMS_encoder_green_n_16 : STD_LOGIC;
  signal TDMS_encoder_green_n_7 : STD_LOGIC;
  signal TDMS_encoder_green_n_8 : STD_LOGIC;
  signal TDMS_encoder_green_n_9 : STD_LOGIC;
  signal TDMS_encoder_red_n_10 : STD_LOGIC;
  signal TDMS_encoder_red_n_11 : STD_LOGIC;
  signal TDMS_encoder_red_n_12 : STD_LOGIC;
  signal TDMS_encoder_red_n_13 : STD_LOGIC;
  signal TDMS_encoder_red_n_14 : STD_LOGIC;
  signal TDMS_encoder_red_n_15 : STD_LOGIC;
  signal TDMS_encoder_red_n_16 : STD_LOGIC;
  signal TDMS_encoder_red_n_7 : STD_LOGIC;
  signal TDMS_encoder_red_n_8 : STD_LOGIC;
  signal TDMS_encoder_red_n_9 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal latched_blue : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_green : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal latched_red : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal shift_blue : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal shift_blue_0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_blue_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_blue_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_clock : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \shift_clock_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_clock_reg_n_0_[9]\ : STD_LOGIC;
  signal shift_green : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal shift_green_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_green_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_green_reg_n_0_[1]\ : STD_LOGIC;
  signal shift_red : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \shift_red[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_red[9]_i_2_n_0\ : STD_LOGIC;
  signal NLW_ODDR2_blue_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_blue_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_clock_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_green_S_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_R_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR2_red_S_UNCONNECTED : STD_LOGIC;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of ODDR2_blue : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ODDR2_blue : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_blue : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of ODDR2_blue : label is "TRUE";
  attribute box_type : string;
  attribute box_type of ODDR2_blue : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_clock : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_clock : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_clock : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_clock : label is "TRUE";
  attribute box_type of ODDR2_clock : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_green : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_green : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_green : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_green : label is "TRUE";
  attribute box_type of ODDR2_green : label is "PRIMITIVE";
  attribute OPT_MODIFIED of ODDR2_red : label is "MLO";
  attribute XILINX_LEGACY_PRIM of ODDR2_red : label is "ODDR2";
  attribute XILINX_TRANSFORM_PINMAP of ODDR2_red : label is "D0:D1 D1:D2 C0:C";
  attribute \__SRVAL\ of ODDR2_red : label is "TRUE";
  attribute box_type of ODDR2_red : label is "PRIMITIVE";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \shift_blue[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_blue[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \shift_blue[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_blue[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \shift_blue[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_blue[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \shift_blue[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_blue[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_green[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_green[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \shift_green[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_green[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \shift_green[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_green[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \shift_green[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_green[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_red[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_red[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_red[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_red[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_red[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_red[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_red[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_red[7]_i_1\ : label is "soft_lutpair13";
begin
ODDR2_blue: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D1 => \shift_blue_reg_n_0_[0]\,
      D2 => \shift_blue_reg_n_0_[1]\,
      Q => blue_s,
      R => NLW_ODDR2_blue_R_UNCONNECTED,
      S => NLW_ODDR2_blue_S_UNCONNECTED
    );
ODDR2_clock: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D1 => shift_clock(0),
      D2 => shift_clock(1),
      Q => clock_s,
      R => NLW_ODDR2_clock_R_UNCONNECTED,
      S => NLW_ODDR2_clock_S_UNCONNECTED
    );
ODDR2_green: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D1 => \shift_green_reg_n_0_[0]\,
      D2 => \shift_green_reg_n_0_[1]\,
      Q => green_s,
      R => NLW_ODDR2_green_R_UNCONNECTED,
      S => NLW_ODDR2_green_S_UNCONNECTED
    );
ODDR2_red: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "SAME_EDGE",
      INIT => '0',
      SRTYPE => "ASYNC"
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D1 => D0,
      D2 => D1,
      Q => red_s,
      R => NLW_ODDR2_red_R_UNCONNECTED,
      S => NLW_ODDR2_red_S_UNCONNECTED
    );
TDMS_encoder_blue: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
     port map (
      D(9) => TDMS_encoder_blue_n_7,
      D(8) => TDMS_encoder_blue_n_8,
      D(7) => TDMS_encoder_blue_n_9,
      D(6) => TDMS_encoder_blue_n_10,
      D(5) => TDMS_encoder_blue_n_11,
      D(4) => TDMS_encoder_blue_n_12,
      D(3) => TDMS_encoder_blue_n_13,
      D(2) => TDMS_encoder_blue_n_14,
      D(1) => TDMS_encoder_blue_n_15,
      D(0) => TDMS_encoder_blue_n_16,
      clk_vga => clk_vga,
      \dc_bias[3]_i_5__1\ => \dc_bias[3]_i_5__1\,
      \dc_bias[3]_i_5__1_0\ => \dc_bias[3]_i_5__1_0\,
      \dc_bias[3]_i_5__1_1\ => \dc_bias[3]_i_5__1_1\,
      \dc_bias_reg[0]_0\ => \dc_bias_reg[0]\,
      \dc_bias_reg[1]_0\ => \dc_bias_reg[1]\,
      \dc_bias_reg[2]_0\ => \dc_bias_reg[2]_2\,
      \dc_bias_reg[2]_1\ => \dc_bias_reg[2]_3\,
      \dc_bias_reg[3]_0\ => \dc_bias_reg[3]_0\,
      \dc_bias_reg[3]_1\(3 downto 0) => \dc_bias_reg[3]_1\(3 downto 0),
      \dc_bias_reg[3]_2\(3 downto 0) => \dc_bias_reg[3]_6\(3 downto 0),
      \encoded_reg[7]_0\(7 downto 0) => \encoded_reg[7]_1\(7 downto 0),
      \encoded_reg[8]_0\ => \encoded_reg[8]_1\,
      \encoded_reg[9]_0\ => \encoded_reg[9]_3\,
      \encoded_reg[9]_1\ => \encoded_reg[9]_4\,
      p_1_in(0) => p_1_in(0),
      \r_reg[hSync]\ => \r_reg[hSync]\,
      \r_reg[vSync]\ => \r_reg[vSync]\
    );
TDMS_encoder_green: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
     port map (
      D(9) => TDMS_encoder_green_n_7,
      D(8) => TDMS_encoder_green_n_8,
      D(7) => TDMS_encoder_green_n_9,
      D(6) => TDMS_encoder_green_n_10,
      D(5) => TDMS_encoder_green_n_11,
      D(4) => TDMS_encoder_green_n_12,
      D(3) => TDMS_encoder_green_n_13,
      D(2) => TDMS_encoder_green_n_14,
      D(1) => TDMS_encoder_green_n_15,
      D(0) => TDMS_encoder_green_n_16,
      Green(0) => Green(0),
      Q(3 downto 0) => \dc_bias_reg[3]_3\(3 downto 0),
      clk_vga => clk_vga,
      \dc_bias[2]_i_4__0\ => \dc_bias[2]_i_4__0\,
      \dc_bias[2]_i_4__0_0\ => \dc_bias[2]_i_4__0_0\,
      \dc_bias[3]_i_4\ => \dc_bias[3]_i_4\,
      \dc_bias[3]_i_4_0\ => \dc_bias[3]_i_4_0\,
      \dc_bias[3]_i_4_1\ => \dc_bias[3]_i_4_1\,
      \dc_bias_reg[2]_0\ => \dc_bias_reg[2]_0\,
      \dc_bias_reg[2]_1\ => \dc_bias_reg[2]_1\,
      \dc_bias_reg[3]_0\ => \dc_bias_reg[3]_4\,
      \dc_bias_reg[3]_1\(3 downto 0) => \dc_bias_reg[3]_5\(3 downto 0),
      \encoded_reg[0]_0\ => \encoded_reg[0]_0\,
      \encoded_reg[1]_0\ => \encoded_reg[1]_0\,
      \encoded_reg[2]_0\ => \encoded_reg[2]_0\,
      \encoded_reg[3]_0\ => \encoded_reg[3]_0\,
      \encoded_reg[4]_0\ => \encoded_reg[4]_0\,
      \encoded_reg[5]_0\ => \encoded_reg[5]_0\,
      \encoded_reg[6]_0\ => \encoded_reg[6]_0\,
      \encoded_reg[7]_0\ => \encoded_reg[7]_0\,
      \encoded_reg[8]_0\ => \encoded_reg[8]_0\,
      \encoded_reg[9]_0\ => \encoded_reg[9]_0\,
      \encoded_reg[9]_1\ => \encoded_reg[9]_2\,
      p_1_in(0) => p_1_in(0)
    );
TDMS_encoder_red: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
     port map (
      D(3 downto 0) => D(3 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      Red(0) => Red(0),
      clk_vga => clk_vga,
      \dc_bias[2]_i_5\ => \dc_bias[2]_i_5\,
      \dc_bias[2]_i_5_0\ => \dc_bias[2]_i_5_0\,
      \dc_bias[3]_i_8\ => \dc_bias[3]_i_8\,
      \dc_bias[3]_i_8_0\ => \dc_bias[3]_i_8_0\,
      \dc_bias[3]_i_8_1\ => \dc_bias[3]_i_8_1\,
      \dc_bias_reg[2]_0\ => \dc_bias_reg[2]\,
      \dc_bias_reg[3]_0\ => \dc_bias_reg[3]\,
      \dc_bias_reg[3]_1\ => \dc_bias_reg[3]_2\,
      \encoded_reg[0]_0\ => \encoded_reg[0]\,
      \encoded_reg[1]_0\ => \encoded_reg[1]\,
      \encoded_reg[2]_0\ => \encoded_reg[2]\,
      \encoded_reg[3]_0\ => \encoded_reg[3]\,
      \encoded_reg[4]_0\ => \encoded_reg[4]\,
      \encoded_reg[5]_0\ => \encoded_reg[5]\,
      \encoded_reg[6]_0\(0) => \encoded_reg[6]\(0),
      \encoded_reg[7]_0\ => \encoded_reg[7]\,
      \encoded_reg[8]_0\ => \encoded_reg[8]\,
      \encoded_reg[9]_0\(9) => TDMS_encoder_red_n_7,
      \encoded_reg[9]_0\(8) => TDMS_encoder_red_n_8,
      \encoded_reg[9]_0\(7) => TDMS_encoder_red_n_9,
      \encoded_reg[9]_0\(6) => TDMS_encoder_red_n_10,
      \encoded_reg[9]_0\(5) => TDMS_encoder_red_n_11,
      \encoded_reg[9]_0\(4) => TDMS_encoder_red_n_12,
      \encoded_reg[9]_0\(3) => TDMS_encoder_red_n_13,
      \encoded_reg[9]_0\(2) => TDMS_encoder_red_n_14,
      \encoded_reg[9]_0\(1) => TDMS_encoder_red_n_15,
      \encoded_reg[9]_0\(0) => TDMS_encoder_red_n_16,
      \encoded_reg[9]_1\ => \encoded_reg[9]\,
      \encoded_reg[9]_2\ => \encoded_reg[9]_1\,
      p_1_in(0) => p_1_in(0)
    );
\latched_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_16,
      Q => latched_blue(0),
      R => '0'
    );
\latched_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_15,
      Q => latched_blue(1),
      R => '0'
    );
\latched_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_14,
      Q => latched_blue(2),
      R => '0'
    );
\latched_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_13,
      Q => latched_blue(3),
      R => '0'
    );
\latched_blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_12,
      Q => latched_blue(4),
      R => '0'
    );
\latched_blue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_11,
      Q => latched_blue(5),
      R => '0'
    );
\latched_blue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_10,
      Q => latched_blue(6),
      R => '0'
    );
\latched_blue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_9,
      Q => latched_blue(7),
      R => '0'
    );
\latched_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_8,
      Q => latched_blue(8),
      R => '0'
    );
\latched_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_blue_n_7,
      Q => latched_blue(9),
      R => '0'
    );
\latched_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_16,
      Q => latched_green(0),
      R => '0'
    );
\latched_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_15,
      Q => latched_green(1),
      R => '0'
    );
\latched_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_14,
      Q => latched_green(2),
      R => '0'
    );
\latched_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_13,
      Q => latched_green(3),
      R => '0'
    );
\latched_green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_12,
      Q => latched_green(4),
      R => '0'
    );
\latched_green_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_11,
      Q => latched_green(5),
      R => '0'
    );
\latched_green_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_10,
      Q => latched_green(6),
      R => '0'
    );
\latched_green_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_9,
      Q => latched_green(7),
      R => '0'
    );
\latched_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_8,
      Q => latched_green(8),
      R => '0'
    );
\latched_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_green_n_7,
      Q => latched_green(9),
      R => '0'
    );
\latched_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_16,
      Q => latched_red(0),
      R => '0'
    );
\latched_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_15,
      Q => latched_red(1),
      R => '0'
    );
\latched_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_14,
      Q => latched_red(2),
      R => '0'
    );
\latched_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_13,
      Q => latched_red(3),
      R => '0'
    );
\latched_red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_12,
      Q => latched_red(4),
      R => '0'
    );
\latched_red_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_11,
      Q => latched_red(5),
      R => '0'
    );
\latched_red_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_10,
      Q => latched_red(6),
      R => '0'
    );
\latched_red_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_9,
      Q => latched_red(7),
      R => '0'
    );
\latched_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_8,
      Q => latched_red(8),
      R => '0'
    );
\latched_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_vga,
      CE => '1',
      D => TDMS_encoder_red_n_7,
      Q => latched_red(9),
      R => '0'
    );
\shift_blue[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(0),
      O => shift_blue_0(0)
    );
\shift_blue[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(1),
      O => shift_blue_0(1)
    );
\shift_blue[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(2),
      O => shift_blue_0(2)
    );
\shift_blue[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(3),
      O => shift_blue_0(3)
    );
\shift_blue[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(4),
      O => shift_blue_0(4)
    );
\shift_blue[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(5),
      O => shift_blue_0(5)
    );
\shift_blue[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(6),
      O => shift_blue_0(6)
    );
\shift_blue[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_blue(9),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_blue(7),
      O => shift_blue_0(7)
    );
\shift_blue_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(0),
      Q => \shift_blue_reg_n_0_[0]\,
      R => '0'
    );
\shift_blue_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(1),
      Q => \shift_blue_reg_n_0_[1]\,
      R => '0'
    );
\shift_blue_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(2),
      Q => shift_blue(2),
      R => '0'
    );
\shift_blue_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(3),
      Q => shift_blue(3),
      R => '0'
    );
\shift_blue_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(4),
      Q => shift_blue(4),
      R => '0'
    );
\shift_blue_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(5),
      Q => shift_blue(5),
      R => '0'
    );
\shift_blue_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(6),
      Q => shift_blue(6),
      R => '0'
    );
\shift_blue_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_blue_0(7),
      Q => shift_blue(7),
      R => '0'
    );
\shift_blue_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_blue(8),
      Q => shift_blue(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_blue_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_blue(9),
      Q => shift_blue(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_clock_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[2]\,
      Q => shift_clock(0),
      R => '0'
    );
\shift_clock_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[3]\,
      Q => shift_clock(1),
      R => '0'
    );
\shift_clock_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[4]\,
      Q => \shift_clock_reg_n_0_[2]\,
      R => '0'
    );
\shift_clock_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[5]\,
      Q => \shift_clock_reg_n_0_[3]\,
      R => '0'
    );
\shift_clock_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[6]\,
      Q => \shift_clock_reg_n_0_[4]\,
      R => '0'
    );
\shift_clock_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[7]\,
      Q => \shift_clock_reg_n_0_[5]\,
      R => '0'
    );
\shift_clock_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[8]\,
      Q => \shift_clock_reg_n_0_[6]\,
      R => '0'
    );
\shift_clock_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => \shift_clock_reg_n_0_[9]\,
      Q => \shift_clock_reg_n_0_[7]\,
      R => '0'
    );
\shift_clock_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_clock(0),
      Q => \shift_clock_reg_n_0_[8]\,
      R => '0'
    );
\shift_clock_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_clock(1),
      Q => \shift_clock_reg_n_0_[9]\,
      R => '0'
    );
\shift_green[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(0),
      O => shift_green_1(0)
    );
\shift_green[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(1),
      O => shift_green_1(1)
    );
\shift_green[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(2),
      O => shift_green_1(2)
    );
\shift_green[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(3),
      O => shift_green_1(3)
    );
\shift_green[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(4),
      O => shift_green_1(4)
    );
\shift_green[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(5),
      O => shift_green_1(5)
    );
\shift_green[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(8),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(6),
      O => shift_green_1(6)
    );
\shift_green[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => shift_green(9),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_green(7),
      O => shift_green_1(7)
    );
\shift_green_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(0),
      Q => \shift_green_reg_n_0_[0]\,
      R => '0'
    );
\shift_green_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(1),
      Q => \shift_green_reg_n_0_[1]\,
      R => '0'
    );
\shift_green_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(2),
      Q => shift_green(2),
      R => '0'
    );
\shift_green_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(3),
      Q => shift_green(3),
      R => '0'
    );
\shift_green_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(4),
      Q => shift_green(4),
      R => '0'
    );
\shift_green_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(5),
      Q => shift_green(5),
      R => '0'
    );
\shift_green_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(6),
      Q => shift_green(6),
      R => '0'
    );
\shift_green_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_green_1(7),
      Q => shift_green(7),
      R => '0'
    );
\shift_green_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_green(8),
      Q => shift_green(8),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_green_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_green(9),
      Q => shift_green(9),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(0),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(0),
      O => shift_red(0)
    );
\shift_red[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(1),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(1),
      O => shift_red(1)
    );
\shift_red[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(2),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(2),
      O => shift_red(2)
    );
\shift_red[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(3),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(3),
      O => shift_red(3)
    );
\shift_red[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(4),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(4),
      O => shift_red(4)
    );
\shift_red[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(5),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(5),
      O => shift_red(5)
    );
\shift_red[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(6),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(6),
      O => shift_red(6)
    );
\shift_red[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data1(7),
      I1 => \shift_red[9]_i_1_n_0\,
      I2 => latched_red(7),
      O => shift_red(7)
    );
\shift_red[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \shift_red[9]_i_2_n_0\,
      I1 => \shift_clock_reg_n_0_[5]\,
      I2 => \shift_clock_reg_n_0_[4]\,
      I3 => \shift_clock_reg_n_0_[2]\,
      I4 => \shift_clock_reg_n_0_[3]\,
      O => \shift_red[9]_i_1_n_0\
    );
\shift_red[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => \shift_clock_reg_n_0_[8]\,
      I1 => \shift_clock_reg_n_0_[9]\,
      I2 => \shift_clock_reg_n_0_[6]\,
      I3 => \shift_clock_reg_n_0_[7]\,
      I4 => shift_clock(1),
      I5 => shift_clock(0),
      O => \shift_red[9]_i_2_n_0\
    );
\shift_red_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(0),
      Q => D0,
      R => '0'
    );
\shift_red_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(1),
      Q => D1,
      R => '0'
    );
\shift_red_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(2),
      Q => data1(0),
      R => '0'
    );
\shift_red_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(3),
      Q => data1(1),
      R => '0'
    );
\shift_red_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(4),
      Q => data1(2),
      R => '0'
    );
\shift_red_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(5),
      Q => data1(3),
      R => '0'
    );
\shift_red_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(6),
      Q => data1(4),
      R => '0'
    );
\shift_red_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => shift_red(7),
      Q => data1(5),
      R => '0'
    );
\shift_red_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_red(8),
      Q => data1(6),
      R => \shift_red[9]_i_1_n_0\
    );
\shift_red_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_dvi,
      CE => '1',
      D => latched_red(9),
      Q => data1(7),
      R => \shift_red[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator is
  port (
    pix_y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    pix_x : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk_p : out STD_LOGIC;
    clk_n : out STD_LOGIC;
    v_video : out STD_LOGIC;
    clk_dvi : in STD_LOGIC;
    clk_dvin : in STD_LOGIC;
    g_rgb : in STD_LOGIC_VECTOR ( 23 downto 0 );
    clk_vga : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator is
  signal Green : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Inst_dvid_n_11 : STD_LOGIC;
  signal Inst_dvid_n_12 : STD_LOGIC;
  signal Inst_dvid_n_13 : STD_LOGIC;
  signal Inst_dvid_n_14 : STD_LOGIC;
  signal Inst_dvid_n_15 : STD_LOGIC;
  signal Inst_dvid_n_16 : STD_LOGIC;
  signal Inst_dvid_n_18 : STD_LOGIC;
  signal Inst_dvid_n_19 : STD_LOGIC;
  signal Inst_dvid_n_20 : STD_LOGIC;
  signal Inst_dvid_n_21 : STD_LOGIC;
  signal Inst_dvid_n_22 : STD_LOGIC;
  signal Inst_dvid_n_23 : STD_LOGIC;
  signal Inst_dvid_n_24 : STD_LOGIC;
  signal Inst_dvid_n_4 : STD_LOGIC;
  signal Inst_dvid_n_6 : STD_LOGIC;
  signal Inst_dvid_n_7 : STD_LOGIC;
  signal Inst_dvid_n_8 : STD_LOGIC;
  signal Inst_dvid_n_9 : STD_LOGIC;
  signal Inst_vga_n_10 : STD_LOGIC;
  signal Inst_vga_n_11 : STD_LOGIC;
  signal Inst_vga_n_13 : STD_LOGIC;
  signal Inst_vga_n_14 : STD_LOGIC;
  signal Inst_vga_n_15 : STD_LOGIC;
  signal Inst_vga_n_16 : STD_LOGIC;
  signal Inst_vga_n_17 : STD_LOGIC;
  signal Inst_vga_n_4 : STD_LOGIC;
  signal Inst_vga_n_42 : STD_LOGIC;
  signal Inst_vga_n_43 : STD_LOGIC;
  signal Inst_vga_n_44 : STD_LOGIC;
  signal Inst_vga_n_45 : STD_LOGIC;
  signal Inst_vga_n_46 : STD_LOGIC;
  signal Inst_vga_n_47 : STD_LOGIC;
  signal Inst_vga_n_48 : STD_LOGIC;
  signal Inst_vga_n_49 : STD_LOGIC;
  signal Inst_vga_n_50 : STD_LOGIC;
  signal Inst_vga_n_51 : STD_LOGIC;
  signal Inst_vga_n_52 : STD_LOGIC;
  signal Inst_vga_n_53 : STD_LOGIC;
  signal Inst_vga_n_54 : STD_LOGIC;
  signal Inst_vga_n_55 : STD_LOGIC;
  signal Inst_vga_n_56 : STD_LOGIC;
  signal Inst_vga_n_57 : STD_LOGIC;
  signal Inst_vga_n_58 : STD_LOGIC;
  signal Inst_vga_n_59 : STD_LOGIC;
  signal Inst_vga_n_6 : STD_LOGIC;
  signal Inst_vga_n_60 : STD_LOGIC;
  signal Inst_vga_n_61 : STD_LOGIC;
  signal Inst_vga_n_62 : STD_LOGIC;
  signal Inst_vga_n_63 : STD_LOGIC;
  signal Inst_vga_n_64 : STD_LOGIC;
  signal Inst_vga_n_65 : STD_LOGIC;
  signal Inst_vga_n_66 : STD_LOGIC;
  signal Inst_vga_n_67 : STD_LOGIC;
  signal Inst_vga_n_68 : STD_LOGIC;
  signal Inst_vga_n_69 : STD_LOGIC;
  signal Inst_vga_n_7 : STD_LOGIC;
  signal Inst_vga_n_70 : STD_LOGIC;
  signal Inst_vga_n_71 : STD_LOGIC;
  signal Inst_vga_n_72 : STD_LOGIC;
  signal Inst_vga_n_73 : STD_LOGIC;
  signal Inst_vga_n_74 : STD_LOGIC;
  signal Inst_vga_n_75 : STD_LOGIC;
  signal Inst_vga_n_76 : STD_LOGIC;
  signal Inst_vga_n_77 : STD_LOGIC;
  signal Inst_vga_n_78 : STD_LOGIC;
  signal Inst_vga_n_79 : STD_LOGIC;
  signal Inst_vga_n_8 : STD_LOGIC;
  signal Inst_vga_n_80 : STD_LOGIC;
  signal Inst_vga_n_81 : STD_LOGIC;
  signal Inst_vga_n_82 : STD_LOGIC;
  signal Inst_vga_n_83 : STD_LOGIC;
  signal Inst_vga_n_84 : STD_LOGIC;
  signal Inst_vga_n_85 : STD_LOGIC;
  signal Inst_vga_n_86 : STD_LOGIC;
  signal Inst_vga_n_87 : STD_LOGIC;
  signal Inst_vga_n_88 : STD_LOGIC;
  signal Inst_vga_n_89 : STD_LOGIC;
  signal Inst_vga_n_9 : STD_LOGIC;
  signal Red : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \TDMS_encoder_blue/p_1_in\ : STD_LOGIC;
  signal \TDMS_encoder_green/p_1_in\ : STD_LOGIC;
  signal \TDMS_encoder_red/p_1_in\ : STD_LOGIC;
  signal blue_s : STD_LOGIC;
  signal clock_s : STD_LOGIC;
  signal green_s : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \r_reg[hSync]\ : STD_LOGIC;
  signal \r_reg[vSync]\ : STD_LOGIC;
  signal red_s : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_blue : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_blue : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of OBUFDS_blue : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_clock : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_clock : label is "OBUFDS";
  attribute box_type of OBUFDS_clock : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_green : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_green : label is "OBUFDS";
  attribute box_type of OBUFDS_green : label is "PRIMITIVE";
  attribute CAPACITANCE of OBUFDS_red : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of OBUFDS_red : label is "OBUFDS";
  attribute box_type of OBUFDS_red : label is "PRIMITIVE";
begin
Inst_dvid: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
     port map (
      D(3) => Inst_vga_n_43,
      D(2) => Inst_vga_n_44,
      D(1) => Inst_vga_n_45,
      D(0) => Inst_vga_n_46,
      Green(0) => Green(0),
      Q(3) => \TDMS_encoder_red/p_1_in\,
      Q(2) => Inst_dvid_n_6,
      Q(1) => Inst_dvid_n_7,
      Q(0) => Inst_dvid_n_8,
      Red(0) => Red(0),
      blue_s => blue_s,
      clk_dvi => clk_dvi,
      clk_dvin => clk_dvin,
      clk_vga => clk_vga,
      clock_s => clock_s,
      \dc_bias[2]_i_4__0\ => Inst_vga_n_15,
      \dc_bias[2]_i_4__0_0\ => Inst_vga_n_61,
      \dc_bias[2]_i_5\ => Inst_vga_n_9,
      \dc_bias[2]_i_5_0\ => Inst_vga_n_10,
      \dc_bias[3]_i_4\ => Inst_vga_n_72,
      \dc_bias[3]_i_4_0\ => Inst_vga_n_70,
      \dc_bias[3]_i_4_1\ => Inst_vga_n_71,
      \dc_bias[3]_i_5__1\ => Inst_vga_n_88,
      \dc_bias[3]_i_5__1_0\ => Inst_vga_n_87,
      \dc_bias[3]_i_5__1_1\ => Inst_vga_n_89,
      \dc_bias[3]_i_8\ => Inst_vga_n_56,
      \dc_bias[3]_i_8_0\ => Inst_vga_n_53,
      \dc_bias[3]_i_8_1\ => Inst_vga_n_54,
      \dc_bias_reg[0]\ => Inst_dvid_n_24,
      \dc_bias_reg[1]\ => Inst_dvid_n_23,
      \dc_bias_reg[2]\ => Inst_dvid_n_15,
      \dc_bias_reg[2]_0\ => Inst_dvid_n_16,
      \dc_bias_reg[2]_1\ => Inst_dvid_n_21,
      \dc_bias_reg[2]_2\ => Inst_vga_n_42,
      \dc_bias_reg[2]_3\ => Inst_vga_n_78,
      \dc_bias_reg[3]\ => Inst_dvid_n_4,
      \dc_bias_reg[3]_0\ => Inst_dvid_n_9,
      \dc_bias_reg[3]_1\(3) => \TDMS_encoder_blue/p_1_in\,
      \dc_bias_reg[3]_1\(2) => Inst_dvid_n_11,
      \dc_bias_reg[3]_1\(1) => Inst_dvid_n_12,
      \dc_bias_reg[3]_1\(0) => Inst_dvid_n_13,
      \dc_bias_reg[3]_2\ => Inst_dvid_n_14,
      \dc_bias_reg[3]_3\(3) => \TDMS_encoder_green/p_1_in\,
      \dc_bias_reg[3]_3\(2) => Inst_dvid_n_18,
      \dc_bias_reg[3]_3\(1) => Inst_dvid_n_19,
      \dc_bias_reg[3]_3\(0) => Inst_dvid_n_20,
      \dc_bias_reg[3]_4\ => Inst_dvid_n_22,
      \dc_bias_reg[3]_5\(3) => Inst_vga_n_57,
      \dc_bias_reg[3]_5\(2) => Inst_vga_n_58,
      \dc_bias_reg[3]_5\(1) => Inst_vga_n_59,
      \dc_bias_reg[3]_5\(0) => Inst_vga_n_60,
      \dc_bias_reg[3]_6\(3) => Inst_vga_n_73,
      \dc_bias_reg[3]_6\(2) => Inst_vga_n_74,
      \dc_bias_reg[3]_6\(1) => Inst_vga_n_75,
      \dc_bias_reg[3]_6\(0) => Inst_vga_n_76,
      \encoded_reg[0]\ => Inst_vga_n_4,
      \encoded_reg[0]_0\ => Inst_vga_n_11,
      \encoded_reg[1]\ => Inst_vga_n_47,
      \encoded_reg[1]_0\ => Inst_vga_n_62,
      \encoded_reg[2]\ => Inst_vga_n_50,
      \encoded_reg[2]_0\ => Inst_vga_n_65,
      \encoded_reg[3]\ => Inst_vga_n_48,
      \encoded_reg[3]_0\ => Inst_vga_n_63,
      \encoded_reg[4]\ => Inst_vga_n_51,
      \encoded_reg[4]_0\ => Inst_vga_n_66,
      \encoded_reg[5]\ => Inst_vga_n_49,
      \encoded_reg[5]_0\ => Inst_vga_n_64,
      \encoded_reg[6]\(0) => Inst_vga_n_8,
      \encoded_reg[6]_0\ => Inst_vga_n_67,
      \encoded_reg[7]\ => Inst_vga_n_52,
      \encoded_reg[7]_0\ => Inst_vga_n_68,
      \encoded_reg[7]_1\(7) => Inst_vga_n_79,
      \encoded_reg[7]_1\(6) => Inst_vga_n_80,
      \encoded_reg[7]_1\(5) => Inst_vga_n_81,
      \encoded_reg[7]_1\(4) => Inst_vga_n_82,
      \encoded_reg[7]_1\(3) => Inst_vga_n_83,
      \encoded_reg[7]_1\(2) => Inst_vga_n_84,
      \encoded_reg[7]_1\(1) => Inst_vga_n_85,
      \encoded_reg[7]_1\(0) => Inst_vga_n_86,
      \encoded_reg[8]\ => Inst_vga_n_6,
      \encoded_reg[8]_0\ => Inst_vga_n_13,
      \encoded_reg[8]_1\ => Inst_vga_n_17,
      \encoded_reg[9]\ => Inst_vga_n_55,
      \encoded_reg[9]_0\ => Inst_vga_n_69,
      \encoded_reg[9]_1\ => Inst_vga_n_7,
      \encoded_reg[9]_2\ => Inst_vga_n_14,
      \encoded_reg[9]_3\ => Inst_vga_n_16,
      \encoded_reg[9]_4\ => Inst_vga_n_77,
      green_s => green_s,
      p_1_in(0) => p_1_in(2),
      \r_reg[hSync]\ => \r_reg[hSync]\,
      \r_reg[vSync]\ => \r_reg[vSync]\,
      red_s => red_s
    );
Inst_vga: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga
     port map (
      D(3) => Inst_vga_n_43,
      D(2) => Inst_vga_n_44,
      D(1) => Inst_vga_n_45,
      D(0) => Inst_vga_n_46,
      Q(3) => \TDMS_encoder_red/p_1_in\,
      Q(2) => Inst_dvid_n_6,
      Q(1) => Inst_dvid_n_7,
      Q(0) => Inst_dvid_n_8,
      clk_vga => clk_vga,
      \dc_bias_reg[0]\ => Inst_vga_n_77,
      \dc_bias_reg[1]\ => Inst_dvid_n_16,
      \dc_bias_reg[1]_0\ => Inst_dvid_n_24,
      \dc_bias_reg[2]\(3) => Inst_vga_n_73,
      \dc_bias_reg[2]\(2) => Inst_vga_n_74,
      \dc_bias_reg[2]\(1) => Inst_vga_n_75,
      \dc_bias_reg[2]\(0) => Inst_vga_n_76,
      \dc_bias_reg[2]_0\ => Inst_dvid_n_15,
      \dc_bias_reg[2]_1\ => Inst_dvid_n_21,
      \dc_bias_reg[2]_2\ => Inst_dvid_n_23,
      \dc_bias_reg[3]\ => Inst_vga_n_7,
      \dc_bias_reg[3]_0\ => Inst_vga_n_14,
      \dc_bias_reg[3]_1\ => Inst_vga_n_16,
      \dc_bias_reg[3]_2\(3) => Inst_vga_n_57,
      \dc_bias_reg[3]_2\(2) => Inst_vga_n_58,
      \dc_bias_reg[3]_2\(1) => Inst_vga_n_59,
      \dc_bias_reg[3]_2\(0) => Inst_vga_n_60,
      \dc_bias_reg[3]_3\ => Inst_dvid_n_14,
      \dc_bias_reg[3]_4\(3) => \TDMS_encoder_green/p_1_in\,
      \dc_bias_reg[3]_4\(2) => Inst_dvid_n_18,
      \dc_bias_reg[3]_4\(1) => Inst_dvid_n_19,
      \dc_bias_reg[3]_4\(0) => Inst_dvid_n_20,
      \dc_bias_reg[3]_5\(3) => \TDMS_encoder_blue/p_1_in\,
      \dc_bias_reg[3]_5\(2) => Inst_dvid_n_11,
      \dc_bias_reg[3]_5\(1) => Inst_dvid_n_12,
      \dc_bias_reg[3]_5\(0) => Inst_dvid_n_13,
      \dc_bias_reg[3]_6\ => Inst_dvid_n_22,
      \dc_bias_reg[3]_7\ => Inst_dvid_n_9,
      \dc_bias_reg[3]_i_4_0\ => Inst_dvid_n_4,
      g_rgb(23 downto 0) => g_rgb(23 downto 0),
      \out\(11 downto 0) => pix_y(11 downto 0),
      p_1_in(0) => p_1_in(2),
      \r_reg[blank]_0\(0) => Inst_vga_n_8,
      \r_reg[blue][0]_0\ => Inst_vga_n_42,
      \r_reg[blue][0]_1\ => Inst_vga_n_78,
      \r_reg[blue][0]_2\ => Inst_vga_n_88,
      \r_reg[blue][4]_0\ => Inst_vga_n_87,
      \r_reg[blue][7]_0\ => Inst_vga_n_17,
      \r_reg[blue][7]_1\ => Inst_vga_n_89,
      \r_reg[green][0]_0\ => Inst_vga_n_11,
      \r_reg[green][0]_1\(0) => Green(0),
      \r_reg[green][0]_2\ => Inst_vga_n_69,
      \r_reg[green][0]_3\ => Inst_vga_n_72,
      \r_reg[green][1]_0\ => Inst_vga_n_62,
      \r_reg[green][1]_1\ => Inst_vga_n_65,
      \r_reg[green][3]_0\ => Inst_vga_n_63,
      \r_reg[green][4]_0\ => Inst_vga_n_15,
      \r_reg[green][4]_1\ => Inst_vga_n_64,
      \r_reg[green][4]_2\ => Inst_vga_n_66,
      \r_reg[green][4]_3\ => Inst_vga_n_67,
      \r_reg[green][4]_4\ => Inst_vga_n_70,
      \r_reg[green][6]_0\ => Inst_vga_n_61,
      \r_reg[green][6]_1\ => Inst_vga_n_68,
      \r_reg[green][7]_0\ => Inst_vga_n_13,
      \r_reg[green][7]_1\ => Inst_vga_n_71,
      \r_reg[hCounter][11]_0\(11 downto 0) => pix_x(11 downto 0),
      \r_reg[hSync]\ => \r_reg[hSync]\,
      \r_reg[hSync]__0_0\(7) => Inst_vga_n_79,
      \r_reg[hSync]__0_0\(6) => Inst_vga_n_80,
      \r_reg[hSync]__0_0\(5) => Inst_vga_n_81,
      \r_reg[hSync]__0_0\(4) => Inst_vga_n_82,
      \r_reg[hSync]__0_0\(3) => Inst_vga_n_83,
      \r_reg[hSync]__0_0\(2) => Inst_vga_n_84,
      \r_reg[hSync]__0_0\(1) => Inst_vga_n_85,
      \r_reg[hSync]__0_0\(0) => Inst_vga_n_86,
      \r_reg[red][0]_0\ => Inst_vga_n_4,
      \r_reg[red][0]_1\(0) => Red(0),
      \r_reg[red][0]_2\ => Inst_vga_n_55,
      \r_reg[red][0]_3\ => Inst_vga_n_56,
      \r_reg[red][1]_0\ => Inst_vga_n_47,
      \r_reg[red][1]_1\ => Inst_vga_n_50,
      \r_reg[red][3]_0\ => Inst_vga_n_48,
      \r_reg[red][4]_0\ => Inst_vga_n_51,
      \r_reg[red][4]_1\ => Inst_vga_n_53,
      \r_reg[red][5]_0\ => Inst_vga_n_9,
      \r_reg[red][5]_1\ => Inst_vga_n_49,
      \r_reg[red][6]_0\ => Inst_vga_n_10,
      \r_reg[red][6]_1\ => Inst_vga_n_52,
      \r_reg[red][7]_0\ => Inst_vga_n_6,
      \r_reg[red][7]_1\ => Inst_vga_n_54,
      \r_reg[vSync]\ => \r_reg[vSync]\,
      v_video => v_video
    );
OBUFDS_blue: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => blue_s,
      O => data_p(0),
      OB => data_n(0)
    );
OBUFDS_clock: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clock_s,
      O => clk_p,
      OB => clk_n
    );
OBUFDS_green: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => red_s,
      O => data_p(2),
      OB => data_n(2)
    );
OBUFDS_red: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => green_s,
      O => data_p(1),
      OB => data_n(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HDMIZYBOZ7_dvid_generator_0_0,dvid_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dvid_generator,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^v_video\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_n : signal is "xilinx.com:signal:clock:1.0 clk_n CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_n : signal is "XIL_INTERFACENAME clk_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN HDMIZYBOZ7_dvid_generator_0_0_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk_p : signal is "xilinx.com:signal:clock:1.0 clk_p CLK";
  attribute X_INTERFACE_PARAMETER of clk_p : signal is "XIL_INTERFACENAME clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN HDMIZYBOZ7_dvid_generator_0_0_clk_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  h_video <= \^v_video\;
  v_video <= \^v_video\;
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator
     port map (
      clk_dvi => clk_dvi,
      clk_dvin => clk_dvin,
      clk_n => clk_n,
      clk_p => clk_p,
      clk_vga => clk_vga,
      data_n(2 downto 0) => data_n(2 downto 0),
      data_p(2 downto 0) => data_p(2 downto 0),
      g_rgb(23 downto 0) => g_rgb(23 downto 0),
      pix_x(11 downto 0) => pix_x(11 downto 0),
      pix_y(11 downto 0) => pix_y(11 downto 0),
      v_video => \^v_video\
    );
end STRUCTURE;
