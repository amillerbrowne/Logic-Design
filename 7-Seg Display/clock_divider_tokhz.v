`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:17:11 04/21/2015 
// Design Name: 
// Module Name:    clock_divider_tokhz 
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
module clock_divider_tokhz(in_clk, out_clk);
	input in_clk;
	output reg out_clk;
	reg [16:0] count;
	//paramater max = 131071
	
	always @(posedge in_clk)
	begin
		count <= count + 1'b1;
		if (count >= 17'b01111111111111111)
			out_clk <= 1;
		else
			out_clk <= 0;
	end
endmodule
