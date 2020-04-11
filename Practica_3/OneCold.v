`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:40:31 04/09/2020 
// Design Name: 
// Module Name:    OneCold 
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
module OneCold(
	input clk,
	output [3:0]T
    );

reg [1:0]counter;
reg [25:0]delay;

always @(posedge clk)
	begin
		delay <= delay + 1;
		if(delay == 50_000)
			begin
				delay <= 0;
				counter <= counter + 1;
			end
	end
assign T = (counter == 2'b00) ? 4'b0111 :
			  (counter == 2'b01) ? 4'b1011 :
			  (counter == 2'b10) ? 4'b1101 :
										  4'b1110 ;
endmodule
