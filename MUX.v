`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:15 10/21/2015 
// Design Name: 
// Module Name:    mux 
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
module mux(a, b, sel);
	 
	 input[1:0] sel;
	 input[3:0] a;
	 output b;
	 wire b, b1, b2, b3, b4, NOTsel0, NOTsel1;
	 wire[1:0] sel;
	 wire[3:0] a;
	 
	 not n1 (NOTsel0, sel[0]);
	 not n2 (NOTsel1, sel[1]);
	 
	 and a1 (b1, NOTsel0, NOTsel1, a[0]);
	 and a2 (b2, sel[0], NOTsel1, a[1]);
	 and a3 (b3, NOTsel0, sel[1], a[2]);
	 and a4 (b4, sel[0], sel[1], a[3]);
	 
	 or o1 (b, b1, b2, b3, b4);

endmodule
