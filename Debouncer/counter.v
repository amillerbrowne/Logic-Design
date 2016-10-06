`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:03:32 03/31/2015 
// Design Name: 
// Module Name:    counter 
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
module counter(clk, button, reset, count);
	 input clk, button, reset;
	 output reg  [7:0]count; //8 bit counter
	 
	 //to initialize the count
	 initial begin 
		count <= 8'b0; 
		end 
		
	 always@(posedge clk or posedge reset)
	 begin
		if(reset)
		begin //set count equal to 0 when reset
			count <= 8'b0;
		end
		else if(button) //if button is triggered(high), then increment - one of the push buttons
		begin
			count <= count + 1'b1;
		end
	end
endmodule
