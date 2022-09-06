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

module counter(
	input clk,
	input reset,
	input increment,
	input decrement,
	output reg [3:0] count
	);					  
	
	reg enable;
	reg [3:0] mux_out;
	
	always@(*)
		enable = increment | decrement;
			   		
	always@(*)
	begin
		case(increment)
		1'b0: mux_out = count-1;
		1'b1: mux_out = count+1;
		endcase
	end
	
	always @ (posedge clk)
	if(reset)
		count <= #1 0;
	else if(enable)
		count <= #1 mux_out;		
		
endmodule