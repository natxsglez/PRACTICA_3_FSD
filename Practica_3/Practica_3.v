`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nataly Salazar
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
	input reset,
	input btn,
	output [7:0] Num,
	output [3:0] T
    );
	 
wire [3:0]clkReduDec;
wire [3:0]clkReduMins;
wire [3:0]clkReduSecsU;
wire [3:0]clkReduSecsD;
wire pp;

PlayPause PP0(.btn(btn), .pp(pp));
ClkRedu ClkDec(.clk(clk), .reset(reset), .num(clkReduDec), .MAX_MHZ(4_999_000), .MAX_COUNT(9), .sw(pp));
ClkRedu ClkSecsU(.clk(clk), .reset(reset), .num(clkReduSecsU), .MAX_MHZ(49_990_000), .MAX_COUNT(9), .sw(pp));
ClkRedu ClkSecsD(.clk(clk), .reset(reset), .num(clkReduSecsD), .MAX_MHZ(499_900_000), .MAX_COUNT(5), .sw(pp));
ClkRedu ClkMins(.clk(clk), .reset(reset), .num(clkReduMins), .MAX_MHZ(2_999_400_000), .MAX_COUNT(9), .sw(pp));

OneCold OC0 (.T(T), .clk(clk));
Decodificador Decodificador0(.T(T),
									  .Num(Num),
									  .clkReduDec(clkReduDec),
									  .clkReduMins(clkReduMins),
									  .clkReduSecsU(clkReduSecsU),
									  .clkReduSecsD(clkReduSecsD));

endmodule
