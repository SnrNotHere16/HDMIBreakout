`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: refr_tick.v
// The following module sends a postivie signal (refr_tick.v) every 75Hz assuming 
// that the clock's (clk) frequency runs at 125Mhz. The desired count value is 
// gathered by dividing 125Mhz/75hz = 1666666. 
//////////////////////////////////////////////////////////////////////////////////


module refr_tick(   clk,
                    reset,
                    tick75hz
                    );
 input clk, reset; //clk has a 125Mhz frequency
 output tick75hz;
 reg tick75hz; //A postive signal sent every 40 nanoseconds
 reg [20:0] q;  // The value to be compared to 1666666.
 
////////////////////////////////////////
//  combonational logic block         //
////////////////////////////////////////
 always @(*) 
 tick75hz = (q == 1666666);
 
////////////////////////////////////////
//  sequential logic block            //
////////////////////////////////////////
 always @(posedge clk, posedge reset) begin 
    if (reset) q <= 21'b0;
    else q <= q+1;

 end 
endmodule
