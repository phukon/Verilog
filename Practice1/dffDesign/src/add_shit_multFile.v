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
	out, a_in, b_in, start, clk, reset, finish);
	
	parameter N = 8;
	
	//Inputs
	input start, clk, reset;
	input [N-1:0] a_in;
	input [N-1:0] b_in;
	
	//Outputs
	output[N*2:0] out;
	output finish;
	
	//Registers	  
	reg [(N*2)-1:0] out_reg;
	reg [(N*2)-1:0] a_in_reg;
	reg [(N*2)-1:0] b_in_reg;
	reg [(N*2)-1:0] bits;
	reg finish_reg = 0;
	
	//Reset
	always @ (negedge reset)
		begin
			out_reg = 0;
			a_in_reg = 0;
			b_in_reg = 0;
			
		end
//-----------------------------------------------------------------------------
//			 'a' is multiplicand
//			 'b' is the multiplier
//-----------------------------------------------------------------------------		
	always @ (posedge clk)
		begin
			if(!reset)
				begin
					case(start)
						1'b0: begin
							a_in_reg = a_in;
							b_in_reg = b_in;
							bits = N;
							finish_reg = 0;
							out_reg = 0;
							  end
						
						1'b1: begin
							if(b_in_reg[0] == 1) //for 1 in the LSB of the multiplier
								begin
									out_reg = out_reg + a_in_reg;
								end
							
							bits = bits - 1;
							a_in_reg = a_in_reg<<1;
							b_in_reg = b_in_reg>>1;
							  end
					endcase
					
					if(bits == 0)
						begin
							$display("Multiplication completed");
							finish_reg = 1'b1;
						end

			    end
	    end
		
endmodule