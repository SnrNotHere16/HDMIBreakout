`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: paddle_animate.v
// The following module manages the animation of the paddle (bar)
//////////////////////////////////////////////////////////////////////////////////


module bar_animate(clk,
                   reset,
                   btn,
                   tick75hz,
                   pix_x,
                   pix_y,
                   bar_x_l,
                   bar_x_r,
                   bar_rgb,
                   bar_on);

input  clk, reset, tick75hz;
input  [1:0] btn; //The direction to move the paddle 
input [11:0] pix_x, pix_y;//The x and y position on the monitor 
output wire bar_on; //The on switch of the paddle 
output wire [23:0] bar_rgb;  //The color of the paddle 
output wire [11:0] bar_x_l, bar_x_r; //The left and right bound of the paddle

// constant and signal declaration
// x, y coordinates (0,0) to (639,479)
   localparam MIN_X = 0;
   localparam MAX_X = 640;
   localparam MAX_Y = 480;
//--------------------------------------------
// right vertical bar
//--------------------------------------------
// bar top, bottom boundary. 
   localparam BAR_Y_T = 429;
   localparam BAR_Y_B = 449;
// bar top length
   localparam BAR_X_SIZE = 120;
// register to track left boundary  (y position is fixed)
   reg [9:0] bar_x_reg, bar_x_next;
   
 // bar moving velocity when a button is pressed
   localparam BAR_V = 15;
   
   // boundary
   assign bar_x_l = bar_x_reg;
   assign bar_x_r = bar_x_l + BAR_X_SIZE - 1;
   // pixel within bar
   assign bar_on = (bar_x_l<=pix_x) && (pix_x<=bar_x_r) &&
                   (BAR_Y_T<=pix_y) && (pix_y<=BAR_Y_B);
   // bar rgb output
   assign bar_rgb = 24'h00FF33; 
   // new bar x-position
   always @(posedge clk, posedge reset) begin 
        if (reset) begin  
            bar_x_next <= 240;
        end 
       else begin 
        bar_x_reg <= bar_x_next; // no move
         if (tick75hz) begin 
            if (btn[1] & (bar_x_r <= MAX_X))
                bar_x_next = bar_x_reg + BAR_V; // move right
            else if (btn[0] & (bar_x_l > MIN_X))
                bar_x_next = bar_x_reg - BAR_V; // move left
        end 
      end 
    end  
endmodule
