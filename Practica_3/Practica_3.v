module Practica_3(
	input clk,
	output [7:0] Num
    );
wire clkReduDec;
wire clkReduMins;
wire clkReduSecsU;
wire clkReduSecsD;

reg [3:0]T;

ClkRedu ClkDec(.clk(clk), .reset(reset), .clkRedu(clkReduDec), .MAX_MHZ(2_500_000), .MAX_COUNT(9));
ClkRedu ClkSecsU(.clk(clk), .reset(reset), .clkRedu(clkReduSecsU), .MAX_MHZ(25_000_000), .MAX_COUNT(9));
ClkRedu ClkSecsD(.clk(clk), .reset(reset), .clkRedu(clkReduSecsD), .MAX_MHZ(250_000_000), MAX_COUNT(5));
ClkRedu ClkMins(.clk(clk), .reset(reset), .clkRedu(clkReduMins), .MAX_MHZ(1_500_000_000), .MAX_COUNT(9));

Decodificador Decodificador0(.clkReduDec(clkReduDec), .clkReduMins(clkReduMins), .clkReduSecsU(clkReduSecsU), . clkReduSecsD(clkReduSecsD));

endmodule
