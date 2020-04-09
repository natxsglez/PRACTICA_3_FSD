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
	output [7:0] Num
    );
wire clkReduDec;
wire clkReduMins;
wire clkReduSecsU;
wire clkReduSecsD;

reg [3:0]T;

ClkRedu ClkDec(.clk(clk), .reset(reset), .clkRedu(clkReduDec), . MAX_MHZ(2_500_000));
ClkRedu ClkSecsU(.clk(clk), .reset(reset), .clkRedu(clkReduSecsU), . MAX_MHZ(25_000_000));
ClkRedu ClkSecsD(.clk(clk), .reset(reset), .clkRedu(clkReduSecsD), . MAX_MHZ(250_000_000));
ClkRedu ClkMins(.clk(clk), .reset(reset), .clkRedu(clkReduMins), . MAX_MHZ(1_500_000_000));

Decodificador Decodificador0(.clkReduDec(clkReduDec), .clkReduMins(clkReduMins), .clkReduSecsU(clkReduSecsU), . clkReduSecsD(clkReduSecsD));

endmodule
