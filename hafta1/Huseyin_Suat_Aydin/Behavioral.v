`timescale 1ns / 1ps

module Behavioral(
    input [3:0] A, B,
    output reg esit,buyuk,kucuk
    );
    
    always @(*) begin
        esit = 1'b0;
        buyuk= 1'b0;
        kucuk= 1'b0;
        
        if (A == B) begin
            esit = 1'b1;
        end 
        else if (A > B) begin
            buyuk = 1'b1;
        end 
        else begin
            kucuk = 1'b1;
        end
    end
    
endmodule
