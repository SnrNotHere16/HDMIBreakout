`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: gameoverName.v
// The following module manages the display of the user's name
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//The following file maps the letters for the position they should be located on
//p_c0, p_c1, and p_c2 will be displayed on a screen. The values of the previous 
//inputs determines the letter that will be displayed. Only capital letters will 
// be displayed. The value's of p_c0, p_c1, and p_c2 are supposed to match the 
// ASCII values for the letters. If the ASCII values do not match, then a 
// question mark will be displayed
// 
//////////////////////////////////////////////////////////////////////////////////


module gameoverName(clk, reset, tick75hz, 
                    pix_x, pix_y, 
                    p_c0, p_c1, p_c2,
                    na_l_on, na_l_rgb);
input clk, reset, tick75hz; 
input wire [11:0] pix_x, pix_y; //The positon on the monitor 
input wire [7:0] p_c0, p_c1, p_c2;//ASCII letters from the PS (Processing System)
output na_l_on, na_l_rgb; //The letter color and on switch
wire na_l_on; // the on switch for the player's letters 
wire [7:0] letter_zero_p, letter_one_p, letter_two_p; //ASCII value to be displayed 
wire [23:0] na_l_rgb;//The color of the leters 
wire [0:2] alpha_mem [323:0]; //The matrix holds the display of the A-Z and ?
//size of arabic numbers
localparam A_SIZE_NAME_H = 12;
localparam A_SIZE_NAME_W = 3;
//Positoins of letters on monitor 
//First letter 
localparam L_0_X = 300; 
localparam L_0_Y = 170;
//Second Letter 
localparam L_1_X = 330;
localparam L_1_Y = 170;
//Third Letter 
localparam L_2_X = 360;
localparam L_2_Y = 170;

    //Player's name letters for  left to right 
    wire p0_l_on, p1_l_on, p2_l_on; 
    reg [11:0] p0_x_reg, p0_y_reg, p1_x_reg, p1_y_reg, p2_x_reg, p2_y_reg;
    wire [3:0] rom_addrP0, rom_colP0, rom_addrP1, rom_colP1, rom_addrP2, rom_colP2;
    reg [0:2] rom_dataP0, rom_dataP1, rom_dataP2;
    wire rom_bitP0, rom_bitP1, rom_bitP2;
    //Player's name letters left, right boundary
   wire [11:0] p0_x_l, p0_x_r, p1_x_l, p1_x_r, p2_x_l, p2_x_r;
 // Player's name letters top, bottom boundary
   wire [11:0]  p0_y_b, p1_y_b, p2_y_b;
   wire [11:0]  p0_y_t, p1_y_t, p2_y_t;
    // object output signals
 //--------------------------------------------
   wire  p0_on, p1_on, p2_on;
   
 always @*
 //Display for first letter
case(rom_addrP0)
    4'h0: rom_dataP0 = alpha_mem [(letter_zero_p)*12]; 
    4'h1: rom_dataP0 = alpha_mem [(letter_zero_p*12)+1];   
    4'h2: rom_dataP0 = alpha_mem [(letter_zero_p*12)+2]; 
    4'h3: rom_dataP0 = alpha_mem [(letter_zero_p*12)+3]; 
    4'h4: rom_dataP0 = alpha_mem [(letter_zero_p*12)+4]; 
    4'h5: rom_dataP0 = alpha_mem[(letter_zero_p*12)+5]; 
    4'h6: rom_dataP0 = alpha_mem [(letter_zero_p*12)+6]; 
    3'h7: rom_dataP0 = alpha_mem [(letter_zero_p*12)+7]; 
	4'h8: rom_dataP0 = alpha_mem [(letter_zero_p*12)+8]; 
	4'h9: rom_dataP0 = alpha_mem [(letter_zero_p*12)+9]; 
	4'hA: rom_dataP0 = alpha_mem [(letter_zero_p*12)+10]; 
	4'hB: rom_dataP0 = alpha_mem [(letter_zero_p*12)+11]; 
endcase

always @*
 //Display for second letter
case(rom_addrP1)
    4'h0: rom_dataP1 = alpha_mem [(letter_one_p)*12];
    4'h1: rom_dataP1 = alpha_mem [(letter_one_p*12)+1];   
    4'h2: rom_dataP1 = alpha_mem [(letter_one_p*12)+2]; 
    4'h3: rom_dataP1 = alpha_mem [(letter_one_p*12)+3]; 
    4'h4: rom_dataP1 = alpha_mem [(letter_one_p*12)+4]; 
    4'h5: rom_dataP1 = alpha_mem[(letter_one_p*12)+5]; 
    4'h6: rom_dataP1 = alpha_mem [(letter_one_p*12)+6]; 
    3'h7: rom_dataP1 = alpha_mem [(letter_one_p*12)+7]; 
	4'h8: rom_dataP1 = alpha_mem [(letter_one_p*12)+8]; 
	4'h9: rom_dataP1 = alpha_mem [(letter_one_p*12)+9]; 
	4'hA: rom_dataP1 = alpha_mem [(letter_one_p*12)+10]; 
	4'hB: rom_dataP1 = alpha_mem [(letter_one_p*12)+11]; 
endcase

always @*
 //Display for third letter
case(rom_addrP2)
    4'h0: rom_dataP2 = alpha_mem [(letter_two_p)*12]; 
    4'h1: rom_dataP2 = alpha_mem [(letter_two_p*12)+1];   
    4'h2: rom_dataP2 = alpha_mem [(letter_two_p*12)+2]; 
    4'h3: rom_dataP2 = alpha_mem [(letter_two_p*12)+3]; 
    4'h4: rom_dataP2 = alpha_mem [(letter_two_p*12)+4]; 
    4'h5: rom_dataP2 = alpha_mem[(letter_two_p*12)+5]; 
    4'h6: rom_dataP2 = alpha_mem [(letter_two_p*12)+6]; 
    3'h7: rom_dataP2 = alpha_mem [(letter_two_p*12)+7]; 
	4'h8: rom_dataP2 = alpha_mem [(letter_two_p*12)+8]; 
	4'h9: rom_dataP2 = alpha_mem [(letter_two_p*12)+9]; 
	4'hA: rom_dataP2 = alpha_mem [(letter_two_p*12)+10]; 
	4'hB: rom_dataP2 = alpha_mem [(letter_two_p*12)+11]; 
endcase

 //--------------------------------------------
   //  letter 
   //--------------------------------------------
   // boundary
   assign p0_x_l = L_0_X;
   assign p0_y_t = L_0_Y;
   assign p0_x_r = p0_x_l + A_SIZE_NAME_W-1;
   assign p0_y_b = p0_y_t + A_SIZE_NAME_H - 1;
   
   assign p1_x_l = L_1_X;
   assign p1_y_t = L_1_Y;
   assign p1_x_r = p1_x_l + A_SIZE_NAME_W-1;
   assign p1_y_b = p1_y_t + A_SIZE_NAME_H - 1;
   
   assign p2_x_l = L_2_X;
   assign p2_y_t = L_2_Y;
   assign p2_x_r = p2_x_l + A_SIZE_NAME_W-1;
   assign p2_y_b = p2_y_t + A_SIZE_NAME_H - 1;
   
   // pixel within letter
    assign p0_on =
            (p0_x_l<=pix_x) && (pix_x<=p0_x_r) &&
            (p0_y_t<=pix_y) && (pix_y<=p0_y_b);
            
    assign p1_on =
            (p1_x_l<=pix_x) && (pix_x<=p1_x_r) &&
            (p1_y_t<=pix_y) && (pix_y<=p1_y_b);
            
    assign p2_on =
            (p2_x_l<=pix_x) && (pix_x<=p2_x_r) &&
            (p2_y_t<=pix_y) && (pix_y<=p2_y_b);
            
   // map current pixel location to ROM addr/col
   assign rom_addrP0 = pix_y[3:0] - p0_y_t[3:0];
   assign rom_colP0 = pix_x[2:0] - p0_x_l[2:0];
   assign rom_bitP0 = rom_dataP0[rom_colP0];
   
   assign rom_addrP1 = pix_y[3:0] - p1_y_t[3:0];
   assign rom_colP1 = pix_x[2:0] - p1_x_l[2:0];
   assign rom_bitP1 = rom_dataP1[rom_colP1];
   
   assign rom_addrP2 = pix_y[3:0] - p2_y_t[3:0];
   assign rom_colP2 = pix_x[2:0] - p2_x_l[2:0];
   assign rom_bitP2 = rom_dataP2[rom_colP2];

   // pixel within letter
   assign p0_l_on = p0_on & rom_bitP0;
   assign p1_l_on = p1_on & rom_bitP1;
   assign p2_l_on = p2_on & rom_bitP2;

assign na_l_rgb = 24'hFFFF00;
assign na_l_on = p0_l_on || p1_l_on || p2_l_on;

//selects the starting position of the letter on the alpha array
assign letter_zero_p = (p_c0 >= 65 && p_c0 <= 90)? p_c0-65: 26;
assign letter_one_p = (p_c1 >= 65 && p_c1 <= 90)? p_c1-65: 26;
assign letter_two_p = (p_c2 >= 65 && p_c2 <= 90)? p_c2-65: 26;
//A
assign  alpha_mem[0] = 3'b111;
assign  alpha_mem[1] = 3'b101;
assign  alpha_mem[2] = 3'b101;
assign  alpha_mem[3] = 3'b101;
assign  alpha_mem[4] = 3'b101;
assign  alpha_mem[5] = 3'b101;
assign  alpha_mem[6] = 3'b111;
assign  alpha_mem[7] = 3'b101;
assign  alpha_mem[8] = 3'b101;
assign  alpha_mem[9] = 3'b101;
assign  alpha_mem[10] = 3'b101;
assign  alpha_mem[11] = 3'b101;
//B
assign  alpha_mem[12] = 3'b111;
assign  alpha_mem[13] = 3'b111;
assign  alpha_mem[14] = 3'b101; 
assign  alpha_mem[15] = 3'b101; 
assign  alpha_mem[16] = 3'b101; 
assign  alpha_mem[17] = 3'b101; 
assign  alpha_mem[18] = 3'b111;
assign  alpha_mem[19] = 3'b101;
assign  alpha_mem[20] = 3'b101;
assign  alpha_mem[21] = 3'b101;
assign  alpha_mem[22] = 3'b101;
assign  alpha_mem[23] = 3'b111;
//C
assign  alpha_mem[24] = 3'b111;
assign  alpha_mem[25] = 3'b100; 
assign  alpha_mem[26] = 3'b100; 
assign  alpha_mem[27] = 3'b100;
assign  alpha_mem[28] = 3'b100;
assign  alpha_mem[29] = 3'b100;
assign  alpha_mem[30] = 3'b100;
assign  alpha_mem[31] = 3'b100;
assign  alpha_mem[32] = 3'b100;
assign  alpha_mem[33] = 3'b100;
assign  alpha_mem[34] = 3'b100;
assign  alpha_mem[35] = 3'b111;
//D
assign  alpha_mem[36] = 3'b110;
assign  alpha_mem[37] = 3'b101;
assign  alpha_mem[38] = 3'b101;
assign  alpha_mem[39] = 3'b101;
assign  alpha_mem[40] = 3'b101;
assign  alpha_mem[41] = 3'b101;
assign  alpha_mem[42] = 3'b101;
assign  alpha_mem[43] = 3'b101;
assign  alpha_mem[44] = 3'b101;
assign  alpha_mem[45] = 3'b101;
assign  alpha_mem[46] = 3'b101;
assign  alpha_mem[47] = 3'b110;
//E
assign  alpha_mem[48] = 3'b111;
assign  alpha_mem[49] = 3'b100;
assign  alpha_mem[50] = 3'b100;
assign  alpha_mem[51] = 3'b100;
assign  alpha_mem[52] = 3'b100;
assign  alpha_mem[53] = 3'b100;
assign  alpha_mem[54] = 3'b111;
assign  alpha_mem[55] = 3'b100;
assign  alpha_mem[56] = 3'b100;
assign  alpha_mem[57] = 3'b100;
assign  alpha_mem[58] = 3'b100;
assign  alpha_mem[59] = 3'b111;
//F
assign  alpha_mem[60] = 3'b111;
assign  alpha_mem[61] = 3'b100;
assign  alpha_mem[62] = 3'b100;
assign  alpha_mem[63] = 3'b100;
assign  alpha_mem[64] = 3'b100;
assign  alpha_mem[65] = 3'b100;
assign  alpha_mem[66] = 3'b111;
assign  alpha_mem[67] = 3'b100;
assign  alpha_mem[68] = 3'b100;
assign  alpha_mem[69] = 3'b100;
assign  alpha_mem[70] = 3'b100;
assign  alpha_mem[71] = 3'b100;
//G
assign  alpha_mem[72] = 3'b111;
assign  alpha_mem[73] = 3'b100; 
assign  alpha_mem[74] = 3'b100; 
assign  alpha_mem[75] = 3'b100; 
assign  alpha_mem[76] = 3'b100; 
assign  alpha_mem[77] = 3'b100; 
assign  alpha_mem[78] = 3'b101;
assign  alpha_mem[79] = 3'b101;
assign  alpha_mem[80] = 3'b101;
assign  alpha_mem[81] = 3'b101;
assign  alpha_mem[82] = 3'b101;
assign  alpha_mem[83] = 3'b111;
//H
assign  alpha_mem[84] = 3'b101;
assign  alpha_mem[85] = 3'b101; 
assign  alpha_mem[86] = 3'b101; 
assign  alpha_mem[88] = 3'b101; 
assign  alpha_mem[89] = 3'b101; 
assign  alpha_mem[90] = 3'b111; 
assign  alpha_mem[91] = 3'b101; 
assign  alpha_mem[92] = 3'b101; 
assign  alpha_mem[93] = 3'b101; 
assign  alpha_mem[94] = 3'b101; 
assign  alpha_mem[95] = 3'b101; 
//I
assign  alpha_mem[96] = 3'b111;
assign  alpha_mem[97] = 3'b010;
assign  alpha_mem[98] = 3'b010;
assign  alpha_mem[99] = 3'b010;
assign  alpha_mem[100] = 3'b010;
assign  alpha_mem[101] = 3'b010;
assign  alpha_mem[102] = 3'b010;
assign  alpha_mem[103] = 3'b010;
assign  alpha_mem[104] = 3'b010;
assign  alpha_mem[105] = 3'b010;
assign  alpha_mem[106] = 3'b010;
assign  alpha_mem[107] = 3'b111;
//J
assign  alpha_mem[108] = 3'b001;
assign  alpha_mem[109] = 3'b001; 
assign  alpha_mem[110] = 3'b001; 
assign  alpha_mem[111] = 3'b001; 
assign  alpha_mem[112] = 3'b001; 
assign  alpha_mem[113] = 3'b001; 
assign  alpha_mem[114] = 3'b001;
assign  alpha_mem[115] = 3'b001;
assign  alpha_mem[116] = 3'b001;
assign  alpha_mem[117] = 3'b001;
assign  alpha_mem[118] = 3'b101;
assign  alpha_mem[119] = 3'b111;
//K
assign  alpha_mem[120] = 3'b101;
assign  alpha_mem[121] = 3'b101; 
assign  alpha_mem[122] = 3'b101; 
assign  alpha_mem[123] = 3'b101; 
assign  alpha_mem[124] = 3'b101; 
assign  alpha_mem[125] = 3'b101; 
assign  alpha_mem[126] = 3'b110;
assign  alpha_mem[127] = 3'b101;
assign  alpha_mem[128] = 3'b101;
assign  alpha_mem[129] = 3'b101;
assign  alpha_mem[130] = 3'b101;
assign  alpha_mem[131] = 3'b101;

//L
assign  alpha_mem[132] = 3'b100;
assign  alpha_mem[133] = 3'b100; 
assign  alpha_mem[134] = 3'b100; 
assign  alpha_mem[135] = 3'b100; 
assign  alpha_mem[136] = 3'b100; 
assign  alpha_mem[137] = 3'b100; 
assign  alpha_mem[138] = 3'b100;
assign  alpha_mem[139] = 3'b100;
assign  alpha_mem[140] = 3'b100;
assign  alpha_mem[141] = 3'b100;
assign  alpha_mem[142] = 3'b100;
assign  alpha_mem[143] = 3'b111;

//M
assign  alpha_mem[144] = 3'b101;
assign  alpha_mem[145] = 3'b111; 
assign  alpha_mem[146] = 3'b111; 
assign  alpha_mem[147] = 3'b111; 
assign  alpha_mem[148] = 3'b111; 
assign  alpha_mem[149] = 3'b101; 
assign  alpha_mem[150] = 3'b101;
assign  alpha_mem[151] = 3'b101;
assign  alpha_mem[152] = 3'b101;
assign  alpha_mem[153] = 3'b101;
assign  alpha_mem[154] = 3'b101;
assign  alpha_mem[155] = 3'b101;

//N
assign  alpha_mem[156] = 3'b110;
assign  alpha_mem[157] = 3'b101; 
assign  alpha_mem[158] = 3'b101; 
assign  alpha_mem[159] = 3'b101; 
assign  alpha_mem[160] = 3'b101; 
assign  alpha_mem[161] = 3'b101; 
assign  alpha_mem[162] = 3'b101;
assign  alpha_mem[163] = 3'b101;
assign  alpha_mem[164] = 3'b101;
assign  alpha_mem[165] = 3'b101;
assign  alpha_mem[166] = 3'b101;
assign  alpha_mem[167] = 3'b101;

//O
assign  alpha_mem[168] = 3'b111;
assign  alpha_mem[169] = 3'b101; 
assign  alpha_mem[170] = 3'b101; 
assign  alpha_mem[171] = 3'b101; 
assign  alpha_mem[172] = 3'b101; 
assign  alpha_mem[173] = 3'b101; 
assign  alpha_mem[174] = 3'b101;
assign  alpha_mem[175] = 3'b101;
assign  alpha_mem[176] = 3'b101;
assign  alpha_mem[177] = 3'b101;
assign  alpha_mem[178] = 3'b101;
assign  alpha_mem[179] = 3'b111;

//P
assign  alpha_mem[180] = 3'b111;
assign  alpha_mem[181] = 3'b101; 
assign  alpha_mem[182] = 3'b101; 
assign  alpha_mem[183] = 3'b101; 
assign  alpha_mem[184] = 3'b101; 
assign  alpha_mem[185] = 3'b101; 
assign  alpha_mem[186] = 3'b111;
assign  alpha_mem[187] = 3'b100;
assign  alpha_mem[188] = 3'b100;
assign  alpha_mem[189] = 3'b100;
assign  alpha_mem[190] = 3'b100;
assign  alpha_mem[191] = 3'b100;

//Q
assign  alpha_mem[192] = 3'b111;
assign  alpha_mem[193] = 3'b101; 
assign  alpha_mem[194] = 3'b101; 
assign  alpha_mem[195] = 3'b101; 
assign  alpha_mem[196] = 3'b101; 
assign  alpha_mem[197] = 3'b101; 
assign  alpha_mem[198] = 3'b101;
assign  alpha_mem[199] = 3'b101;
assign  alpha_mem[200] = 3'b101;
assign  alpha_mem[201] = 3'b101;
assign  alpha_mem[202] = 3'b111;
assign  alpha_mem[203] = 3'b001;

//R
assign  alpha_mem[204] = 3'b111;
assign  alpha_mem[205] = 3'b101; 
assign  alpha_mem[206] = 3'b101; 
assign  alpha_mem[207] = 3'b101; 
assign  alpha_mem[208] = 3'b101; 
assign  alpha_mem[209] = 3'b101; 
assign  alpha_mem[210] = 3'b110;
assign  alpha_mem[211] = 3'b101;
assign  alpha_mem[212] = 3'b101;
assign  alpha_mem[213] = 3'b101;
assign  alpha_mem[214] = 3'b101;
assign  alpha_mem[215] = 3'b101;

//S
assign  alpha_mem[216] = 3'b111;
assign  alpha_mem[217] = 3'b100; 
assign  alpha_mem[218] = 3'b100; 
assign  alpha_mem[219] = 3'b100; 
assign  alpha_mem[220] = 3'b100; 
assign  alpha_mem[221] = 3'b100; 
assign  alpha_mem[222] = 3'b111;
assign  alpha_mem[223] = 3'b001;
assign  alpha_mem[224] = 3'b001;
assign  alpha_mem[225] = 3'b001;
assign  alpha_mem[226] = 3'b001;
assign  alpha_mem[227] = 3'b111;

//T
assign  alpha_mem[228] = 3'b111;
assign  alpha_mem[229] = 3'b010; 
assign  alpha_mem[230] = 3'b010; 
assign  alpha_mem[231] = 3'b010; 
assign  alpha_mem[232] = 3'b010; 
assign  alpha_mem[233] = 3'b010; 
assign  alpha_mem[234] = 3'b010;
assign  alpha_mem[235] = 3'b010;
assign  alpha_mem[236] = 3'b010;
assign  alpha_mem[237] = 3'b010;
assign  alpha_mem[238] = 3'b010;
assign  alpha_mem[239] = 3'b010;

//U
assign  alpha_mem[240] = 3'b101;
assign  alpha_mem[241] = 3'b101; 
assign  alpha_mem[242] = 3'b101; 
assign  alpha_mem[243] = 3'b101; 
assign  alpha_mem[244] = 3'b101; 
assign  alpha_mem[245] = 3'b101; 
assign  alpha_mem[246] = 3'b101;
assign  alpha_mem[247] = 3'b101;
assign  alpha_mem[248] = 3'b101;
assign  alpha_mem[249] = 3'b101;
assign  alpha_mem[250] = 3'b101;
assign  alpha_mem[251] = 3'b111;

//V
assign  alpha_mem[252] = 3'b101;
assign  alpha_mem[253] = 3'b101; 
assign  alpha_mem[254] = 3'b101; 
assign  alpha_mem[255] = 3'b101; 
assign  alpha_mem[256] = 3'b101; 
assign  alpha_mem[257] = 3'b101; 
assign  alpha_mem[258] = 3'b101;
assign  alpha_mem[259] = 3'b101;
assign  alpha_mem[260] = 3'b101;
assign  alpha_mem[261] = 3'b101;
assign  alpha_mem[262] = 3'b101;
assign  alpha_mem[263] = 3'b010;

//W
assign  alpha_mem[264] = 3'b101;
assign  alpha_mem[265] = 3'b101; 
assign  alpha_mem[266] = 3'b101; 
assign  alpha_mem[267] = 3'b101; 
assign  alpha_mem[268] = 3'b101; 
assign  alpha_mem[269] = 3'b101; 
assign  alpha_mem[270] = 3'b101;
assign  alpha_mem[271] = 3'b111;
assign  alpha_mem[272] = 3'b111;
assign  alpha_mem[273] = 3'b111;
assign  alpha_mem[274] = 3'b111;
assign  alpha_mem[275] = 3'b101;
//X
assign  alpha_mem[276] = 3'b101;
assign  alpha_mem[277] = 3'b101; 
assign  alpha_mem[278] = 3'b101; 
assign  alpha_mem[279] = 3'b101; 
assign  alpha_mem[280] = 3'b101; 
assign  alpha_mem[281] = 3'b101; 
assign  alpha_mem[282] = 3'b010;
assign  alpha_mem[283] = 3'b101;
assign  alpha_mem[284] = 3'b101;
assign  alpha_mem[285] = 3'b101;
assign  alpha_mem[286] = 3'b101;
assign  alpha_mem[287] = 3'b101;

//Y
assign  alpha_mem[288] = 3'b101;
assign  alpha_mem[289] = 3'b101; 
assign  alpha_mem[290] = 3'b101; 
assign  alpha_mem[291] = 3'b101; 
assign  alpha_mem[292] = 3'b101; 
assign  alpha_mem[293] = 3'b101; 
assign  alpha_mem[294] = 3'b101;
assign  alpha_mem[295] = 3'b010;
assign  alpha_mem[296] = 3'b010;
assign  alpha_mem[297] = 3'b010;
assign  alpha_mem[298] = 3'b010;
assign  alpha_mem[299] = 3'b010;

//Z
assign  alpha_mem[300] = 3'b111;
assign  alpha_mem[301] = 3'b001; 
assign  alpha_mem[302] = 3'b001; 
assign  alpha_mem[303] = 3'b001; 
assign  alpha_mem[304] = 3'b001; 
assign  alpha_mem[305] = 3'b001; 
assign  alpha_mem[306] = 3'b010;
assign  alpha_mem[307] = 3'b100;
assign  alpha_mem[308] = 3'b100;
assign  alpha_mem[309] = 3'b100;
assign  alpha_mem[310] = 3'b100;
assign  alpha_mem[311] = 3'b111;

//?
assign  alpha_mem[312] = 3'b010;
assign  alpha_mem[313] = 3'b101; 
assign  alpha_mem[314] = 3'b001; 
assign  alpha_mem[315] = 3'b001; 
assign  alpha_mem[316] = 3'b001; 
assign  alpha_mem[317] = 3'b010; 
assign  alpha_mem[318] = 3'b010;
assign  alpha_mem[319] = 3'b000;
assign  alpha_mem[320] = 3'b010;
assign  alpha_mem[321] = 3'b010;
assign  alpha_mem[322] = 3'b000;
assign  alpha_mem[323] = 3'b010;

endmodule
