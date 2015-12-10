`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:28:37 10/21/2015
// Design Name:   mux
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/mux_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux_test;

	// Inputs
	reg a, b, sel;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux2 (a, b, sel, out);
	
	initial begin
		a = 0;
		b = 0;
		sel = 0;
	end
	
	initial begin
		 a <= 0;
		 b <= 1;
		 sel <= 0;
		 #1;
		 $display("In: %b, %b select %b. Out %b.", a, b, sel, out);
		 #1;
		 sel <= 1;
		 #1;
		 $display("In: %b, %b select %b. Out %b.", a, b, sel, out);
		 #1;
		 a <= 1;
		 b <= 0;
		 #1;
		 $display("In: %b, %b select %b. Out %b.", a, b, sel, out);
	end
      
endmodule
