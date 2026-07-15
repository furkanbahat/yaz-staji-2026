`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 20:53:44
// Design Name: 
// Module Name: comparator_behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator_behavioral(
    input [3:0] a,
    input [3:0] b,
    output reg esit,
    output reg buyuk,
    output reg kucuk
);

    always @(*) begin
        esit  = 1'b0;
        buyuk = 1'b0;
        kucuk = 1'b0;

        if (a == b) begin
            esit = 1'b1;
        end else if (a > b) begin
            buyuk = 1'b1;
        end else begin
            kucuk = 1'b1;
        end
    end

endmodule
