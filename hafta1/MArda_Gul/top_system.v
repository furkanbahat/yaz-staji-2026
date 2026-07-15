module top_system(
    input clk,
    input reset,
    input [3:0] a,
    input [3:0] b,
    output [3:0] count,
    output buyuk,
    output kucuk,
    output esit
);

    wire w_buyuk, w_kucuk, w_esit;

    comparator_behavioral comp_inst (
        .a(a),
        .b(b),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk),
        .esit(w_esit)
    );

    up_down_counter counter_inst (
        .clk(clk),
        .reset(reset),
        .buyuk(w_buyuk),
        .kucuk(w_kucuk),
        .esit(w_esit),
        .count(count)
    );

    assign buyuk = w_buyuk;
    assign kucuk = w_kucuk;
    assign esit  = w_esit;

endmodule