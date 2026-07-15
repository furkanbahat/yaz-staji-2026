`timescale 1ns / 1ps

module comparator_dataflow (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire esit,
    output wire buyuk,
    output wire kucuk
);

    assign buyuk = (a > b);
    assign kucuk = (a < b);
    assign esit  = (a == b);

endmodule