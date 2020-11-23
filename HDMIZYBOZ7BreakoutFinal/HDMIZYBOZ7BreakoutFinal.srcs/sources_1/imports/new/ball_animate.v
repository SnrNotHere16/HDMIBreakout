`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: ball_animate.v
// The following module manages the ball's animation and color
//////////////////////////////////////////////////////////////////////////////////


module ball_animate( clk, 
                     reset, 
                     direction,
                     tick75hz,
                     start_game,
                     notBreakout,
                     pix_x, 
                     pix_y,
                     bar_x_l,
                     bar_x_r,
                     ball_rgb, 
                     rd_ball_on, 
                     ball_y_t,
                     ball_y_b,
                     ball_x_l,
                     ball_x_r,
                     gameover,
                     speed,
                     lives
                     );
                     
input  clk, reset, start_game, tick75hz, notBreakout;
input [3:0] speed;//the ball's speed 
input [2:0] direction; //the direction of the ball
input [11:0] pix_x, pix_y, bar_x_l, bar_x_r; //the location of the ball and bar
output wire rd_ball_on, gameover;
output wire [23:0] ball_rgb; // the color of the ball 
output wire [11:0]  ball_y_t, ball_y_b, ball_x_l, ball_x_r; //the bounds of the ball
output reg [2:0] lives; //the player's lives 

 // constant and signal declaration
 // x, y coordinates (0,0) to (639,479)
   localparam MIN_X = 0;
   localparam MAX_X = 640;
   localparam MAX_Y = 480;
  //--------------------------------------------
  // square ball
  //--------------------------------------------
   localparam BALL_SIZE = 8;
   reg [9:0] ball_x_reg, ball_y_reg;
   wire [9:0] ball_x_next, ball_y_next;
 // reg to track ball speed
   reg [9:0] x_delta_reg, x_delta_next;
   reg [9:0] y_delta_reg, y_delta_next;
 // ball velocity can be pos or neg)
   localparam BALL_V_P = 4;
   localparam BALL_V_N = -4;
   localparam BALL_V_P_R = 3;
   localparam BALL_V_N_R = -3;
// bar top, bottom boundary. 
   localparam BAR_Y_T = 429;
   localparam BAR_Y_B = 449;
 //--------------------------------------------
 // round ball
 //--------------------------------------------
   wire [2:0] rom_addr, rom_col;
   reg [7:0] rom_data;
   wire rom_bit;
 // object output signals
 //--------------------------------------------
   wire  sq_ball_on;

 // body
 //--------------------------------------------
 // round ball image ROM
 //--------------------------------------------
   always @*
   case (rom_addr)
      3'h0: rom_data = 8'b00111100; //   ****
      3'h1: rom_data = 8'b01111110; //  ******
      3'h2: rom_data = 8'b11111111; // ********
      3'h3: rom_data = 8'b11111111; // ********
      3'h4: rom_data = 8'b11111111; // ********
      3'h5: rom_data = 8'b11111111; // ********
      3'h6: rom_data = 8'b01111110; //  ******
      3'h7: rom_data = 8'b00111100; //   ****
   endcase

  // registers
   always @(posedge clk, posedge reset)
      if (reset) //at reset the game should not be moving, the game goes to the 
         begin   // title screen
            ball_x_reg <= 60;
            ball_y_reg <= 200;
            x_delta_reg <= 0;
            y_delta_reg <= 0;
            lives <= 5;

         end
      else
        begin
        if (start_game)  //The player decides to start breakout.
         begin
            x_delta_reg <= -1;
            y_delta_reg <= 1;
         end
         else  begin 
            ball_x_reg <= ball_x_next;
            ball_y_reg <= ball_y_next;
            x_delta_reg <= x_delta_next;
            y_delta_reg <= y_delta_next;

            if (ball_y_b > MAX_Y-1) begin //The ball steps out of bounds
                       ball_x_reg <= 329;
                       ball_y_reg <= 240;
                       x_delta_reg <= -1 ;
                       y_delta_reg <= 1 ;
                       lives <= lives - 1;
            end 
            if (gameover ) begin 
                x_delta_reg <= 0 ;
                y_delta_reg <= 0 ;
            end
        end

         end

  //--------------------------------------------
   // square ball
   //--------------------------------------------
   // boundary
   assign ball_x_l = ball_x_reg;
   assign ball_y_t = ball_y_reg;
   assign ball_x_r = ball_x_l + BALL_SIZE - 1;
   assign ball_y_b = ball_y_t + BALL_SIZE - 1;
   // pixel within ball
   assign sq_ball_on =
            (ball_x_l<=pix_x) && (pix_x<=ball_x_r) &&
            (ball_y_t<=pix_y) && (pix_y<=ball_y_b);
   // map current pixel location to ROM addr/col
   assign rom_addr = pix_y[2:0] - ball_y_t[2:0];
   assign rom_col = pix_x[2:0] - ball_x_l[2:0];
   assign rom_bit = rom_data[rom_col];
   // pixel within ball
   assign rd_ball_on = sq_ball_on & rom_bit;
   // ball rgb output
   assign ball_rgb = (lives >= 2)? 24'hFF2200 : 24'h0000FF;   
   // new ball position
   assign ball_x_next = (tick75hz) ? ball_x_reg+x_delta_reg :
                        ball_x_reg ; 
   assign ball_y_next = (tick75hz)  ? ball_y_reg+y_delta_reg :
                        ball_y_reg ;
   always @*
   begin
      x_delta_next = x_delta_reg;
      y_delta_next = y_delta_reg;
      if (ball_y_t  <= 2+BALL_V_P) // reach top
            y_delta_next = speed;
       //Ball hits the bar
       if ((BAR_Y_T-1<=ball_y_b) && (BAR_Y_B - 1 >= ball_y_b) &&
               (bar_x_l<=ball_x_l) && (ball_x_r<=bar_x_r)) 
           y_delta_next = -speed;   
    //Ball hits the right edge
      else if (ball_x_r > MAX_X-1) begin 
        x_delta_next = -speed;
      end
      //Ball hits the left edge
      else if (ball_x_l   <= 1) begin 
        x_delta_next = speed;
      end
      //The ball hit a brick
      else if (direction == 3'b100)begin 
            y_delta_next = -speed;
      end
      //The ball hit a brick 
      else if (direction == 3'b010)begin 
            y_delta_next = speed;
      end 
   end
assign gameover = lives <= 0;
endmodule
