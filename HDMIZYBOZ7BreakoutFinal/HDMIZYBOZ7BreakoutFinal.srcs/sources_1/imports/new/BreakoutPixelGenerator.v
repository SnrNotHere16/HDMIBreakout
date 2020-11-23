`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: BreakoutPixelGenerator.v
//The following structual module consists of the breakout game mechanics. 
//A seventy five pulse is sent to update the breakout animation. 
//////////////////////////////////////////////////////////////////////////////////


module BreakoutPixelGenerator(clk, tick, reset, btn1, LR, h_video, v_video, pixel_x, pixel_y, rgb_next, gameover, status, 
                                speed, brickstaken, player_name);
input clk, tick, reset, btn1, h_video, v_video;
input [1:0] LR; //The direction of the paddle
input [3:0] speed; //The speed of the ball
input [11:0] pixel_x, pixel_y; //The pixel position
input wire [23:0] player_name; //The player's name
output wire [23:0] rgb_next; //The color to ouptut on the monitor
output wire [4:0] brickstaken; //The amount of bricks destroyed 
output wire gameover, status; //The status of the game.
wire tick_75; //A positive tick sent every 75hz

    //This module sentds a positive tick every 75hz. It acts as the 
    //animation's refresh rate. 
    refr_tick zero (.clk(clk), .reset(reset), .tick75hz(tick_75));
    //This module outputs the color for the breakout animation. 
    //The breakout game animation and control is handeld in this module. 
   breakout_animate one (.clk(clk), .reset(reset),.btn(LR), .tick75hz(tick_75),.btn1(btn1),
                          .h_video(h_video), .v_video(v_video),.pix_x(pixel_x),.pix_y(pixel_y),
                           .graph_rgb(rgb_next), .gameover(gameover), .brickstaken(brickstaken), .status(status),
                           .speed(speed), .player_name(player_name));
    
   

endmodule
