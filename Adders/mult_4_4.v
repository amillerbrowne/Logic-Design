`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:13:42 03/19/2015 
// Design Name: 
// Module Name:    mult_4_4 
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
module mult_4_4(Y, A, B);
	output [7:0]Y;
	input [3:0]A;
	input [3:0]B;
	assign Y = A*B;
endmodule 
