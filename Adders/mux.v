`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:48:27 03/19/2015 
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
module mux(Y,A0,A1,A2,A3,S);
	output [7:0]Y;
	input [1:0]S;
	input [7:0]A0;
	input [7:0]A1;
	input [7:0]A2;
	input [7:0]A3;
	reg [7:0]Y;
	
	//Whenever {S1,S0} = 2'b00, the output Y = A0; if {S1,S0} = 2'b01, then Y = A1 and so on.
	
	always @(S or A0 or A1 or A2 or A3) 
	case(S)
		2'b00: Y = A0;
		2'b01: Y = A1;
		2'b10: Y = A2;
		2'b11: Y = A3;
	endcase
endmodule
