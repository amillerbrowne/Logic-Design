`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:40:43 03/19/2015 
// Design Name: 
// Module Name:    Binary_Adder 
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
module Binary_Adder(A, B, S);
	output [7:0]S;
	input [3:0]A;
	input [3:0]B;
	wire  C1, C2, C3, C4;
	
	full_adder fa0 (1'b0, A[0], B[0], C1, S[0]);
	full_adder fa1 (C1, A[1], B[1], C2, S[1]);
	full_adder fa2 (C2, A[2], B[2], C3, S[2]);
	full_adder fa3 (C3, A[3], B[3], C4, S[3]);

	//after 4 bit addition
	assign S[4] = (C4 == 0) ? 1'b0 : 1'b1;
	assign S[5] = 1'b0;
	assign S[6] = 1'b0;
	assign S[7] = 1'b0;
	
	
/*	
A0, A1, A2, A3, B0, B1, B2, B3, M, V, S3, S2, S1, S0, Cout)
	output V, S3, S2, S1, S0, Cout; 
	input M, A0, A1, A2, A3, B0, B1, B2, B3;
	
	wire  C1, C2, C3, C4;
	wire Bout1, Bout2, Bout3, Bout4;
	
	assign M = 1'b0;
	
	assign Bout1 = M^B0;
	assign Bout2 = M^B1;
	assign Bout3 = M^B2;
	assign Bout4 = M^B3;
	
	full_adder fa0 (M, A0, Bout1, C1, S0);
	full_adder fa1 (C1, A1, Bout2, C2, S1);
	full_adder fa2 (C2, A2, Bout3, C3, S2);
	full_adder fa3 (C3, A3, Bout4, C4, S3);

	//for overflow
	assign V = C4^C3;
	assign Cout = (C4 == 0) ? 0 : 1;

*/
endmodule
