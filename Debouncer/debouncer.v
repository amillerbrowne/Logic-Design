`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:40 03/31/2015 
// Design Name: 
// Module Name:    debouncer 
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
module debouncer(clk, button, reset, clean);
	input clk, button, reset; //button is like trigger
	output reg clean;
	parameter max = 16777215; //for second counter max value
	reg [23:0]max_count; //maximum 8 bit number before overflow or 24
	//one push, 1 mill count
	initial begin
		max_count <= 0; 
		clean <= 0;
		end
		
	always@(posedge clk)
	begin
		if(reset)
			begin //set count equal to 0 when reset
				max_count <= 0; 
				clean <= 0;
			end
			
		else 
			begin
				if(button)
				begin
					if(max_count == max)
					begin
						clean <= 1;
						max_count <= max_count + 1'b1; //increment debounce counter, only count as 1 for real counter
					end
					//can increment led when get to max
					else if(max_count == 24'b111111111111111111111111)
					begin
						clean <= 0;
						max_count <= 24'b111111111111111111111111;
					end
					else
					begin
						clean <= 0;
						max_count <= max_count + 1'b1; //increment led
					end
				end
				else //button == 0
				begin
					clean <= 0;
					max_count <= 0; //inside counter
				end
			end
	end
		
endmodule
			
				
					
				
