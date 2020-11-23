`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: breakout_animate.v
// The following module animates the breakout game. 
//////////////////////////////////////////////////////////////////////////////////

module gameover(clk, 
                reset, 
                tick75hz,
                pix_x, 
                pix_y,
                letter_on,
                l_rgb);
            
input  clk, reset, tick75hz;
input wire [11:0] pix_x, pix_y;//The position on the monitor 
output wire [23:0] l_rgb;//The color of the letter 
//The on switch for the letters
wire g_l_on, a_l_on, m_l_on, e_l_on;
wire o_l_on, v_l_on, e1_l_on, r_l_on;
wire n_l_on, a1_l_on, m1_l_on, e2_l_on;
wire s_l_on, c_l_on, o1_l_on, r1_l_on, e3_l_on;
output wire letter_on; //Determines if any letter is on
localparam L_SIZE = 8;//Size of the Game over letters (8x8)
//The size of the "NAME" and "SCORE" letters (12X3)
localparam L_SIZE_NAME_H = 12;
localparam L_SIZE_NAME_W = 3;
   //The position registers for "GAME OVER", "SCORE", "NAME"
   reg [11:0] g_x_reg, g_y_reg, a_x_reg, a_y_reg, m_x_reg, m_y_reg, e_x_reg, e_y_reg;
   reg [11:0] o_x_reg, o_y_reg, v_x_reg, v_y_reg, e1_x_reg, e1_y_reg, r_x_reg, r_y_reg;
   reg [11:0] n_x_reg, n_y_reg, a1_x_reg, a1_y_reg, m1_x_reg, m1_y_reg, e2_x_reg, e2_y_reg;
   reg [11:0] s_x_reg, s_y_reg, c_x_reg, c_y_reg, o1_x_reg, o1_y_reg, r1_x_reg, r1_y_reg,e3_x_reg, e3_y_reg;
   wire [2:0] rom_addrG, rom_colG, rom_addrA, rom_colA, rom_addrM, rom_colM, rom_addrE, rom_colE;
   wire [2:0] rom_addrO, rom_colO, rom_addrV, rom_colV, rom_addrE1, rom_colE1, rom_addrR, rom_colR;
   wire [3:0] rom_addrN, rom_colN, rom_addrA1, rom_colA1, rom_addrM1, rom_colM1, rom_addrE2, rom_colE2;
   wire [3:0] rom_addrS, rom_colS, rom_addrC, rom_colC, rom_addrO1, rom_colO1, rom_addrR1, rom_colR1, rom_addrE3, rom_colE3;
   reg [7:0] rom_dataG,rom_dataA, rom_dataM,rom_dataE;
   reg [7:0] rom_dataO,rom_dataV, rom_dataE1,rom_dataR;
   reg [0:2] rom_dataN,rom_dataA1, rom_dataM1,rom_dataE2;
   reg [0:2] rom_dataS,rom_dataC, rom_dataO1,rom_dataR1, rom_dataE3;
   wire rom_bitG, rom_bitA, rom_bitM, rom_bitE;
   wire rom_bitO, rom_bitV, rom_bitE1, rom_bitR;
   wire rom_bitN, rom_bitA1, rom_bitM1, rom_bitE2;  
   wire rom_bitS, rom_bitC, rom_bitO1, rom_bitR1, rom_bitE3;
    //  letters left, right boundary
   wire [11:0] g_x_l, g_x_r,a_x_l, a_x_r, m_x_l, m_x_r, e_x_l, e_x_r;
   wire [11:0] o_x_l, o_x_r,v_x_l, v_x_r, e1_x_l, e1_x_r, r_x_l, r_x_r;
   wire [11:0] n_x_l, n_x_r, a1_x_l, a1_x_r, m1_x_l, m1_x_r, e2_x_l, e2_x_r; 
   wire [11:0] s_x_l, s_x_r, c_x_l, c_x_r, o1_x_l, o1_x_r, r1_x_l, r1_x_r, e3_x_l, e3_x_r; 
 // letters top, bottom boundary
   wire [11:0]  g_y_b, a_y_b, m_y_b, e_y_b;
   wire [11:0]  g_y_t,a_y_t, m_y_t, e_y_t;
   wire [11:0]  o_y_b, v_y_b, e1_y_b, r_y_b;
   wire [11:0]  o_y_t,v_y_t, e1_y_t,r_y_t;
   wire [11:0]  n_y_b, a1_y_b, m1_y_b, e2_y_b;
   wire [11:0]  n_y_t,a1_y_t, m1_y_t,e2_y_t;
   wire [11:0]  s_y_b, c_y_b, o1_y_b, r1_y_b,e3_y_b;
   wire [11:0]  s_y_t,c_y_t, o1_y_t,r1_y_t,e3_y_t;
    // object output signals
 //--------------------------------------------
   wire  g_on, a_on, m_on, e_on;
   wire  o_on, v_on, e1_on, r_on;
   wire  n_on, a1_on, m1_on, e2_on;
   wire  s_on, c_on, o1_on, r1_on,e3_on;
always @*
case(rom_addrG)
    3'h0: rom_dataG = 8'b00000000;//   ******  
    3'h1: rom_dataG = 8'b00001110;// ***    
    3'h2: rom_dataG = 8'b00010001;//***  
    3'h3: rom_dataG = 8'b00000001;//*** 
    3'h4: rom_dataG = 8'b00000001;//***  ****
    3'h5: rom_dataG = 8'b00011001;//***  ****
    3'h6: rom_dataG = 8'b00010001;// ***   **
    3'h7: rom_dataG = 8'b00001110;//  *******
endcase
always @*
case(rom_addrA)
    3'h0: rom_dataA = 8'b00000000;//   **   
    3'h1: rom_dataA = 8'b00001110;//  *  *  
    3'h2: rom_dataA = 8'b00010001;// **  ** 
    3'h3: rom_dataA = 8'b00010001;// **  ** 
    3'h4: rom_dataA = 8'b00010001;// ****** 
    3'h5: rom_dataA = 8'b00011111;// **  **
    3'h6: rom_dataA = 8'b00010001;// **  **
    3'h7: rom_dataA = 8'b00010001;// **  **
endcase
always @*
case(rom_addrM)
    3'h0: rom_dataM = 8'b00000000;//***      ***
    3'h1: rom_dataM = 8'b00011011;//** *    * **
    3'h2: rom_dataM = 8'b00010101;//**  *  *  **
    3'h3: rom_dataM = 8'b00010001;//**   **   **
    3'h4: rom_dataM = 8'b00010001;//**   **   **
    3'h5: rom_dataM = 8'b00010001;//**        **
    3'h6: rom_dataM = 8'b00010001;//**        **
    3'h7: rom_dataM = 8'b00010001;//**        **
endcase


always @*
case(rom_addrE)
    3'h0: rom_dataE = 8'b00000000;// *******  
    3'h1: rom_dataE = 8'b00011111;// **  
    3'h2: rom_dataE = 8'b00000001;// **  
    3'h3: rom_dataE = 8'b00000001;// ****** 
    3'h4: rom_dataE = 8'b00001111;// ****** 
    3'h5: rom_dataE = 8'b00000001;// **  
    3'h6: rom_dataE = 8'b00000001;// **  
    3'h7: rom_dataE = 8'b00011111;// *******
endcase

always @*
case(rom_addrO)
    3'h0: rom_dataO = 8'b00000000;//  *****   
    3'h1: rom_dataO = 8'b00001110;// **   ** 
    3'h2: rom_dataO = 8'b00010001;// *     *
    3'h3: rom_dataO = 8'b00010001;// *     * 
    3'h4: rom_dataO = 8'b00010001;// *     * 
    3'h5: rom_dataO = 8'b00010001;// *     *
    3'h6: rom_dataO = 8'b00010001;// **   **
    3'h7: rom_dataO = 8'b00001110;//  *****
endcase

always @*
case(rom_addrV)
    3'h0: rom_dataV = 8'b00000000;// *      *
    3'h1: rom_dataV = 8'b00010001;// *      *  
    3'h2: rom_dataV = 8'b00010001;// *      *
    3'h3: rom_dataV = 8'b00010001;// *      * 
    3'h4: rom_dataV = 8'b00010001;// *      * 
    3'h5: rom_dataV = 8'b00010001;// **    **
    3'h6: rom_dataV = 8'b00001010;//  **  **
    3'h7: rom_dataV = 8'b00000100;//    **
endcase

always @*
case(rom_addrE1)
    3'h0: rom_dataE1 = 8'b00000000;// *******  
    3'h1: rom_dataE1 = 8'b00011111;// **  
    3'h2: rom_dataE1 = 8'b00000001;// **  
    3'h3: rom_dataE1 = 8'b00000001;// ****** 
    3'h4: rom_dataE1 = 8'b00001111;// ****** 
    3'h5: rom_dataE1 = 8'b00000001;// **  
    3'h6: rom_dataE1 = 8'b00000001;// **  
    3'h7: rom_dataE1 = 8'b00011111;// *******
endcase

always @*
case(rom_addrR)
    3'h0: rom_dataR = 8'b00000000;// ******   
    3'h1: rom_dataR = 8'b00001111;// **    ** 
    3'h2: rom_dataR = 8'b00010001;// **     *
    3'h3: rom_dataR = 8'b00010001;// **    ** 
    3'h4: rom_dataR = 8'b00001111;// ******     
    3'h5: rom_dataR = 8'b00001001;// *    *
    3'h6: rom_dataR = 8'b00010001;// **    *
    3'h7: rom_dataR = 8'b00010001;// **     *
endcase

always @*
case(rom_addrN)
    4'h0: rom_dataN = 3'b110; //N
    4'h1: rom_dataN = 3'b101;   
    4'h2: rom_dataN = 3'b101;  
    4'h3: rom_dataN = 3'b101; 
    4'h4: rom_dataN = 3'b101;
    4'h5: rom_dataN = 3'b101;
    4'h6: rom_dataN = 3'b101;
    4'h7: rom_dataN = 3'b101;
	4'h8: rom_dataN = 3'b101;
	4'h9: rom_dataN = 3'b101;
	4'hA: rom_dataN = 3'b101;
	4'hB: rom_dataN = 3'b101;
endcase

always @*
case(rom_addrA1)
    4'h0: rom_dataA1 = 3'b111;//A 
    4'h1: rom_dataA1 = 3'b101;   
    4'h2: rom_dataA1 = 3'b101;  
    4'h3: rom_dataA1 = 3'b101; 
    4'h4: rom_dataA1 = 3'b101;
    4'h5: rom_dataA1 = 3'b101;
    4'h6: rom_dataA1 = 3'b111;
    4'h7: rom_dataA1 = 3'b101;
	4'h8: rom_dataA1 = 3'b101;
	4'h9: rom_dataA1 = 3'b101;
	4'hA: rom_dataA1 = 3'b101;
	4'hB: rom_dataA1 = 3'b101;
endcase

always @*
case(rom_addrM1)
    4'h0: rom_dataM1 = 3'b101; //M
    4'h1: rom_dataM1 = 3'b111;   
    4'h2: rom_dataM1 = 3'b111;  
    4'h3: rom_dataM1 = 3'b111; 
    4'h4: rom_dataM1 = 3'b111;
    4'h5: rom_dataM1 = 3'b101;
    4'h6: rom_dataM1 = 3'b101;
    4'h7: rom_dataM1 = 3'b101;
	4'h8: rom_dataM1 = 3'b101;
	4'h9: rom_dataM1 = 3'b101;
	4'hA: rom_dataM1 = 3'b101;
	4'hB: rom_dataM1 = 3'b101;
endcase

always @*
case(rom_addrE2)
    4'h0: rom_dataE2 = 3'b111; //E
    4'h1: rom_dataE2 = 3'b100;   
    4'h2: rom_dataE2 = 3'b100;  
    4'h3: rom_dataE2 = 3'b100; 
    4'h4: rom_dataE2 = 3'b100;
    4'h5: rom_dataE2 = 3'b100;
    4'h6: rom_dataE2 = 3'b111;
    4'h7: rom_dataE2 = 3'b100;
	4'h8: rom_dataE2 = 3'b100;
	4'h9: rom_dataE2 = 3'b100;
	4'hA: rom_dataE2 = 3'b100;
	4'hB: rom_dataE2 = 3'b111;
endcase

always @*
case(rom_addrS)
    4'h0: rom_dataS = 3'b111; //S
    4'h1: rom_dataS = 3'b100;   
    4'h2: rom_dataS = 3'b100;  
    4'h3: rom_dataS = 3'b100; 
    4'h4: rom_dataS = 3'b100;
    4'h5: rom_dataS = 3'b100;
    4'h6: rom_dataS = 3'b111;
    3'h7: rom_dataS = 3'b001;
	4'h8: rom_dataS = 3'b001;
	4'h9: rom_dataS = 3'b001;
	4'hA: rom_dataS = 3'b001;
	4'hB: rom_dataS = 3'b111;
endcase

always @*
case(rom_addrC)
    4'h0: rom_dataC = 3'b111; //C
    4'h1: rom_dataC = 3'b100;   
    4'h2: rom_dataC = 3'b100;  
    4'h3: rom_dataC = 3'b100; 
    4'h4: rom_dataC = 3'b100;
    4'h5: rom_dataC = 3'b100;
    4'h6: rom_dataC = 3'b100;
    3'h7: rom_dataC = 3'b100;
	4'h8: rom_dataC = 3'b100;
	4'h9: rom_dataC = 3'b100;
	4'hA: rom_dataC = 3'b100;
	4'hB: rom_dataC = 3'b111;
endcase

always @*
case(rom_addrO1)
    4'h0: rom_dataO1 = 3'b111; //O
    4'h1: rom_dataO1 = 3'b101;   
    4'h2: rom_dataO1 = 3'b101;  
    4'h3: rom_dataO1 = 3'b101; 
    4'h4: rom_dataO1 = 3'b101;
    4'h5: rom_dataO1 = 3'b101;
    4'h6: rom_dataO1 = 3'b101;
    3'h7: rom_dataO1 = 3'b101;
	4'h8: rom_dataO1 = 3'b101;
	4'h9: rom_dataO1 = 3'b101;
	4'hA: rom_dataO1 = 3'b101;
	4'hB: rom_dataO1 = 3'b111;
endcase

always @*
case(rom_addrR1)
    4'h0: rom_dataR1 = 3'b111; //R
    4'h1: rom_dataR1 = 3'b101;   
    4'h2: rom_dataR1 = 3'b101;  
    4'h3: rom_dataR1 = 3'b101; 
    4'h4: rom_dataR1 = 3'b101;
    4'h5: rom_dataR1 = 3'b101;
    4'h6: rom_dataR1 = 3'b110;
    3'h7: rom_dataR1 = 3'b101;
	4'h8: rom_dataR1 = 3'b101;
	4'h9: rom_dataR1 = 3'b101;
	4'hA: rom_dataR1 = 3'b101;
	4'hB: rom_dataR1 = 3'b101;
endcase

always @*
case(rom_addrE3)
    4'h0: rom_dataE3 = 3'b111; //E3
    4'h1: rom_dataE3 = 3'b100;   
    4'h2: rom_dataE3 = 3'b100;  
    4'h3: rom_dataE3 = 3'b100; 
    4'h4: rom_dataE3 = 3'b100;
    4'h5: rom_dataE3 = 3'b100;
    4'h6: rom_dataE3 = 3'b111;
    4'h7: rom_dataE3 = 3'b100;
	4'h8: rom_dataE3 = 3'b100;
	4'h9: rom_dataE3 = 3'b100;
	4'hA: rom_dataE3 = 3'b100;
	4'hB: rom_dataE3 = 3'b111;
endcase

   always @(posedge clk, posedge reset)begin 
      if (reset)
         begin
         //The initial positions of the letters 
            g_x_reg <= 240;
            g_y_reg <= 320;
            a_x_reg <= 260;
            a_y_reg <= 320;
            m_x_reg <= 280;
            m_y_reg <= 320;
            e_x_reg <= 300;
            e_y_reg <= 320;
            
            o_x_reg <= 360;
            o_y_reg <= 320;
            v_x_reg <= 380;
            v_y_reg <= 320;
            e1_x_reg <= 400;
            e1_y_reg <= 320;
            r_x_reg <= 420;
            r_y_reg <= 320;
            
            n_x_reg <= 300;
            n_y_reg <= 120;
            a1_x_reg <= 320;
            a1_y_reg <= 120;
            m1_x_reg <= 340;
            m1_y_reg <= 120;
            e2_x_reg <= 360;
            e2_y_reg <= 120;
            
            s_x_reg <= 300;
            s_y_reg <= 220;
            c_x_reg <= 315;
            c_y_reg <= 220;
            o1_x_reg <= 330;
            o1_y_reg <= 220;
            r1_x_reg <= 345;
            r1_y_reg <= 220;
            e3_x_reg <= 360;
            e3_y_reg <= 220;
            
            
         end
      else begin 
      //The position of the letters 
        g_x_reg <= 240;
        g_y_reg <= 320;
        a_x_reg <= 260;
        a_y_reg <= 320;
        m_x_reg <= 280;
        m_y_reg <= 320;
        e_x_reg <= 300;
        e_y_reg <= 320;
        
        o_x_reg <= 360;
        o_y_reg <= 320;
        v_x_reg <= 380;
        v_y_reg <= 320;
        e1_x_reg <= 400;
        e1_y_reg <= 320;
        r_x_reg <= 420;
        r_y_reg <= 320;
        
        n_x_reg <= 300;
        n_y_reg <= 120;
        a1_x_reg <= 320;
        a1_y_reg <= 120;
        m1_x_reg <= 340;
        m1_y_reg <= 120;
        e2_x_reg <= 360;
        e2_y_reg <= 120;
        
        s_x_reg <= 300;
        s_y_reg <= 220;
        c_x_reg <= 315;
        c_y_reg <= 220;
        o1_x_reg <= 330;
        o1_y_reg <= 220;
        r1_x_reg <= 345;
        r1_y_reg <= 220;
        e3_x_reg <= 360;
        e3_y_reg <= 220;
      end 
   end 
  //--------------------------------------------
   //  letter 
   //--------------------------------------------
   // boundary
   assign g_x_l = g_x_reg;
   assign g_y_t = g_y_reg;
   assign g_x_r = g_x_l + L_SIZE - 1;
   assign g_y_b = g_y_t + L_SIZE - 1;
   
   assign a_x_l = a_x_reg;
   assign a_y_t = a_y_reg;
   assign a_x_r = a_x_l + L_SIZE - 1;
   assign a_y_b = a_y_t + L_SIZE - 1;
   
   assign m_x_l = m_x_reg;
   assign m_y_t = m_y_reg;
   assign m_x_r = m_x_l + L_SIZE - 1;
   assign m_y_b = m_y_t + L_SIZE - 1;
   
   assign e_x_l = e_x_reg;
   assign e_y_t = e_y_reg;
   assign e_x_r = e_x_l + L_SIZE - 1;
   assign e_y_b = e_y_t + L_SIZE - 1;
   
   assign o_x_l = o_x_reg;
   assign o_y_t = o_y_reg;
   assign o_x_r = o_x_l + L_SIZE - 1;
   assign o_y_b = o_y_t + L_SIZE - 1;
   
   assign v_x_l = v_x_reg;
   assign v_y_t = v_y_reg;
   assign v_x_r = v_x_l + L_SIZE - 1;
   assign v_y_b = v_y_t + L_SIZE - 1;
   
   assign e1_x_l = e1_x_reg;
   assign e1_y_t = e1_y_reg;
   assign e1_x_r = e1_x_l + L_SIZE - 1;
   assign e1_y_b = e1_y_t + L_SIZE - 1;
   
   assign r_x_l = r_x_reg;
   assign r_y_t = r_y_reg;
   assign r_x_r = r_x_l + L_SIZE - 1;
   assign r_y_b = r_y_t + L_SIZE - 1;
   
   assign n_x_l = n_x_reg;
   assign n_y_t = n_y_reg;
   assign n_x_r = n_x_l + L_SIZE_NAME_W-1;
   assign n_y_b = n_y_t + L_SIZE_NAME_H - 1;
   
   assign a1_x_l = a1_x_reg;
   assign a1_y_t = a1_y_reg;
   assign a1_x_r = a1_x_l + L_SIZE_NAME_W-1;
   assign a1_y_b = a1_y_t + L_SIZE_NAME_H - 1;
   
   assign m1_x_l = m1_x_reg;
   assign m1_y_t = m1_y_reg;
   assign m1_x_r = m1_x_l + L_SIZE_NAME_W - 1;
   assign m1_y_b = m1_y_t + L_SIZE_NAME_H - 1;
   
   assign e2_x_l = e2_x_reg;
   assign e2_y_t = e2_y_reg;
   assign e2_x_r = e2_x_l + L_SIZE_NAME_W - 1;
   assign e2_y_b = e2_y_t + L_SIZE_NAME_H - 1;
   
   assign s_x_l = s_x_reg;
   assign s_y_t = s_y_reg;
   assign s_x_r = s_x_l + L_SIZE_NAME_W-1;
   assign s_y_b = s_y_t + L_SIZE_NAME_H - 1;
   
   assign c_x_l = c_x_reg;
   assign c_y_t = c_y_reg;
   assign c_x_r = c_x_l + L_SIZE_NAME_W-1;
   assign c_y_b = c_y_t + L_SIZE_NAME_H - 1;
   
   assign o1_x_l = o1_x_reg;
   assign o1_y_t = o1_y_reg;
   assign o1_x_r = o1_x_l + L_SIZE_NAME_W-1;
   assign o1_y_b = o1_y_t + L_SIZE_NAME_H - 1;
   
   assign r1_x_l = r1_x_reg;
   assign r1_y_t = r1_y_reg;
   assign r1_x_r = r1_x_l + L_SIZE_NAME_W - 1;
   assign r1_y_b = r1_y_t + L_SIZE_NAME_H - 1;
   
   assign e3_x_l = e3_x_reg;
   assign e3_y_t = e3_y_reg;
   assign e3_x_r = e3_x_l + L_SIZE_NAME_W - 1;
   assign e3_y_b = e3_y_t + L_SIZE_NAME_H - 1;
   // pixel within letter
   assign g_on =
            (g_x_l<=pix_x) && (pix_x<=g_x_r) &&
            (g_y_t<=pix_y) && (pix_y<=g_y_b);
      assign a_on =
            (a_x_l<=pix_x) && (pix_x<=a_x_r) &&
            (a_y_t<=pix_y) && (pix_y<=a_y_b);
      assign m_on =
            (m_x_l<=pix_x) && (pix_x<=m_x_r) &&
            (m_y_t<=pix_y) && (pix_y<=m_y_b);
      assign e_on =
            (e_x_l<=pix_x) && (pix_x<=e_x_r) &&
            (e_y_t<=pix_y) && (pix_y<=e_y_b);
   assign o_on =
            (o_x_l<=pix_x) && (pix_x<=o_x_r) &&
            (o_y_t<=pix_y) && (pix_y<=o_y_b);
   assign v_on =
            (v_x_l<=pix_x) && (pix_x<=v_x_r) &&
            (v_y_t<=pix_y) && (pix_y<=v_y_b);
   assign e1_on =
            (e1_x_l<=pix_x) && (pix_x<=e1_x_r) &&
            (e1_y_t<=pix_y) && (pix_y<=e1_y_b);
   assign r_on =
            (r_x_l<=pix_x) && (pix_x<=r_x_r) &&
            (r_y_t<=pix_y) && (pix_y<=r_y_b);
            
   assign n_on =
            (n_x_l<=pix_x) && (pix_x<=n_x_r) &&
            (n_y_t<=pix_y) && (pix_y<=n_y_b);
   assign a1_on =
            (a1_x_l<=pix_x) && (pix_x<=a1_x_r) &&
            (a1_y_t<=pix_y) && (pix_y<=a1_y_b);
   assign m1_on =
            (m1_x_l<=pix_x) && (pix_x<=m1_x_r) &&
            (m1_y_t<=pix_y) && (pix_y<=m1_y_b);
   assign e2_on =
            (e2_x_l<=pix_x) && (pix_x<=e2_x_r) &&
            (e2_y_t<=pix_y) && (pix_y<=e2_y_b);
            
   assign s_on =
            (s_x_l<=pix_x) && (pix_x<=s_x_r) &&
            (s_y_t<=pix_y) && (pix_y<=s_y_b);
   assign c_on =
            (c_x_l<=pix_x) && (pix_x<=c_x_r) &&
            (c_y_t<=pix_y) && (pix_y<=c_y_b);
   assign o1_on =
            (o1_x_l<=pix_x) && (pix_x<=o1_x_r) &&
            (o1_y_t<=pix_y) && (pix_y<=o1_y_b);
   assign r1_on =
            (r1_x_l<=pix_x) && (pix_x<=r1_x_r) &&
            (r1_y_t<=pix_y) && (pix_y<=r1_y_b);
   assign e3_on =
            (e3_x_l<=pix_x) && (pix_x<=e3_x_r) &&
            (e3_y_t<=pix_y) && (pix_y<=e3_y_b);
   // map current pixel location to ROM addr/col
   assign rom_addrG = pix_y[2:0] - g_y_t[2:0];
   assign rom_colG = pix_x[2:0] - g_x_l[2:0];
   assign rom_bitG = rom_dataG[rom_colG];
   
   assign rom_addrA = pix_y[2:0] - a_y_t[2:0];
   assign rom_colA = pix_x[2:0] - a_x_l[2:0];
   assign rom_bitA = rom_dataA[rom_colA];
   
   assign rom_addrM = pix_y[2:0] - m_y_t[2:0];
   assign rom_colM = pix_x[2:0] - m_x_l[2:0];
   assign rom_bitM = rom_dataM[rom_colM];
   
   assign rom_addrE = pix_y[2:0] - e_y_t[2:0];
   assign rom_colE = pix_x[2:0] - e_x_l[2:0];
   assign rom_bitE = rom_dataE[rom_colE];
   
   assign rom_addrO = pix_y[2:0] - o_y_t[2:0];
   assign rom_colO = pix_x[2:0] - o_x_l[2:0];
   assign rom_bitO = rom_dataO[rom_colO];
   
   assign rom_addrV = pix_y[2:0] - v_y_t[2:0];
   assign rom_colV = pix_x[2:0] - v_x_l[2:0];
   assign rom_bitV = rom_dataV[rom_colV];
   
   assign rom_addrE1 = pix_y[2:0] - e1_y_t[2:0];
   assign rom_colE1 = pix_x[2:0] - e1_x_l[2:0];
   assign rom_bitE1 = rom_dataE1[rom_colE1];
   
   assign rom_addrR = pix_y[2:0] - r_y_t[2:0];
   assign rom_colR = pix_x[2:0] - r_x_l[2:0];
   assign rom_bitR = rom_dataR[rom_colR];
   
   assign rom_addrN = pix_y[3:0] - n_y_t[3:0];
   assign rom_colN = pix_x[2:0] - n_x_l[2:0];
   assign rom_bitN = rom_dataN[rom_colN];
   
   assign rom_addrA1 = pix_y[3:0] - a1_y_t[3:0];
   assign rom_colA1 = pix_x[2:0] - a1_x_l[2:0];
   assign rom_bitA1 = rom_dataA1[rom_colA1];
   
   assign rom_addrM1 = pix_y[3:0] - m1_y_t[3:0];
   assign rom_colM1 = pix_x[2:0] - m1_x_l[2:0];
   assign rom_bitM1 = rom_dataM1[rom_colM1];
   
   assign rom_addrE2 = pix_y[3:0] - e2_y_t[3:0];
   assign rom_colE2 = pix_x[2:0] - e2_x_l[2:0];
   assign rom_bitE2 = rom_dataE2[rom_colE2];
   
   assign rom_addrS = pix_y[3:0] - s_y_t[3:0];
   assign rom_colS = pix_x[2:0] - s_x_l[2:0];
   assign rom_bitS = rom_dataS[rom_colS];
   
   assign rom_addrC = pix_y[3:0] - c_y_t[3:0];
   assign rom_colC = pix_x[2:0] - c_x_l[2:0];
   assign rom_bitC = rom_dataC[rom_colC];
   
   assign rom_addrO1 = pix_y[3:0] - o1_y_t[3:0];
   assign rom_colO1 = pix_x[2:0] - o1_x_l[2:0];
   assign rom_bitO1 = rom_dataO1[rom_colO1];
   
   assign rom_addrR1 = pix_y[3:0] - r1_y_t[3:0];
   assign rom_colR1 = pix_x[2:0] - r1_x_l[2:0];
   assign rom_bitR1 = rom_dataR1[rom_colR1];
   
   assign rom_addrE3 = pix_y[3:0] - e3_y_t[3:0];
   assign rom_colE3 = pix_x[2:0] - e3_x_l[2:0];
   assign rom_bitE3 = rom_dataE3[rom_colE3];
   // pixel within letter
   assign g_l_on = g_on & rom_bitG;
   assign a_l_on = a_on & rom_bitA;
   assign m_l_on = m_on & rom_bitM;
   assign e_l_on = e_on & rom_bitE;
   
   assign o_l_on = o_on & rom_bitO;
   assign v_l_on = v_on & rom_bitV;
   assign e1_l_on = e1_on & rom_bitE1;
   assign r_l_on = r_on & rom_bitR;
   
   assign n_l_on = n_on & rom_bitN;
   assign a1_l_on = a1_on & rom_bitA1;
   assign m1_l_on = m1_on & rom_bitM1;
   assign e2_l_on = e2_on & rom_bitE2;
   
   assign s_l_on = s_on & rom_bitS;
   assign c_l_on = c_on & rom_bitC;
   assign o1_l_on = o1_on & rom_bitO1;
   assign r1_l_on = r1_on & rom_bitR1;
   assign e3_l_on = e3_on & rom_bitE3;
   //The color of the letters
   assign l_rgb = 24'b000;
   //True if at least one letter signal is high
   assign letter_on = g_l_on || a_l_on || m_l_on || e_l_on || o_l_on || v_l_on || e1_l_on || r_l_on ||
                      n_l_on || a1_l_on || m1_l_on || e2_l_on ||
                      s_l_on || c_l_on || o1_l_on || r1_l_on || e3_l_on;
endmodule
