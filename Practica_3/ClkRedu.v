`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:57 04/09/2020 
// Design Name: 
// Module Name:    ClkRedu 
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
module ClkRedu(
    input clk,
    input reset,
    output reg clkRedu,
	 integer MAX_MHZ
    );
reg [31:0] conteo; //se definen 25 bits para el conteo porque 2^25 = 33Millones
always @(posedge clk, posedge reset)
	begin
		if(reset)
			begin
				conteo <= 0; //reiniciar la cuenta
				clkRedu <= 0; //reiniciar la salida
			end
		else
			begin
				conteo <= conteo + 1;
				if(conteo == MAX_MHZ) //contar hasta 25 millones para hacer Toggleo cada 0.5s
					begin
						clkRedu <= clkRedu + 1; //Togglea la salida
						conteo <=0; //reinicia la cuenta
					end
			end
	end

endmodule
