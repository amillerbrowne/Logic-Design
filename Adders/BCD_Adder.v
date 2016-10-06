`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:24:23 03/19/2015 
// Design Name: 
// Module Name:    BCD_Adder 
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

module BCD_Adder(A, B, S);
	//Cout = output carry; S for BCD sum
	output [7:0]S;
	input [3:0]A;
	input [3:0]B;

	wire Cout, K, Z8, Z4, Z2, Z1, M;
	
	//Four_Bit_Adder(Cin, A0, A1, A2, A3, B0, B1, B2, B3, K, Z8, Z4, Z2, Z1);
	Four_Bit_Adder fba1(1'b0, A[0], A[1], A[2], A[3], B[0], B[1], B[2], B[3], K, Z8, Z4, Z2, Z1);
	
	assign Cout = (Z8 & Z4) | (Z2 & Z8) | K; //output carry
	
	//if output carry = 1, new value is 6; else new value is 0
	
	//can't use Cout twice -- Cout = M
	Four_Bit_Adder fba2(1'b0,1'b0,Cout,Cout,1'b0, Z1, Z2, Z4, Z8, M, S[3], S[2], S[1], S[0]);
	//assign S[4] = Cout;
	assign S[4] = (Cout == 0) ? 1'b0 : 1'b1; //either cout or k
	assign S[5] = 1'b0;
	assign S[6] = 1'b0;
	assign S[7] = 1'b0;
		
endmodule
/*
module BCD_Adder(A, B, S);
	//Cout = output carry; S for BCD sum
	output [7:0]S;
	input [3:0]A;
	input [3:0]B;
	
	wire Cout, K;
	
	wire [3:0]Z;
	wire [3:0]in;
	wire [3:0]X;
	
	
	Four_Bit_Adder fba1(A, B, Z);
	
	assign Cout = (Z[3] & Z[2]) | (Z[1] & Z[3]) | K; //output carry
	
	assign in[0] = 1'b0;
	assign in[1] = Cout;
	assign in[2] = Cout;
	assign in[3] = 1'b0;
	
	assign X[0] = S[0];
	assign X[1] = S[1];
	assign X[2] = S[2];
	assign X[3] = S[3];
	
	
	
	Four_Bit_Adder fba2(in,Z,X);
	
	assign S[4] = Cout;
	//assign S[4] = (Cout == 0) ? 1'b0 : 1'b1; //either cout or k
	assign S[5] = 1'b0;
	assign S[6] = 1'b0;
	assign S[7] = 1'b0;
	
endmodule

*/
