`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:04 03/05/2015 
// Design Name: 
// Module Name:    Four_Bit_Adder 
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

module Four_Bit_Adder(Cin, A0, A1, A2, A3, B0, B1, B2, B3, K, Z8, Z4, Z2, Z1);
	//Cout = K; Z's for binary sum
	output K, Z8, Z4, Z2, Z1;
	input A0, A1, A2, A3, B0, B1, B2, B3, Cin;
	wire  C1, C2, C3;
	
	full_adder fa0 (1'b0, A0, B0, C1, Z1);
	full_adder fa1 (C1, A1, B1, C2, Z2);
	full_adder fa2 (C2, A2, B2, C3, Z4);
	full_adder fa3 (C3, A3, B3, K, Z8);
	
endmodule

/*
module Four_Bit_Adder(A, B, S, K);
	output [3:0]S;
	output K;
	input [3:0]A;
	input [3:0]B;
	wire  C1, C2, C3;	
	//Full_Adder(A, B, Cin, Cout, Sum)
	full_adder fa0 (1'b0, A[0], B[0], C1, S[0]);
	full_adder fa1 (C1, A[1], B[1], C2, S[1]);
	full_adder fa2 (C2, A[2], B[2], C3, S[2]);
	full_adder fa3 (C3, A[3], B[3], K, S[3]);


module Four_Bit_Adder(Cin, A0, A1, A2, A3, B0, B1, B2, B3, K, Z8, Z4, Z2, Z1);
	//Cout = K; Z's for binary sum
	output K, Z8, Z4, Z2, Z1;
	input A0, A1, A2, A3, B0, B1, B2, B3, Cin;
	wire  C1, C2, C3;
	
	Full_Adder fa0 (Cin, A0, B0, C1, Z1);
	Full_Adder fa1 (C1, A1, B1, C2, Z2);
	Full_Adder fa2 (C2, A2, B2, C3, Z4);
	Full_Adder fa3 (C3, A3, B3, K, Z8);
	

endmodule



endmodule
	*/
