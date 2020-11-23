`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: gameoverScore.v
// The following module manages the animation for the player's gameover score
//////////////////////////////////////////////////////////////////////////////////
module gameoverScore(clk, reset, tick75hz, brickstaken, 
                     pix_x, pix_y,gamescore,
                     n_l_on, n_l_rgb, lives, gameover);
input clk, reset, tick75hz; 
input gameover;//The signal for gameover
input [2:0] lives; //The lives of the player 
input [4:0] brickstaken; //The amount of bricks taken 
input [17:0] gamescore; //The player's score 
input wire [11:0] pix_x, pix_y;//The x and y position on the monitor 
output n_l_on, n_l_rgb; //The color and on switch for the letters 
wire n_l_on;
wire [23:0] n_l_rgb;
wire [0:2] num_mem [119:0]; //The matrix that has the display for numbers 0-9
//size of arabic numbers
localparam N_SIZE_NAME_H = 12;
localparam N_SIZE_NAME_W = 3;
    //digits for score left to right 
    wire z_l_on, o_l_on, t_l_on, th_l_on, f_l_on, fi_l_on; 
    reg [11:0] z_x_reg, z_y_reg, o_x_reg, o_y_reg, t_x_reg, t_y_reg, th_x_reg, th_y_reg, f_x_reg, f_y_reg, fi_x_reg, fi_y_reg;
    wire [3:0] rom_addrZ, rom_colZ, rom_addrO, rom_colO, rom_addrT, rom_colT, rom_addrTH, rom_colTH, rom_addrF, rom_colF, rom_addrFI, rom_colFI;
    reg [0:2] rom_dataZ, rom_dataO, rom_dataT, rom_dataTH, rom_dataF, rom_dataFI;
    wire rom_bitZ, rom_bitO, rom_bitT, rom_bitTH, rom_bitF, rom_bitFI;
    //  letters left, right boundary
   wire [11:0] z_x_l, z_x_r, o_x_l, o_x_r, t_x_l, t_x_r, th_x_l, th_x_r, f_x_l, f_x_r, fi_x_l, fi_x_r;
 // letters top, bottom boundary
   wire [11:0]  z_y_b, o_y_b, t_y_b, th_y_b, f_y_b, fi_y_b;
   wire [11:0]  z_y_t, o_y_t, t_y_t, th_y_t, f_y_t, fi_y_t;
    // object output signals
 //--------------------------------------------
   wire  z_on, o_on, t_on, th_on, f_on, fi_on;

//Digit zero is the left most digit while Digit five is hte right most digit 
//012345
//Display the left most digit 
always @*
case(rom_addrZ)
    4'h0: rom_dataZ = num_mem [((gamescore/100000)*12)]; 
    4'h1: rom_dataZ = num_mem [((gamescore/100000)*12)+1];   
    4'h2: rom_dataZ = num_mem [((gamescore/100000)*12)+2]; 
    4'h3: rom_dataZ = num_mem [((gamescore/100000)*12)+3]; 
    4'h4: rom_dataZ = num_mem [((gamescore/100000)*12)+4]; 
    4'h5: rom_dataZ = num_mem [((gamescore/100000)*12)+5]; 
    4'h6: rom_dataZ = num_mem [((gamescore/100000)*12)+6]; 
    3'h7: rom_dataZ = num_mem [((gamescore/100000)*12)+7]; 
	4'h8: rom_dataZ = num_mem [((gamescore/100000)*12)+8]; 
	4'h9: rom_dataZ = num_mem [((gamescore/100000)*12)+9]; 
	4'hA: rom_dataZ = num_mem [((gamescore/100000)*12)+10]; 
	4'hB: rom_dataZ = num_mem [((gamescore/100000)*12)+11]; 
endcase

//Display the second left most digit 
always @*
case(rom_addrO)
    4'h0: rom_dataO= num_mem [(((gamescore%10000)/10000)*12)]; 
    4'h1: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+1];   
    4'h2: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+2]; 
    4'h3: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+3]; 
    4'h4: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+4]; 
    4'h5: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+5]; 
    4'h6: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+6]; 
    3'h7: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+7]; 
	4'h8: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+8]; 
	4'h9: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+9]; 
	4'hA: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+10]; 
	4'hB: rom_dataO = num_mem [(((gamescore%10000)/10000)*12)+11]; 
endcase

//Display the third left most digit 
always @*
case(rom_addrT)
    4'h0: rom_dataT= num_mem [(((gamescore%10000)/1000)*12)]; 
    4'h1: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+1];   
    4'h2: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+2]; 
    4'h3: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+3]; 
    4'h4: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+4]; 
    4'h5: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+5]; 
    4'h6: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+6]; 
    3'h7: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+7]; 
	4'h8: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+8]; 
	4'h9: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+9]; 
	4'hA: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+10]; 
	4'hB: rom_dataT = num_mem [(((gamescore%10000)/1000)*12)+11]; 
endcase

//Display the fourth  left most digit 
always @*
case(rom_addrTH)
    4'h0: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)]; 
    4'h1: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+1];   
    4'h2: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+2]; 
    4'h3: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+3]; 
    4'h4: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+4]; 
    4'h5: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+5]; 
    4'h6: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+6]; 
    3'h7: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+7]; 
	4'h8: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+8]; 
	4'h9: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+9]; 
	4'hA: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+10]; 
	4'hB: rom_dataTH = num_mem [(((gamescore%1000)/100)*12)+11]; 
endcase

//Display the fifth left most digit 
always @*
case(rom_addrF)
    4'h0: rom_dataF = num_mem [((gamescore%100)/10)*12]; 
    4'h1: rom_dataF = num_mem [(((gamescore%100)/10)*12)+1];   
    4'h2: rom_dataF = num_mem [(((gamescore%100)/10)*12)+2]; 
    4'h3: rom_dataF = num_mem [(((gamescore%100)/10)*12)+3]; 
    4'h4: rom_dataF = num_mem [(((gamescore%100)/10)*12)+4]; 
    4'h5: rom_dataF = num_mem [(((gamescore%100)/10)*12)+5]; 
    4'h6: rom_dataF = num_mem [(((gamescore%100)/10)*12)+6]; 
    3'h7: rom_dataF = num_mem [(((gamescore%100)/10)*12)+7]; 
	4'h8: rom_dataF = num_mem [(((gamescore%100)/10)*12)+8]; 
	4'h9: rom_dataF = num_mem [(((gamescore%100)/10)*12)+9]; 
	4'hA: rom_dataF = num_mem [(((gamescore%100)/10)*12)+10]; 
	4'hB: rom_dataF = num_mem [(((gamescore%100)/10)*12)+11]; 
endcase

//Display the sixth left most digit 
always @*
case(rom_addrFI)
    4'h0: rom_dataFI = num_mem [(gamescore%10)*12]; 
    4'h1: rom_dataFI = num_mem [((gamescore%10)*12)+1];   
    4'h2: rom_dataFI = num_mem [((gamescore%10)*12)+2]; 
    4'h3: rom_dataFI = num_mem [((gamescore%10)*12)+3]; 
    4'h4: rom_dataFI = num_mem [((gamescore%10)*12)+4]; 
    4'h5: rom_dataFI = num_mem [((gamescore%10)*12)+5]; 
    4'h6: rom_dataFI = num_mem [((gamescore%10)*12)+6]; 
    3'h7: rom_dataFI = num_mem [((gamescore%10)*12)+7]; 
	4'h8: rom_dataFI = num_mem [((gamescore%10)*12)+8]; 
	4'h9: rom_dataFI = num_mem [((gamescore%10)*12)+9]; 
	4'hA: rom_dataFI = num_mem [((gamescore%10)*12)+10]; 
	4'hB: rom_dataFI = num_mem [((gamescore%10)*12)+11]; 
endcase

 always @(posedge clk, posedge reset)begin 
      if (reset)
         begin
         //The positions of the digits 
            z_x_reg <= 300;
            z_y_reg <= 270;
            o_x_reg <= 315;
            o_y_reg <= 270;
            t_x_reg <= 330;
            t_y_reg <= 270;
            th_x_reg <= 345;
            th_y_reg <= 270;
            f_x_reg <= 360;
            f_y_reg <= 270;
            fi_x_reg <= 380;
            fi_y_reg <= 270;
       end
      else begin 
      //The position of the digits 
            z_x_reg <= 300;
            z_y_reg <= 270;
            o_x_reg <= 315;
            o_y_reg <= 270;
            t_x_reg <= 330;
            t_y_reg <= 270;
            th_x_reg <= 345;
            th_y_reg <= 270;
            f_x_reg <= 360;
            f_y_reg <= 270;
            fi_x_reg <= 380;
            fi_y_reg <= 270;

   end 
   end 

 //--------------------------------------------
   //  letter 
   //--------------------------------------------
   // boundary
   assign z_x_l = z_x_reg;
   assign z_y_t = z_y_reg;
   assign z_x_r = z_x_l + N_SIZE_NAME_W-1;
   assign z_y_b = z_y_t + N_SIZE_NAME_H - 1;
   
   assign o_x_l = o_x_reg;
   assign o_y_t = o_y_reg;
   assign o_x_r = o_x_l + N_SIZE_NAME_W-1;
   assign o_y_b = o_y_t + N_SIZE_NAME_H - 1;
   
   assign t_x_l = t_x_reg;
   assign t_y_t = t_y_reg;
   assign t_x_r = t_x_l + N_SIZE_NAME_W-1;
   assign t_y_b = t_y_t + N_SIZE_NAME_H - 1;
   
   assign th_x_l = th_x_reg;
   assign th_y_t = th_y_reg;
   assign th_x_r = th_x_l + N_SIZE_NAME_W - 1;
   assign th_y_b = th_y_t + N_SIZE_NAME_H - 1;
   
   assign f_x_l = f_x_reg;
   assign f_y_t = f_y_reg;
   assign f_x_r = f_x_l + N_SIZE_NAME_W - 1;
   assign f_y_b = f_y_t + N_SIZE_NAME_H - 1;
   
   assign fi_x_l = fi_x_reg;
   assign fi_y_t = fi_y_reg;
   assign fi_x_r = fi_x_l + N_SIZE_NAME_W - 1;
   assign fi_y_b = fi_y_t + N_SIZE_NAME_H - 1;
   // pixel within letter
    assign z_on =
            (z_x_l<=pix_x) && (pix_x<=z_x_r) &&
            (z_y_t<=pix_y) && (pix_y<=z_y_b);
   assign o_on =
            (o_x_l<=pix_x) && (pix_x<=o_x_r) &&
            (o_y_t<=pix_y) && (pix_y<=o_y_b);
   assign t_on =
            (t_x_l<=pix_x) && (pix_x<=t_x_r) &&
            (t_y_t<=pix_y) && (pix_y<=t_y_b);
   assign th_on =
            (th_x_l<=pix_x) && (pix_x<=th_x_r) &&
            (th_y_t<=pix_y) && (pix_y<=th_y_b);
   assign f_on =
            (f_x_l<=pix_x) && (pix_x<=f_x_r) &&
            (f_y_t<=pix_y) && (pix_y<=f_y_b);
   assign fi_on =
            (fi_x_l<=pix_x) && (pix_x<=fi_x_r) &&
            (fi_y_t<=pix_y) && (pix_y<=fi_y_b);
   // map current pixel location to ROM addr/col
   assign rom_addrZ = pix_y[3:0] - z_y_t[3:0];
   assign rom_colZ = pix_x[2:0] - z_x_l[2:0];
   assign rom_bitZ = rom_dataZ[rom_colZ];
   
   assign rom_addrO = pix_y[3:0] - o_y_t[3:0];
   assign rom_colO = pix_x[2:0] - o_x_l[2:0];
   assign rom_bitO = rom_dataO[rom_colO];
   
   assign rom_addrT = pix_y[3:0] - t_y_t[3:0];
   assign rom_colT = pix_x[2:0] - t_x_l[2:0];
   assign rom_bitT = rom_dataT[rom_colT];
   
   assign rom_addrTH = pix_y[3:0] - th_y_t[3:0];
   assign rom_colTH = pix_x[2:0] - th_x_l[2:0];
   assign rom_bitTH = rom_dataTH[rom_colTH];
   
   assign rom_addrF = pix_y[3:0] - f_y_t[3:0];
   assign rom_colF = pix_x[2:0] - f_x_l[2:0];
   assign rom_bitF = rom_dataF[rom_colF];
 
   assign rom_addrFI = pix_y[3:0] - fi_y_t[3:0];
   assign rom_colFI = pix_x[2:0] - fi_x_l[2:0];
   assign rom_bitFI = rom_dataFI[rom_colFI];
   // pixel within letter
   assign z_l_on = z_on & rom_bitZ;
   assign o_l_on = o_on & rom_bitO;
   assign t_l_on = t_on & rom_bitT;
   assign th_l_on = th_on & rom_bitTH;
   assign f_l_on = f_on & rom_bitF;
   assign fi_l_on = fi_on & rom_bitFI;

assign n_l_rgb = 24'h00FFFF; //The color of the number text 
//At least one number is on 
assign n_l_on = z_l_on || o_l_on || t_l_on || th_l_on || f_l_on || fi_l_on;

//0
assign  num_mem[0] = 3'b111;
assign  num_mem[1] = 3'b101;
assign  num_mem[2] = 3'b101;
assign  num_mem[3] = 3'b101;
assign  num_mem[4] = 3'b101;
assign  num_mem[5] = 3'b101;
assign  num_mem[6] = 3'b101;
assign  num_mem[7] = 3'b101;
assign  num_mem[8] = 3'b101;
assign  num_mem[9] = 3'b101;
assign  num_mem[10] = 3'b101;
assign  num_mem[11] = 3'b111;
//1
assign  num_mem[12] = 3'b010;
assign  num_mem[13] = 3'b010;
assign  num_mem[14] = 3'b010;
assign  num_mem[15] = 3'b010;
assign  num_mem[16] = 3'b010;
assign  num_mem[17] = 3'b010;
assign  num_mem[18] = 3'b010;
assign  num_mem[19] = 3'b010;
assign  num_mem[20] = 3'b010;
assign  num_mem[21] = 3'b010;
assign  num_mem[22] = 3'b010;
assign  num_mem[23] = 3'b010;
//2
assign  num_mem[24] = 3'b111;
assign  num_mem[25] = 3'b001; 
assign  num_mem[26] = 3'b001; 
assign  num_mem[27] = 3'b001;
assign  num_mem[28] = 3'b001;
assign  num_mem[29] = 3'b001;
assign  num_mem[30] = 3'b111;
assign  num_mem[31] = 3'b100;
assign  num_mem[32] = 3'b100;
assign  num_mem[33] = 3'b100;
assign  num_mem[34] = 3'b100;
assign  num_mem[35] = 3'b111;
//3
assign  num_mem[36] = 3'b111;
assign  num_mem[37] = 3'b001;
assign  num_mem[38] = 3'b001;
assign  num_mem[39] = 3'b001;
assign  num_mem[40] = 3'b001;
assign  num_mem[41] = 3'b001;
assign  num_mem[42] = 3'b111;
assign  num_mem[43] = 3'b001;
assign  num_mem[44] = 3'b001;
assign  num_mem[45] = 3'b001;
assign  num_mem[46] = 3'b001;
assign  num_mem[47] = 3'b111;
//4
assign  num_mem[48] = 3'b101;
assign  num_mem[49] = 3'b101;
assign  num_mem[50] = 3'b101;
assign  num_mem[51] = 3'b101;
assign  num_mem[52] = 3'b101;
assign  num_mem[53] = 3'b101;
assign  num_mem[54] = 3'b111;
assign  num_mem[55] = 3'b001;
assign  num_mem[56] = 3'b001;
assign  num_mem[57] = 3'b001;
assign  num_mem[58] = 3'b001;
assign  num_mem[59] = 3'b001;
//5
assign  num_mem[60] = 3'b111;
assign  num_mem[61] = 3'b100;
assign  num_mem[62] = 3'b100;
assign  num_mem[63] = 3'b100;
assign  num_mem[64] = 3'b100;
assign  num_mem[65] = 3'b100;
assign  num_mem[66] = 3'b111;
assign  num_mem[67] = 3'b001;
assign  num_mem[68] = 3'b001;
assign  num_mem[69] = 3'b001;
assign  num_mem[70] = 3'b001;
assign  num_mem[71] = 3'b111;
//6
assign  num_mem[72] = 3'b111;
assign  num_mem[73] = 3'b100; 
assign  num_mem[74] = 3'b100; 
assign  num_mem[75] = 3'b100; 
assign  num_mem[76] = 3'b100; 
assign  num_mem[77] = 3'b100; 
assign  num_mem[78] = 3'b111;
assign  num_mem[79] = 3'b101;
assign  num_mem[80] = 3'b101;
assign  num_mem[81] = 3'b101;
assign  num_mem[82] = 3'b101;
assign  num_mem[83] = 3'b111;
//7
assign  num_mem[84] = 3'b111;
assign  num_mem[85] = 3'b001; 
assign  num_mem[86] = 3'b001; 
assign  num_mem[87] = 3'b001; 
assign  num_mem[88] = 3'b001; 
assign  num_mem[89] = 3'b001; 
assign  num_mem[90] = 3'b001; 
assign  num_mem[91] = 3'b001; 
assign  num_mem[92] = 3'b001; 
assign  num_mem[93] = 3'b001; 
assign  num_mem[94] = 3'b001; 
assign  num_mem[95] = 3'b001; 
//8
assign  num_mem[96] = 3'b111;
assign  num_mem[97] = 3'b101;
assign  num_mem[98] = 3'b101;
assign  num_mem[99] = 3'b101;
assign  num_mem[100] = 3'b101;
assign  num_mem[101] = 3'b101;
assign  num_mem[102] = 3'b111;
assign  num_mem[103] = 3'b101;
assign  num_mem[104] = 3'b101;
assign  num_mem[105] = 3'b101;
assign  num_mem[106] = 3'b101;
assign  num_mem[107] = 3'b111;
//9
assign  num_mem[108] = 3'b111;
assign  num_mem[109] = 3'b101; 
assign  num_mem[110] = 3'b101; 
assign  num_mem[111] = 3'b101; 
assign  num_mem[112] = 3'b101; 
assign  num_mem[113] = 3'b101; 
assign  num_mem[114] = 3'b111;
assign  num_mem[115] = 3'b001;
assign  num_mem[116] = 3'b001;
assign  num_mem[117] = 3'b001;
assign  num_mem[118] = 3'b001;
assign  num_mem[119] = 3'b111;


endmodule
