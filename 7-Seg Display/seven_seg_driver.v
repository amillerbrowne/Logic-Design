`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:30 04/21/2015 
// Design Name: 
// Module Name:    seven_seg_driver 
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
module seven_seg_driver(clktokhz, count, AN, four);
    input clktokhz;
	 input [15:0]count;
	 output [3:0]AN;
	 output [3:0]four;
	 
	 //sixteen_bit_counter(clk, button, reset, count);
	 sixteen_bit_counter(clk, button, reset, count);


endmodule
