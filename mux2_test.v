`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:55:04 10/23/2015
// Design Name:   mux2
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/mux2_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux2_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg sel;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	mux2 uut (
		.a(a), 
		.b(b), 
		.sel(sel), 
		.out(out)
	);

   initial begin
	
		a = 0;
		b = 0;
		sel = 0;
		#100;
		
		a = 2;
		b = 3;
		sel = 0;
		#100;
		
		a = 2;
		b = 3;
		sel = 1;
		#100;
		
   end
      
endmodule

