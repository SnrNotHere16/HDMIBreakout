`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: TitleScreen.v
// The following module manages the animation of the Title Screen
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// Title screen of the game. Pressing the btn1 allows the game to begin
// Font:25 times new roman
//////////////////////////////////////////////////////////////////////////////////


module TitleScreen(clk, reset, tick75hz, btn1, pix_x, pix_y, letter_on, l_rgb, titleScreen, startGame, 
                   paddle_rgb, paddle_on, rd_ball_rgb, rd_ball_on);
input clk, reset, tick75hz, btn1;
input [11:0] pix_x, pix_y; //The positions on the montior 
output wire [23:0] l_rgb, paddle_rgb, rd_ball_rgb; //The color of the display objects 
output wire letter_on, paddle_on, rd_ball_on; //The on switch of the objects 
output titleScreen, startGame; //The status of the game
reg titleScreen;
wire startGame;

 // constant and signal declaration
 // x, y coordinates (0,0) to (639,479)
   localparam MIN_X = 0;
   localparam MAX_X = 640;
   localparam MAX_Y = 480;
   localparam BALL_SIZE = 8;
// ball left, right boundary
   wire [11:0] ball_x_l, ball_x_r;
 // ball top, bottom boundary
   wire [11:0]  ball_y_b, ball_y_t;
 // reg to track left, top position
   reg [11:0] ball_x_reg, ball_y_reg;
   wire [11:0] ball_x_next, ball_y_next;
 // reg to track ball speed
   reg [11:0] x_delta_reg, x_delta_next;
   reg [11:0] y_delta_reg, y_delta_next;
 // ball velocity can be pos or neg)
   localparam BALL_V_P = 4;
   localparam BALL_V_N = -4;
   localparam BALL_V_P_R = 3;
   localparam BALL_V_N_R = -3;
//--------------------------------------------
 // round ball
 //--------------------------------------------
   wire [2:0] rom_addr, rom_col;
   reg [7:0] rom_data;
   wire rom_bit;
 // object output signals
 //--------------------------------------------
   wire  sq_ball_on;
   
// bar top, bottom boundary. 
   localparam BAR_Y_T = 270;
   localparam BAR_Y_B = 280;
// bar top length
   localparam BAR_X_SIZE = 170;
// Paddle reg
 wire [11:0] paddle_x_l, paddle_x_r;  
//Size of letters 
   localparam L_SIZEX = 16;
   localparam L_SIZEY = 18;
//Letter regs and wires
    reg [11:0] B_x_reg, B_y_reg,R_x_reg, R_y_reg, E_x_reg, E_y_reg, A_x_reg, A_y_reg,
               K_x_reg, K_y_reg, O_x_reg, O_y_reg, U_x_reg, U_y_reg, T_x_reg, T_y_reg;
    wire [4:0] rom_addrB, rom_addrR, rom_addrE, rom_addrA, rom_addrK, 
               rom_addrO, rom_addrU, rom_addrT;
    wire [4:0] rom_colB, rom_colR, rom_colE, rom_colA, rom_colK,
               rom_colO, rom_colU, rom_colT;
    reg [0:15] rom_dataB, rom_dataR, rom_dataE, rom_dataA, rom_dataK,
               rom_dataO, rom_dataU, rom_dataT;
    wire rom_bitB, rom_bitR, rom_bitE, rom_bitA, rom_bitK,
         rom_bitO, rom_bitU, rom_bitT;
    wire B_l_on, R_l_on, E_l_on, A_l_on, K_l_on,
         O_l_on, U_l_on, T_l_on; 
//  letters left, right boundary
    wire [11:0] B_x_l, B_x_r, R_x_l, R_x_r, E_x_l, E_x_r, A_x_l, A_x_r, K_x_l, K_x_r,
                O_x_l, O_x_r, U_x_l, U_x_r, T_x_l, T_x_r;
// letters top, bottom boundary
   wire [11:0] B_y_b, R_y_b, E_y_b, A_y_b, K_y_b, 
               O_y_b, U_y_b, T_y_b;    
   wire [11:0]  B_y_t, R_y_t, E_y_t, A_y_t, K_y_t, 
                O_y_t, U_y_t, T_y_t;
// object output signals
//--------------------------------------------
   wire  B_on, R_on, E_on, A_on, K_on,
         O_on, U_on, T_on;
   
always @* begin 
//Display for B
case(rom_addrB)
    5'h0: rom_dataB =  16'b1111_1111_1100_0000;
    5'h1: rom_dataB =  16'b1111_1111_1110_0000;
    5'h2: rom_dataB =  16'b1100_0000_0111_0000;
    5'h3: rom_dataB =  16'b1100_0000_0011_0000;
    5'h4: rom_dataB =  16'b1100_0000_0011_0000;
    5'h5: rom_dataB =  16'b1100_0000_0011_0000; 
    5'h6: rom_dataB =  16'b1100_0000_0011_0000;
    5'h7: rom_dataB =  16'b1100_0000_0111_0000; 
    5'h8: rom_dataB =  16'b1111_1111_1100_0000;
    5'h9: rom_dataB =  16'b1111_1111_1110_0000; 
    5'hA: rom_dataB =  16'b1100_0000_0011_0000;
    5'hB: rom_dataB =  16'b1100_0000_0001_1000;
    5'hC: rom_dataB =  16'b1100_0000_0001_1000;
    5'hD: rom_dataB =  16'b1100_0000_0001_1000;
    5'hE: rom_dataB =  16'b1100_0000_0001_1000;
    5'hF: rom_dataB =  16'b1100_0000_0011_1000;
    5'h10: rom_dataB = 16'b1111_1111_1111_0000;
    5'h11: rom_dataB = 16'b0000_0000_0000_0000;
 endcase 
 
case(rom_addrR)
//Display for R
    5'h0: rom_dataR =  16'b1111_1111_1110_0000;
    5'h1: rom_dataR =  16'b1111_1111_1111_1000;
    5'h2: rom_dataR =  16'b1100_0000_0001_1100;
    5'h3: rom_dataR =  16'b1100_0000_0000_1100;
    5'h4: rom_dataR =  16'b1100_0000_0000_1100; 
    5'h5: rom_dataR =  16'b1100_0000_0000_1100; 
    5'h6: rom_dataR =  16'b1100_0000_0001_1100;
    5'h7: rom_dataR =  16'b1100_0000_0011_1000; 
    5'h8: rom_dataR =  16'b1111_1111_1111_0000;
    5'h9: rom_dataR =  16'b1111_1111_1100_0000; 
    5'hA: rom_dataR =  16'b1100_0000_1110_0000;
    5'hB: rom_dataR =  16'b1100_0000_0110_0000;
    5'hC: rom_dataR =  16'b1100_0000_0111_0000;
    5'hD: rom_dataR =  16'b1100_0000_0011_1000;
    5'hE: rom_dataR =  16'b1100_0000_0001_1100;
    5'hF: rom_dataR =  16'b1100_0000_0001_1100;
    5'h10: rom_dataR = 16'b1100_0000_0000_1110;
    5'h11: rom_dataR = 16'b0000_0000_0000_0000;
 endcase
 
case(rom_addrE)
//Display for E
    5'h0: rom_dataE =  16'b1111_1111_1111_0000;
    5'h1: rom_dataE =  16'b0011_0000_0001_0000;
    5'h2: rom_dataE =  16'b0011_0000_0000_0000;
    5'h3: rom_dataE =  16'b0011_0000_0000_0000; 
    5'h4: rom_dataE =  16'b0011_0000_0000_0000; 
    5'h5: rom_dataE =  16'b0011_0000_0000_0000; 
    5'h6: rom_dataE =  16'b0011_0000_0010_0000;
    5'h7: rom_dataE =  16'b0011_0000_0010_0000; 
    5'h8: rom_dataE =  16'b0011_1111_1110_0000;
    5'h9: rom_dataE =  16'b0011_0000_0010_0000; 
    5'hA: rom_dataE =  16'b0011_0000_0000_0000;
    5'hB: rom_dataE =  16'b0011_0000_0000_0000;
    5'hC: rom_dataE =  16'b0011_0000_0000_0000;
    5'hD: rom_dataE =  16'b0011_0000_0000_0000;
    5'hE: rom_dataE =  16'b0011_0000_0001_0000;
    5'hF: rom_dataE =  16'b1111_1111_1111_0000;
    5'h10: rom_dataE = 16'b0000_0000_0000_0000;
    5'h11: rom_dataE = 16'b0000_0000_0000_0000;
endcase

case(rom_addrA)
//Display for A
    5'h0: rom_dataA =  16'b0000_0000_1100_0000;
    5'h1: rom_dataA =  16'b0000_0000_1100_0000;
    5'h2: rom_dataA =  16'b0000_0001_1110_0000;
    5'h3: rom_dataA =  16'b0000_0001_1110_0000; 
    5'h4: rom_dataA =  16'b0000_0011_0110_0000; 
    5'h5: rom_dataA =  16'b0000_0010_0111_0000; 
    5'h6: rom_dataA =  16'b0000_0010_0011_0000;
    5'h7: rom_dataA =  16'b0000_0100_0011_1000; 
    5'h8: rom_dataA =  16'b0000_0100_0001_1000;
    5'h9: rom_dataA =  16'b0000_1100_0001_1100; 
    5'hA: rom_dataA =  16'b0000_1111_1111_1100;
    5'hB: rom_dataA =  16'b0001_1000_0000_1100;
    5'hC: rom_dataA =  16'b0001_0000_0000_1110;
    5'hD: rom_dataA =  16'b0011_0000_0000_0110;
    5'hE: rom_dataA =  16'b0011_0000_0000_0111;
    5'hF: rom_dataA =  16'b1111_1000_0001_1111;
    5'h10: rom_dataA = 16'b0000_0000_0000_0000;
    5'h11: rom_dataA = 16'b0000_0000_0000_0000;
endcase

//Display for K
case(rom_addrK)
    5'h0: rom_dataK =  16'b1111_1100_0111_1110;
    5'h1: rom_dataK =  16'b0111_0000_0011_1000;
    5'h2: rom_dataK =  16'b0011_0000_0011_0000;
    5'h3: rom_dataK =  16'b0011_0000_0110_0000;
    5'h4: rom_dataK =  16'b0011_0000_1100_0000;
    5'h5: rom_dataK =  16'b0011_0001_1000_0000;
    5'h6: rom_dataK =  16'b0011_0011_0000_0000;
    5'h7: rom_dataK =  16'b0011_0110_0000_0000;
    5'h8: rom_dataK =  16'b0011_1110_0000_0000;
    5'h9: rom_dataK =  16'b0011_0111_0000_0000;
    5'hA: rom_dataK =  16'b0011_0011_1000_0000;
    5'hB: rom_dataK =  16'b0011_0001_1100_0000;
    5'hC: rom_dataK =  16'b0011_0000_1111_0000;
    5'hD: rom_dataK =  16'b0011_0000_0111_1000;
    5'hE: rom_dataK =  16'b0011_0000_0011_1100;
    5'hF: rom_dataK =  16'b0111_0000_0001_1110;
    5'h10: rom_dataK = 16'b1111_1100_0111_1111;
    5'h11: rom_dataK = 16'b0000_0000_0000_0000;
endcase

//Display for O
case(rom_addrO)
    5'h0: rom_dataO =  16'b0000_0111_1110_0000;
    5'h1: rom_dataO =  16'b0001_1100_0011_1000;
    5'h2: rom_dataO =  16'b0011_0000_0000_1100;
    5'h3: rom_dataO =  16'b0111_0000_0000_1110; 
    5'h4: rom_dataO =  16'b0110_0000_0000_0110;
    5'h5: rom_dataO =  16'b1110_0000_0000_0111;
    5'h6: rom_dataO =  16'b1110_0000_0000_0111;
    5'h7: rom_dataO =  16'b1110_0000_0000_0111;
    5'h8: rom_dataO =  16'b1110_0000_0000_0111;
    5'h9: rom_dataO =  16'b1110_0000_0000_0111;
    5'hA: rom_dataO =  16'b1110_0000_0000_0111;
    5'hB: rom_dataO =  16'b1110_0000_0000_0111;
    5'hC: rom_dataO =  16'b0110_0000_0000_0110;
    5'hD: rom_dataO =  16'b0111_0000_0000_1110;
    5'hE: rom_dataO =  16'b0011_0000_0000_1100;
    5'hF: rom_dataO =  16'b0001_1100_0011_1000;
    5'h10: rom_dataO = 16'b0000_0111_1110_0000;
    5'h11: rom_dataO = 16'b0000_0000_0000_0000;
endcase

//Display for U
case(rom_addrU)
    5'h0: rom_dataU =  16'b0111_1110_0000_1111;
    5'h1: rom_dataU =  16'b0011_1000_0000_0011;
    5'h2: rom_dataU =  16'b0001_1000_0000_0010;
    5'h3: rom_dataU =  16'b0001_1000_0000_0010; 
    5'h4: rom_dataU =  16'b0001_1000_0000_0010;
    5'h5: rom_dataU =  16'b0001_1000_0000_0010;
    5'h6: rom_dataU =  16'b0001_1000_0000_0010;
    5'h7: rom_dataU =  16'b0001_1000_0000_0010;
    5'h8: rom_dataU =  16'b0001_1000_0000_0010;
    5'h9: rom_dataU =  16'b0001_1000_0000_0010;
    5'hA: rom_dataU =  16'b0001_1000_0000_0010;
    5'hB: rom_dataU =  16'b0001_1000_0000_0010;
    5'hC: rom_dataU =  16'b0001_1000_0000_0010;
    5'hD: rom_dataU =  16'b0001_1000_0000_0010;
    5'hE: rom_dataU =  16'b0001_1100_0000_0100;
    5'hF: rom_dataU =  16'b0000_1110_0000_1100;
    5'h10: rom_dataU = 16'b0000_0011_1111_0000;
    5'h11: rom_dataU = 16'b0000_0000_0000_0000;
endcase

//Display for T
case(rom_addrT)
    5'h0: rom_dataT =  16'b1111_1111_1111_1000;
    5'h1: rom_dataT =  16'b1000_0011_0000_1000;
    5'h2: rom_dataT =  16'b0000_0011_0000_0100;
    5'h3: rom_dataT =  16'b0000_0011_0000_0000;
    5'h4: rom_dataT =  16'b0000_0011_0000_0000;
    5'h5: rom_dataT =  16'b0000_0011_0000_0000; 
    5'h6: rom_dataT =  16'b0000_0011_0000_0000;
    5'h7: rom_dataT =  16'b0000_0011_0000_0000;
    5'h8: rom_dataT =  16'b0000_0011_0000_0000;
    5'h9: rom_dataT =  16'b0000_0011_0000_0000;
    5'hA: rom_dataT =  16'b0000_0011_0000_0000;
    5'hB: rom_dataT =  16'b0000_0011_0000_0000;
    5'hC: rom_dataT =  16'b0000_0011_0000_0000;
    5'hD: rom_dataT =  16'b0000_0011_0000_0000;
    5'hE: rom_dataT =  16'b0000_0011_0000_0000;
    5'hF: rom_dataT =  16'b0000_0111_0000_0000;
    5'h10: rom_dataT = 16'b0001_1111_1100_0000;
    5'h11: rom_dataT = 16'b0000_0000_0000_0000;
endcase

//Display for the ball
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
end 
 always @(posedge clk, posedge reset)begin 
      if (reset) begin
            titleScreen <= 1'b1;
            //Positions of letters for Title Screen (BREAKOUT)
                B_x_reg <= 230;
                B_y_reg <= 240;
                
                R_x_reg <= 252;
                R_y_reg <= 240;

                E_x_reg <= 274;
                E_y_reg <= 240;

                A_x_reg <= 296;
                A_y_reg <= 240;

                K_x_reg <= 318;
                K_y_reg <= 240;
                
                O_x_reg <= 340;
                O_y_reg <= 240;

                U_x_reg <= 362;
                U_y_reg <= 240;
                
                T_x_reg <= 384;
                T_y_reg <= 240;   
                
                ball_x_reg <= 60;
                ball_y_reg <= 170;                                                                                                             
      end
      else begin 
        if(btn1 )
            titleScreen <= 1'b0;
        //Positions of letters for Title Screen (BREAKOUT)
               B_x_reg <= 230;
               B_y_reg <= 240;
               
                R_x_reg <= 252;
                R_y_reg <= 240;

                E_x_reg <= 274;
                E_y_reg <= 240;

                A_x_reg <= 296;
                A_y_reg <= 240;

                K_x_reg <= 318;
                K_y_reg <= 240;
                
                O_x_reg <= 340;
                O_y_reg <= 240;

                U_x_reg <= 362;
                U_y_reg <= 240;
                
                T_x_reg <= 382;
                T_y_reg <= 240;   
              
              //Ball movement  
                ball_x_reg <= ball_x_next;
                ball_y_reg <= ball_y_next;
                x_delta_reg <= x_delta_next;
                y_delta_reg <= y_delta_next;  
      end 
  end 
  
  //--------------------------------------------
  //  letter 
  //--------------------------------------------
  // boundary for BREAKOUT 
   assign B_x_l = B_x_reg;
   assign B_y_t = B_y_reg;
   assign B_x_r = B_x_l + L_SIZEX - 1;
   assign B_y_b = B_y_t + L_SIZEY - 1;
   
   assign R_x_l = R_x_reg;
   assign R_y_t = R_y_reg;
   assign R_x_r = R_x_l + L_SIZEX - 1;
   assign R_y_b = R_y_t + L_SIZEY - 1;
   
   assign E_x_l = E_x_reg;
   assign E_y_t = E_y_reg;
   assign E_x_r = E_x_l + L_SIZEX - 1;
   assign E_y_b = E_y_t + L_SIZEY - 1;
   
   assign A_x_l = A_x_reg;
   assign A_y_t = A_y_reg;
   assign A_x_r = A_x_l + L_SIZEX - 1;
   assign A_y_b = A_y_t + L_SIZEY - 1;
   
   assign K_x_l = K_x_reg;
   assign K_y_t = K_y_reg;
   assign K_x_r = K_x_l + L_SIZEX - 1;
   assign K_y_b = K_y_t + L_SIZEY - 1;
   
   assign O_x_l = O_x_reg;
   assign O_y_t = O_y_reg;
   assign O_x_r = O_x_l + L_SIZEX - 1;
   assign O_y_b = O_y_t + L_SIZEY - 1;
   
   assign U_x_l = U_x_reg;
   assign U_y_t = U_y_reg;
   assign U_x_r = U_x_l + L_SIZEX - 1;
   assign U_y_b = U_y_t + L_SIZEY - 1;
   
   assign T_x_l = T_x_reg;
   assign T_y_t = T_y_reg;
   assign T_x_r = T_x_l + L_SIZEX - 1;
   assign T_y_b = T_y_t + L_SIZEY - 1;
   
 //--------------------------------------------
   // square ball
   //--------------------------------------------
   // boundary
   assign ball_x_l = ball_x_reg;
   assign ball_y_t = ball_y_reg;
   assign ball_x_r = ball_x_l + BALL_SIZE - 1;
   assign ball_y_b = ball_y_t + BALL_SIZE - 1;
  // pixel within letter
   assign B_on =
            (B_x_l<=pix_x) && (pix_x<=B_x_r) &&
            (B_y_t<=pix_y) && (pix_y<=B_y_b);
            
   assign R_on =
            (R_x_l<=pix_x) && (pix_x<=R_x_r) &&
            (R_y_t<=pix_y) && (pix_y<=R_y_b);

   assign E_on =
            (E_x_l<=pix_x) && (pix_x<=E_x_r) &&
            (E_y_t<=pix_y) && (pix_y<=E_y_b);

   assign A_on =
            (A_x_l<=pix_x) && (pix_x<=A_x_r) &&
            (A_y_t<=pix_y) && (pix_y<=A_y_b);
            
   assign K_on =
            (K_x_l<=pix_x) && (pix_x<=K_x_r) &&
            (K_y_t<=pix_y) && (pix_y<=K_y_b);
            
   assign O_on =
            (O_x_l<=pix_x) && (pix_x<=O_x_r) &&
            (O_y_t<=pix_y) && (pix_y<=O_y_b);
            
   assign U_on =
            (U_x_l<=pix_x) && (pix_x<=U_x_r) &&
            (U_y_t<=pix_y) && (pix_y<=U_y_b);
            
   assign T_on =
            (T_x_l<=pix_x) && (pix_x<=T_x_r) &&
            (T_y_t<=pix_y) && (pix_y<=T_y_b);

 // pixel within ball
   assign sq_ball_on =
            (ball_x_l<=pix_x) && (pix_x<=ball_x_r) &&
            (ball_y_t<=pix_y) && (pix_y<=ball_y_b);

   // map current pixel location to ROM addr/col
   assign rom_addrB = pix_y[4:0] - B_y_t[4:0];
   assign rom_colB = pix_x[4:0] - B_x_l[4:0];
   assign rom_bitB = rom_dataB[rom_colB];
   
   assign rom_addrR = pix_y[4:0] - R_y_t[4:0];
   assign rom_colR = pix_x[4:0] - R_x_l[4:0];
   assign rom_bitR = rom_dataR[rom_colR];
   
   assign rom_addrE = pix_y[4:0] - E_y_t[4:0];
   assign rom_colE = pix_x[4:0] - E_x_l[4:0];
   assign rom_bitE = rom_dataE[rom_colE];

   assign rom_addrA = pix_y[4:0] - A_y_t[4:0];
   assign rom_colA = pix_x[4:0] - A_x_l[4:0];
   assign rom_bitA = rom_dataA[rom_colA];
 
   assign rom_addrK = pix_y[4:0] - K_y_t[4:0];
   assign rom_colK = pix_x[4:0] - K_x_l[4:0];
   assign rom_bitK = rom_dataK[rom_colK];
   
   assign rom_addrO = pix_y[4:0] - O_y_t[4:0];
   assign rom_colO = pix_x[4:0] - O_x_l[4:0];
   assign rom_bitO = rom_dataO[rom_colO];
   
   assign rom_addrU = pix_y[4:0] - U_y_t[4:0];
   assign rom_colU = pix_x[4:0] - U_x_l[4:0];
   assign rom_bitU = rom_dataU[rom_colU];
   
   assign rom_addrT = pix_y[4:0] - T_y_t[4:0];
   assign rom_colT = pix_x[4:0] - T_x_l[4:0];
   assign rom_bitT = rom_dataT[rom_colT];
   
   // map current pixel location to ROM addr/col
   assign rom_addr = pix_y[2:0] - ball_y_t[2:0];
   assign rom_col = pix_x[2:0] - ball_x_l[2:0];
   assign rom_bit = rom_data[rom_col];
   // pixel within letter
   assign B_l_on = B_on & rom_bitB;
   assign R_l_on = R_on & rom_bitR;
   assign E_l_on = E_on & rom_bitE;
   assign A_l_on = A_on & rom_bitA;
   assign K_l_on = K_on & rom_bitK; 
   assign O_l_on = O_on & rom_bitO;
   assign U_l_on = U_on & rom_bitU;
   assign T_l_on = T_on & rom_bitT;
   //Determines whether a letter should be displayed
   assign letter_on =   B_l_on || R_l_on|| E_l_on || A_l_on || K_l_on || O_l_on || U_l_on || T_l_on;
   // pixel within ball
   assign rd_ball_on = sq_ball_on & rom_bit;
   // pixel within bar
   assign paddle_on = (paddle_x_l<=pix_x) && (pix_x<=paddle_x_r) &&
                      (BAR_Y_T<=pix_y) && (pix_y<=BAR_Y_B);
                      
   assign l_rgb = 24'h7F00FF;
   assign paddle_rgb = 24'h00FF33;
   assign rd_ball_rgb = 24'hFFDE00;
   assign startGame = btn1 & titleScreen;
   
   // boundary
   assign paddle_x_l = 230;
   assign paddle_x_r = paddle_x_l + BAR_X_SIZE - 1;

   // new ball position
   assign ball_x_next = (tick75hz) ? ball_x_reg+x_delta_reg :
                        ball_x_reg ; 
   assign ball_y_next = (tick75hz)  ? ball_y_reg+y_delta_reg :
                        ball_y_reg ;
  always @*
   begin
      x_delta_next = x_delta_reg;
      y_delta_next = y_delta_reg;
      //The ball reaches the top 
      if (ball_y_t  <= 2) 
            y_delta_next = BALL_V_P;
      //The ball hits the bottom 
      else if (ball_y_b >= MAX_Y-2)
            y_delta_next = BALL_V_N;
       //The ball hits the paddle (bar)
       else if ((BAR_Y_T-1<=ball_y_b) && (BAR_Y_B - 1 >= ball_y_b) &&
               (paddle_x_l<=ball_x_l) && (ball_x_r<=paddle_x_r))
           y_delta_next = BALL_V_N;   
      //The ball reaches the right boundary
      else if (ball_x_r > MAX_X-1) begin 
        x_delta_next = BALL_V_N;
      end
      //The ball reaches the left boundary 
      else if (ball_x_l   <= 1) begin 
        x_delta_next = BALL_V_P;
      end


     

   end
endmodule
