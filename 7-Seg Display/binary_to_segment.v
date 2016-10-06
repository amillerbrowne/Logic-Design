`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:44 04/21/2015 
// Design Name: 
// Module Name:    binary_to_segment 
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
module binary_to_segment(bin, seven);
	input [3:0] bin;
	output reg [6:0] seven; // Assume that MSB is G and LSB is A
	always @(bin)
	begin
		case (bin)
			4'b0000: seven = 7'b1000000; // Digit 0
			4'b0001: seven = 7'b1111001; // Digit 1
			4'b0010: seven = 7'b0100100; // Digit 2
			4'b0011: seven = 7'b0110000; // Digit 3
			4'b0100: seven = 7'b0011001; // Digit 4
			4'b0101: seven = 7'b0010010; // Digit 5
			4'b0110: seven = 7'b0000010; // Digit 6
			4'b0111: seven = 7'b1111000; // Digit 7
			4'b1000: seven = 7'b0000000; // Digit 8
			4'b1001: seven = 7'b0010000; // Digit 9
			4'b1010: seven = 7'b0001000; // Digit A - 10
			4'b1011: seven = 7'b0000000; // Digit B - 11
			4'b1100: seven = 7'b1000110; // Digit C - 12
			4'b1101: seven = 7'b1000000; // Digit D - 13
			4'b1110: seven = 7'b0000110; // Digit E - 14
			default: seven = 7'b0001110; // Digit F - 15
		endcase
	end
endmodule
