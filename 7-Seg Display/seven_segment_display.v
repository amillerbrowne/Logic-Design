`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:10 04/21/2015 
// Design Name: 
// Module Name:    seven_segment_display 
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
module seven_segment_display(clk, button, reset, AN, seven);
	input clk, button, reset;
	output [3:0]AN;
	output [6:0]seven;
	wire clean, out_clk1, out_clk2;
	wire [15:0]count;
	wire [3:0]small_bin;
	wire m_out;

//module clock_divider_tohz(in_clk, out_clk);
	clock_divider_tohz tohz(clk, out_clk1); //1 input in 2:1 mux
	
//module clock_divider_tokhz(in_clk, out_clk);
	clock_divider_tokhz tokhz(clk, out_clk2);

//module Debouncer(clk, button, reset, clean);
	Debouncer d(clk, button, reset, clean); //0 input in 2:1 mux

//module mux(m_out, in_0, in_1, select)
	mux m(m_out, clean, out_clk1, button);
	
//module sixteen_bit_counter(clk, button, reset, count);
	sixteen_bit_counter sbc(m_out, button, reset, count);
	
//module seven_alternate(clk, reset, big_bin, small_bin, AN);
	seven_alternate sa(out_clk2, reset, count, small_bin, AN);

//module binary_to_segment(bin, seven);
	binary_to_segment bts(small_bin, seven);

endmodule
