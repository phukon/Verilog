//-----------------------------------------------------------------------------
//
// Title       : dffModule
// Design      : dffDesign
// Author      : Riki Phukon
// Company     : Indian Institute of Technology Guwahati
//
//-----------------------------------------------------------------------------
//
// Description :   Add-shift Multiplier
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

module multiplier(
	out, a_in, b_in, clk, reset, finish);
	
	parameter N = 8;
	
	//Inputs
	input start, clk, reset;
	input [N-1:0] a_in;
	input [N-1:0] b_in;
	
	//Outputs
	output[N*2:0] out;
	output finish;
	
	//Registers
	reg [N*2:0] a_in_reg;
	reg [N*2:0] b_in_reg;
	reg [N*2:0] bits;
	
	
endmodule