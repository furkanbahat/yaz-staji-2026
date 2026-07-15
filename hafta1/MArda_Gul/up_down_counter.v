`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 21:32:11
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
    input clk,
    input reset,
    input buyuk,
    input kucuk,
    input esit,
    output reg [3:0] count
);

    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000;
        end else begin
            if (buyuk)
                count <= count + 1'b1; 
            else if (kucuk)
                count <= count - 1'b1;
            else if (esit)
                count <= count;        
        end
    end

endmodule
