`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Nataly Salazar
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
	 
reg [31:0] conteo;
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
						case(clkRedu)
							9 : begin
									clkRedu <= 0;
								end
							default : begin
									clkRedu <= clkRedu + 1;
								end
							endcase
						conteo <= 0; //reinicia la cuenta
					end
			end
	end

endmodule
