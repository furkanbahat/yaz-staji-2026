`timescale 1ns / 1ps

module TopModule(
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    output [3:0] count
);

    wire w_buyuk, w_kucuk, w_esit;

    Dataflow uut1 (
        .A(A), 
        .B(B),
        .esit(w_esit), 
        .buyuk(w_buyuk), 
        .kucuk(w_kucuk)
    );

    sayac uut2 (
        .clk(clk),
        .reset(reset),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk),
        .esit(w_esit),
        .count(count)
    );

endmodule