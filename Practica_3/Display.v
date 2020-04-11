`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:34 04/10/2020 
// Design Name: 
// Module Name:    Display 
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
module Display(
        input [3:0] n,
        output [6:0] d
    );

    assign d = (n == 0) ? 7'b1000000 :
                (n == 1) ? 7'b1111001 :
                (n == 2) ? 7'b0100100 :
                (n == 3) ? 7'b0110000 :
                (n == 4) ? 7'b0011001 :
                (n == 5) ? 7'b0010010 :
                (n == 6) ? 7'b0000010 :
                (n == 7) ? 7'b1111000 :
                (n == 9) ? 7'b0010000 :
                (n == 10) ? 7'b0001000 :
                (n == 11) ? 7'b0000011 :
                (n == 12) ? 7'b1000110 :
                (n == 13) ? 7'b0100001 :
                (n == 14) ? 7'b0000110 :
                (n == 15) ? 7'b0001110 :
                            7'b0000000;
                      
endmodule
