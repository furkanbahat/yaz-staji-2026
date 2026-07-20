`timescale 1ns / 1ps

module tb_counter;

    reg clk;
    reg reset;
    reg [3:0] a, b;
    wire [3:0] count;

    // Test edilecek sistemi (DUT) çağır
    counter dut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .count(count)
    );

    // Clock Üretimi (Periyot = 10ns)
    always #5 clk = ~clk;

    initial begin
        // Başlangıç değerleri
        clk = 0;
        reset = 1; // Başlangıçta sistemi resetle
        a = 0; 
        b = 0;
        
        #15; // Reset'in biraz etkili kalmasını bekle
        reset = 0; // Reset'i kaldır

        // DURUM 1: A > B (Yukarı Sayma)
        a = 4'b1000; b = 4'b0010; // 8 > 2
        #50; // 5 saat vuruşu boyunca yukarı saymasını izle
        
        // DURUM 2: A == B (Duraklama / Hold)
        a = 4'b0101; b = 4'b0101; // 5 == 5
        #30; // 3 saat vuruşu bekle (sayı sabit kalmalı)

        // DURUM 3: A < B (Aşağı Sayma)
        a = 4'b0001; b = 4'b1111; // 1 < 15
        #40; // 4 saat vuruşu boyunca aşağı saymasını izle

        // DURUM 4: Gidişatta Resetleme Testi
        reset = 1;
        #10;
        reset = 0;
        
        // DURUM 5: Tekrar Yukarı Sayma
        a = 4'b0111; b = 4'b0011; // 7 > 3
        #30;

        $finish; // Simülasyonu bitir
    end

endmodule