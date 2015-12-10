`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:11:43 10/24/2015
// Design Name:   mux_4
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/mux_4_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_4_test;

	// Inputs
	reg [3:0] a;
	reg [1:0] sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux_4 uut (
		.a(a), 
		.sel(sel), 
		.out(out)
	);
		
   initial begin
       a = 2;
		 sel = 2;
		 #100;
		 
		 a = 4;
		 sel = 2;
		 #100;
		 
		 a = 8;
		 sel = 2;
		 #100;
   end
      
endmodule

