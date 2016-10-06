`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:58 03/31/2015 
// Design Name: 
// Module Name:    debounced_counter 
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
module debounced_counter(clk, button, reset, count);
	input clk, button, reset;
	output [7:0]count; //8 bit counter
	wire clean;
	
	//module debouncer(clk, button, reset, clean);
	debouncer d(clk, button, reset, clean);
	//module counter(clk, button, reset, count);
	counter c(clk, clean, reset, count);
endmodule
