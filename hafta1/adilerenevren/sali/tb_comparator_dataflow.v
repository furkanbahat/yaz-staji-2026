`timescale 1ns / 1ps

module tb_comparator_dataflow;

    // Girişler reg, çıkışlar wire olarak tanımlanır
    reg  [3:0] a, b;
    wire       esit, buyuk, kucuk;

    // Test edilecek cihazı (DUT - Device Under Test) çağırıyoruz
    comparator_dataflow dut (
        .a(a), 
        .b(b), 
        .esit(esit), 
        .buyuk(buyuk), 
        .kucuk(kucuk)
    );

    initial begin
        // Senaryo 1: a = b (Eşitlik durumu)
        a = 4'b0101; b = 4'b0101; #10; // A=5, B=5 -> esit=1 bekliyoruz
        
        // Senaryo 2: a > b (Büyük durumu)
        a = 4'b1010; b = 4'b0011; #10; // A=10, B=3 -> buyuk=1 bekliyoruz
        
        // Senaryo 3: a < b (Küçük durumu)
        a = 4'b0001; b = 4'b0111; #10; // A=1, B=7 -> kucuk=1 bekliyoruz
        
        // Senaryo 4: Sınır değerler
        a = 4'b1111; b = 4'b0000; #10; // A=15, B=0 -> buyuk=1 bekliyoruz
        a = 4'b0000; b = 4'b1111; #10; // A=0, B=15 -> kucuk=1 bekliyoruz
        
        $finish; // Simülasyonu bitir
    end

endmodule