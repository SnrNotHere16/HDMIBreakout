// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:BreakoutPixelGenerator:1.0
// IP Revision: 1

(* X_CORE_INFO = "BreakoutPixelGenerator,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "HDMIZYBOZ7_BreakoutPixelGenerat_0_0,BreakoutPixelGenerator,{}" *)
(* CORE_GENERATION_INFO = "HDMIZYBOZ7_BreakoutPixelGenerat_0_0,BreakoutPixelGenerator,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=BreakoutPixelGenerator,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module HDMIZYBOZ7_BreakoutPixelGenerat_0_0 (
  clk,
  tick,
  reset,
  btn1,
  LR,
  h_video,
  v_video,
  pixel_x,
  pixel_y,
  rgb_next,
  gameover,
  status,
  speed,
  brickstaken,
  player_name
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire tick;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire btn1;
input wire [1 : 0] LR;
input wire h_video;
input wire v_video;
input wire [11 : 0] pixel_x;
input wire [11 : 0] pixel_y;
output wire [23 : 0] rgb_next;
output wire gameover;
output wire status;
input wire [3 : 0] speed;
output wire [4 : 0] brickstaken;
input wire [23 : 0] player_name;

  BreakoutPixelGenerator inst (
    .clk(clk),
    .tick(tick),
    .reset(reset),
    .btn1(btn1),
    .LR(LR),
    .h_video(h_video),
    .v_video(v_video),
    .pixel_x(pixel_x),
    .pixel_y(pixel_y),
    .rgb_next(rgb_next),
    .gameover(gameover),
    .status(status),
    .speed(speed),
    .brickstaken(brickstaken),
    .player_name(player_name)
  );
endmodule
