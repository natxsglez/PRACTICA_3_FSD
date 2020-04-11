`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nataly Salazar
// 
// Create Date:    12:49:26 04/09/2020 
// Design Name: 
// Module Name:    Decodificador 
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
module Decodificador(
	input [3:0]clkReduDec,
	input [3:0]clkReduMins,
	input [3:0]clkReduSecsU,
	input [3:0]clkReduSecsD,
	input [3:0]T,
	output [7:0]Num
    );
	 
wire[6:0]dec;
wire[6:0]mins;
wire[6:0]secsU;
wire[6:0]secsD;

Display D0(.n(clkReduDec), .d(dec));
Display D1(.n(clkReduMins), .d(mins));
Display D2(.n(clkReduSecsU), .d(secsU));
Display D3(.n(clkReduSecsD), .d(secsD));


assign Num[6:0] = (T == 4'b0111) ? mins :
						(T == 4'b1011) ? secsD :
						(T == 4'b1101) ? secsU :
											  dec ;
assign Num[7] = (T == 4'b0111 || T == 4'b1101) ? 0 :
																 1 ;

endmodule
