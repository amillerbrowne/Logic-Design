`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:28:24 03/05/2015 
// Design Name: 
// Module Name:    Full_Adder 
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
module full_adder(Cin, A, B, Cout, Sum);
	output Cout, Sum;
	input A, B, Cin;
	// 1-bit full adder implementation
	assign {Cout, Sum} = A + B + Cin;
endmodule
