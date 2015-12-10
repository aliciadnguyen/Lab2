`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:57:34 10/25/2015
// Design Name:   ripple_carry_adder_subtractor
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/RippleTest.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripple_carry_adder_subtractor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RippleTest;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Op;

	// Outputs
	wire [3:0] S;
	wire C;
	wire V;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_adder_subtractor uut (
		.S(S), 
		.C(C), 
		.V(V), 
		.A(A), 
		.B(B), 
		.Op(Op)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 3;
		Op = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

