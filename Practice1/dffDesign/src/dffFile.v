//-----------------------------------------------------------------------------
//
// Title       : dffModule
// Design      : dffDesign
// Author      : Riki Phukon
// Company     : Indian Institute of Technology Guwahati
//
//-----------------------------------------------------------------------------
//
// File        : d:\desktop files\core 2 (exim)\Projects\Aldec\Practice1\dffDesign\src\dffFile.v
// Generated   : Tue Sep  6 11:07:24 2022
// From        : interface description file
// By          : Itf2Vhdl ver. 1.22
//
//-----------------------------------------------------------------------------
//
// Description :   Rising edge D Flip-Flop for practice
//
//-----------------------------------------------------------------------------
`timescale 1 ns / 1 ps

//{{ Section below this comment is automatically maintained
//   and may be overwritten
//{module {dffModule}}
module dffModule ( q ,d ,clk );	 
	

input wire d, clk;
output reg q ;

//Functional definition
always @ (posedge clk) begin  // anytime the clock changes, in this case on the positive edgse
	q <= d; // non-blocking (parallel execution)
end	

endmodule