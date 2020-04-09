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
	input clkReduDec,
	input clkReduMins,
	input clkReduSecsU,
	input clkReduSecsD,
	input [3:0]T,
	output [7:0]Num
    );
assign Num = (T == 4'b0111 && clkReduMins == 4'b0000) ? 8'b01000000 :
				 (T == 4'b0111 && clkReduMins == 4'b0001) ? 8'b01111001 :
				 (T == 4'b0111 && clkReduMins == 4'b0010) ? 8'b00100100 :
				 (T == 4'b0111 && clkReduMins == 4'b0011) ? 8'b00110000 :
				 (T == 4'b0111 && clkReduMins == 4'b0100) ? 8'b00011001 :
				 (T == 4'b0111 && clkReduMins == 4'b0101) ? 8'b00010010 :
				 (T == 4'b0111 && clkReduMins == 4'b0110) ? 8'b00000010 :
				 (T == 4'b0111 && clkReduMins == 4'b0111) ? 8'b01111000 :
				 (T == 4'b0111 && clkReduMins == 4'b1000) ? 8'b00000000 :
				 (T == 4'b0111 && clkReduMins == 4'b1001) ? 8'b00011000 :
				 //Decenas
				 (T == 4'b1011 && clkReduSecsD == 4'b0000) ? 8'b11000000 :
				 (T == 4'b1011 && clkReduSecsD == 4'b0001) ? 8'b11111001 :
				 (T == 4'b1011 && clkReduSecsD == 4'b0010) ? 8'b10100100 :
				 (T == 4'b1011 && clkReduSecsD == 4'b0011) ? 8'b10110000 :
				 (T == 4'b1011 && clkReduSecsD == 4'b0100) ? 8'b10011001 :
				 (T == 4'b1011 && clkReduSecsD == 4'b0101) ? 8'b10010010 :
				 //Unidades
				 (T == 4'b1101 && clkReduSecsU == 4'b0000) ? 8'b01000000 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0001) ? 8'b01111001 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0010) ? 8'b00100100 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0011) ? 8'b00110000 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0100) ? 8'b00011001 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0101) ? 8'b00010010 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0110) ? 8'b00000010 :
				 (T == 4'b1101 && clkReduSecsU == 4'b0111) ? 8'b01111000 :
				 (T == 4'b1101 && clkReduSecsU == 4'b1000) ? 8'b00000000 :
				 (T == 4'b1101 && clkReduSecsU == 4'b1001) ? 8'b00011000 :
				 //Decimas
				 (T == 4'b1110 && clkReduDec == 4'b0000) ? 8'b11000000 :
				 (T == 4'b1110 && clkReduDec == 4'b0001) ? 8'b11111001 :
				 (T == 4'b1110 && clkReduDec == 4'b0010) ? 8'b10100100 :
				 (T == 4'b1110 && clkReduDec == 4'b0011) ? 8'b10110000 :
				 (T == 4'b1110 && clkReduDec == 4'b0100) ? 8'b10011001 :
				 (T == 4'b1110 && clkReduDec == 4'b0101) ? 8'b10010010 :
				 (T == 4'b1110 && clkReduDec == 4'b0110) ? 8'b10000010 :
				 (T == 4'b1110 && clkReduDec == 4'b0111) ? 8'b11111000 :
				 (T == 4'b1110 && clkReduDec == 4'b1000) ? 8'b10000000 :
				  					   8'b10011000 ;

endmodule
