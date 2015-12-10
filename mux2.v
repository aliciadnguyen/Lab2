`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:02 10/21/2015 
// Design Name: 
// Module Name:    mux2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux2(a, b, sel, out);
	input sel;
	input[3:0] a, b;
	output[3:0] out;
	
	reg[3:0] out;
	
	always @(sel or a or b)
		begin
			if(sel == 0) out = a;
			if(sel == 1) out = b;
		end

endmodule
