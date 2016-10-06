`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:30:30 03/24/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A, B, S, Y);
	output [7:0]Y;
	
	//assign to the different modules
	wire [7:0]Y0; //00 - Concatenation; buffer
	wire [7:0]Y1; //01 - Binary addition; binary_adder
	wire [7:0]Y2; //10 - BCD addition; BCD_Adder
	wire [7:0]Y3; //11 - Multiplication; mult_4_4
	
	input [1:0]S;
	input [3:0]A;
	input [3:0]B;
	
	buffer mod0(Y0, A, B);
	Binary_Adder mod1(A, B, Y1);
	BCD_Adder mod2(A, B, Y2);
	mult_4_4 mod3(Y3, A, B);
	
	mux my_mux(Y, Y0, Y1, Y2, Y3, S);
	
endmodule
