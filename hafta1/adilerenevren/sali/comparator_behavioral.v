`timescale 1ns / 1ps

module comparator_behavioral (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output reg esit,
    output reg buyuk,
    output reg kucuk
);

    // a veya b değiştiğinde bu bloğu çalıştır
    always @(*) begin
        // Her döngüde başlangıç değerlerini sıfırlıyoruz ki "latch" oluşmasın
        esit  = 1'b0;
        buyuk = 1'b0;
        kucuk = 1'b0;

        if (a > b)
            buyuk = 1'b1;
        else if (a < b)
            kucuk = 1'b1;
        else
            esit = 1'b1;
    end

endmodule