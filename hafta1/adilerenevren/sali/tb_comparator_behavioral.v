`timescale 1ns / 1ps

module tb_comparator_behavioral;

    reg  [3:0] a, b;
    wire       esit, buyuk, kucuk;

    // Behavioral modülü çağırıyoruz
    comparator_behavioral dut (
        .a(a), 
        .b(b), 
        .esit(esit), 
        .buyuk(buyuk), 
        .kucuk(kucuk)
    );

    initial begin
        // Senaryo 1: a = b
        a = 4'b0101; b = 4'b0101; #10; 
        
        // Senaryo 2: a > b 
        a = 4'b1010; b = 4'b0011; #10; 
        
        // Senaryo 3: a < b 
        a = 4'b0001; b = 4'b0111; #10; 
        
        // Senaryo 4: Sınır değerler
        a = 4'b1111; b = 4'b0000; #10; 
        a = 4'b0000; b = 4'b1111; #10; 
        
        $finish; 
    end

endmodule