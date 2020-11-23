`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// File Name: color_tick.v
// The following module switches between low and high every 250 miliseconds
//////////////////////////////////////////////////////////////////////////////////


module color_tick( clk,
                    reset,
                    tick_color
                    );
 input clk, reset; //clk has a 125Mhz frequency
 output tick_color;
 reg tick_color; //A postive signal sent every 250 miliseconds.
 reg [24:0] q;  // The value to be compared to 31250000.
 reg on; //the switch to turn on toggle every 250 miliseconds
 
////////////////////////////////////////
//  combonational logic block         //
////////////////////////////////////////
 always @(*) 

 tick_color = on;

 
////////////////////////////////////////
//  sequential logic block            //
////////////////////////////////////////
 always @(posedge clk, posedge reset) begin 
    if (reset) begin  
        q <= 25'b0;
        on <= 0;
    end 
    else begin 
        if (q == 31250000) begin 
            on <= on +1;
            q = 25'b0;
        end 
        else begin 
            q <= q+1;
            on<=on;
        end 
    end 
 end 
endmodule
