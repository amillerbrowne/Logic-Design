`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:12 04/21/2015 
// Design Name: 
// Module Name:    clock_divider_tohz 
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
module clock_divider_tohz(in_clk, out_clk);
	input in_clk;
	output reg out_clk;
	reg [26:0] count;
	//paramater max = 100663295
	
	always @(posedge in_clk)
	begin
		count <= count + 1'b1;
		if (count >= 27'b101111111111111111111111111)
			out_clk <= 1;
		else
			out_clk <= 0;
	end
endmodule
//27'b101111111111111111111111111
//paramater max = 100663295
//5FFFFFF

