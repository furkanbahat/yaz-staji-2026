`timescale 1ns / 1ps

module Dataflow(
    input [3:0] A, B,
    output esit,buyuk,kucuk
    );
    
    assign esit = (A == B);
    assign buyuk = (A > B);
    assign kucuk = (A < B);
    
endmodule
