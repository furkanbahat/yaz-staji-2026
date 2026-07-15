`timescale 1ns / 1ps

module counter (
    input wire clk,
    input wire reset,
    input wire [3:0] a,
    input wire [3:0] b,
    output reg [3:0] count
);

    // Karşılaştırıcı ile sayaç arasındaki ara bağlantı kabloları
    wire esit_w, buyuk_w, kucuk_w;

    // Daha önce tasarladığımız dataflow karşılaştırıcıyı buraya yerleştiriyoruz
    comparator_dataflow my_comp (
        .a(a), 
        .b(b), 
        .esit(esit_w), 
        .buyuk(buyuk_w), 
        .kucuk(kucuk_w)
    );

    // Sayaç Mantığı (Clock ile senkron)
    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0000; // Reset gelirse sıfırla
        end
        else begin
            if (buyuk_w) begin
                count <= count + 1'b1; // a > b ise yukarı say
            end
            else if (kucuk_w) begin
                count <= count - 1'b1; // a < b ise aşağı say
            end
            // esit_w (a == b) durumu için bir 'else' yazmıyoruz, 
            // böylece register mevcut değerini korur (Hold durumu)
        end
    end

endmodule