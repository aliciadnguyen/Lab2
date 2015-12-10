`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:53:27 10/25/2015
// Design Name:   ripple_carry_adder_subtractor
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/ripple_test.v
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

module ripple_test;

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

	integer i;
   initial begin
        //$display("A[0] a[1] a[2] a[3] | sel[0] | sel[1] | out");
		  Op = 0;
		  for (i = 0; i <= 16; i=i+1) begin
            {A[3], A[2], A[1], A[0]} = i; 
				{B[3], B[2], B[1], B[0]} = i + 1;
				#1;
				
				$display("%d | %d%d%d%d | %d%d%d%d | %d%d%d%d | %d | %d", Op, A[0], A[1], A[2], A[3], B[0], B[1], B[2], B[3], S[0], S[1], S[2], S[3], C, V);
        end
   end
      
endmodule

