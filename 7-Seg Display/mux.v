`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:04 04/21/2015 
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
module mux(
 output reg m_out,
 input in_0, in_1,
 input select
);
 always @ (in_0, in_1, select)
	case (select)
		1'b0: m_out = in_0;
		1'b1: m_out = in_1;
	endcase
 endmodule

