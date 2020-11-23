`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: breakout_animate.v
// The following module animates the breakout game. 
//////////////////////////////////////////////////////////////////////////////////


module breakout_animate(  clk,
                          reset,
                          btn,
                          btn1,
                          h_video,
                          v_video,
                          tick75hz,
                          pix_x,
                          pix_y,
                          graph_rgb,
                          gameover,
                          brickstaken,
                          status,
                          speed,
                          player_name
                          );
input wire clk, reset, tick75hz, btn1, h_video, v_video;
input wire [1:0] btn;//the direciton of the paddle 
input wire [3:0] speed; //the speed of the ball 
input wire [11:0] pix_x, pix_y; //the positon of the pixel on the monitor
input wire [23:0] player_name; // the player's name
output wire gameover, status;
wire tick_color; //a tick that switches every .25ms
wire titleScreen, startGame; //the status of the game
output reg [23:0] graph_rgb; //the color to display on the monitor
//the wires for the paddle(bar)
wire [11:0] bar_x_l, bar_x_r, ball_y_t, ball_y_b, ball_x_l, ball_x_r;
//determines if the object should be displayed on the monitor
wire bar_on, rd_ball_on, title_rd_ball_on; 
//determines if a brick should be displayed on the monitor
wire brick_on,brick_on1, brick_on2, brick_on3, brick_on4,
     brick_on5,brick_on6, brick_on7, brick_on8, brick_on9,
     brick_on10, brick_on11, brick_on12, brick_on13, brick_on14,
     brick_on15, brick_on16, brick_on17, brick_on18, brick_on19,
     brick_on20, brick_on21, brick_on22, brick_on23, brick_on24,
     brick_on25, brick_on26, brick_on27, brick_on28, brick_on29;
//the color of the referenced object
wire [23:0] bar_rgb, ball_rgb,titlescreen_l_rgb, paddle_rgb, title_rd_ball_rgb, n_l_rgb, na_l_rgb;
//The colors of the bricks 
wire [23:0] brick_rgb, brick_rgb1, brick_rgb2, brick_rgb3, brick_rgb4, 
            brick_rgb5, brick_rgb6,brick_rgb7, brick_rgb8, brick_rgb9,
            brick_rgb10, brick_rgb11, brick_rgb12, brick_rgb13, brick_rgb14,
            brick_rgb15, brick_rgb16, brick_rgb17, brick_rgb18, brick_rgb19,
            brick_rgb20, brick_rgb21, brick_rgb22, brick_rgb23, brick_rgb24,
            brick_rgb25, brick_rgb26, brick_rgb27, brick_rgb28, brick_rgb29;
//The possible directions of the balls depending on which of the 30 bricks (0-29) are hit
wire [2:0] direction, direction1,  direction2, direction3, direction4, 
           direction5, direction6, direction7, direction8, direction9, 
           direction10, direction11,  direction12, direction13, direction14, 
           direction15, direction16, direction17, direction18, direction19,
           direction20, direction21,  direction22, direction23, direction24, 
           direction25, direction26, direction27, direction28, direction29,
           directionall;
output wire [4:0] brickstaken;//The amount of total brick destroyed
wire [17:0] brickscore; //The score based off the bricks taken
//Should the object be displayed on the monitor 
wire gameover_letter_on, gameover_l_rgb, titlescreen_letter_on, paddle_on, n_l_on, na_l_on;
//Determines whter a brick is still alive
wire brick_p, brick_p1,brick_p2, brick_p3, brick_p4, 
     brick_p5, brick_p6, brick_p7, brick_p8, brick_p9,
     brick_p10, brick_p11, brick_p12, brick_p13, brick_p14,
     brick_p15, brick_p16, brick_p17, brick_p18, brick_p19,
     brick_p20, brick_p21, brick_p22, brick_p23, brick_p24,
     brick_p25, brick_p26, brick_p27, brick_p28, brick_p29;
 wire lives; //The lives of the player

//This module is a switch that changes between 0 and 1 every .25 ms
color_tick alpha (.clk(clk), .reset(reset), .tick_color(tick_color));
//This module controls and animates the bar
bar_animate zero(.clk(clk), .reset(reset),.btn (btn), 
                 .pix_x(pix_x), .tick75hz(tick75hz),.pix_y(pix_y), 
                 .bar_x_l(bar_x_l), .bar_x_r(bar_x_r), .bar_rgb(bar_rgb), .bar_on(bar_on));
//This module animates the ball 
 ball_animate one ( .clk(clk), .reset(reset), .notBreakout(titleScreen),
                     .tick75hz(tick75hz),.start_game(startGame),.direction(directionall),
                     .pix_x(pix_x),.pix_y(pix_y), .bar_x_l(bar_x_l),
                     .bar_x_r(bar_x_r),.ball_rgb(ball_rgb),.rd_ball_on(rd_ball_on),
                     .ball_y_t(ball_y_t), .ball_y_b(ball_y_b), 
                     .ball_x_l (ball_x_l), .ball_x_r(ball_x_r),
                     .gameover(gameover), .speed(speed), .lives(lives) );
                     
/////////////////////////////////////////////////////////////////////////////////////
//The following modules are for the bricks 
//Row 0 
  bricktest R0_0(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on),
                   .brick_rgb(brick_rgb),
                   .brick_rgbin(24'hFFFFFF),
                   .brick_hits(8'b0001_0100),
                   .direction(direction),
                   .BRICK_Y_T(10),
                   .BRICK_X_L(0),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p));
  bricktest R0_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on1),
                   .brick_rgb(brick_rgb1),
                   .brick_rgbin(24'hFFFFFF),
                   .brick_hits(8'b0001_0100),
                   .direction(direction1),
                   .BRICK_Y_T(10),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p1));
                   //24'hDE6565
    bricktest R0_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on2),
                   .brick_rgb(brick_rgb2),
                   .brick_rgbin(24'hFFFFFF),
                   .brick_hits(8'b0001_0100),
                   .direction(direction2),
                   .BRICK_Y_T(10),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p2));
    bricktest R0_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on3),
                   .brick_rgb(brick_rgb3),
                   .brick_rgbin(24'hFFFFFF),
                   .brick_hits(8'b0001_0100),
                   .direction(direction3),
                   .BRICK_Y_T(10),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p3));
      bricktest R0_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on4),
                   .brick_rgb(brick_rgb4),
                   .brick_rgbin(24'hFFFFFF),
                   .brick_hits(8'b0001_0100),
                   .direction(direction4),
                   .BRICK_Y_T(10),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p4));
 //R1              
  bricktest R1_0(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on5),
                   .brick_rgb(brick_rgb5),
                   .brick_rgbin(24'hFF6600),
                   .brick_hits(8'b0000_1100),
                   .direction(direction5),
                   .BRICK_Y_T(40),
                   .BRICK_X_L(0),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p5));
  bricktest R1_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on6),
                   .brick_rgb(brick_rgb6),
                   .brick_rgbin(24'hFF6600),
                   .brick_hits(8'b0000_1100),
                   .direction(direction6),
                   .BRICK_Y_T(40),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p6));
                   //24'hDE6565
    bricktest R1_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on7),
                   .brick_rgb(brick_rgb7),
                   .brick_rgbin(24'hFF6600),
                   .brick_hits(8'b0000_1100),
                   .direction(direction7),
                   .BRICK_Y_T(40),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p7));
    bricktest R1_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on8),
                   .brick_rgb(brick_rgb8),
                   .brick_rgbin(24'hFF6600),
                   .brick_hits(8'b0000_1100),
                   .direction(direction8),
                   .BRICK_Y_T(40),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p8));
      bricktest R1_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on9),
                   .brick_rgb(brick_rgb9),
                   .brick_rgbin(24'hFF6600),
                   .brick_hits(8'b0000_1100),
                   .direction(direction9),
                   .BRICK_Y_T(40),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p9));
//Row 2
      bricktest R2_0 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on10),
                   .brick_rgb(brick_rgb10),
                   .brick_hits(8'b0000_1100),
                   .brick_rgbin(24'h00FFEF),
                   .direction(direction10),
                   .BRICK_X_L(0),
                   .BRICK_Y_T(70),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p10));

        bricktest R2_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on11),
                   .brick_rgb(brick_rgb11),
                   .brick_rgbin(24'h00FFEF),
                   .brick_hits(8'b0000_1100),
                   .direction(direction11),
                   .BRICK_Y_T(70),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p11));
                   //24'hDE6565
    bricktest R2_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on12),
                   .brick_rgb(brick_rgb12),
                   .brick_rgbin(24'h00FFEF),
                   .brick_hits(8'b0000_1100),
                   .direction(direction12),
                   .BRICK_Y_T(70),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p12));
    bricktest R2_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on13),
                   .brick_rgb(brick_rgb13),
                   .brick_rgbin(24'h00FFEF),
                   .brick_hits(8'b0000_1100),
                   .direction(direction13),
                   .BRICK_Y_T(70),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p13));
      bricktest R2_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on14),
                   .brick_rgb(brick_rgb14),
                   .brick_rgbin(24'h00FFEF),
                   .brick_hits(8'b0000_1100),
                   .direction(direction14),
                   .BRICK_Y_T(70),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p14));
//R3
      bricktest R3_0 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on15),
                   .brick_rgb(brick_rgb15),
                   .brick_hits(8'b0000_0001),
                   .brick_rgbin(24'h82EFD5),
                   .direction(direction15),
                   .BRICK_X_L(0),
                   .BRICK_Y_T(100),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p15));

        bricktest R3_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on16),
                   .brick_rgb(brick_rgb16),
                   .brick_rgbin(24'h82EFD5),
                   .brick_hits(8'b0000_0001),
                   .direction(direction16),
                   .BRICK_Y_T(100),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p16));
                
    bricktest R3_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on17),
                   .brick_rgb(brick_rgb17),
                   .brick_rgbin(24'h82EFD5),
                   .brick_hits(8'b0000_0001),
                   .direction(direction17),
                   .BRICK_Y_T(100),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p17));
    bricktest R3_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on18),
                   .brick_rgb(brick_rgb18),
                   .brick_rgbin(24'h82EFD5),
                   .brick_hits(8'b0000_0001),
                   .direction(direction18),
                   .BRICK_Y_T(100),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p18));
      bricktest R3_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on19),
                   .brick_rgb(brick_rgb19),
                   .brick_rgbin(24'h82EFD5),
                   .brick_hits(8'b0000_0001),
                   .direction(direction19),
                   .BRICK_Y_T(100),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p19));

      bricktest R4_0 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on20),
                   .brick_rgb(brick_rgb20),
                   .brick_hits(8'b0000_0100),
                   .brick_rgbin(24'h26AF80),
                   .direction(direction20),
                   .BRICK_X_L(0),
                   .BRICK_Y_T(130),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p20));

        bricktest R4_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on21),
                   .brick_rgb(brick_rgb21),
                   .brick_rgbin(24'h26AF80),
                   .brick_hits(8'b0000_0100),
                   .direction(direction21),
                   .BRICK_Y_T(130),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p21));
           
    bricktest R4_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on22),
                   .brick_rgb(brick_rgb22),
                   .brick_rgbin(24'h26AF80),
                   .brick_hits(8'b0000_0100),
                   .direction(direction22),
                   .BRICK_Y_T(130),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p22));
    bricktest R4_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on23),
                   .brick_rgb(brick_rgb23),
                   .brick_rgbin(24'h26AF80),
                   .brick_hits(8'b0000_0100),
                   .direction(direction23),
                   .BRICK_Y_T(130),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p23));
      bricktest R4_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on24),
                   .brick_rgb(brick_rgb24),
                   .brick_rgbin(24'h26AF80),
                   .brick_hits(8'b0000_0100),
                   .direction(direction24),
                   .BRICK_Y_T(130),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p24));
                   
      bricktest R5_0 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on25),
                   .brick_rgb(brick_rgb25),
                   .brick_rgbin(24'hA9BE5C),
                   .brick_hits(8'b0000_0001),
                   .direction(direction25),
                   .BRICK_X_L(0),
                   .BRICK_Y_T(160),
                   .BRICK_LENGTH(135),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p25));
                   
        bricktest R5_1(  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on26),
                   .brick_rgb(brick_rgb26),
                   .brick_rgbin(24'hA9BE5C),
                   .brick_hits(8'b0000_0001),
                   .direction(direction26),
                   .BRICK_Y_T(160),
                   .BRICK_X_L(138),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p26));
                   
    bricktest R5_2 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on27),
                   .brick_rgb(brick_rgb27),
                   .brick_rgbin(24'hA9BE5C),
                   .brick_hits(8'b0000_0001),
                   .direction(direction27),
                   .BRICK_Y_T(160),
                   .BRICK_X_L(261),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p27));
    bricktest R5_3 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on28),
                   .brick_rgb(brick_rgb28),
                   .brick_rgbin(24'hA9BE5C),
                   .brick_hits(8'b0000_0001),
                   .direction(direction28),
                   .BRICK_Y_T(160),
                   .BRICK_X_L(384),
                   .BRICK_LENGTH(120),
                   .BRICK_DEPTH(20),
                    .brick_p(brick_p28));
      bricktest R5_4 (  .clk(clk),
                   .reset(reset),
                   .tick75hz(tick75hz),
                   .pix_x(pix_x),
                   .pix_y(pix_y),
                   .ball_y_t(ball_y_t),
                   .ball_y_b(ball_y_b),
                   .ball_x_l(ball_x_l),
                   .ball_x_r(ball_x_r),
                   .brick_on(brick_on29),
                   .brick_rgb(brick_rgb29),
                   .brick_rgbin(24'hA9BE5C),
                   .brick_hits(8'b0000_0001),
                   .direction(direction29),
                   .BRICK_Y_T(160),
                   .BRICK_X_L(507),
                   .BRICK_LENGTH(133),
                   .BRICK_DEPTH(20),
                   .brick_p(brick_p29));
                     
/////////////////////////////////////////////////////////////////////////////////////
                   
  //This module manages the "GAMEOVER", "NAME", and "SCORE" display
  gameover ten( .clk(clk), .reset(reset),.tick75hz(tick75hz),
                     .pix_x(pix_x),.pix_y(pix_y),
                     .letter_on(gameover_letter_on), .l_rgb(gameover_l_rgb));
  //This module manages the player's score display
  gameoverScore eleven(.clk(clk), .reset(reset), .tick75hz(tick75hz), 
                 .pix_x(pix_x),.pix_y(pix_y), .gamescore(brickscore+(lives*101)+111),
                 .brickstaken(brickstaken), .lives(lives), .gameover(gameover),
                 .n_l_on(n_l_on), .n_l_rgb(n_l_rgb));
  //This module manages the player's name display. Only 3 capital letters can be displayed
  gameoverName twelve(.clk(clk), .reset(reset), .tick75hz(tick75hz), 
                .pix_x(pix_x),.pix_y(pix_y), 
                .p_c0(player_name[7:0]), .p_c1(player_name[15:8]), .p_c2(player_name[23:16]),
                .na_l_on(na_l_on), .na_l_rgb(na_l_rgb));
  //This module manages the title screen's display           
  TitleScreen thirteen(.clk(clk), .reset(reset), .tick75hz(tick75hz),
                .btn1(btn1),.pix_x(pix_x), .pix_y(pix_y),
               .titleScreen(titleScreen), .startGame(startGame),
               .letter_on(titlescreen_letter_on), .l_rgb(titlescreen_l_rgb),
               .paddle_rgb(paddle_rgb), .paddle_on(paddle_on), 
               .rd_ball_on (title_rd_ball_on), .rd_ball_rgb(title_rd_ball_rgb)
               );
  //The following sensitivity list determines the color to display on the monitor 
   always @*
      if (~(h_video&&v_video)) begin 
         graph_rgb = 24'b000; // blank
      end 
      else begin 
          if (bar_on & !gameover & !titleScreen) //game is in session, display bar's color
            graph_rgb = bar_rgb;
         else if (rd_ball_on & !gameover & !titleScreen)//game is in session, display ball's color
            graph_rgb = ball_rgb;
            
///////////////////////////////////////////////////////////////////////////////////////////////////
//The following display bricks and the game is in session
         else if (brick_on & !gameover & !titleScreen) 
            graph_rgb = brick_rgb;
         else if (brick_on1 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb1;
         else if (brick_on2 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb2;
         else if (brick_on3 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb3;
         else if (brick_on4 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb4;
         else if (brick_on5 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb5; 
         else if (brick_on6 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb6;
         else if (brick_on7 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb7; 
         else if (brick_on8 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb8;
         else if (brick_on9 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb9;
         else if (brick_on10 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb10;
         else if (brick_on11 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb11;
         else if (brick_on12 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb12;
         else if (brick_on13 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb13;
         else if (brick_on14 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb14;
         else if (brick_on15 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb15;
         else if (brick_on16 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb16;
         else if (brick_on17 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb17;
         else if (brick_on18 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb18;
         else if (brick_on19 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb19;
         else if (brick_on20 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb20;
         else if (brick_on21 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb21;
         else if (brick_on22 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb22;
         else if (brick_on23 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb23;
         else if (brick_on24 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb24;
         else if (brick_on25 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb25;
         else if (brick_on26 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb26;
         else if (brick_on27 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb27;
         else if (brick_on28 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb28;
         else if (brick_on29 & !gameover & !titleScreen) 
            graph_rgb = brick_rgb29;
///////////////////////////////////////////////////////////////////////////////////////////////////

        //In this condition the game has ended, game over screen
         else if (gameover) begin 
            if (gameover_letter_on) //display "gameover", "name", and "score" color
                graph_rgb = gameover_l_rgb;
            else if(n_l_on) begin //display player's score color
                if (tick_color) //toggle the color
                    graph_rgb = 24'hFFFFFF;
                else 
                    graph_rgb = 24'h00FFFF;
                
            end 
            else if (na_l_on) begin //display player's name color
                if (tick_color)//toggle the color
                    graph_rgb = na_l_rgb;
                else 
                    graph_rgb = 24'h7800FF;
                    
            end 
            else 
                graph_rgb = {8{3'b101}}; //display the background
         end
         //The game is in the title screen
         else if (titleScreen) begin 
            if (titlescreen_letter_on)//display "BREAKOUT" color
                graph_rgb = titlescreen_l_rgb;
            else if (paddle_on) //display the paddle's color
                graph_rgb = paddle_rgb;
            else if (title_rd_ball_on) //display the ball's color
                graph_rgb = title_rd_ball_rgb;
            else 
            graph_rgb = 24'hFFFFFF; //display the title screen's background color
         end
         else 
            graph_rgb = 24'hAF87FF; //display the game's background color
      end
            
            //Determines the amount of bricks taken
            assign brickstaken =    !brick_p+!brick_p1+!brick_p2+!brick_p3+!brick_p4+
                                    !brick_p5+!brick_p6+!brick_p7+!brick_p8+!brick_p9+
                                    !brick_p10+!brick_p11+!brick_p12+!brick_p13+!brick_p14+
                                    !brick_p15+!brick_p16+!brick_p17+!brick_p18+!brick_p19+
                                    !brick_p20+!brick_p21+!brick_p22+!brick_p23+!brick_p24+
                                    !brick_p25+!brick_p26+!brick_p27+!brick_p28+!brick_p29;
            //Calculates the score of the player.                       
            assign brickscore =     speed*(7*(!brick_p+!brick_p1+!brick_p2+!brick_p3+!brick_p4)+
                                    4*(!brick_p5+!brick_p6+!brick_p7+!brick_p8+!brick_p9)+
                                    4*(!brick_p10+!brick_p11+!brick_p12+!brick_p13+!brick_p14)+
                                    !brick_p15+!brick_p16+!brick_p17+!brick_p18+!brick_p19+
                                    2*(!brick_p20+!brick_p21+!brick_p22+!brick_p23+!brick_p24)+
                                    !brick_p25+!brick_p26+!brick_p27+!brick_p28+!brick_p29)*100;
                                                
            assign status = gameover;
            //Determines the direction the ball should move
            assign directionall = direction | direction1 |  direction2 | direction3 | direction4 | 
                                   direction5 | direction6 | direction7 | direction8 | direction9 |
                                   direction10 | direction11 | direction12| direction13 | direction14 |
                                   direction15 | direction16 | direction17| direction18 | direction19 |
                                   direction20 | direction21 | direction22| direction23 | direction24 |
                                   direction25 | direction26 | direction27| direction28 | direction29;
                                   
endmodule

