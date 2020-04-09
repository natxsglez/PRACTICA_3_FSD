`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:27:45 04/09/2020 
// Design Name: 
// Module Name:    Practica_3 
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
module Practica_3(
	input clk,
	output [7:0] Num
    );
wire clkReduCen;
wire clkReduMins;
wire clkReduSecs;

ClkRedu ClkCen(.clk(clk), .reset(reset), .clkRedu(clkReduCen), . MAX_MHZ(2_500_000));
ClkRedu ClkSecs(.clk(clk), .reset(reset), .clkRedu(clkReduSecs), . MAX_MHZ(25_000_000));
ClkRedu ClkMins(.clk(clk), .reset(reset), .clkRedu(clkRedu), . MAX_MHZ(1_500_000_000));

endmodule
