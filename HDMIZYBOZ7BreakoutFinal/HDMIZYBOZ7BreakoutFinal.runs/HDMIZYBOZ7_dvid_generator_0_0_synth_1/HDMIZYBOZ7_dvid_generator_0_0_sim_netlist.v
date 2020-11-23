// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Nov  7 17:39:08 2020
// Host        : DESKTOP-NDOLUA7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ HDMIZYBOZ7_dvid_generator_0_0_sim_netlist.v
// Design      : HDMIZYBOZ7_dvid_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "HDMIZYBOZ7_dvid_generator_0_0,dvid_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "dvid_generator,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    clk_dvi,
    clk_dvin,
    clk_vga,
    g_rgb,
    pix_x,
    pix_y,
    h_video,
    v_video,
    data_p,
    data_n,
    clk_p,
    clk_n,
    reset);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_p CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_p, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN HDMIZYBOZ7_dvid_generator_0_0_clk_p, INSERT_VIP 0" *) output clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_n CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_n, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN HDMIZYBOZ7_dvid_generator_0_0_clk_n, INSERT_VIP 0" *) output clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk_dvi;
  wire clk_dvin;
  (* SLEW = "SLOW" *) wire clk_n;
  (* SLEW = "SLOW" *) wire clk_p;
  wire clk_vga;
  (* SLEW = "SLOW" *) wire [2:0]data_n;
  (* SLEW = "SLOW" *) wire [2:0]data_p;
  wire [23:0]g_rgb;
  wire [11:0]pix_x;
  wire [11:0]pix_y;
  wire v_video;

  assign h_video = v_video;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator inst
       (.clk_dvi(clk_dvi),
        .clk_dvin(clk_dvin),
        .clk_n(clk_n),
        .clk_p(clk_p),
        .clk_vga(clk_vga),
        .data_n(data_n),
        .data_p(data_p),
        .g_rgb(g_rgb),
        .pix_x(pix_x),
        .pix_y(pix_y),
        .v_video(v_video));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder
   (\dc_bias_reg[3]_0 ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[1]_0 ,
    \dc_bias_reg[0]_0 ,
    D,
    \dc_bias[3]_i_5__1 ,
    \dc_bias[3]_i_5__1_0 ,
    \dc_bias[3]_i_5__1_1 ,
    \dc_bias_reg[2]_0 ,
    \dc_bias_reg[2]_1 ,
    p_1_in,
    \dc_bias_reg[3]_2 ,
    clk_vga,
    \encoded_reg[7]_0 ,
    \encoded_reg[9]_0 ,
    \r_reg[vSync] ,
    \r_reg[hSync] ,
    \encoded_reg[8]_0 ,
    \encoded_reg[9]_1 );
  output \dc_bias_reg[3]_0 ;
  output [3:0]\dc_bias_reg[3]_1 ;
  output \dc_bias_reg[1]_0 ;
  output \dc_bias_reg[0]_0 ;
  output [9:0]D;
  input \dc_bias[3]_i_5__1 ;
  input \dc_bias[3]_i_5__1_0 ;
  input \dc_bias[3]_i_5__1_1 ;
  input \dc_bias_reg[2]_0 ;
  input \dc_bias_reg[2]_1 ;
  input [0:0]p_1_in;
  input [3:0]\dc_bias_reg[3]_2 ;
  input clk_vga;
  input [7:0]\encoded_reg[7]_0 ;
  input \encoded_reg[9]_0 ;
  input \r_reg[vSync] ;
  input \r_reg[hSync] ;
  input \encoded_reg[8]_0 ;
  input \encoded_reg[9]_1 ;

  wire [9:0]D;
  wire clk_vga;
  wire \dc_bias[3]_i_5__1 ;
  wire \dc_bias[3]_i_5__1_0 ;
  wire \dc_bias[3]_i_5__1_1 ;
  wire \dc_bias_reg[0]_0 ;
  wire \dc_bias_reg[1]_0 ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[3]_0 ;
  wire [3:0]\dc_bias_reg[3]_1 ;
  wire [3:0]\dc_bias_reg[3]_2 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire [7:0]\encoded_reg[7]_0 ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire [0:0]p_1_in;
  wire \r_reg[hSync] ;
  wire \r_reg[vSync] ;

  LUT4 #(
    .INIT(16'h0001)) 
    \dc_bias[2]_i_10 
       (.I0(\dc_bias_reg[3]_1 [0]),
        .I1(\dc_bias_reg[3]_1 [2]),
        .I2(\dc_bias_reg[3]_1 [1]),
        .I3(\dc_bias_reg[3]_1 [3]),
        .O(\dc_bias_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \dc_bias[2]_i_5__1 
       (.I0(\dc_bias_reg[3]_1 [1]),
        .I1(\dc_bias_reg[2]_0 ),
        .I2(\dc_bias_reg[2]_1 ),
        .I3(\dc_bias_reg[3]_1 [2]),
        .O(\dc_bias_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9AA95A95595)) 
    \dc_bias[3]_i_17__1 
       (.I0(\dc_bias_reg[3]_1 [3]),
        .I1(\dc_bias[3]_i_5__1 ),
        .I2(\dc_bias_reg[3]_1 [1]),
        .I3(\dc_bias[3]_i_5__1_0 ),
        .I4(\dc_bias[3]_i_5__1_1 ),
        .I5(\dc_bias_reg[3]_1 [2]),
        .O(\dc_bias_reg[3]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_2 [0]),
        .Q(\dc_bias_reg[3]_1 [0]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_2 [1]),
        .Q(\dc_bias_reg[3]_1 [1]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_2 [2]),
        .Q(\dc_bias_reg[3]_1 [2]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_2 [3]),
        .Q(\dc_bias_reg[3]_1 [3]),
        .R(p_1_in));
  LUT3 #(
    .INIT(8'h74)) 
    \encoded[8]_i_1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\encoded_reg[8]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC300C3FFC3AAC3AA)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_0 ),
        .I1(\r_reg[vSync] ),
        .I2(\r_reg[hSync] ),
        .I3(p_1_in),
        .I4(\encoded_reg[8]_0 ),
        .I5(\encoded_reg[9]_1 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [0]),
        .Q(D[0]),
        .R(1'b0));
  FDRE \encoded_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [1]),
        .Q(D[1]),
        .R(1'b0));
  FDRE \encoded_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [2]),
        .Q(D[2]),
        .R(1'b0));
  FDRE \encoded_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [3]),
        .Q(D[3]),
        .R(1'b0));
  FDRE \encoded_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [4]),
        .Q(D[4]),
        .R(1'b0));
  FDRE \encoded_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [5]),
        .Q(D[5]),
        .R(1'b0));
  FDRE \encoded_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [6]),
        .Q(D[6]),
        .R(1'b0));
  FDRE \encoded_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 [7]),
        .Q(D[7]),
        .R(1'b0));
  FDRE \encoded_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0
   (\dc_bias_reg[2]_0 ,
    Q,
    \dc_bias_reg[2]_1 ,
    \dc_bias_reg[3]_0 ,
    D,
    \encoded_reg[9]_0 ,
    \dc_bias[2]_i_4__0 ,
    Green,
    \dc_bias[2]_i_4__0_0 ,
    \dc_bias[3]_i_4 ,
    \dc_bias[3]_i_4_0 ,
    \dc_bias[3]_i_4_1 ,
    p_1_in,
    \dc_bias_reg[3]_1 ,
    clk_vga,
    \encoded_reg[7]_0 ,
    \encoded_reg[5]_0 ,
    \encoded_reg[3]_0 ,
    \encoded_reg[1]_0 ,
    \encoded_reg[0]_0 ,
    \encoded_reg[6]_0 ,
    \encoded_reg[4]_0 ,
    \encoded_reg[2]_0 ,
    \encoded_reg[9]_1 ,
    \encoded_reg[8]_0 );
  output \dc_bias_reg[2]_0 ;
  output [3:0]Q;
  output \dc_bias_reg[2]_1 ;
  output \dc_bias_reg[3]_0 ;
  output [9:0]D;
  input \encoded_reg[9]_0 ;
  input \dc_bias[2]_i_4__0 ;
  input [0:0]Green;
  input \dc_bias[2]_i_4__0_0 ;
  input \dc_bias[3]_i_4 ;
  input \dc_bias[3]_i_4_0 ;
  input \dc_bias[3]_i_4_1 ;
  input [0:0]p_1_in;
  input [3:0]\dc_bias_reg[3]_1 ;
  input clk_vga;
  input \encoded_reg[7]_0 ;
  input \encoded_reg[5]_0 ;
  input \encoded_reg[3]_0 ;
  input \encoded_reg[1]_0 ;
  input \encoded_reg[0]_0 ;
  input \encoded_reg[6]_0 ;
  input \encoded_reg[4]_0 ;
  input \encoded_reg[2]_0 ;
  input \encoded_reg[9]_1 ;
  input \encoded_reg[8]_0 ;

  wire [9:0]D;
  wire [0:0]Green;
  wire [3:0]Q;
  wire clk_vga;
  wire \dc_bias[2]_i_4__0 ;
  wire \dc_bias[2]_i_4__0_0 ;
  wire \dc_bias[3]_i_4 ;
  wire \dc_bias[3]_i_4_0 ;
  wire \dc_bias[3]_i_4_1 ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[3]_0 ;
  wire [3:0]\dc_bias_reg[3]_1 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire \encoded_reg[0]_0 ;
  wire \encoded_reg[1]_0 ;
  wire \encoded_reg[2]_0 ;
  wire \encoded_reg[3]_0 ;
  wire \encoded_reg[4]_0 ;
  wire \encoded_reg[5]_0 ;
  wire \encoded_reg[6]_0 ;
  wire \encoded_reg[7]_0 ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire [0:0]p_1_in;

  LUT6 #(
    .INIT(64'hA6656565A6A6A665)) 
    \dc_bias[2]_i_7 
       (.I0(Q[2]),
        .I1(\dc_bias[2]_i_4__0 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Green),
        .I5(\dc_bias[2]_i_4__0_0 ),
        .O(\dc_bias_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h555556556A56AA6A)) 
    \dc_bias[3]_i_12__0 
       (.I0(Q[3]),
        .I1(\dc_bias[3]_i_4 ),
        .I2(Q[1]),
        .I3(\dc_bias[3]_i_4_0 ),
        .I4(\dc_bias[3]_i_4_1 ),
        .I5(Q[2]),
        .O(\dc_bias_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \dc_bias[3]_i_6 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(\encoded_reg[9]_0 ),
        .O(\dc_bias_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_1 [0]),
        .Q(Q[0]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_1 [1]),
        .Q(Q[1]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_1 [2]),
        .Q(Q[2]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\dc_bias_reg[3]_1 [3]),
        .Q(Q[3]),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \encoded[8]_i_1 
       (.I0(p_1_in),
        .I1(\encoded_reg[8]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDCDF)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_1 ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[2]_0 ),
        .I3(\encoded_reg[8]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[0]_0 ),
        .Q(D[0]),
        .R(p_1_in));
  FDRE \encoded_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[1]_0 ),
        .Q(D[1]),
        .R(p_1_in));
  FDSE \encoded_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 ),
        .Q(D[2]),
        .S(p_1_in));
  FDRE \encoded_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[3]_0 ),
        .Q(D[3]),
        .R(p_1_in));
  FDSE \encoded_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 ),
        .Q(D[4]),
        .S(p_1_in));
  FDRE \encoded_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[5]_0 ),
        .Q(D[5]),
        .R(p_1_in));
  FDSE \encoded_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[6]_0 ),
        .Q(D[6]),
        .S(p_1_in));
  FDRE \encoded_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 ),
        .Q(D[7]),
        .R(p_1_in));
  FDRE \encoded_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(D[8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(D[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TDMS_encoder" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1
   (\dc_bias_reg[3]_0 ,
    Q,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[2]_0 ,
    \encoded_reg[9]_0 ,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \encoded_reg[9]_1 ,
    \dc_bias[2]_i_5 ,
    Red,
    \dc_bias[2]_i_5_0 ,
    p_1_in,
    D,
    clk_vga,
    \encoded_reg[6]_0 ,
    \encoded_reg[7]_0 ,
    \encoded_reg[5]_0 ,
    \encoded_reg[3]_0 ,
    \encoded_reg[1]_0 ,
    \encoded_reg[0]_0 ,
    \encoded_reg[4]_0 ,
    \encoded_reg[2]_0 ,
    \encoded_reg[9]_2 ,
    \encoded_reg[8]_0 );
  output \dc_bias_reg[3]_0 ;
  output [3:0]Q;
  output \dc_bias_reg[3]_1 ;
  output \dc_bias_reg[2]_0 ;
  output [9:0]\encoded_reg[9]_0 ;
  input \dc_bias[3]_i_8 ;
  input \dc_bias[3]_i_8_0 ;
  input \dc_bias[3]_i_8_1 ;
  input \encoded_reg[9]_1 ;
  input \dc_bias[2]_i_5 ;
  input [0:0]Red;
  input \dc_bias[2]_i_5_0 ;
  input [0:0]p_1_in;
  input [3:0]D;
  input clk_vga;
  input [0:0]\encoded_reg[6]_0 ;
  input \encoded_reg[7]_0 ;
  input \encoded_reg[5]_0 ;
  input \encoded_reg[3]_0 ;
  input \encoded_reg[1]_0 ;
  input \encoded_reg[0]_0 ;
  input \encoded_reg[4]_0 ;
  input \encoded_reg[2]_0 ;
  input \encoded_reg[9]_2 ;
  input \encoded_reg[8]_0 ;

  wire [3:0]D;
  wire [3:0]Q;
  wire [0:0]Red;
  wire clk_vga;
  wire \dc_bias[2]_i_5 ;
  wire \dc_bias[2]_i_5_0 ;
  wire \dc_bias[3]_i_8 ;
  wire \dc_bias[3]_i_8_0 ;
  wire \dc_bias[3]_i_8_1 ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire \encoded[8]_i_1_n_0 ;
  wire \encoded[9]_i_1_n_0 ;
  wire \encoded_reg[0]_0 ;
  wire \encoded_reg[1]_0 ;
  wire \encoded_reg[2]_0 ;
  wire \encoded_reg[3]_0 ;
  wire \encoded_reg[4]_0 ;
  wire \encoded_reg[5]_0 ;
  wire [0:0]\encoded_reg[6]_0 ;
  wire \encoded_reg[7]_0 ;
  wire \encoded_reg[8]_0 ;
  wire [9:0]\encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire \encoded_reg[9]_2 ;
  wire [0:0]p_1_in;

  LUT6 #(
    .INIT(64'hA6656565A6A6A665)) 
    \dc_bias[2]_i_18 
       (.I0(Q[2]),
        .I1(\dc_bias[2]_i_5 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Red),
        .I5(\dc_bias[2]_i_5_0 ),
        .O(\dc_bias_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAAAAA9AA95A95595)) 
    \dc_bias[3]_i_13__1 
       (.I0(Q[3]),
        .I1(\dc_bias[3]_i_8 ),
        .I2(Q[1]),
        .I3(\dc_bias[3]_i_8_0 ),
        .I4(\dc_bias[3]_i_8_1 ),
        .I5(Q[2]),
        .O(\dc_bias_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \dc_bias[3]_i_2 
       (.I0(\encoded_reg[9]_1 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .O(\dc_bias_reg[3]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \dc_bias_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \encoded[8]_i_1 
       (.I0(p_1_in),
        .I1(\encoded_reg[8]_0 ),
        .O(\encoded[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hECEF)) 
    \encoded[9]_i_1 
       (.I0(\encoded_reg[9]_2 ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[3]_1 ),
        .I3(\encoded_reg[8]_0 ),
        .O(\encoded[9]_i_1_n_0 ));
  FDRE \encoded_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[0]_0 ),
        .Q(\encoded_reg[9]_0 [0]),
        .R(p_1_in));
  FDRE \encoded_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[1]_0 ),
        .Q(\encoded_reg[9]_0 [1]),
        .R(p_1_in));
  FDSE \encoded_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[2]_0 ),
        .Q(\encoded_reg[9]_0 [2]),
        .S(p_1_in));
  FDRE \encoded_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[3]_0 ),
        .Q(\encoded_reg[9]_0 [3]),
        .R(p_1_in));
  FDSE \encoded_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[4]_0 ),
        .Q(\encoded_reg[9]_0 [4]),
        .S(p_1_in));
  FDRE \encoded_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[5]_0 ),
        .Q(\encoded_reg[9]_0 [5]),
        .R(p_1_in));
  FDRE \encoded_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[6]_0 ),
        .Q(\encoded_reg[9]_0 [6]),
        .R(1'b0));
  FDRE \encoded_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded_reg[7]_0 ),
        .Q(\encoded_reg[9]_0 [7]),
        .R(p_1_in));
  FDRE \encoded_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[8]_i_1_n_0 ),
        .Q(\encoded_reg[9]_0 [8]),
        .R(1'b0));
  FDRE \encoded_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\encoded[9]_i_1_n_0 ),
        .Q(\encoded_reg[9]_0 [9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid
   (red_s,
    green_s,
    blue_s,
    clock_s,
    \dc_bias_reg[3] ,
    Q,
    \dc_bias_reg[3]_0 ,
    \dc_bias_reg[3]_1 ,
    \dc_bias_reg[3]_2 ,
    \dc_bias_reg[2] ,
    \dc_bias_reg[2]_0 ,
    \dc_bias_reg[3]_3 ,
    \dc_bias_reg[2]_1 ,
    \dc_bias_reg[3]_4 ,
    \dc_bias_reg[1] ,
    \dc_bias_reg[0] ,
    clk_dvi,
    clk_dvin,
    \dc_bias[3]_i_8 ,
    \dc_bias[3]_i_8_0 ,
    \dc_bias[3]_i_8_1 ,
    \dc_bias[3]_i_5__1 ,
    \dc_bias[3]_i_5__1_0 ,
    \dc_bias[3]_i_5__1_1 ,
    \encoded_reg[9] ,
    \dc_bias[2]_i_5 ,
    Red,
    \dc_bias[2]_i_5_0 ,
    \encoded_reg[9]_0 ,
    \dc_bias[2]_i_4__0 ,
    Green,
    \dc_bias[2]_i_4__0_0 ,
    \dc_bias[3]_i_4 ,
    \dc_bias[3]_i_4_0 ,
    \dc_bias[3]_i_4_1 ,
    \dc_bias_reg[2]_2 ,
    \dc_bias_reg[2]_3 ,
    p_1_in,
    D,
    clk_vga,
    \dc_bias_reg[3]_5 ,
    \dc_bias_reg[3]_6 ,
    \encoded_reg[6] ,
    \encoded_reg[7] ,
    \encoded_reg[5] ,
    \encoded_reg[3] ,
    \encoded_reg[1] ,
    \encoded_reg[0] ,
    \encoded_reg[4] ,
    \encoded_reg[2] ,
    \encoded_reg[9]_1 ,
    \encoded_reg[8] ,
    \encoded_reg[7]_0 ,
    \encoded_reg[5]_0 ,
    \encoded_reg[3]_0 ,
    \encoded_reg[1]_0 ,
    \encoded_reg[0]_0 ,
    \encoded_reg[6]_0 ,
    \encoded_reg[4]_0 ,
    \encoded_reg[2]_0 ,
    \encoded_reg[9]_2 ,
    \encoded_reg[8]_0 ,
    \encoded_reg[7]_1 ,
    \encoded_reg[9]_3 ,
    \r_reg[vSync] ,
    \r_reg[hSync] ,
    \encoded_reg[8]_1 ,
    \encoded_reg[9]_4 );
  output red_s;
  output green_s;
  output blue_s;
  output clock_s;
  output \dc_bias_reg[3] ;
  output [3:0]Q;
  output \dc_bias_reg[3]_0 ;
  output [3:0]\dc_bias_reg[3]_1 ;
  output \dc_bias_reg[3]_2 ;
  output \dc_bias_reg[2] ;
  output \dc_bias_reg[2]_0 ;
  output [3:0]\dc_bias_reg[3]_3 ;
  output \dc_bias_reg[2]_1 ;
  output \dc_bias_reg[3]_4 ;
  output \dc_bias_reg[1] ;
  output \dc_bias_reg[0] ;
  input clk_dvi;
  input clk_dvin;
  input \dc_bias[3]_i_8 ;
  input \dc_bias[3]_i_8_0 ;
  input \dc_bias[3]_i_8_1 ;
  input \dc_bias[3]_i_5__1 ;
  input \dc_bias[3]_i_5__1_0 ;
  input \dc_bias[3]_i_5__1_1 ;
  input \encoded_reg[9] ;
  input \dc_bias[2]_i_5 ;
  input [0:0]Red;
  input \dc_bias[2]_i_5_0 ;
  input \encoded_reg[9]_0 ;
  input \dc_bias[2]_i_4__0 ;
  input [0:0]Green;
  input \dc_bias[2]_i_4__0_0 ;
  input \dc_bias[3]_i_4 ;
  input \dc_bias[3]_i_4_0 ;
  input \dc_bias[3]_i_4_1 ;
  input \dc_bias_reg[2]_2 ;
  input \dc_bias_reg[2]_3 ;
  input [0:0]p_1_in;
  input [3:0]D;
  input clk_vga;
  input [3:0]\dc_bias_reg[3]_5 ;
  input [3:0]\dc_bias_reg[3]_6 ;
  input [0:0]\encoded_reg[6] ;
  input \encoded_reg[7] ;
  input \encoded_reg[5] ;
  input \encoded_reg[3] ;
  input \encoded_reg[1] ;
  input \encoded_reg[0] ;
  input \encoded_reg[4] ;
  input \encoded_reg[2] ;
  input \encoded_reg[9]_1 ;
  input \encoded_reg[8] ;
  input \encoded_reg[7]_0 ;
  input \encoded_reg[5]_0 ;
  input \encoded_reg[3]_0 ;
  input \encoded_reg[1]_0 ;
  input \encoded_reg[0]_0 ;
  input \encoded_reg[6]_0 ;
  input \encoded_reg[4]_0 ;
  input \encoded_reg[2]_0 ;
  input \encoded_reg[9]_2 ;
  input \encoded_reg[8]_0 ;
  input [7:0]\encoded_reg[7]_1 ;
  input \encoded_reg[9]_3 ;
  input \r_reg[vSync] ;
  input \r_reg[hSync] ;
  input \encoded_reg[8]_1 ;
  input \encoded_reg[9]_4 ;

  wire [3:0]D;
  wire D0;
  wire D1;
  wire [0:0]Green;
  wire [3:0]Q;
  wire [0:0]Red;
  wire TDMS_encoder_blue_n_10;
  wire TDMS_encoder_blue_n_11;
  wire TDMS_encoder_blue_n_12;
  wire TDMS_encoder_blue_n_13;
  wire TDMS_encoder_blue_n_14;
  wire TDMS_encoder_blue_n_15;
  wire TDMS_encoder_blue_n_16;
  wire TDMS_encoder_blue_n_7;
  wire TDMS_encoder_blue_n_8;
  wire TDMS_encoder_blue_n_9;
  wire TDMS_encoder_green_n_10;
  wire TDMS_encoder_green_n_11;
  wire TDMS_encoder_green_n_12;
  wire TDMS_encoder_green_n_13;
  wire TDMS_encoder_green_n_14;
  wire TDMS_encoder_green_n_15;
  wire TDMS_encoder_green_n_16;
  wire TDMS_encoder_green_n_7;
  wire TDMS_encoder_green_n_8;
  wire TDMS_encoder_green_n_9;
  wire TDMS_encoder_red_n_10;
  wire TDMS_encoder_red_n_11;
  wire TDMS_encoder_red_n_12;
  wire TDMS_encoder_red_n_13;
  wire TDMS_encoder_red_n_14;
  wire TDMS_encoder_red_n_15;
  wire TDMS_encoder_red_n_16;
  wire TDMS_encoder_red_n_7;
  wire TDMS_encoder_red_n_8;
  wire TDMS_encoder_red_n_9;
  wire blue_s;
  wire clk_dvi;
  wire clk_dvin;
  wire clk_vga;
  wire clock_s;
  wire [7:0]data1;
  wire \dc_bias[2]_i_4__0 ;
  wire \dc_bias[2]_i_4__0_0 ;
  wire \dc_bias[2]_i_5 ;
  wire \dc_bias[2]_i_5_0 ;
  wire \dc_bias[3]_i_4 ;
  wire \dc_bias[3]_i_4_0 ;
  wire \dc_bias[3]_i_4_1 ;
  wire \dc_bias[3]_i_5__1 ;
  wire \dc_bias[3]_i_5__1_0 ;
  wire \dc_bias[3]_i_5__1_1 ;
  wire \dc_bias[3]_i_8 ;
  wire \dc_bias[3]_i_8_0 ;
  wire \dc_bias[3]_i_8_1 ;
  wire \dc_bias_reg[0] ;
  wire \dc_bias_reg[1] ;
  wire \dc_bias_reg[2] ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[2]_2 ;
  wire \dc_bias_reg[2]_3 ;
  wire \dc_bias_reg[3] ;
  wire \dc_bias_reg[3]_0 ;
  wire [3:0]\dc_bias_reg[3]_1 ;
  wire \dc_bias_reg[3]_2 ;
  wire [3:0]\dc_bias_reg[3]_3 ;
  wire \dc_bias_reg[3]_4 ;
  wire [3:0]\dc_bias_reg[3]_5 ;
  wire [3:0]\dc_bias_reg[3]_6 ;
  wire \encoded_reg[0] ;
  wire \encoded_reg[0]_0 ;
  wire \encoded_reg[1] ;
  wire \encoded_reg[1]_0 ;
  wire \encoded_reg[2] ;
  wire \encoded_reg[2]_0 ;
  wire \encoded_reg[3] ;
  wire \encoded_reg[3]_0 ;
  wire \encoded_reg[4] ;
  wire \encoded_reg[4]_0 ;
  wire \encoded_reg[5] ;
  wire \encoded_reg[5]_0 ;
  wire [0:0]\encoded_reg[6] ;
  wire \encoded_reg[6]_0 ;
  wire \encoded_reg[7] ;
  wire \encoded_reg[7]_0 ;
  wire [7:0]\encoded_reg[7]_1 ;
  wire \encoded_reg[8] ;
  wire \encoded_reg[8]_0 ;
  wire \encoded_reg[8]_1 ;
  wire \encoded_reg[9] ;
  wire \encoded_reg[9]_0 ;
  wire \encoded_reg[9]_1 ;
  wire \encoded_reg[9]_2 ;
  wire \encoded_reg[9]_3 ;
  wire \encoded_reg[9]_4 ;
  wire green_s;
  wire [9:0]latched_blue;
  wire [9:0]latched_green;
  wire [9:0]latched_red;
  wire [0:0]p_1_in;
  wire \r_reg[hSync] ;
  wire \r_reg[vSync] ;
  wire red_s;
  wire [9:2]shift_blue;
  wire [7:0]shift_blue_0;
  wire \shift_blue_reg_n_0_[0] ;
  wire \shift_blue_reg_n_0_[1] ;
  wire [1:0]shift_clock;
  wire \shift_clock_reg_n_0_[2] ;
  wire \shift_clock_reg_n_0_[3] ;
  wire \shift_clock_reg_n_0_[4] ;
  wire \shift_clock_reg_n_0_[5] ;
  wire \shift_clock_reg_n_0_[6] ;
  wire \shift_clock_reg_n_0_[7] ;
  wire \shift_clock_reg_n_0_[8] ;
  wire \shift_clock_reg_n_0_[9] ;
  wire [9:2]shift_green;
  wire [7:0]shift_green_1;
  wire \shift_green_reg_n_0_[0] ;
  wire \shift_green_reg_n_0_[1] ;
  wire [7:0]shift_red;
  wire \shift_red[9]_i_1_n_0 ;
  wire \shift_red[9]_i_2_n_0 ;
  wire NLW_ODDR2_blue_R_UNCONNECTED;
  wire NLW_ODDR2_blue_S_UNCONNECTED;
  wire NLW_ODDR2_clock_R_UNCONNECTED;
  wire NLW_ODDR2_clock_S_UNCONNECTED;
  wire NLW_ODDR2_green_R_UNCONNECTED;
  wire NLW_ODDR2_green_S_UNCONNECTED;
  wire NLW_ODDR2_red_R_UNCONNECTED;
  wire NLW_ODDR2_red_S_UNCONNECTED;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_blue
       (.C(clk_dvi),
        .CE(1'b1),
        .D1(\shift_blue_reg_n_0_[0] ),
        .D2(\shift_blue_reg_n_0_[1] ),
        .Q(blue_s),
        .R(NLW_ODDR2_blue_R_UNCONNECTED),
        .S(NLW_ODDR2_blue_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_clock
       (.C(clk_dvi),
        .CE(1'b1),
        .D1(shift_clock[0]),
        .D2(shift_clock[1]),
        .Q(clock_s),
        .R(NLW_ODDR2_clock_R_UNCONNECTED),
        .S(NLW_ODDR2_clock_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_green
       (.C(clk_dvi),
        .CE(1'b1),
        .D1(\shift_green_reg_n_0_[0] ),
        .D2(\shift_green_reg_n_0_[1] ),
        .Q(green_s),
        .R(NLW_ODDR2_green_R_UNCONNECTED),
        .S(NLW_ODDR2_green_S_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "ODDR2" *) 
  (* XILINX_TRANSFORM_PINMAP = "D0:D1 D1:D2 C0:C" *) 
  (* __SRVAL = "TRUE" *) 
  (* box_type = "PRIMITIVE" *) 
  ODDR #(
    .DDR_CLK_EDGE("SAME_EDGE"),
    .INIT(1'b0),
    .SRTYPE("ASYNC")) 
    ODDR2_red
       (.C(clk_dvi),
        .CE(1'b1),
        .D1(D0),
        .D2(D1),
        .Q(red_s),
        .R(NLW_ODDR2_red_R_UNCONNECTED),
        .S(NLW_ODDR2_red_S_UNCONNECTED));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder TDMS_encoder_blue
       (.D({TDMS_encoder_blue_n_7,TDMS_encoder_blue_n_8,TDMS_encoder_blue_n_9,TDMS_encoder_blue_n_10,TDMS_encoder_blue_n_11,TDMS_encoder_blue_n_12,TDMS_encoder_blue_n_13,TDMS_encoder_blue_n_14,TDMS_encoder_blue_n_15,TDMS_encoder_blue_n_16}),
        .clk_vga(clk_vga),
        .\dc_bias[3]_i_5__1 (\dc_bias[3]_i_5__1 ),
        .\dc_bias[3]_i_5__1_0 (\dc_bias[3]_i_5__1_0 ),
        .\dc_bias[3]_i_5__1_1 (\dc_bias[3]_i_5__1_1 ),
        .\dc_bias_reg[0]_0 (\dc_bias_reg[0] ),
        .\dc_bias_reg[1]_0 (\dc_bias_reg[1] ),
        .\dc_bias_reg[2]_0 (\dc_bias_reg[2]_2 ),
        .\dc_bias_reg[2]_1 (\dc_bias_reg[2]_3 ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_0 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_1 ),
        .\dc_bias_reg[3]_2 (\dc_bias_reg[3]_6 ),
        .\encoded_reg[7]_0 (\encoded_reg[7]_1 ),
        .\encoded_reg[8]_0 (\encoded_reg[8]_1 ),
        .\encoded_reg[9]_0 (\encoded_reg[9]_3 ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_4 ),
        .p_1_in(p_1_in),
        .\r_reg[hSync] (\r_reg[hSync] ),
        .\r_reg[vSync] (\r_reg[vSync] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_0 TDMS_encoder_green
       (.D({TDMS_encoder_green_n_7,TDMS_encoder_green_n_8,TDMS_encoder_green_n_9,TDMS_encoder_green_n_10,TDMS_encoder_green_n_11,TDMS_encoder_green_n_12,TDMS_encoder_green_n_13,TDMS_encoder_green_n_14,TDMS_encoder_green_n_15,TDMS_encoder_green_n_16}),
        .Green(Green),
        .Q(\dc_bias_reg[3]_3 ),
        .clk_vga(clk_vga),
        .\dc_bias[2]_i_4__0 (\dc_bias[2]_i_4__0 ),
        .\dc_bias[2]_i_4__0_0 (\dc_bias[2]_i_4__0_0 ),
        .\dc_bias[3]_i_4 (\dc_bias[3]_i_4 ),
        .\dc_bias[3]_i_4_0 (\dc_bias[3]_i_4_0 ),
        .\dc_bias[3]_i_4_1 (\dc_bias[3]_i_4_1 ),
        .\dc_bias_reg[2]_0 (\dc_bias_reg[2]_0 ),
        .\dc_bias_reg[2]_1 (\dc_bias_reg[2]_1 ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3]_4 ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_5 ),
        .\encoded_reg[0]_0 (\encoded_reg[0]_0 ),
        .\encoded_reg[1]_0 (\encoded_reg[1]_0 ),
        .\encoded_reg[2]_0 (\encoded_reg[2]_0 ),
        .\encoded_reg[3]_0 (\encoded_reg[3]_0 ),
        .\encoded_reg[4]_0 (\encoded_reg[4]_0 ),
        .\encoded_reg[5]_0 (\encoded_reg[5]_0 ),
        .\encoded_reg[6]_0 (\encoded_reg[6]_0 ),
        .\encoded_reg[7]_0 (\encoded_reg[7]_0 ),
        .\encoded_reg[8]_0 (\encoded_reg[8]_0 ),
        .\encoded_reg[9]_0 (\encoded_reg[9]_0 ),
        .\encoded_reg[9]_1 (\encoded_reg[9]_2 ),
        .p_1_in(p_1_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TDMS_encoder_1 TDMS_encoder_red
       (.D(D),
        .Q(Q),
        .Red(Red),
        .clk_vga(clk_vga),
        .\dc_bias[2]_i_5 (\dc_bias[2]_i_5 ),
        .\dc_bias[2]_i_5_0 (\dc_bias[2]_i_5_0 ),
        .\dc_bias[3]_i_8 (\dc_bias[3]_i_8 ),
        .\dc_bias[3]_i_8_0 (\dc_bias[3]_i_8_0 ),
        .\dc_bias[3]_i_8_1 (\dc_bias[3]_i_8_1 ),
        .\dc_bias_reg[2]_0 (\dc_bias_reg[2] ),
        .\dc_bias_reg[3]_0 (\dc_bias_reg[3] ),
        .\dc_bias_reg[3]_1 (\dc_bias_reg[3]_2 ),
        .\encoded_reg[0]_0 (\encoded_reg[0] ),
        .\encoded_reg[1]_0 (\encoded_reg[1] ),
        .\encoded_reg[2]_0 (\encoded_reg[2] ),
        .\encoded_reg[3]_0 (\encoded_reg[3] ),
        .\encoded_reg[4]_0 (\encoded_reg[4] ),
        .\encoded_reg[5]_0 (\encoded_reg[5] ),
        .\encoded_reg[6]_0 (\encoded_reg[6] ),
        .\encoded_reg[7]_0 (\encoded_reg[7] ),
        .\encoded_reg[8]_0 (\encoded_reg[8] ),
        .\encoded_reg[9]_0 ({TDMS_encoder_red_n_7,TDMS_encoder_red_n_8,TDMS_encoder_red_n_9,TDMS_encoder_red_n_10,TDMS_encoder_red_n_11,TDMS_encoder_red_n_12,TDMS_encoder_red_n_13,TDMS_encoder_red_n_14,TDMS_encoder_red_n_15,TDMS_encoder_red_n_16}),
        .\encoded_reg[9]_1 (\encoded_reg[9] ),
        .\encoded_reg[9]_2 (\encoded_reg[9]_1 ),
        .p_1_in(p_1_in));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_16),
        .Q(latched_blue[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_15),
        .Q(latched_blue[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_14),
        .Q(latched_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_13),
        .Q(latched_blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_12),
        .Q(latched_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_11),
        .Q(latched_blue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_10),
        .Q(latched_blue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_9),
        .Q(latched_blue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_8),
        .Q(latched_blue[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_blue_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_blue_n_7),
        .Q(latched_blue[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_16),
        .Q(latched_green[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_15),
        .Q(latched_green[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_14),
        .Q(latched_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_13),
        .Q(latched_green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_12),
        .Q(latched_green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_11),
        .Q(latched_green[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_10),
        .Q(latched_green[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_9),
        .Q(latched_green[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_8),
        .Q(latched_green[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_green_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_green_n_7),
        .Q(latched_green[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_16),
        .Q(latched_red[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_15),
        .Q(latched_red[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_14),
        .Q(latched_red[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_13),
        .Q(latched_red[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_12),
        .Q(latched_red[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_11),
        .Q(latched_red[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_10),
        .Q(latched_red[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_9),
        .Q(latched_red[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_8),
        .Q(latched_red[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \latched_red_reg[9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(TDMS_encoder_red_n_7),
        .Q(latched_red[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[0]_i_1 
       (.I0(shift_blue[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[0]),
        .O(shift_blue_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[1]_i_1 
       (.I0(shift_blue[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[1]),
        .O(shift_blue_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[2]_i_1 
       (.I0(shift_blue[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[2]),
        .O(shift_blue_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[3]_i_1 
       (.I0(shift_blue[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[3]),
        .O(shift_blue_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[4]_i_1 
       (.I0(shift_blue[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[4]),
        .O(shift_blue_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[5]_i_1 
       (.I0(shift_blue[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[5]),
        .O(shift_blue_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[6]_i_1 
       (.I0(shift_blue[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[6]),
        .O(shift_blue_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_blue[7]_i_1 
       (.I0(shift_blue[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_blue[7]),
        .O(shift_blue_0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[0] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[0]),
        .Q(\shift_blue_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[1] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[1]),
        .Q(\shift_blue_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[2] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[2]),
        .Q(shift_blue[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[3] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[3]),
        .Q(shift_blue[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[4] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[4]),
        .Q(shift_blue[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[5] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[5]),
        .Q(shift_blue[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[6] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[6]),
        .Q(shift_blue[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[7] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_blue_0[7]),
        .Q(shift_blue[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[8] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_blue[8]),
        .Q(shift_blue[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_blue_reg[9] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_blue[9]),
        .Q(shift_blue[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[0] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[2] ),
        .Q(shift_clock[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[1] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[3] ),
        .Q(shift_clock[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[2] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[4] ),
        .Q(\shift_clock_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[3] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[5] ),
        .Q(\shift_clock_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \shift_clock_reg[4] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[6] ),
        .Q(\shift_clock_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[5] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[7] ),
        .Q(\shift_clock_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[6] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[8] ),
        .Q(\shift_clock_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[7] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(\shift_clock_reg_n_0_[9] ),
        .Q(\shift_clock_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[8] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_clock[0]),
        .Q(\shift_clock_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_clock_reg[9] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_clock[1]),
        .Q(\shift_clock_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[0]_i_1 
       (.I0(shift_green[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[0]),
        .O(shift_green_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[1]_i_1 
       (.I0(shift_green[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[1]),
        .O(shift_green_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[2]_i_1 
       (.I0(shift_green[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[2]),
        .O(shift_green_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[3]_i_1 
       (.I0(shift_green[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[3]),
        .O(shift_green_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[4]_i_1 
       (.I0(shift_green[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[4]),
        .O(shift_green_1[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[5]_i_1 
       (.I0(shift_green[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[5]),
        .O(shift_green_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[6]_i_1 
       (.I0(shift_green[8]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[6]),
        .O(shift_green_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_green[7]_i_1 
       (.I0(shift_green[9]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_green[7]),
        .O(shift_green_1[7]));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[0] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[0]),
        .Q(\shift_green_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[1] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[1]),
        .Q(\shift_green_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[2] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[2]),
        .Q(shift_green[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[3] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[3]),
        .Q(shift_green[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[4] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[4]),
        .Q(shift_green[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[5] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[5]),
        .Q(shift_green[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[6] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[6]),
        .Q(shift_green[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[7] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_green_1[7]),
        .Q(shift_green[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[8] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_green[8]),
        .Q(shift_green[8]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_green_reg[9] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_green[9]),
        .Q(shift_green[9]),
        .R(\shift_red[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[0]_i_1 
       (.I0(data1[0]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[0]),
        .O(shift_red[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[1]_i_1 
       (.I0(data1[1]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[1]),
        .O(shift_red[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[2]_i_1 
       (.I0(data1[2]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[2]),
        .O(shift_red[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[3]_i_1 
       (.I0(data1[3]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[3]),
        .O(shift_red[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[4]_i_1 
       (.I0(data1[4]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[4]),
        .O(shift_red[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[5]_i_1 
       (.I0(data1[5]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[5]),
        .O(shift_red[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[6]_i_1 
       (.I0(data1[6]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[6]),
        .O(shift_red[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \shift_red[7]_i_1 
       (.I0(data1[7]),
        .I1(\shift_red[9]_i_1_n_0 ),
        .I2(latched_red[7]),
        .O(shift_red[7]));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \shift_red[9]_i_1 
       (.I0(\shift_red[9]_i_2_n_0 ),
        .I1(\shift_clock_reg_n_0_[5] ),
        .I2(\shift_clock_reg_n_0_[4] ),
        .I3(\shift_clock_reg_n_0_[2] ),
        .I4(\shift_clock_reg_n_0_[3] ),
        .O(\shift_red[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \shift_red[9]_i_2 
       (.I0(\shift_clock_reg_n_0_[8] ),
        .I1(\shift_clock_reg_n_0_[9] ),
        .I2(\shift_clock_reg_n_0_[6] ),
        .I3(\shift_clock_reg_n_0_[7] ),
        .I4(shift_clock[1]),
        .I5(shift_clock[0]),
        .O(\shift_red[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[0] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[0]),
        .Q(D0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[1] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[1]),
        .Q(D1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[2] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[2]),
        .Q(data1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[3] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[3]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[4] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[4]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[5] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[5]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[6] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[6]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[7] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(shift_red[7]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[8] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_red[8]),
        .Q(data1[6]),
        .R(\shift_red[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shift_red_reg[9] 
       (.C(clk_dvi),
        .CE(1'b1),
        .D(latched_red[9]),
        .Q(data1[7]),
        .R(\shift_red[9]_i_1_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid_generator
   (pix_y,
    pix_x,
    data_p,
    data_n,
    clk_p,
    clk_n,
    v_video,
    clk_dvi,
    clk_dvin,
    g_rgb,
    clk_vga);
  output [11:0]pix_y;
  output [11:0]pix_x;
  output [2:0]data_p;
  output [2:0]data_n;
  output clk_p;
  output clk_n;
  output v_video;
  input clk_dvi;
  input clk_dvin;
  input [23:0]g_rgb;
  input clk_vga;

  wire [0:0]Green;
  wire Inst_dvid_n_11;
  wire Inst_dvid_n_12;
  wire Inst_dvid_n_13;
  wire Inst_dvid_n_14;
  wire Inst_dvid_n_15;
  wire Inst_dvid_n_16;
  wire Inst_dvid_n_18;
  wire Inst_dvid_n_19;
  wire Inst_dvid_n_20;
  wire Inst_dvid_n_21;
  wire Inst_dvid_n_22;
  wire Inst_dvid_n_23;
  wire Inst_dvid_n_24;
  wire Inst_dvid_n_4;
  wire Inst_dvid_n_6;
  wire Inst_dvid_n_7;
  wire Inst_dvid_n_8;
  wire Inst_dvid_n_9;
  wire Inst_vga_n_10;
  wire Inst_vga_n_11;
  wire Inst_vga_n_13;
  wire Inst_vga_n_14;
  wire Inst_vga_n_15;
  wire Inst_vga_n_16;
  wire Inst_vga_n_17;
  wire Inst_vga_n_4;
  wire Inst_vga_n_42;
  wire Inst_vga_n_43;
  wire Inst_vga_n_44;
  wire Inst_vga_n_45;
  wire Inst_vga_n_46;
  wire Inst_vga_n_47;
  wire Inst_vga_n_48;
  wire Inst_vga_n_49;
  wire Inst_vga_n_50;
  wire Inst_vga_n_51;
  wire Inst_vga_n_52;
  wire Inst_vga_n_53;
  wire Inst_vga_n_54;
  wire Inst_vga_n_55;
  wire Inst_vga_n_56;
  wire Inst_vga_n_57;
  wire Inst_vga_n_58;
  wire Inst_vga_n_59;
  wire Inst_vga_n_6;
  wire Inst_vga_n_60;
  wire Inst_vga_n_61;
  wire Inst_vga_n_62;
  wire Inst_vga_n_63;
  wire Inst_vga_n_64;
  wire Inst_vga_n_65;
  wire Inst_vga_n_66;
  wire Inst_vga_n_67;
  wire Inst_vga_n_68;
  wire Inst_vga_n_69;
  wire Inst_vga_n_7;
  wire Inst_vga_n_70;
  wire Inst_vga_n_71;
  wire Inst_vga_n_72;
  wire Inst_vga_n_73;
  wire Inst_vga_n_74;
  wire Inst_vga_n_75;
  wire Inst_vga_n_76;
  wire Inst_vga_n_77;
  wire Inst_vga_n_78;
  wire Inst_vga_n_79;
  wire Inst_vga_n_8;
  wire Inst_vga_n_80;
  wire Inst_vga_n_81;
  wire Inst_vga_n_82;
  wire Inst_vga_n_83;
  wire Inst_vga_n_84;
  wire Inst_vga_n_85;
  wire Inst_vga_n_86;
  wire Inst_vga_n_87;
  wire Inst_vga_n_88;
  wire Inst_vga_n_89;
  wire Inst_vga_n_9;
  wire [0:0]Red;
  wire \TDMS_encoder_blue/p_1_in ;
  wire \TDMS_encoder_green/p_1_in ;
  wire \TDMS_encoder_red/p_1_in ;
  wire blue_s;
  wire clk_dvi;
  wire clk_dvin;
  wire clk_n;
  wire clk_p;
  wire clk_vga;
  wire clock_s;
  wire [2:0]data_n;
  wire [2:0]data_p;
  wire [23:0]g_rgb;
  wire green_s;
  wire [2:2]p_1_in;
  wire [11:0]pix_x;
  wire [11:0]pix_y;
  wire \r_reg[hSync] ;
  wire \r_reg[vSync] ;
  wire red_s;
  wire v_video;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dvid Inst_dvid
       (.D({Inst_vga_n_43,Inst_vga_n_44,Inst_vga_n_45,Inst_vga_n_46}),
        .Green(Green),
        .Q({\TDMS_encoder_red/p_1_in ,Inst_dvid_n_6,Inst_dvid_n_7,Inst_dvid_n_8}),
        .Red(Red),
        .blue_s(blue_s),
        .clk_dvi(clk_dvi),
        .clk_dvin(clk_dvin),
        .clk_vga(clk_vga),
        .clock_s(clock_s),
        .\dc_bias[2]_i_4__0 (Inst_vga_n_15),
        .\dc_bias[2]_i_4__0_0 (Inst_vga_n_61),
        .\dc_bias[2]_i_5 (Inst_vga_n_9),
        .\dc_bias[2]_i_5_0 (Inst_vga_n_10),
        .\dc_bias[3]_i_4 (Inst_vga_n_72),
        .\dc_bias[3]_i_4_0 (Inst_vga_n_70),
        .\dc_bias[3]_i_4_1 (Inst_vga_n_71),
        .\dc_bias[3]_i_5__1 (Inst_vga_n_88),
        .\dc_bias[3]_i_5__1_0 (Inst_vga_n_87),
        .\dc_bias[3]_i_5__1_1 (Inst_vga_n_89),
        .\dc_bias[3]_i_8 (Inst_vga_n_56),
        .\dc_bias[3]_i_8_0 (Inst_vga_n_53),
        .\dc_bias[3]_i_8_1 (Inst_vga_n_54),
        .\dc_bias_reg[0] (Inst_dvid_n_24),
        .\dc_bias_reg[1] (Inst_dvid_n_23),
        .\dc_bias_reg[2] (Inst_dvid_n_15),
        .\dc_bias_reg[2]_0 (Inst_dvid_n_16),
        .\dc_bias_reg[2]_1 (Inst_dvid_n_21),
        .\dc_bias_reg[2]_2 (Inst_vga_n_42),
        .\dc_bias_reg[2]_3 (Inst_vga_n_78),
        .\dc_bias_reg[3] (Inst_dvid_n_4),
        .\dc_bias_reg[3]_0 (Inst_dvid_n_9),
        .\dc_bias_reg[3]_1 ({\TDMS_encoder_blue/p_1_in ,Inst_dvid_n_11,Inst_dvid_n_12,Inst_dvid_n_13}),
        .\dc_bias_reg[3]_2 (Inst_dvid_n_14),
        .\dc_bias_reg[3]_3 ({\TDMS_encoder_green/p_1_in ,Inst_dvid_n_18,Inst_dvid_n_19,Inst_dvid_n_20}),
        .\dc_bias_reg[3]_4 (Inst_dvid_n_22),
        .\dc_bias_reg[3]_5 ({Inst_vga_n_57,Inst_vga_n_58,Inst_vga_n_59,Inst_vga_n_60}),
        .\dc_bias_reg[3]_6 ({Inst_vga_n_73,Inst_vga_n_74,Inst_vga_n_75,Inst_vga_n_76}),
        .\encoded_reg[0] (Inst_vga_n_4),
        .\encoded_reg[0]_0 (Inst_vga_n_11),
        .\encoded_reg[1] (Inst_vga_n_47),
        .\encoded_reg[1]_0 (Inst_vga_n_62),
        .\encoded_reg[2] (Inst_vga_n_50),
        .\encoded_reg[2]_0 (Inst_vga_n_65),
        .\encoded_reg[3] (Inst_vga_n_48),
        .\encoded_reg[3]_0 (Inst_vga_n_63),
        .\encoded_reg[4] (Inst_vga_n_51),
        .\encoded_reg[4]_0 (Inst_vga_n_66),
        .\encoded_reg[5] (Inst_vga_n_49),
        .\encoded_reg[5]_0 (Inst_vga_n_64),
        .\encoded_reg[6] (Inst_vga_n_8),
        .\encoded_reg[6]_0 (Inst_vga_n_67),
        .\encoded_reg[7] (Inst_vga_n_52),
        .\encoded_reg[7]_0 (Inst_vga_n_68),
        .\encoded_reg[7]_1 ({Inst_vga_n_79,Inst_vga_n_80,Inst_vga_n_81,Inst_vga_n_82,Inst_vga_n_83,Inst_vga_n_84,Inst_vga_n_85,Inst_vga_n_86}),
        .\encoded_reg[8] (Inst_vga_n_6),
        .\encoded_reg[8]_0 (Inst_vga_n_13),
        .\encoded_reg[8]_1 (Inst_vga_n_17),
        .\encoded_reg[9] (Inst_vga_n_55),
        .\encoded_reg[9]_0 (Inst_vga_n_69),
        .\encoded_reg[9]_1 (Inst_vga_n_7),
        .\encoded_reg[9]_2 (Inst_vga_n_14),
        .\encoded_reg[9]_3 (Inst_vga_n_16),
        .\encoded_reg[9]_4 (Inst_vga_n_77),
        .green_s(green_s),
        .p_1_in(p_1_in),
        .\r_reg[hSync] (\r_reg[hSync] ),
        .\r_reg[vSync] (\r_reg[vSync] ),
        .red_s(red_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga Inst_vga
       (.D({Inst_vga_n_43,Inst_vga_n_44,Inst_vga_n_45,Inst_vga_n_46}),
        .Q({\TDMS_encoder_red/p_1_in ,Inst_dvid_n_6,Inst_dvid_n_7,Inst_dvid_n_8}),
        .clk_vga(clk_vga),
        .\dc_bias_reg[0] (Inst_vga_n_77),
        .\dc_bias_reg[1] (Inst_dvid_n_16),
        .\dc_bias_reg[1]_0 (Inst_dvid_n_24),
        .\dc_bias_reg[2] ({Inst_vga_n_73,Inst_vga_n_74,Inst_vga_n_75,Inst_vga_n_76}),
        .\dc_bias_reg[2]_0 (Inst_dvid_n_15),
        .\dc_bias_reg[2]_1 (Inst_dvid_n_21),
        .\dc_bias_reg[2]_2 (Inst_dvid_n_23),
        .\dc_bias_reg[3] (Inst_vga_n_7),
        .\dc_bias_reg[3]_0 (Inst_vga_n_14),
        .\dc_bias_reg[3]_1 (Inst_vga_n_16),
        .\dc_bias_reg[3]_2 ({Inst_vga_n_57,Inst_vga_n_58,Inst_vga_n_59,Inst_vga_n_60}),
        .\dc_bias_reg[3]_3 (Inst_dvid_n_14),
        .\dc_bias_reg[3]_4 ({\TDMS_encoder_green/p_1_in ,Inst_dvid_n_18,Inst_dvid_n_19,Inst_dvid_n_20}),
        .\dc_bias_reg[3]_5 ({\TDMS_encoder_blue/p_1_in ,Inst_dvid_n_11,Inst_dvid_n_12,Inst_dvid_n_13}),
        .\dc_bias_reg[3]_6 (Inst_dvid_n_22),
        .\dc_bias_reg[3]_7 (Inst_dvid_n_9),
        .\dc_bias_reg[3]_i_4_0 (Inst_dvid_n_4),
        .g_rgb(g_rgb),
        .out(pix_y),
        .p_1_in(p_1_in),
        .\r_reg[blank]_0 (Inst_vga_n_8),
        .\r_reg[blue][0]_0 (Inst_vga_n_42),
        .\r_reg[blue][0]_1 (Inst_vga_n_78),
        .\r_reg[blue][0]_2 (Inst_vga_n_88),
        .\r_reg[blue][4]_0 (Inst_vga_n_87),
        .\r_reg[blue][7]_0 (Inst_vga_n_17),
        .\r_reg[blue][7]_1 (Inst_vga_n_89),
        .\r_reg[green][0]_0 (Inst_vga_n_11),
        .\r_reg[green][0]_1 (Green),
        .\r_reg[green][0]_2 (Inst_vga_n_69),
        .\r_reg[green][0]_3 (Inst_vga_n_72),
        .\r_reg[green][1]_0 (Inst_vga_n_62),
        .\r_reg[green][1]_1 (Inst_vga_n_65),
        .\r_reg[green][3]_0 (Inst_vga_n_63),
        .\r_reg[green][4]_0 (Inst_vga_n_15),
        .\r_reg[green][4]_1 (Inst_vga_n_64),
        .\r_reg[green][4]_2 (Inst_vga_n_66),
        .\r_reg[green][4]_3 (Inst_vga_n_67),
        .\r_reg[green][4]_4 (Inst_vga_n_70),
        .\r_reg[green][6]_0 (Inst_vga_n_61),
        .\r_reg[green][6]_1 (Inst_vga_n_68),
        .\r_reg[green][7]_0 (Inst_vga_n_13),
        .\r_reg[green][7]_1 (Inst_vga_n_71),
        .\r_reg[hCounter][11]_0 (pix_x),
        .\r_reg[hSync] (\r_reg[hSync] ),
        .\r_reg[hSync]__0_0 ({Inst_vga_n_79,Inst_vga_n_80,Inst_vga_n_81,Inst_vga_n_82,Inst_vga_n_83,Inst_vga_n_84,Inst_vga_n_85,Inst_vga_n_86}),
        .\r_reg[red][0]_0 (Inst_vga_n_4),
        .\r_reg[red][0]_1 (Red),
        .\r_reg[red][0]_2 (Inst_vga_n_55),
        .\r_reg[red][0]_3 (Inst_vga_n_56),
        .\r_reg[red][1]_0 (Inst_vga_n_47),
        .\r_reg[red][1]_1 (Inst_vga_n_50),
        .\r_reg[red][3]_0 (Inst_vga_n_48),
        .\r_reg[red][4]_0 (Inst_vga_n_51),
        .\r_reg[red][4]_1 (Inst_vga_n_53),
        .\r_reg[red][5]_0 (Inst_vga_n_9),
        .\r_reg[red][5]_1 (Inst_vga_n_49),
        .\r_reg[red][6]_0 (Inst_vga_n_10),
        .\r_reg[red][6]_1 (Inst_vga_n_52),
        .\r_reg[red][7]_0 (Inst_vga_n_6),
        .\r_reg[red][7]_1 (Inst_vga_n_54),
        .\r_reg[vSync] (\r_reg[vSync] ),
        .v_video(v_video));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_blue
       (.I(blue_s),
        .O(data_p[0]),
        .OB(data_n[0]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_clock
       (.I(clock_s),
        .O(clk_p),
        .OB(clk_n));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_green
       (.I(red_s),
        .O(data_p[2]),
        .OB(data_n[2]));
  (* CAPACITANCE = "DONT_CARE" *) 
  (* XILINX_LEGACY_PRIM = "OBUFDS" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    OBUFDS_red
       (.I(green_s),
        .O(data_p[1]),
        .OB(data_n[1]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga
   (\r_reg[vSync] ,
    v_video,
    p_1_in,
    \r_reg[hSync] ,
    \r_reg[red][0]_0 ,
    \r_reg[red][0]_1 ,
    \r_reg[red][7]_0 ,
    \dc_bias_reg[3] ,
    \r_reg[blank]_0 ,
    \r_reg[red][5]_0 ,
    \r_reg[red][6]_0 ,
    \r_reg[green][0]_0 ,
    \r_reg[green][0]_1 ,
    \r_reg[green][7]_0 ,
    \dc_bias_reg[3]_0 ,
    \r_reg[green][4]_0 ,
    \dc_bias_reg[3]_1 ,
    \r_reg[blue][7]_0 ,
    out,
    \r_reg[hCounter][11]_0 ,
    \r_reg[blue][0]_0 ,
    D,
    \r_reg[red][1]_0 ,
    \r_reg[red][3]_0 ,
    \r_reg[red][5]_1 ,
    \r_reg[red][1]_1 ,
    \r_reg[red][4]_0 ,
    \r_reg[red][6]_1 ,
    \r_reg[red][4]_1 ,
    \r_reg[red][7]_1 ,
    \r_reg[red][0]_2 ,
    \r_reg[red][0]_3 ,
    \dc_bias_reg[3]_2 ,
    \r_reg[green][6]_0 ,
    \r_reg[green][1]_0 ,
    \r_reg[green][3]_0 ,
    \r_reg[green][4]_1 ,
    \r_reg[green][1]_1 ,
    \r_reg[green][4]_2 ,
    \r_reg[green][4]_3 ,
    \r_reg[green][6]_1 ,
    \r_reg[green][0]_2 ,
    \r_reg[green][4]_4 ,
    \r_reg[green][7]_1 ,
    \r_reg[green][0]_3 ,
    \dc_bias_reg[2] ,
    \dc_bias_reg[0] ,
    \r_reg[blue][0]_1 ,
    \r_reg[hSync]__0_0 ,
    \r_reg[blue][4]_0 ,
    \r_reg[blue][0]_2 ,
    \r_reg[blue][7]_1 ,
    clk_vga,
    \dc_bias_reg[3]_3 ,
    Q,
    \dc_bias_reg[1] ,
    \dc_bias_reg[3]_4 ,
    \dc_bias_reg[3]_5 ,
    \dc_bias_reg[3]_i_4_0 ,
    \dc_bias_reg[2]_0 ,
    \dc_bias_reg[3]_6 ,
    \dc_bias_reg[2]_1 ,
    \dc_bias_reg[2]_2 ,
    \dc_bias_reg[3]_7 ,
    \dc_bias_reg[1]_0 ,
    g_rgb);
  output \r_reg[vSync] ;
  output v_video;
  output [0:0]p_1_in;
  output \r_reg[hSync] ;
  output \r_reg[red][0]_0 ;
  output [0:0]\r_reg[red][0]_1 ;
  output \r_reg[red][7]_0 ;
  output \dc_bias_reg[3] ;
  output [0:0]\r_reg[blank]_0 ;
  output \r_reg[red][5]_0 ;
  output \r_reg[red][6]_0 ;
  output \r_reg[green][0]_0 ;
  output [0:0]\r_reg[green][0]_1 ;
  output \r_reg[green][7]_0 ;
  output \dc_bias_reg[3]_0 ;
  output \r_reg[green][4]_0 ;
  output \dc_bias_reg[3]_1 ;
  output \r_reg[blue][7]_0 ;
  output [11:0]out;
  output [11:0]\r_reg[hCounter][11]_0 ;
  output \r_reg[blue][0]_0 ;
  output [3:0]D;
  output \r_reg[red][1]_0 ;
  output \r_reg[red][3]_0 ;
  output \r_reg[red][5]_1 ;
  output \r_reg[red][1]_1 ;
  output \r_reg[red][4]_0 ;
  output \r_reg[red][6]_1 ;
  output \r_reg[red][4]_1 ;
  output \r_reg[red][7]_1 ;
  output \r_reg[red][0]_2 ;
  output \r_reg[red][0]_3 ;
  output [3:0]\dc_bias_reg[3]_2 ;
  output \r_reg[green][6]_0 ;
  output \r_reg[green][1]_0 ;
  output \r_reg[green][3]_0 ;
  output \r_reg[green][4]_1 ;
  output \r_reg[green][1]_1 ;
  output \r_reg[green][4]_2 ;
  output \r_reg[green][4]_3 ;
  output \r_reg[green][6]_1 ;
  output \r_reg[green][0]_2 ;
  output \r_reg[green][4]_4 ;
  output \r_reg[green][7]_1 ;
  output \r_reg[green][0]_3 ;
  output [3:0]\dc_bias_reg[2] ;
  output \dc_bias_reg[0] ;
  output \r_reg[blue][0]_1 ;
  output [7:0]\r_reg[hSync]__0_0 ;
  output \r_reg[blue][4]_0 ;
  output \r_reg[blue][0]_2 ;
  output \r_reg[blue][7]_1 ;
  input clk_vga;
  input \dc_bias_reg[3]_3 ;
  input [3:0]Q;
  input \dc_bias_reg[1] ;
  input [3:0]\dc_bias_reg[3]_4 ;
  input [3:0]\dc_bias_reg[3]_5 ;
  input \dc_bias_reg[3]_i_4_0 ;
  input \dc_bias_reg[2]_0 ;
  input \dc_bias_reg[3]_6 ;
  input \dc_bias_reg[2]_1 ;
  input \dc_bias_reg[2]_2 ;
  input \dc_bias_reg[3]_7 ;
  input \dc_bias_reg[1]_0 ;
  input [23:0]g_rgb;

  wire [7:0]Blue;
  wire [3:0]D;
  wire [7:1]Green;
  wire [3:0]Q;
  wire [7:1]Red;
  wire clk_vga;
  wire \dc_bias[0]_i_2__0_n_0 ;
  wire \dc_bias[0]_i_2__1_n_0 ;
  wire \dc_bias[0]_i_3__0_n_0 ;
  wire \dc_bias[0]_i_3__1_n_0 ;
  wire \dc_bias[0]_i_3_n_0 ;
  wire \dc_bias[0]_i_4__0_n_0 ;
  wire \dc_bias[0]_i_4__1_n_0 ;
  wire \dc_bias[0]_i_4_n_0 ;
  wire \dc_bias[0]_i_5__0_n_0 ;
  wire \dc_bias[0]_i_5__1_n_0 ;
  wire \dc_bias[0]_i_5_n_0 ;
  wire \dc_bias[0]_i_6_n_0 ;
  wire \dc_bias[0]_i_7_n_0 ;
  wire \dc_bias[0]_i_8_n_0 ;
  wire \dc_bias[1]_i_10__0_n_0 ;
  wire \dc_bias[1]_i_10__1_n_0 ;
  wire \dc_bias[1]_i_10_n_0 ;
  wire \dc_bias[1]_i_11__0_n_0 ;
  wire \dc_bias[1]_i_11__1_n_0 ;
  wire \dc_bias[1]_i_11_n_0 ;
  wire \dc_bias[1]_i_12__0_n_0 ;
  wire \dc_bias[1]_i_12_n_0 ;
  wire \dc_bias[1]_i_13_n_0 ;
  wire \dc_bias[1]_i_2__0_n_0 ;
  wire \dc_bias[1]_i_2__1_n_0 ;
  wire \dc_bias[1]_i_2_n_0 ;
  wire \dc_bias[1]_i_3__0_n_0 ;
  wire \dc_bias[1]_i_3__1_n_0 ;
  wire \dc_bias[1]_i_3_n_0 ;
  wire \dc_bias[1]_i_4__0_n_0 ;
  wire \dc_bias[1]_i_4__1_n_0 ;
  wire \dc_bias[1]_i_4_n_0 ;
  wire \dc_bias[1]_i_5__0_n_0 ;
  wire \dc_bias[1]_i_5__1_n_0 ;
  wire \dc_bias[1]_i_5_n_0 ;
  wire \dc_bias[1]_i_6__0_n_0 ;
  wire \dc_bias[1]_i_6__1_n_0 ;
  wire \dc_bias[1]_i_6_n_0 ;
  wire \dc_bias[1]_i_7__0_n_0 ;
  wire \dc_bias[1]_i_7__1_n_0 ;
  wire \dc_bias[1]_i_7_n_0 ;
  wire \dc_bias[1]_i_8__0_n_0 ;
  wire \dc_bias[1]_i_8__1_n_0 ;
  wire \dc_bias[1]_i_8_n_0 ;
  wire \dc_bias[1]_i_9__0_n_0 ;
  wire \dc_bias[1]_i_9__1_n_0 ;
  wire \dc_bias[1]_i_9_n_0 ;
  wire \dc_bias[2]_i_10__0_n_0 ;
  wire \dc_bias[2]_i_11__0_n_0 ;
  wire \dc_bias[2]_i_11_n_0 ;
  wire \dc_bias[2]_i_12__0_n_0 ;
  wire \dc_bias[2]_i_12_n_0 ;
  wire \dc_bias[2]_i_13__0_n_0 ;
  wire \dc_bias[2]_i_13_n_0 ;
  wire \dc_bias[2]_i_14__0_n_0 ;
  wire \dc_bias[2]_i_14_n_0 ;
  wire \dc_bias[2]_i_15__0_n_0 ;
  wire \dc_bias[2]_i_15_n_0 ;
  wire \dc_bias[2]_i_16__0_n_0 ;
  wire \dc_bias[2]_i_16_n_0 ;
  wire \dc_bias[2]_i_17__0_n_0 ;
  wire \dc_bias[2]_i_17_n_0 ;
  wire \dc_bias[2]_i_18__0_n_0 ;
  wire \dc_bias[2]_i_19__0_n_0 ;
  wire \dc_bias[2]_i_19_n_0 ;
  wire \dc_bias[2]_i_20__0_n_0 ;
  wire \dc_bias[2]_i_20_n_0 ;
  wire \dc_bias[2]_i_21_n_0 ;
  wire \dc_bias[2]_i_24_n_0 ;
  wire \dc_bias[2]_i_25_n_0 ;
  wire \dc_bias[2]_i_26_n_0 ;
  wire \dc_bias[2]_i_2__0_n_0 ;
  wire \dc_bias[2]_i_2__1_n_0 ;
  wire \dc_bias[2]_i_2_n_0 ;
  wire \dc_bias[2]_i_3_n_0 ;
  wire \dc_bias[2]_i_4__0_n_0 ;
  wire \dc_bias[2]_i_4__1_n_0 ;
  wire \dc_bias[2]_i_4_n_0 ;
  wire \dc_bias[2]_i_5__0_n_0 ;
  wire \dc_bias[2]_i_5_n_0 ;
  wire \dc_bias[2]_i_6__0_n_0 ;
  wire \dc_bias[2]_i_6_n_0 ;
  wire \dc_bias[2]_i_7__0_n_0 ;
  wire \dc_bias[2]_i_7__1_n_0 ;
  wire \dc_bias[2]_i_8__0_n_0 ;
  wire \dc_bias[2]_i_8_n_0 ;
  wire \dc_bias[2]_i_9__0_n_0 ;
  wire \dc_bias[3]_i_10__0_n_0 ;
  wire \dc_bias[3]_i_10__1_n_0 ;
  wire \dc_bias[3]_i_10_n_0 ;
  wire \dc_bias[3]_i_11__0_n_0 ;
  wire \dc_bias[3]_i_11__1_n_0 ;
  wire \dc_bias[3]_i_11_n_0 ;
  wire \dc_bias[3]_i_12__1_n_0 ;
  wire \dc_bias[3]_i_12_n_0 ;
  wire \dc_bias[3]_i_13__0_n_0 ;
  wire \dc_bias[3]_i_13_n_0 ;
  wire \dc_bias[3]_i_14__1_n_0 ;
  wire \dc_bias[3]_i_14_n_0 ;
  wire \dc_bias[3]_i_15__0_n_0 ;
  wire \dc_bias[3]_i_15__1_n_0 ;
  wire \dc_bias[3]_i_15_n_0 ;
  wire \dc_bias[3]_i_16__0_n_0 ;
  wire \dc_bias[3]_i_16_n_0 ;
  wire \dc_bias[3]_i_17__0_n_0 ;
  wire \dc_bias[3]_i_18__0_n_0 ;
  wire \dc_bias[3]_i_18_n_0 ;
  wire \dc_bias[3]_i_19__0_n_0 ;
  wire \dc_bias[3]_i_19_n_0 ;
  wire \dc_bias[3]_i_20__0_n_0 ;
  wire \dc_bias[3]_i_20_n_0 ;
  wire \dc_bias[3]_i_21__0_n_0 ;
  wire \dc_bias[3]_i_21_n_0 ;
  wire \dc_bias[3]_i_22__0_n_0 ;
  wire \dc_bias[3]_i_23__0_n_0 ;
  wire \dc_bias[3]_i_24__0_n_0 ;
  wire \dc_bias[3]_i_24_n_0 ;
  wire \dc_bias[3]_i_25__0_n_0 ;
  wire \dc_bias[3]_i_25_n_0 ;
  wire \dc_bias[3]_i_26__0_n_0 ;
  wire \dc_bias[3]_i_26_n_0 ;
  wire \dc_bias[3]_i_27_n_0 ;
  wire \dc_bias[3]_i_28__0_n_0 ;
  wire \dc_bias[3]_i_29__0_n_0 ;
  wire \dc_bias[3]_i_2__0_n_0 ;
  wire \dc_bias[3]_i_2__1_n_0 ;
  wire \dc_bias[3]_i_30__0_n_0 ;
  wire \dc_bias[3]_i_33_n_0 ;
  wire \dc_bias[3]_i_34_n_0 ;
  wire \dc_bias[3]_i_3_n_0 ;
  wire \dc_bias[3]_i_4__0_n_0 ;
  wire \dc_bias[3]_i_4_n_0 ;
  wire \dc_bias[3]_i_5__1_n_0 ;
  wire \dc_bias[3]_i_6__0_n_0 ;
  wire \dc_bias[3]_i_6__1_n_0 ;
  wire \dc_bias[3]_i_7__0_n_0 ;
  wire \dc_bias[3]_i_7__1_n_0 ;
  wire \dc_bias[3]_i_7_n_0 ;
  wire \dc_bias[3]_i_8__0_n_0 ;
  wire \dc_bias[3]_i_8__1_n_0 ;
  wire \dc_bias[3]_i_8_n_0 ;
  wire \dc_bias[3]_i_9__0_n_0 ;
  wire \dc_bias[3]_i_9__1_n_0 ;
  wire \dc_bias[3]_i_9_n_0 ;
  wire \dc_bias_reg[0] ;
  wire \dc_bias_reg[1] ;
  wire \dc_bias_reg[1]_0 ;
  wire [3:0]\dc_bias_reg[2] ;
  wire \dc_bias_reg[2]_0 ;
  wire \dc_bias_reg[2]_1 ;
  wire \dc_bias_reg[2]_2 ;
  wire \dc_bias_reg[3] ;
  wire \dc_bias_reg[3]_0 ;
  wire \dc_bias_reg[3]_1 ;
  wire [3:0]\dc_bias_reg[3]_2 ;
  wire \dc_bias_reg[3]_3 ;
  wire [3:0]\dc_bias_reg[3]_4 ;
  wire [3:0]\dc_bias_reg[3]_5 ;
  wire \dc_bias_reg[3]_6 ;
  wire \dc_bias_reg[3]_7 ;
  wire \dc_bias_reg[3]_i_3_n_0 ;
  wire \dc_bias_reg[3]_i_4_0 ;
  wire \dc_bias_reg[3]_i_4_n_0 ;
  wire \encoded[1]_i_2_n_0 ;
  wire \encoded[3]_i_2__0_n_0 ;
  wire \encoded[3]_i_2__1_n_0 ;
  wire \encoded[3]_i_2_n_0 ;
  wire \encoded[4]_i_2_n_0 ;
  wire \encoded[5]_i_2__0_n_0 ;
  wire \encoded[5]_i_2__1_n_0 ;
  wire \encoded[5]_i_2_n_0 ;
  wire \encoded[6]_i_2__0_n_0 ;
  wire \encoded[6]_i_2_n_0 ;
  wire \encoded[6]_i_3_n_0 ;
  wire \encoded[7]_i_2__1_n_0 ;
  wire \encoded[7]_i_4_n_0 ;
  wire \encoded[7]_i_5_n_0 ;
  wire \encoded[7]_i_6_n_0 ;
  wire \encoded[7]_i_7_n_0 ;
  wire eqOp;
  wire [23:0]g_rgb;
  wire geqOp;
  wire geqOp1_in;
  wire geqOp_carry__0_i_1_n_0;
  wire geqOp_carry__0_i_2_n_0;
  wire geqOp_carry__0_i_3_n_0;
  wire geqOp_carry__0_i_4_n_0;
  wire geqOp_carry__0_n_3;
  wire geqOp_carry_i_1_n_0;
  wire geqOp_carry_i_2_n_0;
  wire geqOp_carry_i_3_n_0;
  wire geqOp_carry_i_4_n_0;
  wire geqOp_carry_i_5_n_0;
  wire geqOp_carry_i_6_n_0;
  wire geqOp_carry_i_7_n_0;
  wire geqOp_carry_n_0;
  wire geqOp_carry_n_1;
  wire geqOp_carry_n_2;
  wire geqOp_carry_n_3;
  wire \geqOp_inferred__0/i__carry__0_n_3 ;
  wire \geqOp_inferred__0/i__carry_n_0 ;
  wire \geqOp_inferred__0/i__carry_n_1 ;
  wire \geqOp_inferred__0/i__carry_n_2 ;
  wire \geqOp_inferred__0/i__carry_n_3 ;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_1__1_n_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_2__1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_3__1_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_4__1_n_0;
  wire i__carry_i_4_n_0;
  wire i__carry_i_5__0_n_0;
  wire i__carry_i_5__1_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6__0_n_0;
  wire i__carry_i_6__1_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7__0_n_0;
  wire i__carry_i_7__1_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire ltOp;
  wire ltOp0_in;
  wire ltOp2_in;
  wire ltOp3_in;
  wire \ltOp_inferred__1/i__carry_n_1 ;
  wire \ltOp_inferred__1/i__carry_n_2 ;
  wire \ltOp_inferred__1/i__carry_n_3 ;
  wire \ltOp_inferred__2/i__carry_n_0 ;
  wire \ltOp_inferred__2/i__carry_n_1 ;
  wire \ltOp_inferred__2/i__carry_n_2 ;
  wire \ltOp_inferred__2/i__carry_n_3 ;
  wire \n[h_v] ;
  wire \n[vCounter] ;
  wire \n[vSync] ;
  wire [11:0]out;
  wire [0:0]p_1_in;
  wire \r[hCounter][11]_i_3_n_0 ;
  wire \r[hCounter][11]_i_4_n_0 ;
  wire \r[hCounter][3]_i_2_n_0 ;
  wire \r[hSync]_i_1_n_0 ;
  wire \r[h_v]_i_10_n_0 ;
  wire \r[h_v]_i_11_n_0 ;
  wire \r[h_v]_i_12_n_0 ;
  wire \r[h_v]_i_13_n_0 ;
  wire \r[h_v]_i_14_n_0 ;
  wire \r[h_v]_i_15_n_0 ;
  wire \r[h_v]_i_4_n_0 ;
  wire \r[h_v]_i_5_n_0 ;
  wire \r[h_v]_i_6_n_0 ;
  wire \r[h_v]_i_7_n_0 ;
  wire \r[h_v]_i_8_n_0 ;
  wire \r[h_v]_i_9_n_0 ;
  wire \r[red][7]_i_1_n_0 ;
  wire \r[vCounter][11]_i_3_n_0 ;
  wire \r[vCounter][11]_i_4_n_0 ;
  wire \r[vCounter][3]_i_2_n_0 ;
  wire [0:0]\r_reg[blank]_0 ;
  wire \r_reg[blue][0]_0 ;
  wire \r_reg[blue][0]_1 ;
  wire \r_reg[blue][0]_2 ;
  wire \r_reg[blue][4]_0 ;
  wire \r_reg[blue][7]_0 ;
  wire \r_reg[blue][7]_1 ;
  wire \r_reg[green][0]_0 ;
  wire [0:0]\r_reg[green][0]_1 ;
  wire \r_reg[green][0]_2 ;
  wire \r_reg[green][0]_3 ;
  wire \r_reg[green][1]_0 ;
  wire \r_reg[green][1]_1 ;
  wire \r_reg[green][3]_0 ;
  wire \r_reg[green][4]_0 ;
  wire \r_reg[green][4]_1 ;
  wire \r_reg[green][4]_2 ;
  wire \r_reg[green][4]_3 ;
  wire \r_reg[green][4]_4 ;
  wire \r_reg[green][6]_0 ;
  wire \r_reg[green][6]_1 ;
  wire \r_reg[green][7]_0 ;
  wire \r_reg[green][7]_1 ;
  wire [11:0]\r_reg[hCounter][11]_0 ;
  wire \r_reg[hCounter][11]_i_2_n_1 ;
  wire \r_reg[hCounter][11]_i_2_n_2 ;
  wire \r_reg[hCounter][11]_i_2_n_3 ;
  wire \r_reg[hCounter][11]_i_2_n_4 ;
  wire \r_reg[hCounter][11]_i_2_n_5 ;
  wire \r_reg[hCounter][11]_i_2_n_6 ;
  wire \r_reg[hCounter][11]_i_2_n_7 ;
  wire \r_reg[hCounter][3]_i_1_n_0 ;
  wire \r_reg[hCounter][3]_i_1_n_1 ;
  wire \r_reg[hCounter][3]_i_1_n_2 ;
  wire \r_reg[hCounter][3]_i_1_n_3 ;
  wire \r_reg[hCounter][3]_i_1_n_4 ;
  wire \r_reg[hCounter][3]_i_1_n_5 ;
  wire \r_reg[hCounter][3]_i_1_n_6 ;
  wire \r_reg[hCounter][3]_i_1_n_7 ;
  wire \r_reg[hCounter][7]_i_1_n_0 ;
  wire \r_reg[hCounter][7]_i_1_n_1 ;
  wire \r_reg[hCounter][7]_i_1_n_2 ;
  wire \r_reg[hCounter][7]_i_1_n_3 ;
  wire \r_reg[hCounter][7]_i_1_n_4 ;
  wire \r_reg[hCounter][7]_i_1_n_5 ;
  wire \r_reg[hCounter][7]_i_1_n_6 ;
  wire \r_reg[hCounter][7]_i_1_n_7 ;
  wire \r_reg[hSync] ;
  wire [7:0]\r_reg[hSync]__0_0 ;
  wire \r_reg[h_v]_i_2_n_2 ;
  wire \r_reg[h_v]_i_2_n_3 ;
  wire \r_reg[h_v]_i_3_n_1 ;
  wire \r_reg[h_v]_i_3_n_2 ;
  wire \r_reg[h_v]_i_3_n_3 ;
  wire \r_reg[red][0]_0 ;
  wire [0:0]\r_reg[red][0]_1 ;
  wire \r_reg[red][0]_2 ;
  wire \r_reg[red][0]_3 ;
  wire \r_reg[red][1]_0 ;
  wire \r_reg[red][1]_1 ;
  wire \r_reg[red][3]_0 ;
  wire \r_reg[red][4]_0 ;
  wire \r_reg[red][4]_1 ;
  wire \r_reg[red][5]_0 ;
  wire \r_reg[red][5]_1 ;
  wire \r_reg[red][6]_0 ;
  wire \r_reg[red][6]_1 ;
  wire \r_reg[red][7]_0 ;
  wire \r_reg[red][7]_1 ;
  wire \r_reg[vCounter][11]_i_2_n_1 ;
  wire \r_reg[vCounter][11]_i_2_n_2 ;
  wire \r_reg[vCounter][11]_i_2_n_3 ;
  wire \r_reg[vCounter][11]_i_2_n_4 ;
  wire \r_reg[vCounter][11]_i_2_n_5 ;
  wire \r_reg[vCounter][11]_i_2_n_6 ;
  wire \r_reg[vCounter][11]_i_2_n_7 ;
  wire \r_reg[vCounter][3]_i_1_n_0 ;
  wire \r_reg[vCounter][3]_i_1_n_1 ;
  wire \r_reg[vCounter][3]_i_1_n_2 ;
  wire \r_reg[vCounter][3]_i_1_n_3 ;
  wire \r_reg[vCounter][3]_i_1_n_4 ;
  wire \r_reg[vCounter][3]_i_1_n_5 ;
  wire \r_reg[vCounter][3]_i_1_n_6 ;
  wire \r_reg[vCounter][3]_i_1_n_7 ;
  wire \r_reg[vCounter][7]_i_1_n_0 ;
  wire \r_reg[vCounter][7]_i_1_n_1 ;
  wire \r_reg[vCounter][7]_i_1_n_2 ;
  wire \r_reg[vCounter][7]_i_1_n_3 ;
  wire \r_reg[vCounter][7]_i_1_n_4 ;
  wire \r_reg[vCounter][7]_i_1_n_5 ;
  wire \r_reg[vCounter][7]_i_1_n_6 ;
  wire \r_reg[vCounter][7]_i_1_n_7 ;
  wire \r_reg[vSync] ;
  wire v_video;
  wire [3:0]NLW_geqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_geqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_geqOp_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:2]\NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[hCounter][11]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[h_v]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[h_v]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_r_reg[h_v]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_r_reg[vCounter][11]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h906F6F90)) 
    \dc_bias[0]_i_1 
       (.I0(\dc_bias_reg[3] ),
        .I1(\r_reg[red][7]_0 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(Q[0]),
        .I4(\dc_bias[0]_i_3__0_n_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h6F60606F)) 
    \dc_bias[0]_i_1__0 
       (.I0(\dc_bias_reg[3]_0 ),
        .I1(\dc_bias[0]_i_2__0_n_0 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_4 [0]),
        .I4(\dc_bias[0]_i_3__1_n_0 ),
        .O(\dc_bias_reg[3]_2 [0]));
  LUT6 #(
    .INIT(64'h6F60606F606F6F60)) 
    \dc_bias[0]_i_1__1 
       (.I0(\dc_bias_reg[3]_5 [0]),
        .I1(\dc_bias[0]_i_2__1_n_0 ),
        .I2(\dc_bias_reg[0] ),
        .I3(\dc_bias_reg[3]_1 ),
        .I4(\dc_bias[0]_i_3_n_0 ),
        .I5(\dc_bias[0]_i_4__1_n_0 ),
        .O(\dc_bias_reg[2] [0]));
  LUT6 #(
    .INIT(64'h044504455555555D)) 
    \dc_bias[0]_i_2 
       (.I0(\dc_bias[0]_i_4_n_0 ),
        .I1(\dc_bias[0]_i_5__0_n_0 ),
        .I2(\dc_bias[0]_i_6_n_0 ),
        .I3(Red[7]),
        .I4(\r_reg[red][0]_1 ),
        .I5(\dc_bias[0]_i_7_n_0 ),
        .O(\r_reg[red][7]_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dc_bias[0]_i_2__0 
       (.I0(\r_reg[green][0]_1 ),
        .I1(\dc_bias_reg[3]_4 [0]),
        .I2(\r_reg[green][6]_0 ),
        .I3(\dc_bias[3]_i_19_n_0 ),
        .I4(Green[6]),
        .I5(\encoded[4]_i_2_n_0 ),
        .O(\dc_bias[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[0]_i_2__1 
       (.I0(Blue[0]),
        .I1(\encoded[7]_i_2__1_n_0 ),
        .I2(\dc_bias[0]_i_5_n_0 ),
        .I3(\encoded[5]_i_2__1_n_0 ),
        .I4(\dc_bias[2]_i_14__0_n_0 ),
        .O(\dc_bias[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[0]_i_3 
       (.I0(\encoded[3]_i_2__1_n_0 ),
        .I1(Blue[5]),
        .I2(Blue[0]),
        .I3(\dc_bias_reg[3]_5 [0]),
        .I4(Blue[7]),
        .O(\dc_bias[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \dc_bias[0]_i_3__0 
       (.I0(\dc_bias[2]_i_11_n_0 ),
        .I1(\r_reg[red][0]_1 ),
        .I2(\dc_bias[0]_i_8_n_0 ),
        .I3(\encoded[5]_i_2_n_0 ),
        .I4(Red[6]),
        .O(\dc_bias[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[0]_i_3__1 
       (.I0(\dc_bias[3]_i_19_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(Green[7]),
        .I3(\dc_bias[0]_i_4__0_n_0 ),
        .I4(\dc_bias[0]_i_5__1_n_0 ),
        .O(\dc_bias[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \dc_bias[0]_i_4 
       (.I0(Red[2]),
        .I1(Red[3]),
        .I2(Red[1]),
        .I3(Red[5]),
        .I4(Red[6]),
        .I5(Red[4]),
        .O(\dc_bias[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dc_bias[0]_i_4__0 
       (.I0(Green[6]),
        .I1(Green[5]),
        .I2(\encoded[3]_i_2__0_n_0 ),
        .I3(Green[2]),
        .I4(Green[3]),
        .I5(Green[4]),
        .O(\dc_bias[0]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \dc_bias[0]_i_4__1 
       (.I0(Blue[2]),
        .I1(\r_reg[blue][7]_0 ),
        .O(\dc_bias[0]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[0]_i_5 
       (.I0(Blue[5]),
        .I1(Blue[6]),
        .O(\dc_bias[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[0]_i_5__0 
       (.I0(Red[1]),
        .I1(Red[3]),
        .I2(Red[2]),
        .O(\dc_bias[0]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dc_bias[0]_i_5__1 
       (.I0(Green[6]),
        .I1(Green[3]),
        .I2(Green[2]),
        .I3(\r_reg[green][0]_1 ),
        .I4(Green[1]),
        .I5(Green[4]),
        .O(\dc_bias[0]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[0]_i_6 
       (.I0(Red[4]),
        .I1(Red[6]),
        .I2(Red[5]),
        .O(\dc_bias[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE8FFE8E8E8)) 
    \dc_bias[0]_i_7 
       (.I0(Red[2]),
        .I1(Red[3]),
        .I2(Red[1]),
        .I3(Red[5]),
        .I4(Red[6]),
        .I5(Red[4]),
        .O(\dc_bias[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \dc_bias[0]_i_8 
       (.I0(Red[7]),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(Red[5]),
        .I3(Red[6]),
        .O(\dc_bias[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dc_bias[1]_i_1 
       (.I0(\dc_bias[1]_i_2_n_0 ),
        .I1(\dc_bias_reg[3] ),
        .I2(\dc_bias[1]_i_3_n_0 ),
        .I3(\dc_bias_reg[3]_3 ),
        .I4(\dc_bias[1]_i_4_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h8E71718E)) 
    \dc_bias[1]_i_10 
       (.I0(Q[0]),
        .I1(\r_reg[red][0]_1 ),
        .I2(\r_reg[red][6]_0 ),
        .I3(\r_reg[red][5]_0 ),
        .I4(Q[1]),
        .O(\dc_bias[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \dc_bias[1]_i_10__0 
       (.I0(\dc_bias_reg[3]_4 [0]),
        .I1(\dc_bias[0]_i_5__1_n_0 ),
        .I2(\dc_bias[1]_i_12__0_n_0 ),
        .I3(\r_reg[green][0]_1 ),
        .I4(\dc_bias[3]_i_19_n_0 ),
        .O(\dc_bias[1]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_10__1 
       (.I0(Blue[0]),
        .I1(Blue[1]),
        .I2(\r_reg[blue][7]_0 ),
        .O(\dc_bias[1]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'h6A95956A956A6A95)) 
    \dc_bias[1]_i_11 
       (.I0(\dc_bias_reg[3]_4 [1]),
        .I1(\dc_bias[3]_i_19_n_0 ),
        .I2(\dc_bias[3]_i_18__0_n_0 ),
        .I3(\dc_bias[3]_i_20_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\dc_bias[1]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \dc_bias[1]_i_11__0 
       (.I0(Q[0]),
        .I1(\dc_bias[1]_i_13_n_0 ),
        .I2(\dc_bias[0]_i_8_n_0 ),
        .I3(\r_reg[red][0]_1 ),
        .I4(\dc_bias[2]_i_11_n_0 ),
        .O(\dc_bias[1]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_11__1 
       (.I0(Blue[2]),
        .I1(Blue[0]),
        .I2(Blue[1]),
        .O(\dc_bias[1]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996699669)) 
    \dc_bias[1]_i_12 
       (.I0(Q[1]),
        .I1(\r_reg[red][5]_0 ),
        .I2(\dc_bias[2]_i_8_n_0 ),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_10__0_n_0 ),
        .I5(\dc_bias[2]_i_11_n_0 ),
        .O(\dc_bias[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \dc_bias[1]_i_12__0 
       (.I0(Green[7]),
        .I1(Green[4]),
        .I2(\encoded[5]_i_2__0_n_0 ),
        .I3(Green[6]),
        .O(\dc_bias[1]_i_12__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dc_bias[1]_i_13 
       (.I0(Red[6]),
        .I1(Red[3]),
        .I2(Red[2]),
        .I3(\r_reg[red][0]_1 ),
        .I4(Red[1]),
        .I5(Red[4]),
        .O(\dc_bias[1]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dc_bias[1]_i_1__0 
       (.I0(\dc_bias[1]_i_2__0_n_0 ),
        .I1(\dc_bias_reg[3]_0 ),
        .I2(\dc_bias[1]_i_3__0_n_0 ),
        .I3(\dc_bias_reg[1] ),
        .I4(\dc_bias[1]_i_4__0_n_0 ),
        .O(\dc_bias_reg[3]_2 [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \dc_bias[1]_i_1__1 
       (.I0(\dc_bias[1]_i_2__1_n_0 ),
        .I1(\dc_bias_reg[0] ),
        .I2(\dc_bias[1]_i_3__1_n_0 ),
        .I3(\dc_bias_reg[3]_1 ),
        .I4(\dc_bias[1]_i_4__1_n_0 ),
        .O(\dc_bias_reg[2] [1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hC36996C3)) 
    \dc_bias[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\dc_bias[2]_i_7__1_n_0 ),
        .I3(\dc_bias[0]_i_3__0_n_0 ),
        .I4(\r_reg[red][7]_0 ),
        .O(\dc_bias[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9A595965A69A9A59)) 
    \dc_bias[1]_i_2__0 
       (.I0(\dc_bias[3]_i_16__0_n_0 ),
        .I1(\encoded[5]_i_2__0_n_0 ),
        .I2(\dc_bias[1]_i_5__0_n_0 ),
        .I3(Green[7]),
        .I4(\dc_bias[1]_i_6__1_n_0 ),
        .I5(\dc_bias[1]_i_7__1_n_0 ),
        .O(\dc_bias[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h69FF6900690069FF)) 
    \dc_bias[1]_i_2__1 
       (.I0(\dc_bias[1]_i_5__1_n_0 ),
        .I1(\dc_bias[1]_i_6_n_0 ),
        .I2(\dc_bias[2]_i_11__0_n_0 ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(\dc_bias[3]_i_15__1_n_0 ),
        .I5(\dc_bias[1]_i_7__0_n_0 ),
        .O(\dc_bias[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h781EE1781E87781E)) 
    \dc_bias[1]_i_3 
       (.I0(\dc_bias[1]_i_5_n_0 ),
        .I1(\dc_bias[1]_i_6__0_n_0 ),
        .I2(\dc_bias[2]_i_14_n_0 ),
        .I3(\dc_bias[1]_i_7_n_0 ),
        .I4(Red[7]),
        .I5(\dc_bias[1]_i_8_n_0 ),
        .O(\dc_bias[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h96666669)) 
    \dc_bias[1]_i_3__0 
       (.I0(\dc_bias[2]_i_6__0_n_0 ),
        .I1(\dc_bias_reg[3]_4 [1]),
        .I2(\r_reg[green][7]_0 ),
        .I3(\dc_bias[0]_i_3__1_n_0 ),
        .I4(\dc_bias_reg[3]_4 [0]),
        .O(\dc_bias[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h66966966)) 
    \dc_bias[1]_i_3__1 
       (.I0(\r_reg[blue][0]_0 ),
        .I1(\dc_bias_reg[3]_5 [1]),
        .I2(\r_reg[blue][7]_0 ),
        .I3(\dc_bias[0]_i_2__1_n_0 ),
        .I4(\dc_bias_reg[3]_5 [0]),
        .O(\dc_bias[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h960096FF96FF9600)) 
    \dc_bias[1]_i_4 
       (.I0(\dc_bias[1]_i_9_n_0 ),
        .I1(\dc_bias[1]_i_10_n_0 ),
        .I2(\dc_bias[2]_i_8_n_0 ),
        .I3(\r_reg[red][7]_0 ),
        .I4(\dc_bias[1]_i_11__0_n_0 ),
        .I5(\dc_bias[1]_i_12_n_0 ),
        .O(\dc_bias[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h690069FF69FF6900)) 
    \dc_bias[1]_i_4__0 
       (.I0(\dc_bias[1]_i_8__0_n_0 ),
        .I1(\dc_bias[1]_i_9__0_n_0 ),
        .I2(\dc_bias[3]_i_21_n_0 ),
        .I3(\r_reg[green][7]_0 ),
        .I4(\dc_bias[1]_i_10__0_n_0 ),
        .I5(\dc_bias[1]_i_11_n_0 ),
        .O(\dc_bias[1]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A69A596565A6)) 
    \dc_bias[1]_i_4__1 
       (.I0(\dc_bias[2]_i_17__0_n_0 ),
        .I1(\dc_bias[1]_i_8__1_n_0 ),
        .I2(Blue[7]),
        .I3(\dc_bias[1]_i_9__1_n_0 ),
        .I4(\dc_bias[1]_i_10__1_n_0 ),
        .I5(\dc_bias[1]_i_11__1_n_0 ),
        .O(\dc_bias[1]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[1]_i_5 
       (.I0(\r_reg[red][0]_1 ),
        .I1(Red[1]),
        .I2(\r_reg[red][7]_0 ),
        .O(\dc_bias[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[1]_i_5__0 
       (.I0(\r_reg[green][0]_1 ),
        .I1(\dc_bias_reg[3]_4 [0]),
        .O(\dc_bias[1]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6F99F06609009)) 
    \dc_bias[1]_i_5__1 
       (.I0(\encoded[5]_i_2__1_n_0 ),
        .I1(\dc_bias[0]_i_5_n_0 ),
        .I2(\dc_bias[1]_i_9__1_n_0 ),
        .I3(\encoded[7]_i_2__1_n_0 ),
        .I4(\r_reg[blue][7]_0 ),
        .I5(\dc_bias[2]_i_14__0_n_0 ),
        .O(\dc_bias[1]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \dc_bias[1]_i_6 
       (.I0(\dc_bias[3]_i_25__0_n_0 ),
        .I1(\dc_bias_reg[3]_5 [0]),
        .I2(Blue[0]),
        .I3(\dc_bias[2]_i_12__0_n_0 ),
        .I4(\dc_bias_reg[3]_5 [1]),
        .O(\dc_bias[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_6__0 
       (.I0(Red[2]),
        .I1(\r_reg[red][0]_1 ),
        .I2(Red[1]),
        .O(\dc_bias[1]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_6__1 
       (.I0(Green[2]),
        .I1(\r_reg[green][0]_1 ),
        .I2(Green[1]),
        .O(\dc_bias[1]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[1]_i_7 
       (.I0(Red[5]),
        .I1(Red[1]),
        .I2(\r_reg[red][0]_1 ),
        .I3(Red[2]),
        .I4(Red[3]),
        .O(\dc_bias[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669966996)) 
    \dc_bias[1]_i_7__0 
       (.I0(\dc_bias_reg[3]_5 [1]),
        .I1(\dc_bias[2]_i_11__0_n_0 ),
        .I2(\dc_bias[2]_i_12__0_n_0 ),
        .I3(\dc_bias[2]_i_13__0_n_0 ),
        .I4(\dc_bias[2]_i_15__0_n_0 ),
        .I5(\dc_bias[2]_i_14__0_n_0 ),
        .O(\dc_bias[1]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[1]_i_7__1 
       (.I0(\r_reg[green][0]_1 ),
        .I1(Green[1]),
        .I2(\r_reg[green][7]_0 ),
        .O(\dc_bias[1]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[1]_i_8 
       (.I0(\r_reg[red][0]_1 ),
        .I1(Q[0]),
        .O(\dc_bias[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8D1D1B8D1B8B8D1)) 
    \dc_bias[1]_i_8__0 
       (.I0(\r_reg[green][7]_0 ),
        .I1(\dc_bias[0]_i_5__1_n_0 ),
        .I2(\dc_bias[3]_i_19_n_0 ),
        .I3(\dc_bias[1]_i_12__0_n_0 ),
        .I4(\dc_bias_reg[3]_4 [0]),
        .I5(\r_reg[green][0]_1 ),
        .O(\dc_bias[1]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[1]_i_8__1 
       (.I0(Blue[5]),
        .I1(Blue[1]),
        .I2(Blue[0]),
        .I3(Blue[2]),
        .I4(Blue[3]),
        .O(\dc_bias[1]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h9F06F690F6909F06)) 
    \dc_bias[1]_i_9 
       (.I0(Red[6]),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(\r_reg[red][7]_0 ),
        .I3(\dc_bias[2]_i_11_n_0 ),
        .I4(\dc_bias[0]_i_8_n_0 ),
        .I5(\dc_bias[1]_i_8_n_0 ),
        .O(\dc_bias[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h599AA665)) 
    \dc_bias[1]_i_9__0 
       (.I0(\r_reg[green][4]_0 ),
        .I1(\r_reg[green][6]_0 ),
        .I2(\dc_bias_reg[3]_4 [0]),
        .I3(\r_reg[green][0]_1 ),
        .I4(\dc_bias_reg[3]_4 [1]),
        .O(\dc_bias[1]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dc_bias[1]_i_9__1 
       (.I0(Blue[0]),
        .I1(\dc_bias_reg[3]_5 [0]),
        .O(\dc_bias[1]_i_9__1_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \dc_bias[2]_i_1 
       (.I0(\dc_bias[2]_i_2_n_0 ),
        .I1(\dc_bias_reg[3] ),
        .I2(\dc_bias[2]_i_4_n_0 ),
        .I3(\dc_bias_reg[3]_3 ),
        .I4(\dc_bias[2]_i_5_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_10__0 
       (.I0(Red[5]),
        .I1(Red[7]),
        .I2(\r_reg[red][0]_1 ),
        .O(\dc_bias[2]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_11 
       (.I0(Red[3]),
        .I1(\r_reg[red][0]_1 ),
        .I2(Red[1]),
        .O(\dc_bias[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h693CC369)) 
    \dc_bias[2]_i_11__0 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(Blue[1]),
        .I2(Blue[0]),
        .I3(Blue[2]),
        .I4(Blue[3]),
        .O(\dc_bias[2]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hCA3AACA33ACAA3AC)) 
    \dc_bias[2]_i_12 
       (.I0(\r_reg[red][0]_1 ),
        .I1(\r_reg[red][7]_0 ),
        .I2(Red[7]),
        .I3(\encoded[5]_i_2_n_0 ),
        .I4(Red[5]),
        .I5(Red[6]),
        .O(\dc_bias[2]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \dc_bias[2]_i_12__0 
       (.I0(\encoded[6]_i_2__0_n_0 ),
        .I1(Blue[5]),
        .I2(\r_reg[blue][7]_0 ),
        .I3(Blue[6]),
        .O(\dc_bias[2]_i_12__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[2]_i_13 
       (.I0(Red[2]),
        .I1(\r_reg[red][7]_0 ),
        .I2(Red[1]),
        .I3(\r_reg[red][0]_1 ),
        .O(\dc_bias[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h35C5535CC5355C53)) 
    \dc_bias[2]_i_13__0 
       (.I0(Blue[0]),
        .I1(\r_reg[blue][7]_0 ),
        .I2(Blue[7]),
        .I3(\encoded[6]_i_2__0_n_0 ),
        .I4(Blue[5]),
        .I5(Blue[6]),
        .O(\dc_bias[2]_i_13__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969696)) 
    \dc_bias[2]_i_14 
       (.I0(\r_reg[red][4]_1 ),
        .I1(\r_reg[red][7]_1 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg[red][0]_1 ),
        .O(\dc_bias[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_14__0 
       (.I0(Blue[3]),
        .I1(Blue[0]),
        .I2(Blue[1]),
        .O(\dc_bias[2]_i_14__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h066F6F06)) 
    \dc_bias[2]_i_15 
       (.I0(\dc_bias[2]_i_24_n_0 ),
        .I1(Red[5]),
        .I2(Red[7]),
        .I3(\r_reg[red][0]_1 ),
        .I4(Q[0]),
        .O(\dc_bias[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[2]_i_15__0 
       (.I0(Blue[5]),
        .I1(Blue[7]),
        .I2(Blue[0]),
        .O(\dc_bias[2]_i_15__0_n_0 ));
  LUT6 #(
    .INIT(64'h9009099009909009)) 
    \dc_bias[2]_i_16 
       (.I0(\dc_bias[1]_i_6__0_n_0 ),
        .I1(\dc_bias[1]_i_5_n_0 ),
        .I2(Red[7]),
        .I3(Q[0]),
        .I4(\r_reg[red][0]_1 ),
        .I5(\dc_bias[1]_i_7_n_0 ),
        .O(\dc_bias[2]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hEB7D)) 
    \dc_bias[2]_i_16__0 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(Blue[1]),
        .I2(Blue[0]),
        .I3(Blue[2]),
        .O(\dc_bias[2]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'hD44242422BBDBDBD)) 
    \dc_bias[2]_i_17 
       (.I0(\r_reg[red][4]_1 ),
        .I1(\r_reg[red][7]_1 ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\r_reg[red][0]_1 ),
        .I5(Q[2]),
        .O(\dc_bias[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9696966996696969)) 
    \dc_bias[2]_i_17__0 
       (.I0(\r_reg[blue][4]_0 ),
        .I1(\dc_bias_reg[3]_5 [1]),
        .I2(\r_reg[blue][0]_2 ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(Blue[7]),
        .I5(\dc_bias[2]_i_20__0_n_0 ),
        .O(\dc_bias[2]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \dc_bias[2]_i_18__0 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(Blue[2]),
        .I2(\dc_bias[0]_i_3_n_0 ),
        .O(\dc_bias[2]_i_18__0_n_0 ));
  LUT5 #(
    .INIT(32'h7DD71441)) 
    \dc_bias[2]_i_19 
       (.I0(\dc_bias[1]_i_9_n_0 ),
        .I1(Q[1]),
        .I2(\r_reg[red][5]_0 ),
        .I3(\dc_bias[2]_i_25_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .O(\dc_bias[2]_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h066F6F06)) 
    \dc_bias[2]_i_19__0 
       (.I0(\encoded[3]_i_2__1_n_0 ),
        .I1(Blue[5]),
        .I2(Blue[7]),
        .I3(Blue[0]),
        .I4(\dc_bias_reg[3]_5 [0]),
        .O(\dc_bias[2]_i_19__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \dc_bias[2]_i_1__0 
       (.I0(\dc_bias[2]_i_2__0_n_0 ),
        .I1(\dc_bias_reg[3]_0 ),
        .I2(\dc_bias[2]_i_3_n_0 ),
        .I3(\dc_bias_reg[1] ),
        .I4(\dc_bias[2]_i_4__0_n_0 ),
        .O(\dc_bias_reg[3]_2 [2]));
  LUT6 #(
    .INIT(64'hB88BBBBBB88B8888)) 
    \dc_bias[2]_i_1__1 
       (.I0(\dc_bias[2]_i_2__1_n_0 ),
        .I1(\dc_bias_reg[0] ),
        .I2(\dc_bias[2]_i_4__1_n_0 ),
        .I3(\dc_bias_reg[2]_2 ),
        .I4(\dc_bias_reg[3]_1 ),
        .I5(\dc_bias[2]_i_7__0_n_0 ),
        .O(\dc_bias_reg[2] [2]));
  LUT6 #(
    .INIT(64'hDF20FB04FB0420DF)) 
    \dc_bias[2]_i_2 
       (.I0(Q[0]),
        .I1(\dc_bias[0]_i_3__0_n_0 ),
        .I2(\r_reg[red][7]_0 ),
        .I3(\dc_bias[2]_i_6_n_0 ),
        .I4(\dc_bias[2]_i_7__1_n_0 ),
        .I5(Q[1]),
        .O(\dc_bias[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE88E8EE88EE8E88E)) 
    \dc_bias[2]_i_20 
       (.I0(\dc_bias[1]_i_11__0_n_0 ),
        .I1(Q[1]),
        .I2(\dc_bias[2]_i_26_n_0 ),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\r_reg[red][5]_0 ),
        .O(\dc_bias[2]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[2]_i_20__0 
       (.I0(Blue[6]),
        .I1(Blue[5]),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .O(\dc_bias[2]_i_20__0_n_0 ));
  LUT6 #(
    .INIT(64'h77E7717771771171)) 
    \dc_bias[2]_i_21 
       (.I0(\r_reg[red][5]_0 ),
        .I1(\dc_bias[2]_i_8_n_0 ),
        .I2(\dc_bias[3]_i_10__1_n_0 ),
        .I3(\r_reg[red][6]_0 ),
        .I4(\r_reg[red][0]_1 ),
        .I5(\dc_bias[2]_i_11_n_0 ),
        .O(\dc_bias[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h3CC396699669C33C)) 
    \dc_bias[2]_i_22 
       (.I0(Red[4]),
        .I1(\encoded[3]_i_2_n_0 ),
        .I2(Red[2]),
        .I3(Red[3]),
        .I4(Red[5]),
        .I5(\r_reg[red][7]_0 ),
        .O(\r_reg[red][4]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \dc_bias[2]_i_23 
       (.I0(\r_reg[red][7]_0 ),
        .I1(Red[7]),
        .I2(\encoded[5]_i_2_n_0 ),
        .I3(Red[5]),
        .I4(Red[6]),
        .O(\r_reg[red][7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dc_bias[2]_i_24 
       (.I0(Red[3]),
        .I1(Red[2]),
        .I2(\r_reg[red][0]_1 ),
        .I3(Red[1]),
        .O(\dc_bias[2]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h009696FF)) 
    \dc_bias[2]_i_25 
       (.I0(\encoded[6]_i_2_n_0 ),
        .I1(Red[7]),
        .I2(\r_reg[red][7]_0 ),
        .I3(\r_reg[red][0]_1 ),
        .I4(Q[0]),
        .O(\dc_bias[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h96690000)) 
    \dc_bias[2]_i_26 
       (.I0(\r_reg[red][0]_1 ),
        .I1(\dc_bias[0]_i_8_n_0 ),
        .I2(\encoded[5]_i_2_n_0 ),
        .I3(Red[6]),
        .I4(\dc_bias[2]_i_11_n_0 ),
        .O(\dc_bias[2]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h5A6A6AA5)) 
    \dc_bias[2]_i_2__0 
       (.I0(\dc_bias[3]_i_13_n_0 ),
        .I1(\dc_bias[3]_i_17__0_n_0 ),
        .I2(\dc_bias[3]_i_14_n_0 ),
        .I3(\dc_bias[3]_i_15_n_0 ),
        .I4(\dc_bias[3]_i_16__0_n_0 ),
        .O(\dc_bias[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B8BBBB8B8B88)) 
    \dc_bias[2]_i_2__1 
       (.I0(\dc_bias[2]_i_8__0_n_0 ),
        .I1(\r_reg[blue][7]_0 ),
        .I2(\r_reg[blue][0]_0 ),
        .I3(\dc_bias_reg[3]_5 [1]),
        .I4(\dc_bias[3]_i_15__1_n_0 ),
        .I5(\dc_bias[2]_i_9__0_n_0 ),
        .O(\dc_bias[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h01FE807F7F8001FE)) 
    \dc_bias[2]_i_3 
       (.I0(\dc_bias_reg[3]_4 [0]),
        .I1(\dc_bias[0]_i_3__1_n_0 ),
        .I2(\r_reg[green][7]_0 ),
        .I3(\dc_bias[2]_i_5__0_n_0 ),
        .I4(\dc_bias[2]_i_6__0_n_0 ),
        .I5(\dc_bias_reg[3]_4 [1]),
        .O(\dc_bias[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEBBAAAAAAAAAAEEB)) 
    \dc_bias[2]_i_3__0 
       (.I0(\dc_bias_reg[1]_0 ),
        .I1(\dc_bias[2]_i_11__0_n_0 ),
        .I2(\dc_bias[2]_i_12__0_n_0 ),
        .I3(\dc_bias[2]_i_13__0_n_0 ),
        .I4(\dc_bias[2]_i_14__0_n_0 ),
        .I5(\dc_bias[2]_i_15__0_n_0 ),
        .O(\dc_bias_reg[0] ));
  LUT6 #(
    .INIT(64'h5595959595A9A9A9)) 
    \dc_bias[2]_i_3__1 
       (.I0(Q[3]),
        .I1(\dc_bias[2]_i_8_n_0 ),
        .I2(\r_reg[red][5]_0 ),
        .I3(\dc_bias[2]_i_10__0_n_0 ),
        .I4(\dc_bias[2]_i_11_n_0 ),
        .I5(\dc_bias[2]_i_12_n_0 ),
        .O(\dc_bias_reg[3] ));
  LUT6 #(
    .INIT(64'h00000000422BBDD4)) 
    \dc_bias[2]_i_4 
       (.I0(\dc_bias[2]_i_13_n_0 ),
        .I1(\dc_bias[2]_i_14_n_0 ),
        .I2(\dc_bias[2]_i_15_n_0 ),
        .I3(\dc_bias[2]_i_16_n_0 ),
        .I4(\dc_bias[2]_i_17_n_0 ),
        .I5(\dc_bias_reg[3] ),
        .O(\dc_bias[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9F90909F909F9F90)) 
    \dc_bias[2]_i_4__0 
       (.I0(\dc_bias[3]_i_9__0_n_0 ),
        .I1(\dc_bias_reg[2]_1 ),
        .I2(\r_reg[green][7]_0 ),
        .I3(\dc_bias[3]_i_11__0_n_0 ),
        .I4(\dc_bias[3]_i_10_n_0 ),
        .I5(\dc_bias_reg[3]_4 [2]),
        .O(\dc_bias[2]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h99F99099)) 
    \dc_bias[2]_i_4__1 
       (.I0(\dc_bias_reg[3]_5 [1]),
        .I1(\r_reg[blue][0]_0 ),
        .I2(\r_reg[blue][7]_0 ),
        .I3(\dc_bias[0]_i_2__1_n_0 ),
        .I4(\dc_bias_reg[3]_5 [0]),
        .O(\dc_bias[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h9F90909F909F9F90)) 
    \dc_bias[2]_i_5 
       (.I0(\dc_bias_reg[2]_0 ),
        .I1(\dc_bias[2]_i_19_n_0 ),
        .I2(\r_reg[red][7]_0 ),
        .I3(\dc_bias[2]_i_20_n_0 ),
        .I4(\dc_bias[2]_i_21_n_0 ),
        .I5(Q[2]),
        .O(\dc_bias[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA556A556A9555)) 
    \dc_bias[2]_i_5__0 
       (.I0(\dc_bias_reg[3]_4 [2]),
        .I1(\dc_bias[3]_i_18__0_n_0 ),
        .I2(\dc_bias[3]_i_19_n_0 ),
        .I3(\dc_bias[3]_i_20_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\dc_bias[2]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA556A556A9555)) 
    \dc_bias[2]_i_6 
       (.I0(Q[2]),
        .I1(\dc_bias[2]_i_10__0_n_0 ),
        .I2(\dc_bias[2]_i_11_n_0 ),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\r_reg[red][5]_0 ),
        .O(\dc_bias[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hE78E18711871E78E)) 
    \dc_bias[2]_i_6__0 
       (.I0(\dc_bias[3]_i_19_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\r_reg[green][6]_0 ),
        .I3(\dc_bias[3]_i_28__0_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\dc_bias[2]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h65A6A6A655656565)) 
    \dc_bias[2]_i_6__1 
       (.I0(\dc_bias_reg[3]_5 [3]),
        .I1(\dc_bias[2]_i_11__0_n_0 ),
        .I2(\dc_bias[2]_i_12__0_n_0 ),
        .I3(\dc_bias[2]_i_15__0_n_0 ),
        .I4(\dc_bias[2]_i_14__0_n_0 ),
        .I5(\dc_bias[2]_i_13__0_n_0 ),
        .O(\dc_bias_reg[3]_1 ));
  LUT5 #(
    .INIT(32'hA69A9A59)) 
    \dc_bias[2]_i_7__0 
       (.I0(\dc_bias[3]_i_19__0_n_0 ),
        .I1(\dc_bias[2]_i_16__0_n_0 ),
        .I2(\dc_bias[2]_i_17__0_n_0 ),
        .I3(\dc_bias[2]_i_18__0_n_0 ),
        .I4(\dc_bias[2]_i_19__0_n_0 ),
        .O(\dc_bias[2]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'h1871E78EE78E1871)) 
    \dc_bias[2]_i_7__1 
       (.I0(\dc_bias[2]_i_11_n_0 ),
        .I1(\r_reg[red][0]_1 ),
        .I2(\r_reg[red][6]_0 ),
        .I3(\dc_bias[3]_i_10__1_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\r_reg[red][5]_0 ),
        .O(\dc_bias[2]_i_7__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \dc_bias[2]_i_8 
       (.I0(Red[2]),
        .I1(Red[3]),
        .I2(\r_reg[red][0]_1 ),
        .I3(Red[1]),
        .I4(\r_reg[red][7]_0 ),
        .O(\dc_bias[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA6659AA69AA6599A)) 
    \dc_bias[2]_i_8__0 
       (.I0(\dc_bias_reg[3]_5 [2]),
        .I1(\dc_bias[1]_i_5__1_n_0 ),
        .I2(\dc_bias[3]_i_24_n_0 ),
        .I3(\dc_bias[2]_i_12__0_n_0 ),
        .I4(\dc_bias_reg[3]_5 [1]),
        .I5(\dc_bias[2]_i_11__0_n_0 ),
        .O(\dc_bias[2]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \dc_bias[2]_i_9 
       (.I0(\r_reg[red][7]_0 ),
        .I1(Red[5]),
        .I2(Red[6]),
        .I3(\encoded[5]_i_2_n_0 ),
        .O(\r_reg[red][5]_0 ));
  LUT6 #(
    .INIT(64'h6559A665A665A665)) 
    \dc_bias[2]_i_9__0 
       (.I0(\dc_bias_reg[3]_5 [2]),
        .I1(\dc_bias[2]_i_11__0_n_0 ),
        .I2(\dc_bias[2]_i_12__0_n_0 ),
        .I3(\dc_bias[2]_i_13__0_n_0 ),
        .I4(\dc_bias[2]_i_14__0_n_0 ),
        .I5(\dc_bias[2]_i_15__0_n_0 ),
        .O(\dc_bias[2]_i_9__0_n_0 ));
  LUT6 #(
    .INIT(64'h0F00EEEEFFFFEEEE)) 
    \dc_bias[3]_i_1 
       (.I0(\dc_bias[3]_i_2__0_n_0 ),
        .I1(\dc_bias[3]_i_3_n_0 ),
        .I2(\dc_bias[3]_i_4_n_0 ),
        .I3(\dc_bias_reg[3]_0 ),
        .I4(\dc_bias_reg[1] ),
        .I5(\dc_bias[3]_i_7__0_n_0 ),
        .O(\dc_bias_reg[3]_2 [3]));
  LUT6 #(
    .INIT(64'h77E7717771771171)) 
    \dc_bias[3]_i_10 
       (.I0(\r_reg[green][4]_0 ),
        .I1(\dc_bias[3]_i_21_n_0 ),
        .I2(\dc_bias[3]_i_28__0_n_0 ),
        .I3(\r_reg[green][6]_0 ),
        .I4(\r_reg[green][0]_1 ),
        .I5(\dc_bias[3]_i_19_n_0 ),
        .O(\dc_bias[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \dc_bias[3]_i_10__0 
       (.I0(Blue[1]),
        .I1(Blue[3]),
        .I2(Blue[2]),
        .I3(Blue[4]),
        .I4(Blue[6]),
        .I5(Blue[5]),
        .O(\dc_bias[3]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_10__1 
       (.I0(\r_reg[red][7]_0 ),
        .I1(\encoded[5]_i_2_n_0 ),
        .I2(Red[6]),
        .O(\dc_bias[3]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFB2FB2FB2FF2F)) 
    \dc_bias[3]_i_11 
       (.I0(\dc_bias[2]_i_8_n_0 ),
        .I1(\dc_bias[1]_i_9_n_0 ),
        .I2(\dc_bias[2]_i_25_n_0 ),
        .I3(Q[1]),
        .I4(\r_reg[red][5]_0 ),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE88E8EE88EE8E88E)) 
    \dc_bias[3]_i_11__0 
       (.I0(\dc_bias[1]_i_10__0_n_0 ),
        .I1(\dc_bias_reg[3]_4 [1]),
        .I2(\dc_bias[3]_i_29__0_n_0 ),
        .I3(\dc_bias[3]_i_20_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\dc_bias[3]_i_11__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \dc_bias[3]_i_11__1 
       (.I0(Blue[1]),
        .I1(Blue[3]),
        .I2(Blue[2]),
        .O(\dc_bias[3]_i_11__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \dc_bias[3]_i_12 
       (.I0(\r_reg[red][6]_0 ),
        .I1(\r_reg[red][0]_1 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\r_reg[red][5]_0 ),
        .O(\dc_bias[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_12__1 
       (.I0(Blue[4]),
        .I1(Blue[6]),
        .I2(Blue[5]),
        .O(\dc_bias[3]_i_12__1_n_0 ));
  LUT6 #(
    .INIT(64'h2BBDBDBDD4424242)) 
    \dc_bias[3]_i_13 
       (.I0(\r_reg[green][4]_4 ),
        .I1(\r_reg[green][7]_1 ),
        .I2(\dc_bias_reg[3]_4 [1]),
        .I3(\dc_bias_reg[3]_4 [0]),
        .I4(\r_reg[green][0]_1 ),
        .I5(\dc_bias_reg[3]_4 [2]),
        .O(\dc_bias[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \dc_bias[3]_i_13__0 
       (.I0(Blue[1]),
        .I1(Blue[3]),
        .I2(Blue[2]),
        .I3(Blue[4]),
        .I4(Blue[6]),
        .I5(Blue[5]),
        .O(\dc_bias[3]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEBFFEBFFFF)) 
    \dc_bias[3]_i_14 
       (.I0(\encoded[5]_i_2__0_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\dc_bias_reg[3]_4 [0]),
        .I3(Green[7]),
        .I4(\dc_bias[1]_i_6__1_n_0 ),
        .I5(\dc_bias[1]_i_7__1_n_0 ),
        .O(\dc_bias[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h81177EE87EE88117)) 
    \dc_bias[3]_i_14__0 
       (.I0(\dc_bias[2]_i_14__0_n_0 ),
        .I1(Blue[0]),
        .I2(\dc_bias[3]_i_25__0_n_0 ),
        .I3(\dc_bias[3]_i_26__0_n_0 ),
        .I4(\dc_bias[2]_i_12__0_n_0 ),
        .I5(\dc_bias[2]_i_11__0_n_0 ),
        .O(\r_reg[blue][0]_0 ));
  LUT6 #(
    .INIT(64'h56555555AA6A6A56)) 
    \dc_bias[3]_i_14__1 
       (.I0(Q[3]),
        .I1(\r_reg[red][5]_0 ),
        .I2(\dc_bias[2]_i_8_n_0 ),
        .I3(\dc_bias[2]_i_12_n_0 ),
        .I4(\dc_bias[2]_i_26_n_0 ),
        .I5(Q[2]),
        .O(\dc_bias[3]_i_14__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4224)) 
    \dc_bias[3]_i_15 
       (.I0(Green[2]),
        .I1(\r_reg[green][7]_0 ),
        .I2(Green[1]),
        .I3(\r_reg[green][0]_1 ),
        .O(\dc_bias[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \dc_bias[3]_i_15__0 
       (.I0(\r_reg[red][7]_0 ),
        .I1(\dc_bias[0]_i_3__0_n_0 ),
        .I2(Q[0]),
        .O(\dc_bias[3]_i_15__0_n_0 ));
  LUT5 #(
    .INIT(32'hEBBEBEEB)) 
    \dc_bias[3]_i_15__1 
       (.I0(\dc_bias_reg[3]_5 [0]),
        .I1(Blue[3]),
        .I2(Blue[1]),
        .I3(\dc_bias[3]_i_26__0_n_0 ),
        .I4(\dc_bias[3]_i_25__0_n_0 ),
        .O(\dc_bias[3]_i_15__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \dc_bias[3]_i_16 
       (.I0(Q[0]),
        .I1(\dc_bias[0]_i_3__0_n_0 ),
        .I2(\r_reg[red][7]_0 ),
        .O(\dc_bias[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h96666999)) 
    \dc_bias[3]_i_16__0 
       (.I0(\r_reg[green][4]_4 ),
        .I1(\dc_bias_reg[3]_4 [1]),
        .I2(\dc_bias_reg[3]_4 [0]),
        .I3(\r_reg[green][0]_1 ),
        .I4(\r_reg[green][7]_1 ),
        .O(\dc_bias[3]_i_16__0_n_0 ));
  LUT6 #(
    .INIT(64'h2444444D444D4DDD)) 
    \dc_bias[3]_i_16__1 
       (.I0(\dc_bias[2]_i_11__0_n_0 ),
        .I1(\dc_bias[2]_i_12__0_n_0 ),
        .I2(\dc_bias[3]_i_26__0_n_0 ),
        .I3(\dc_bias[3]_i_25__0_n_0 ),
        .I4(Blue[0]),
        .I5(\dc_bias[2]_i_14__0_n_0 ),
        .O(\r_reg[blue][0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_17 
       (.I0(\r_reg[red][0]_1 ),
        .I1(Q[0]),
        .O(\r_reg[red][0]_3 ));
  LUT6 #(
    .INIT(64'hEB8282008200EB82)) 
    \dc_bias[3]_i_17__0 
       (.I0(\encoded[5]_i_2__0_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\dc_bias_reg[3]_4 [0]),
        .I3(Green[7]),
        .I4(\dc_bias[1]_i_6__1_n_0 ),
        .I5(\dc_bias[1]_i_7__1_n_0 ),
        .O(\dc_bias[3]_i_17__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFEBEB82)) 
    \dc_bias[3]_i_18 
       (.I0(\dc_bias[2]_i_16__0_n_0 ),
        .I1(\dc_bias[3]_i_30__0_n_0 ),
        .I2(\r_reg[blue][4]_0 ),
        .I3(\dc_bias[2]_i_18__0_n_0 ),
        .I4(\dc_bias[2]_i_19__0_n_0 ),
        .O(\dc_bias[3]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[3]_i_18__0 
       (.I0(Green[6]),
        .I1(\encoded[4]_i_2_n_0 ),
        .I2(\dc_bias[0]_i_4__0_n_0 ),
        .I3(Green[7]),
        .I4(\r_reg[green][0]_1 ),
        .O(\dc_bias[3]_i_18__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_19 
       (.I0(Green[3]),
        .I1(\r_reg[green][0]_1 ),
        .I2(Green[1]),
        .O(\dc_bias[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2BBDBDBDD4424242)) 
    \dc_bias[3]_i_19__0 
       (.I0(\r_reg[blue][4]_0 ),
        .I1(\r_reg[blue][7]_1 ),
        .I2(\dc_bias_reg[3]_5 [1]),
        .I3(\dc_bias_reg[3]_5 [0]),
        .I4(Blue[0]),
        .I5(\dc_bias_reg[3]_5 [2]),
        .O(\dc_bias[3]_i_19__0_n_0 ));
  LUT6 #(
    .INIT(64'hAB00AB00AB00ABAB)) 
    \dc_bias[3]_i_1__0 
       (.I0(\dc_bias[3]_i_2__1_n_0 ),
        .I1(\r_reg[blue][7]_0 ),
        .I2(\dc_bias[3]_i_4__0_n_0 ),
        .I3(\dc_bias[3]_i_5__1_n_0 ),
        .I4(\dc_bias[3]_i_6__0_n_0 ),
        .I5(\dc_bias[3]_i_7__1_n_0 ),
        .O(\dc_bias_reg[2] [3]));
  LUT6 #(
    .INIT(64'hCAACA33AA33ACAAC)) 
    \dc_bias[3]_i_20 
       (.I0(\r_reg[green][0]_1 ),
        .I1(\r_reg[green][7]_0 ),
        .I2(Green[7]),
        .I3(\dc_bias[0]_i_4__0_n_0 ),
        .I4(\encoded[4]_i_2_n_0 ),
        .I5(Green[6]),
        .O(\dc_bias[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h90000000)) 
    \dc_bias[3]_i_20__0 
       (.I0(\r_reg[blue][4]_0 ),
        .I1(\dc_bias[3]_i_30__0_n_0 ),
        .I2(\dc_bias[2]_i_16__0_n_0 ),
        .I3(\dc_bias[2]_i_19__0_n_0 ),
        .I4(\dc_bias[2]_i_18__0_n_0 ),
        .O(\dc_bias[3]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hD22D4BB4)) 
    \dc_bias[3]_i_21 
       (.I0(Green[2]),
        .I1(Green[3]),
        .I2(\r_reg[green][0]_1 ),
        .I3(Green[1]),
        .I4(\r_reg[green][7]_0 ),
        .O(\dc_bias[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \dc_bias[3]_i_21__0 
       (.I0(\dc_bias_reg[3]_5 [0]),
        .I1(\dc_bias[0]_i_2__1_n_0 ),
        .I2(\r_reg[blue][7]_0 ),
        .O(\dc_bias[3]_i_21__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hC39669C3)) 
    \dc_bias[3]_i_22 
       (.I0(\r_reg[green][7]_0 ),
        .I1(Green[4]),
        .I2(\dc_bias[3]_i_33_n_0 ),
        .I3(Green[5]),
        .I4(Green[6]),
        .O(\r_reg[green][4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \dc_bias[3]_i_22__0 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(\dc_bias[0]_i_2__1_n_0 ),
        .I2(\dc_bias_reg[3]_5 [0]),
        .O(\dc_bias[3]_i_22__0_n_0 ));
  LUT6 #(
    .INIT(64'h0800618661860010)) 
    \dc_bias[3]_i_23 
       (.I0(\dc_bias[3]_i_19_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\r_reg[green][6]_0 ),
        .I3(\dc_bias[3]_i_28__0_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\r_reg[green][0]_2 ));
  LUT6 #(
    .INIT(64'h7008F770FFFFFFFF)) 
    \dc_bias[3]_i_23__0 
       (.I0(\dc_bias[2]_i_15__0_n_0 ),
        .I1(\dc_bias[2]_i_14__0_n_0 ),
        .I2(\dc_bias[2]_i_13__0_n_0 ),
        .I3(\dc_bias[2]_i_12__0_n_0 ),
        .I4(\dc_bias[2]_i_11__0_n_0 ),
        .I5(\dc_bias_reg[3]_5 [2]),
        .O(\dc_bias[3]_i_23__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h1771)) 
    \dc_bias[3]_i_24 
       (.I0(Blue[0]),
        .I1(\dc_bias_reg[3]_5 [0]),
        .I2(\encoded[7]_i_2__1_n_0 ),
        .I3(\r_reg[blue][7]_0 ),
        .O(\dc_bias[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h69969696FFFFFFFF)) 
    \dc_bias[3]_i_24__0 
       (.I0(\r_reg[green][4]_0 ),
        .I1(\dc_bias[3]_i_21_n_0 ),
        .I2(\dc_bias[3]_i_20_n_0 ),
        .I3(\dc_bias[3]_i_18__0_n_0 ),
        .I4(\dc_bias[3]_i_19_n_0 ),
        .I5(\dc_bias_reg[3]_4 [1]),
        .O(\dc_bias[3]_i_24__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \dc_bias[3]_i_25 
       (.I0(\dc_bias[0]_i_3__1_n_0 ),
        .I1(\dc_bias_reg[3]_4 [0]),
        .I2(\r_reg[green][7]_0 ),
        .O(\dc_bias[3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \dc_bias[3]_i_25__0 
       (.I0(Blue[6]),
        .I1(Blue[5]),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(Blue[7]),
        .I4(\r_reg[blue][7]_0 ),
        .O(\dc_bias[3]_i_25__0_n_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \dc_bias[3]_i_26 
       (.I0(\dc_bias[3]_i_34_n_0 ),
        .I1(\r_reg[green][4]_0 ),
        .I2(\dc_bias[3]_i_21_n_0 ),
        .I3(\dc_bias[3]_i_20_n_0 ),
        .I4(\dc_bias[3]_i_29__0_n_0 ),
        .I5(\dc_bias_reg[3]_4 [1]),
        .O(\dc_bias[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \dc_bias[3]_i_26__0 
       (.I0(Blue[6]),
        .I1(\r_reg[blue][7]_0 ),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .O(\dc_bias[3]_i_26__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h006969FF)) 
    \dc_bias[3]_i_27 
       (.I0(\dc_bias[0]_i_4__0_n_0 ),
        .I1(Green[7]),
        .I2(\r_reg[green][7]_0 ),
        .I3(\dc_bias_reg[3]_4 [0]),
        .I4(\r_reg[green][0]_1 ),
        .O(\dc_bias[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_27__0 
       (.I0(Blue[0]),
        .I1(\dc_bias_reg[3]_5 [0]),
        .O(\r_reg[blue][0]_2 ));
  LUT6 #(
    .INIT(64'h2BD4D42BD42B2BD4)) 
    \dc_bias[3]_i_28 
       (.I0(Blue[4]),
        .I1(Blue[5]),
        .I2(\r_reg[blue][7]_0 ),
        .I3(\encoded[1]_i_2_n_0 ),
        .I4(Blue[2]),
        .I5(Blue[3]),
        .O(\r_reg[blue][4]_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \dc_bias[3]_i_28__0 
       (.I0(Green[4]),
        .I1(\encoded[3]_i_2__0_n_0 ),
        .I2(Green[2]),
        .I3(Green[3]),
        .I4(Green[6]),
        .I5(\r_reg[green][7]_0 ),
        .O(\dc_bias[3]_i_28__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \dc_bias[3]_i_29 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(Blue[7]),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(Blue[5]),
        .I4(Blue[6]),
        .O(\r_reg[blue][7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h96690000)) 
    \dc_bias[3]_i_29__0 
       (.I0(\r_reg[green][0]_1 ),
        .I1(Green[7]),
        .I2(\dc_bias[0]_i_4__0_n_0 ),
        .I3(\dc_bias[0]_i_5__1_n_0 ),
        .I4(\dc_bias[3]_i_19_n_0 ),
        .O(\dc_bias[3]_i_29__0_n_0 ));
  LUT5 #(
    .INIT(32'h88288288)) 
    \dc_bias[3]_i_2__0 
       (.I0(\r_reg[green][7]_0 ),
        .I1(\dc_bias_reg[3]_4 [3]),
        .I2(\dc_bias[3]_i_8__0_n_0 ),
        .I3(\dc_bias_reg[3]_4 [2]),
        .I4(\dc_bias[3]_i_9__0_n_0 ),
        .O(\dc_bias[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hDD5DD5DD55D55D55)) 
    \dc_bias[3]_i_2__1 
       (.I0(\dc_bias_reg[0] ),
        .I1(\r_reg[blue][7]_0 ),
        .I2(\dc_bias[3]_i_8__1_n_0 ),
        .I3(\dc_bias[3]_i_9__1_n_0 ),
        .I4(\dc_bias_reg[3]_5 [2]),
        .I5(\dc_bias_reg[3]_5 [3]),
        .O(\dc_bias[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h54400115)) 
    \dc_bias[3]_i_3 
       (.I0(\r_reg[green][7]_0 ),
        .I1(\dc_bias_reg[3]_4 [2]),
        .I2(\dc_bias[3]_i_10_n_0 ),
        .I3(\dc_bias[3]_i_11__0_n_0 ),
        .I4(\dc_bias_reg[3]_0 ),
        .O(\dc_bias[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \dc_bias[3]_i_30 
       (.I0(\r_reg[green][0]_1 ),
        .I1(\dc_bias_reg[3]_4 [0]),
        .O(\r_reg[green][0]_3 ));
  LUT6 #(
    .INIT(64'h17E8E8E8E8171717)) 
    \dc_bias[3]_i_30__0 
       (.I0(\dc_bias[2]_i_20__0_n_0 ),
        .I1(Blue[7]),
        .I2(\r_reg[blue][7]_0 ),
        .I3(Blue[0]),
        .I4(\dc_bias_reg[3]_5 [0]),
        .I5(\dc_bias_reg[3]_5 [1]),
        .O(\dc_bias[3]_i_30__0_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44BD22D2DD2)) 
    \dc_bias[3]_i_31 
       (.I0(\r_reg[green][7]_0 ),
        .I1(Green[4]),
        .I2(Green[3]),
        .I3(Green[2]),
        .I4(\encoded[3]_i_2__0_n_0 ),
        .I5(Green[5]),
        .O(\r_reg[green][4]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \dc_bias[3]_i_32 
       (.I0(\r_reg[green][7]_0 ),
        .I1(Green[7]),
        .I2(Green[4]),
        .I3(\encoded[5]_i_2__0_n_0 ),
        .I4(Green[6]),
        .O(\r_reg[green][7]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \dc_bias[3]_i_33 
       (.I0(Green[3]),
        .I1(Green[2]),
        .I2(\r_reg[green][0]_1 ),
        .I3(Green[1]),
        .O(\dc_bias[3]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF9F6F6F9)) 
    \dc_bias[3]_i_34 
       (.I0(\dc_bias[3]_i_19_n_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\r_reg[green][7]_0 ),
        .I3(\dc_bias[1]_i_12__0_n_0 ),
        .I4(\dc_bias[0]_i_5__1_n_0 ),
        .I5(\dc_bias_reg[3]_4 [0]),
        .O(\dc_bias[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h5DD50445D55D0445)) 
    \dc_bias[3]_i_3__0 
       (.I0(\dc_bias[3]_i_10__0_n_0 ),
        .I1(\dc_bias[3]_i_11__1_n_0 ),
        .I2(Blue[7]),
        .I3(\dc_bias[3]_i_12__1_n_0 ),
        .I4(\dc_bias[3]_i_13__0_n_0 ),
        .I5(Blue[0]),
        .O(\r_reg[blue][7]_0 ));
  LUT6 #(
    .INIT(64'hA9A9A995A9999995)) 
    \dc_bias[3]_i_4 
       (.I0(\dc_bias_reg[3]_6 ),
        .I1(\dc_bias[3]_i_13_n_0 ),
        .I2(\dc_bias[3]_i_14_n_0 ),
        .I3(\dc_bias[3]_i_15_n_0 ),
        .I4(\dc_bias[3]_i_16__0_n_0 ),
        .I5(\dc_bias[3]_i_17__0_n_0 ),
        .O(\dc_bias[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA665AAAA5555A665)) 
    \dc_bias[3]_i_4__0 
       (.I0(\dc_bias_reg[3]_1 ),
        .I1(\r_reg[blue][0]_0 ),
        .I2(\dc_bias_reg[3]_5 [1]),
        .I3(\dc_bias[3]_i_15__1_n_0 ),
        .I4(\r_reg[blue][0]_1 ),
        .I5(\dc_bias_reg[3]_5 [2]),
        .O(\dc_bias[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hF7FF9E799E79FFEF)) 
    \dc_bias[3]_i_5 
       (.I0(\dc_bias[2]_i_11_n_0 ),
        .I1(\r_reg[red][0]_1 ),
        .I2(\r_reg[red][6]_0 ),
        .I3(\dc_bias[3]_i_10__1_n_0 ),
        .I4(\dc_bias[2]_i_8_n_0 ),
        .I5(\r_reg[red][5]_0 ),
        .O(\r_reg[red][0]_2 ));
  LUT6 #(
    .INIT(64'h9555AA95AA95AAAA)) 
    \dc_bias[3]_i_5__0 
       (.I0(\dc_bias_reg[3]_4 [3]),
        .I1(\dc_bias[3]_i_18__0_n_0 ),
        .I2(\dc_bias[3]_i_19_n_0 ),
        .I3(\dc_bias[3]_i_20_n_0 ),
        .I4(\dc_bias[3]_i_21_n_0 ),
        .I5(\r_reg[green][4]_0 ),
        .O(\dc_bias_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hABABABABBABAABBA)) 
    \dc_bias[3]_i_5__1 
       (.I0(\dc_bias_reg[0] ),
        .I1(\dc_bias_reg[3]_1 ),
        .I2(\dc_bias_reg[3]_7 ),
        .I3(\dc_bias[3]_i_18_n_0 ),
        .I4(\dc_bias[3]_i_19__0_n_0 ),
        .I5(\dc_bias[3]_i_20__0_n_0 ),
        .O(\dc_bias[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h990909099D9D9909)) 
    \dc_bias[3]_i_6__0 
       (.I0(\dc_bias_reg[3]_5 [2]),
        .I1(\r_reg[blue][0]_1 ),
        .I2(\dc_bias[3]_i_21__0_n_0 ),
        .I3(\dc_bias[3]_i_22__0_n_0 ),
        .I4(\dc_bias_reg[3]_5 [1]),
        .I5(\r_reg[blue][0]_0 ),
        .O(\dc_bias[3]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h5656566A566A6A6A)) 
    \dc_bias[3]_i_6__1 
       (.I0(\dc_bias_reg[3] ),
        .I1(Q[2]),
        .I2(\dc_bias[2]_i_21_n_0 ),
        .I3(\dc_bias[2]_i_7__1_n_0 ),
        .I4(Q[1]),
        .I5(\dc_bias[1]_i_11__0_n_0 ),
        .O(\dc_bias[3]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hA659)) 
    \dc_bias[3]_i_7 
       (.I0(\dc_bias[3]_i_11_n_0 ),
        .I1(\dc_bias[3]_i_12_n_0 ),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\dc_bias[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE7E78EE7)) 
    \dc_bias[3]_i_7__0 
       (.I0(\dc_bias[3]_i_10_n_0 ),
        .I1(\dc_bias_reg[3]_4 [2]),
        .I2(\dc_bias[3]_i_24__0_n_0 ),
        .I3(\dc_bias[3]_i_25_n_0 ),
        .I4(\dc_bias[3]_i_26_n_0 ),
        .I5(\dc_bias_reg[3]_0 ),
        .O(\dc_bias[3]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h00FBFFFF)) 
    \dc_bias[3]_i_7__1 
       (.I0(\dc_bias[3]_i_21__0_n_0 ),
        .I1(\dc_bias_reg[3]_5 [1]),
        .I2(\r_reg[blue][0]_0 ),
        .I3(\dc_bias[3]_i_23__0_n_0 ),
        .I4(\dc_bias_reg[3]_1 ),
        .O(\dc_bias[3]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h022BBFFFFDD44000)) 
    \dc_bias[3]_i_8 
       (.I0(\dc_bias[2]_i_13_n_0 ),
        .I1(\dc_bias[2]_i_14_n_0 ),
        .I2(\dc_bias[2]_i_15_n_0 ),
        .I3(\dc_bias[2]_i_16_n_0 ),
        .I4(\dc_bias[2]_i_17_n_0 ),
        .I5(\dc_bias_reg[3]_i_4_0 ),
        .O(\dc_bias[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h2BFF002B)) 
    \dc_bias[3]_i_8__0 
       (.I0(\r_reg[green][6]_0 ),
        .I1(\r_reg[green][0]_1 ),
        .I2(\dc_bias_reg[3]_4 [0]),
        .I3(\dc_bias_reg[3]_4 [1]),
        .I4(\r_reg[green][4]_0 ),
        .O(\dc_bias[3]_i_8__0_n_0 ));
  LUT5 #(
    .INIT(32'hEBBE8228)) 
    \dc_bias[3]_i_8__1 
       (.I0(\dc_bias[2]_i_11__0_n_0 ),
        .I1(\dc_bias_reg[3]_5 [1]),
        .I2(\dc_bias[2]_i_12__0_n_0 ),
        .I3(\dc_bias[3]_i_24_n_0 ),
        .I4(\dc_bias[1]_i_5__1_n_0 ),
        .O(\dc_bias[3]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h99595955AA999999)) 
    \dc_bias[3]_i_9 
       (.I0(\dc_bias[3]_i_14__1_n_0 ),
        .I1(\dc_bias[2]_i_6_n_0 ),
        .I2(\dc_bias[3]_i_15__0_n_0 ),
        .I3(Q[1]),
        .I4(\dc_bias[2]_i_7__1_n_0 ),
        .I5(\dc_bias[3]_i_16_n_0 ),
        .O(\dc_bias[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h2BB2B22B)) 
    \dc_bias[3]_i_9__0 
       (.I0(\dc_bias[3]_i_21_n_0 ),
        .I1(\dc_bias[1]_i_8__0_n_0 ),
        .I2(\r_reg[green][4]_0 ),
        .I3(\dc_bias[3]_i_27_n_0 ),
        .I4(\dc_bias_reg[3]_4 [1]),
        .O(\dc_bias[3]_i_9__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h17FF0017)) 
    \dc_bias[3]_i_9__1 
       (.I0(Blue[0]),
        .I1(\dc_bias_reg[3]_5 [0]),
        .I2(\dc_bias[3]_i_25__0_n_0 ),
        .I3(\dc_bias_reg[3]_5 [1]),
        .I4(\dc_bias[2]_i_12__0_n_0 ),
        .O(\dc_bias[3]_i_9__1_n_0 ));
  MUXF8 \dc_bias_reg[3]_i_1 
       (.I0(\dc_bias_reg[3]_i_3_n_0 ),
        .I1(\dc_bias_reg[3]_i_4_n_0 ),
        .O(D[3]),
        .S(\dc_bias_reg[3]_3 ));
  MUXF7 \dc_bias_reg[3]_i_3 
       (.I0(\dc_bias[3]_i_6__1_n_0 ),
        .I1(\dc_bias[3]_i_7_n_0 ),
        .O(\dc_bias_reg[3]_i_3_n_0 ),
        .S(\r_reg[red][7]_0 ));
  MUXF7 \dc_bias_reg[3]_i_4 
       (.I0(\dc_bias[3]_i_8_n_0 ),
        .I1(\dc_bias[3]_i_9_n_0 ),
        .O(\dc_bias_reg[3]_i_4_n_0 ),
        .S(\dc_bias_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \encoded[0]_i_1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(Blue[0]),
        .I3(\encoded[6]_i_3_n_0 ),
        .O(\r_reg[hSync]__0_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h59A9)) 
    \encoded[0]_i_1__0 
       (.I0(\r_reg[red][0]_1 ),
        .I1(\r_reg[red][7]_0 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg[3] ),
        .O(\r_reg[red][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hA959)) 
    \encoded[0]_i_1__1 
       (.I0(\r_reg[green][0]_1 ),
        .I1(\r_reg[green][7]_0 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_0 ),
        .O(\r_reg[green][0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h96666696)) 
    \encoded[1]_i_1 
       (.I0(Red[1]),
        .I1(\r_reg[red][0]_1 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg[3] ),
        .I4(\r_reg[red][7]_0 ),
        .O(\r_reg[red][1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h66969666)) 
    \encoded[1]_i_1__0 
       (.I0(Green[1]),
        .I1(\r_reg[green][0]_1 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_0 ),
        .I4(\r_reg[green][7]_0 ),
        .O(\r_reg[green][1]_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \encoded[1]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[0] ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(\encoded[1]_i_2_n_0 ),
        .I5(\dc_bias_reg[3]_1 ),
        .O(\r_reg[hSync]__0_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \encoded[1]_i_2 
       (.I0(Blue[1]),
        .I1(Blue[0]),
        .O(\encoded[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996969669)) 
    \encoded[2]_i_1 
       (.I0(Red[1]),
        .I1(\r_reg[red][0]_1 ),
        .I2(Red[2]),
        .I3(\r_reg[red][7]_0 ),
        .I4(\dc_bias_reg[3]_3 ),
        .I5(\dc_bias_reg[3] ),
        .O(\r_reg[red][1]_1 ));
  LUT6 #(
    .INIT(64'h9696966969699669)) 
    \encoded[2]_i_1__0 
       (.I0(Green[1]),
        .I1(\r_reg[green][0]_1 ),
        .I2(Green[2]),
        .I3(\r_reg[green][7]_0 ),
        .I4(\dc_bias_reg[1] ),
        .I5(\dc_bias_reg[3]_0 ),
        .O(\r_reg[green][1]_1 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \encoded[2]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(Blue[1]),
        .I3(Blue[0]),
        .I4(Blue[2]),
        .I5(\encoded[6]_i_3_n_0 ),
        .O(\r_reg[hSync]__0_0 [2]));
  LUT6 #(
    .INIT(64'h6996969696966996)) 
    \encoded[3]_i_1 
       (.I0(Red[3]),
        .I1(Red[2]),
        .I2(\encoded[3]_i_2_n_0 ),
        .I3(\dc_bias_reg[3]_3 ),
        .I4(\dc_bias_reg[3] ),
        .I5(\r_reg[red][7]_0 ),
        .O(\r_reg[red][3]_0 ));
  LUT6 #(
    .INIT(64'h9696699669969696)) 
    \encoded[3]_i_1__0 
       (.I0(Green[3]),
        .I1(Green[2]),
        .I2(\encoded[3]_i_2__0_n_0 ),
        .I3(\dc_bias_reg[1] ),
        .I4(\dc_bias_reg[3]_0 ),
        .I5(\r_reg[green][7]_0 ),
        .O(\r_reg[green][3]_0 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \encoded[3]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[0] ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(\encoded[3]_i_2__1_n_0 ),
        .I5(\dc_bias_reg[3]_1 ),
        .O(\r_reg[hSync]__0_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \encoded[3]_i_2 
       (.I0(Red[1]),
        .I1(\r_reg[red][0]_1 ),
        .O(\encoded[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \encoded[3]_i_2__0 
       (.I0(Green[1]),
        .I1(\r_reg[green][0]_1 ),
        .O(\encoded[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \encoded[3]_i_2__1 
       (.I0(Blue[3]),
        .I1(Blue[2]),
        .I2(Blue[0]),
        .I3(Blue[1]),
        .O(\encoded[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hA656)) 
    \encoded[4]_i_1 
       (.I0(\encoded[5]_i_2_n_0 ),
        .I1(\r_reg[red][7]_0 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg[3] ),
        .O(\r_reg[red][4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \encoded[4]_i_1__0 
       (.I0(\encoded[4]_i_2_n_0 ),
        .I1(\r_reg[green][7]_0 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_0 ),
        .O(\r_reg[green][4]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h4774)) 
    \encoded[4]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(\encoded[6]_i_3_n_0 ),
        .O(\r_reg[hSync]__0_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[4]_i_2 
       (.I0(Green[4]),
        .I1(Green[1]),
        .I2(\r_reg[green][0]_1 ),
        .I3(Green[2]),
        .I4(Green[3]),
        .O(\encoded[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h69999969)) 
    \encoded[5]_i_1 
       (.I0(\encoded[5]_i_2_n_0 ),
        .I1(Red[5]),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg[3] ),
        .I4(\r_reg[red][7]_0 ),
        .O(\r_reg[red][5]_1 ));
  LUT5 #(
    .INIT(32'h99696999)) 
    \encoded[5]_i_1__0 
       (.I0(\encoded[5]_i_2__0_n_0 ),
        .I1(Green[4]),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_0 ),
        .I4(\r_reg[green][7]_0 ),
        .O(\r_reg[green][4]_1 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \encoded[5]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[0] ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(\encoded[5]_i_2__1_n_0 ),
        .I5(\dc_bias_reg[3]_1 ),
        .O(\r_reg[hSync]__0_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[5]_i_2 
       (.I0(Red[4]),
        .I1(Red[1]),
        .I2(\r_reg[red][0]_1 ),
        .I3(Red[2]),
        .I4(Red[3]),
        .O(\encoded[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[5]_i_2__0 
       (.I0(Green[5]),
        .I1(Green[1]),
        .I2(\r_reg[green][0]_1 ),
        .I3(Green[2]),
        .I4(Green[3]),
        .O(\encoded[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \encoded[5]_i_2__1 
       (.I0(Blue[5]),
        .I1(Blue[3]),
        .I2(Blue[2]),
        .I3(Blue[0]),
        .I4(Blue[1]),
        .I5(Blue[4]),
        .O(\encoded[5]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h6969699696966996)) 
    \encoded[6]_i_1 
       (.I0(Green[4]),
        .I1(\encoded[5]_i_2__0_n_0 ),
        .I2(Green[6]),
        .I3(\r_reg[green][7]_0 ),
        .I4(\dc_bias_reg[1] ),
        .I5(\dc_bias_reg[3]_0 ),
        .O(\r_reg[green][4]_3 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \encoded[6]_i_1__0 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\encoded[6]_i_2__0_n_0 ),
        .I3(Blue[5]),
        .I4(Blue[6]),
        .I5(\encoded[6]_i_3_n_0 ),
        .O(\r_reg[hSync]__0_0 [6]));
  LUT5 #(
    .INIT(32'hBFBAEAEF)) 
    \encoded[6]_i_1__1 
       (.I0(p_1_in),
        .I1(\dc_bias_reg[3] ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\r_reg[red][7]_0 ),
        .I4(\encoded[6]_i_2_n_0 ),
        .O(\r_reg[blank]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \encoded[6]_i_2 
       (.I0(Red[6]),
        .I1(Red[5]),
        .I2(\encoded[5]_i_2_n_0 ),
        .O(\encoded[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[6]_i_2__0 
       (.I0(Blue[4]),
        .I1(Blue[1]),
        .I2(Blue[0]),
        .I3(Blue[2]),
        .I4(Blue[3]),
        .O(\encoded[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \encoded[6]_i_3 
       (.I0(\r_reg[blue][7]_0 ),
        .I1(\dc_bias_reg[0] ),
        .I2(\dc_bias_reg[3]_1 ),
        .O(\encoded[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hA656)) 
    \encoded[7]_i_1 
       (.I0(\r_reg[red][6]_0 ),
        .I1(\r_reg[red][7]_0 ),
        .I2(\dc_bias_reg[3]_3 ),
        .I3(\dc_bias_reg[3] ),
        .O(\r_reg[red][6]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h56A6)) 
    \encoded[7]_i_1__0 
       (.I0(\r_reg[green][6]_0 ),
        .I1(\r_reg[green][7]_0 ),
        .I2(\dc_bias_reg[1] ),
        .I3(\dc_bias_reg[3]_0 ),
        .O(\r_reg[green][6]_1 ));
  LUT6 #(
    .INIT(64'hB8BB8B88BBB8888B)) 
    \encoded[7]_i_1__1 
       (.I0(\r_reg[hSync] ),
        .I1(p_1_in),
        .I2(\dc_bias_reg[0] ),
        .I3(\r_reg[blue][7]_0 ),
        .I4(\encoded[7]_i_2__1_n_0 ),
        .I5(\dc_bias_reg[3]_1 ),
        .O(\r_reg[hSync]__0_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[7]_i_2 
       (.I0(Red[6]),
        .I1(Red[5]),
        .I2(\encoded[5]_i_2_n_0 ),
        .I3(Red[7]),
        .I4(\r_reg[red][7]_0 ),
        .O(\r_reg[red][6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \encoded[7]_i_2__0 
       (.I0(Green[6]),
        .I1(\encoded[5]_i_2__0_n_0 ),
        .I2(Green[4]),
        .I3(Green[7]),
        .I4(\r_reg[green][7]_0 ),
        .O(\r_reg[green][6]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \encoded[7]_i_2__1 
       (.I0(Blue[7]),
        .I1(\encoded[6]_i_2__0_n_0 ),
        .I2(Blue[5]),
        .I3(Blue[6]),
        .O(\encoded[7]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h55D71051557D1051)) 
    \encoded[7]_i_3 
       (.I0(\encoded[7]_i_4_n_0 ),
        .I1(Green[7]),
        .I2(\encoded[7]_i_5_n_0 ),
        .I3(\encoded[7]_i_6_n_0 ),
        .I4(\encoded[7]_i_7_n_0 ),
        .I5(\r_reg[green][0]_1 ),
        .O(\r_reg[green][7]_0 ));
  LUT6 #(
    .INIT(64'hE8E8E800E8000000)) 
    \encoded[7]_i_4 
       (.I0(Green[2]),
        .I1(Green[3]),
        .I2(Green[1]),
        .I3(Green[4]),
        .I4(Green[6]),
        .I5(Green[5]),
        .O(\encoded[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \encoded[7]_i_5 
       (.I0(Green[6]),
        .I1(Green[5]),
        .I2(Green[4]),
        .O(\encoded[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \encoded[7]_i_6 
       (.I0(Green[1]),
        .I1(Green[3]),
        .I2(Green[2]),
        .O(\encoded[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000001700171717)) 
    \encoded[7]_i_7 
       (.I0(Green[4]),
        .I1(Green[6]),
        .I2(Green[5]),
        .I3(Green[2]),
        .I4(Green[3]),
        .I5(Green[1]),
        .O(\encoded[7]_i_7_n_0 ));
  CARRY4 geqOp_carry
       (.CI(1'b0),
        .CO({geqOp_carry_n_0,geqOp_carry_n_1,geqOp_carry_n_2,geqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({geqOp_carry_i_1_n_0,\r_reg[hCounter][11]_0 [5],geqOp_carry_i_2_n_0,geqOp_carry_i_3_n_0}),
        .O(NLW_geqOp_carry_O_UNCONNECTED[3:0]),
        .S({geqOp_carry_i_4_n_0,geqOp_carry_i_5_n_0,geqOp_carry_i_6_n_0,geqOp_carry_i_7_n_0}));
  CARRY4 geqOp_carry__0
       (.CI(geqOp_carry_n_0),
        .CO({NLW_geqOp_carry__0_CO_UNCONNECTED[3:2],geqOp1_in,geqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,geqOp_carry__0_i_1_n_0,geqOp_carry__0_i_2_n_0}),
        .O(NLW_geqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,geqOp_carry__0_i_3_n_0,geqOp_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry__0_i_1
       (.I0(\r_reg[hCounter][11]_0 [10]),
        .I1(\r_reg[hCounter][11]_0 [11]),
        .O(geqOp_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry__0_i_2
       (.I0(\r_reg[hCounter][11]_0 [8]),
        .I1(\r_reg[hCounter][11]_0 [9]),
        .O(geqOp_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry__0_i_3
       (.I0(\r_reg[hCounter][11]_0 [10]),
        .I1(\r_reg[hCounter][11]_0 [11]),
        .O(geqOp_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry__0_i_4
       (.I0(\r_reg[hCounter][11]_0 [9]),
        .I1(\r_reg[hCounter][11]_0 [8]),
        .O(geqOp_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    geqOp_carry_i_1
       (.I0(\r_reg[hCounter][11]_0 [6]),
        .I1(\r_reg[hCounter][11]_0 [7]),
        .O(geqOp_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry_i_2
       (.I0(\r_reg[hCounter][11]_0 [2]),
        .I1(\r_reg[hCounter][11]_0 [3]),
        .O(geqOp_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    geqOp_carry_i_3
       (.I0(\r_reg[hCounter][11]_0 [0]),
        .I1(\r_reg[hCounter][11]_0 [1]),
        .O(geqOp_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry_i_4
       (.I0(\r_reg[hCounter][11]_0 [7]),
        .I1(\r_reg[hCounter][11]_0 [6]),
        .O(geqOp_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    geqOp_carry_i_5
       (.I0(\r_reg[hCounter][11]_0 [4]),
        .I1(\r_reg[hCounter][11]_0 [5]),
        .O(geqOp_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry_i_6
       (.I0(\r_reg[hCounter][11]_0 [2]),
        .I1(\r_reg[hCounter][11]_0 [3]),
        .O(geqOp_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    geqOp_carry_i_7
       (.I0(\r_reg[hCounter][11]_0 [0]),
        .I1(\r_reg[hCounter][11]_0 [1]),
        .O(geqOp_carry_i_7_n_0));
  CARRY4 \geqOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\geqOp_inferred__0/i__carry_n_0 ,\geqOp_inferred__0/i__carry_n_1 ,\geqOp_inferred__0/i__carry_n_2 ,\geqOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0}),
        .O(\NLW_geqOp_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4_n_0,i__carry_i_5_n_0,i__carry_i_6__1_n_0,i__carry_i_7__0_n_0}));
  CARRY4 \geqOp_inferred__0/i__carry__0 
       (.CI(\geqOp_inferred__0/i__carry_n_0 ),
        .CO({\NLW_geqOp_inferred__0/i__carry__0_CO_UNCONNECTED [3:2],geqOp,\geqOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,i__carry__0_i_1_n_0,out[9]}),
        .O(\NLW_geqOp_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(out[10]),
        .I1(out[11]),
        .O(i__carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_1__0
       (.I0(out[11]),
        .I1(out[10]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(out[11]),
        .I1(out[10]),
        .O(i__carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry__0_i_3
       (.I0(out[8]),
        .I1(out[9]),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_1
       (.I0(out[4]),
        .I1(out[5]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1__0
       (.I0(\r_reg[hCounter][11]_0 [9]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_1__1
       (.I0(out[8]),
        .I1(out[9]),
        .O(i__carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(out[3]),
        .I1(out[2]),
        .O(i__carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_2__0
       (.I0(out[6]),
        .I1(out[7]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_2__1
       (.I0(\r_reg[hCounter][11]_0 [6]),
        .I1(\r_reg[hCounter][11]_0 [7]),
        .O(i__carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_3
       (.I0(out[0]),
        .I1(out[1]),
        .O(i__carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_3__0
       (.I0(out[5]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_3__1
       (.I0(\r_reg[hCounter][11]_0 [4]),
        .I1(\r_reg[hCounter][11]_0 [5]),
        .O(i__carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_4
       (.I0(out[6]),
        .I1(out[7]),
        .O(i__carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    i__carry_i_4__0
       (.I0(out[2]),
        .I1(out[3]),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_4__1
       (.I0(\r_reg[hCounter][11]_0 [10]),
        .I1(\r_reg[hCounter][11]_0 [11]),
        .O(i__carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5
       (.I0(out[5]),
        .I1(out[4]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__0
       (.I0(\r_reg[hCounter][11]_0 [9]),
        .I1(\r_reg[hCounter][11]_0 [8]),
        .O(i__carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_5__1
       (.I0(out[8]),
        .I1(out[9]),
        .O(i__carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(\r_reg[hCounter][11]_0 [6]),
        .I1(\r_reg[hCounter][11]_0 [7]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6__0
       (.I0(out[6]),
        .I1(out[7]),
        .O(i__carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_6__1
       (.I0(out[3]),
        .I1(out[2]),
        .O(i__carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_7
       (.I0(\r_reg[hCounter][11]_0 [4]),
        .I1(\r_reg[hCounter][11]_0 [5]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7__0
       (.I0(out[1]),
        .I1(out[0]),
        .O(i__carry_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_7__1
       (.I0(out[5]),
        .I1(out[4]),
        .O(i__carry_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_8
       (.I0(out[3]),
        .I1(out[2]),
        .O(i__carry_i_8_n_0));
  CARRY4 \ltOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({ltOp0_in,\ltOp_inferred__1/i__carry_n_1 ,\ltOp_inferred__1/i__carry_n_2 ,\ltOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry_i_1__0_n_0,i__carry_i_2__1_n_0,i__carry_i_3__1_n_0}),
        .O(\NLW_ltOp_inferred__1/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_4__1_n_0,i__carry_i_5__0_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0}));
  CARRY4 \ltOp_inferred__2/i__carry 
       (.CI(1'b0),
        .CO({\ltOp_inferred__2/i__carry_n_0 ,\ltOp_inferred__2/i__carry_n_1 ,\ltOp_inferred__2/i__carry_n_2 ,\ltOp_inferred__2/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i__carry_i_1__1_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4__0_n_0}),
        .O(\NLW_ltOp_inferred__2/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_5__1_n_0,i__carry_i_6__0_n_0,i__carry_i_7__1_n_0,i__carry_i_8_n_0}));
  CARRY4 \ltOp_inferred__2/i__carry__0 
       (.CI(\ltOp_inferred__2/i__carry_n_0 ),
        .CO({\NLW_ltOp_inferred__2/i__carry__0_CO_UNCONNECTED [3:1],ltOp}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ltOp_inferred__2/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,i__carry__0_i_1__0_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    \r[hCounter][11]_i_1 
       (.I0(\r[hCounter][11]_i_3_n_0 ),
        .I1(\r[hCounter][11]_i_4_n_0 ),
        .O(eqOp));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \r[hCounter][11]_i_3 
       (.I0(\r_reg[hCounter][11]_0 [10]),
        .I1(\r_reg[hCounter][11]_0 [7]),
        .I2(\r_reg[hCounter][11]_0 [11]),
        .I3(\r_reg[hCounter][11]_0 [9]),
        .I4(\r_reg[hCounter][11]_0 [5]),
        .I5(\r_reg[hCounter][11]_0 [6]),
        .O(\r[hCounter][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r[hCounter][11]_i_4 
       (.I0(\r_reg[hCounter][11]_0 [0]),
        .I1(\r_reg[hCounter][11]_0 [1]),
        .I2(\r_reg[hCounter][11]_0 [2]),
        .I3(\r_reg[hCounter][11]_0 [3]),
        .I4(\r_reg[hCounter][11]_0 [4]),
        .I5(\r_reg[hCounter][11]_0 [8]),
        .O(\r[hCounter][11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[hCounter][3]_i_2 
       (.I0(\r_reg[hCounter][11]_0 [0]),
        .O(\r[hCounter][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r[hSync]_i_1 
       (.I0(geqOp1_in),
        .I1(ltOp0_in),
        .O(\r[hSync]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[h_v]_i_1 
       (.I0(ltOp3_in),
        .I1(ltOp2_in),
        .O(\n[h_v] ));
  LUT2 #(
    .INIT(4'h7)) 
    \r[h_v]_i_10 
       (.I0(out[6]),
        .I1(out[7]),
        .O(\r[h_v]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[h_v]_i_11 
       (.I0(out[5]),
        .O(\r[h_v]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r[h_v]_i_12 
       (.I0(out[11]),
        .I1(out[10]),
        .O(\r[h_v]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[h_v]_i_13 
       (.I0(out[8]),
        .I1(out[9]),
        .O(\r[h_v]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[h_v]_i_14 
       (.I0(out[6]),
        .I1(out[7]),
        .O(\r[h_v]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[h_v]_i_15 
       (.I0(out[5]),
        .I1(out[4]),
        .O(\r[h_v]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[h_v]_i_4 
       (.I0(\r_reg[hCounter][11]_0 [9]),
        .O(\r[h_v]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[h_v]_i_5 
       (.I0(\r_reg[hCounter][11]_0 [7]),
        .O(\r[h_v]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r[h_v]_i_6 
       (.I0(\r_reg[hCounter][11]_0 [10]),
        .I1(\r_reg[hCounter][11]_0 [11]),
        .O(\r[h_v]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[h_v]_i_7 
       (.I0(\r_reg[hCounter][11]_0 [9]),
        .I1(\r_reg[hCounter][11]_0 [8]),
        .O(\r[h_v]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \r[h_v]_i_8 
       (.I0(\r_reg[hCounter][11]_0 [7]),
        .I1(\r_reg[hCounter][11]_0 [6]),
        .O(\r[h_v]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \r[h_v]_i_9 
       (.I0(out[8]),
        .I1(out[9]),
        .O(\r[h_v]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r[red][7]_i_1 
       (.I0(ltOp2_in),
        .I1(ltOp3_in),
        .O(\r[red][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \r[vCounter][11]_i_1 
       (.I0(eqOp),
        .I1(\r[vCounter][11]_i_3_n_0 ),
        .I2(out[11]),
        .I3(out[10]),
        .I4(out[8]),
        .I5(out[1]),
        .O(\n[vCounter] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \r[vCounter][11]_i_3 
       (.I0(out[5]),
        .I1(out[4]),
        .I2(out[7]),
        .I3(out[6]),
        .I4(\r[vCounter][11]_i_4_n_0 ),
        .O(\r[vCounter][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \r[vCounter][11]_i_4 
       (.I0(out[9]),
        .I1(out[0]),
        .I2(out[3]),
        .I3(out[2]),
        .O(\r[vCounter][11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \r[vCounter][3]_i_2 
       (.I0(out[0]),
        .O(\r[vCounter][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r[vSync]_i_1 
       (.I0(geqOp),
        .I1(ltOp),
        .O(\n[vSync] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blank] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r[red][7]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[16]),
        .Q(Blue[0]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[17]),
        .Q(Blue[1]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[18]),
        .Q(Blue[2]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[19]),
        .Q(Blue[3]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[20]),
        .Q(Blue[4]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[21]),
        .Q(Blue[5]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[22]),
        .Q(Blue[6]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[blue][7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[23]),
        .Q(Blue[7]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[8]),
        .Q(\r_reg[green][0]_1 ),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[9]),
        .Q(Green[1]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[10]),
        .Q(Green[2]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[11]),
        .Q(Green[3]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[12]),
        .Q(Green[4]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[13]),
        .Q(Green[5]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[14]),
        .Q(Green[6]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[green][7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[15]),
        .Q(Green[7]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][3]_i_1_n_7 ),
        .Q(\r_reg[hCounter][11]_0 [0]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][10] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][11]_i_2_n_5 ),
        .Q(\r_reg[hCounter][11]_0 [10]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][11] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][11]_i_2_n_4 ),
        .Q(\r_reg[hCounter][11]_0 [11]),
        .R(eqOp));
  CARRY4 \r_reg[hCounter][11]_i_2 
       (.CI(\r_reg[hCounter][7]_i_1_n_0 ),
        .CO({\NLW_r_reg[hCounter][11]_i_2_CO_UNCONNECTED [3],\r_reg[hCounter][11]_i_2_n_1 ,\r_reg[hCounter][11]_i_2_n_2 ,\r_reg[hCounter][11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg[hCounter][11]_i_2_n_4 ,\r_reg[hCounter][11]_i_2_n_5 ,\r_reg[hCounter][11]_i_2_n_6 ,\r_reg[hCounter][11]_i_2_n_7 }),
        .S(\r_reg[hCounter][11]_0 [11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][3]_i_1_n_6 ),
        .Q(\r_reg[hCounter][11]_0 [1]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][3]_i_1_n_5 ),
        .Q(\r_reg[hCounter][11]_0 [2]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][3]_i_1_n_4 ),
        .Q(\r_reg[hCounter][11]_0 [3]),
        .R(eqOp));
  CARRY4 \r_reg[hCounter][3]_i_1 
       (.CI(1'b0),
        .CO({\r_reg[hCounter][3]_i_1_n_0 ,\r_reg[hCounter][3]_i_1_n_1 ,\r_reg[hCounter][3]_i_1_n_2 ,\r_reg[hCounter][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_reg[hCounter][3]_i_1_n_4 ,\r_reg[hCounter][3]_i_1_n_5 ,\r_reg[hCounter][3]_i_1_n_6 ,\r_reg[hCounter][3]_i_1_n_7 }),
        .S({\r_reg[hCounter][11]_0 [3:1],\r[hCounter][3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][7]_i_1_n_7 ),
        .Q(\r_reg[hCounter][11]_0 [4]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][7]_i_1_n_6 ),
        .Q(\r_reg[hCounter][11]_0 [5]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][7]_i_1_n_5 ),
        .Q(\r_reg[hCounter][11]_0 [6]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][7]_i_1_n_4 ),
        .Q(\r_reg[hCounter][11]_0 [7]),
        .R(eqOp));
  CARRY4 \r_reg[hCounter][7]_i_1 
       (.CI(\r_reg[hCounter][3]_i_1_n_0 ),
        .CO({\r_reg[hCounter][7]_i_1_n_0 ,\r_reg[hCounter][7]_i_1_n_1 ,\r_reg[hCounter][7]_i_1_n_2 ,\r_reg[hCounter][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg[hCounter][7]_i_1_n_4 ,\r_reg[hCounter][7]_i_1_n_5 ,\r_reg[hCounter][7]_i_1_n_6 ,\r_reg[hCounter][7]_i_1_n_7 }),
        .S(\r_reg[hCounter][11]_0 [7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][8] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][11]_i_2_n_7 ),
        .Q(\r_reg[hCounter][11]_0 [8]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hCounter][9] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r_reg[hCounter][11]_i_2_n_6 ),
        .Q(\r_reg[hCounter][11]_0 [9]),
        .R(eqOp));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[hSync]__0 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\r[hSync]_i_1_n_0 ),
        .Q(\r_reg[hSync] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[h_v] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\n[h_v] ),
        .Q(v_video),
        .R(1'b0));
  CARRY4 \r_reg[h_v]_i_2 
       (.CI(1'b0),
        .CO({\NLW_r_reg[h_v]_i_2_CO_UNCONNECTED [3],ltOp3_in,\r_reg[h_v]_i_2_n_2 ,\r_reg[h_v]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\r[h_v]_i_4_n_0 ,\r[h_v]_i_5_n_0 }),
        .O(\NLW_r_reg[h_v]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,\r[h_v]_i_6_n_0 ,\r[h_v]_i_7_n_0 ,\r[h_v]_i_8_n_0 }));
  CARRY4 \r_reg[h_v]_i_3 
       (.CI(1'b0),
        .CO({ltOp2_in,\r_reg[h_v]_i_3_n_1 ,\r_reg[h_v]_i_3_n_2 ,\r_reg[h_v]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\r[h_v]_i_9_n_0 ,\r[h_v]_i_10_n_0 ,\r[h_v]_i_11_n_0 }),
        .O(\NLW_r_reg[h_v]_i_3_O_UNCONNECTED [3:0]),
        .S({\r[h_v]_i_12_n_0 ,\r[h_v]_i_13_n_0 ,\r[h_v]_i_14_n_0 ,\r[h_v]_i_15_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][0] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[0]),
        .Q(\r_reg[red][0]_1 ),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][1] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[1]),
        .Q(Red[1]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][2] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[2]),
        .Q(Red[2]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][3] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[3]),
        .Q(Red[3]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][4] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[4]),
        .Q(Red[4]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][5] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[5]),
        .Q(Red[5]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][6] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[6]),
        .Q(Red[6]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[red][7] 
       (.C(clk_vga),
        .CE(1'b1),
        .D(g_rgb[7]),
        .Q(Red[7]),
        .R(\r[red][7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][0] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][3]_i_1_n_7 ),
        .Q(out[0]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][10] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][11]_i_2_n_5 ),
        .Q(out[10]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][11] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][11]_i_2_n_4 ),
        .Q(out[11]),
        .R(\n[vCounter] ));
  CARRY4 \r_reg[vCounter][11]_i_2 
       (.CI(\r_reg[vCounter][7]_i_1_n_0 ),
        .CO({\NLW_r_reg[vCounter][11]_i_2_CO_UNCONNECTED [3],\r_reg[vCounter][11]_i_2_n_1 ,\r_reg[vCounter][11]_i_2_n_2 ,\r_reg[vCounter][11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg[vCounter][11]_i_2_n_4 ,\r_reg[vCounter][11]_i_2_n_5 ,\r_reg[vCounter][11]_i_2_n_6 ,\r_reg[vCounter][11]_i_2_n_7 }),
        .S(out[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][1] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][3]_i_1_n_6 ),
        .Q(out[1]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][2] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][3]_i_1_n_5 ),
        .Q(out[2]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][3] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][3]_i_1_n_4 ),
        .Q(out[3]),
        .R(\n[vCounter] ));
  CARRY4 \r_reg[vCounter][3]_i_1 
       (.CI(1'b0),
        .CO({\r_reg[vCounter][3]_i_1_n_0 ,\r_reg[vCounter][3]_i_1_n_1 ,\r_reg[vCounter][3]_i_1_n_2 ,\r_reg[vCounter][3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\r_reg[vCounter][3]_i_1_n_4 ,\r_reg[vCounter][3]_i_1_n_5 ,\r_reg[vCounter][3]_i_1_n_6 ,\r_reg[vCounter][3]_i_1_n_7 }),
        .S({out[3:1],\r[vCounter][3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][4] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][7]_i_1_n_7 ),
        .Q(out[4]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][5] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][7]_i_1_n_6 ),
        .Q(out[5]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][6] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][7]_i_1_n_5 ),
        .Q(out[6]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][7] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][7]_i_1_n_4 ),
        .Q(out[7]),
        .R(\n[vCounter] ));
  CARRY4 \r_reg[vCounter][7]_i_1 
       (.CI(\r_reg[vCounter][3]_i_1_n_0 ),
        .CO({\r_reg[vCounter][7]_i_1_n_0 ,\r_reg[vCounter][7]_i_1_n_1 ,\r_reg[vCounter][7]_i_1_n_2 ,\r_reg[vCounter][7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\r_reg[vCounter][7]_i_1_n_4 ,\r_reg[vCounter][7]_i_1_n_5 ,\r_reg[vCounter][7]_i_1_n_6 ,\r_reg[vCounter][7]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][8] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][11]_i_2_n_7 ),
        .Q(out[8]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vCounter][9] 
       (.C(clk_vga),
        .CE(eqOp),
        .D(\r_reg[vCounter][11]_i_2_n_6 ),
        .Q(out[9]),
        .R(\n[vCounter] ));
  FDRE #(
    .INIT(1'b0)) 
    \r_reg[vSync]__0 
       (.C(clk_vga),
        .CE(1'b1),
        .D(\n[vSync] ),
        .Q(\r_reg[vSync] ),
        .R(1'b0));
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
