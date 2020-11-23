`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: bricktest.v
// The following module manages a brick's position and animation. 
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// lives: 
// 0000_0001 = 1 lives 
// 0000_0100 = 2 lives 
// 0000_1000 = 3 lives 
// 0000_1100 = 4 lives 
// 0000_1110 = 5 lives 
// 0001_0000 = 6 lives  
// 0001_0100 = 7 lives 
// 0001_1000 = 8 lives 
// 0001_1010 = 9 lives 
// 0001_1100 = 10 lives 
// 
//////////////////////////////////////////////////////////////////////////////////


module bricktest(  clk,
                   reset,
                   tick75hz,
                   pix_x,
                   pix_y,
                   ball_y_t,
                   ball_y_b,
                   ball_x_l,
                   ball_x_r,
                   brick_on,
                   brick_rgb,
                   brick_hits,
                   direction,
                   BRICK_Y_T,
                   BRICK_X_L,
                   BRICK_LENGTH,
                   BRICK_DEPTH,
                   brick_rgbin,
                   brick_p);
                   
input  clk, reset, tick75hz;
input [7:0] brick_hits, BRICK_DEPTH;// the amount of brick damage and depht
input [8:0] BRICK_LENGTH;// the brick's lentgh
input [23:0] brick_rgbin; // the color of the brick
//The position on the monitor and the ball's position on the monitor
input [11:0] pix_x, pix_y, ball_y_t, ball_y_b, ball_x_l, ball_x_r; 
output brick_on; //If the pixel is on the brick's monitor position 
output [23:0] brick_rgb; //The color of the brick 
output wire brick_p; //Does the brick have any lives left
output reg [2:0] direction; //The direciton the ball should move.
input [11:0] BRICK_Y_T, BRICK_X_L; //The top and left bound of the brick 
wire [11:0] BRICK_Y_B, BRICK_X_R; //The bottom and right bound of the brick
reg [7:0] brick_lives; //The amount of hits the brick has


   
   always @(posedge clk, posedge reset)
      if (reset)
         begin
            brick_lives <= brick_hits;
            direction <= 3'b000; 
         end
      else
         begin
         //If the ball hits a brick, change ball's direction and lives of the brick
            if ((ball_y_b  >= BRICK_Y_T) && (ball_y_t  <= BRICK_Y_B) && 
                    (BRICK_X_L<=ball_x_l) && (ball_x_r<=BRICK_X_R)&&
                    (brick_p > 1'b0) && tick75hz) begin 
                    if(ball_y_b > BRICK_Y_T +10)
                        direction <= 3'b010;
                    else 
                        direction <= 3'b100;
                    brick_lives <= brick_lives-1;
           end 
          else //The ball did not hit the brick
          direction <= 3'b000;
         end    
    //The brick should die when it has less than zero hits left
   assign brick_p = brick_lives > 0;
   //Determines whether the brick should be displayed 
   assign brick_on = (brick_p)? (BRICK_X_L<=pix_x) && (pix_x<=BRICK_X_R) && (BRICK_Y_T<=pix_y) && (pix_y<=BRICK_Y_B): 1'b0;
   // brick rgb output
    assign brick_rgb = brick_rgbin;
    //Calculate the bottom bound of the brick 
    assign BRICK_Y_B =  BRICK_Y_T +BRICK_DEPTH;
    //Calculate the right bound of the brick
    assign BRICK_X_R = BRICK_X_L+BRICK_LENGTH;

endmodule
