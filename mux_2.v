`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:09:08 10/22/2015 
// Design Name: 
// Module Name:    mux_2 
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
module mux_2(
    input a,
    input b,
    input s,
    output w
    );
	 
	 assign w =
		(s == 0) ? a:
		(s == 1) ? b: 1'bx;
	
endmodule

module mux_4(a, sel, out);
	input [3:0] a;
	input [1:0] sel;
	output out;
	
	wire mux[2:0];

	mux_2 m1(a[0], a[1], sel[0], mux_1),
			m2(a[2], a[3], sel[0], mux_2),
			m3(mux_1, mux_2, sel[1], out);

endmodule
