//-----------------------------------------------------------------------------
//
// Title       : counterModule
// Design      : counterDesign
// Author      : Riki Phukon
// Company     : Indian Institute of Technology Guwahati
//
//-----------------------------------------------------------------------------
//
// Description :   Increment-decrement counter
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module counter2(clk2,reset2,up_down2,load2,data2,count2);
  
  input clk2,reset2,load2,up_down2;
  input [3:0] data2;
  output reg [3:0] count2;
 
  always@(posedge clk2)  //always block will be executed at each and every positive edge of the clock
  begin
    if(reset2)    		//Set Counter to Zero
      count2 <= 0;
    else if(load2)    	//load the counter with data value
      count2 <= data2;
    else if(up_down2)    //count up
      count2 <= count2 + 1;
    else            	//count down
      count2 <= count2 - 1;
  end
endmodule