`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:10:14 10/25/2015
// Design Name:   adder4
// Module Name:   C:/Users/Alicia/Documents/CSE140L/Lab2/adder4_test.v
// Project Name:  Lab2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder4_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg cin;

	// Outputs
	wire [3:0] s;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	adder4 uut (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.s(s), 
		.cout(cout)
	);

   initial begin
       a = 9;
		 b = 3;
		 cin = 1;
		 #100;
		 
		 a = 3;
		 b = 5;
		 cin = 1;
		 #100;

   end
      
endmodule

