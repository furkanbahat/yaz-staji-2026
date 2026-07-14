`timescale 1ns / 1ps

module tb_Structural();
    
    reg [3:0] tb_A;
    reg [3:0] tb_B;
    wire tb_esit;
    wire tb_buyuk;
    wire tb_kucuk;
    
    Structural uut(
        .A(tb_A),
        .B(tb_B),
        .esit(tb_esit),
        .buyuk(tb_buyuk),
        .kucuk(tb_kucuk)
    );
    
    initial begin
        tb_A = 4'b0101;
        tb_B = 4'b0101;
        #10;
        
        tb_A = 4'b1010;
        tb_B = 4'b1001;
        #10;
        
        tb_A = 4'b0111;
        tb_B = 4'b0111;
        #10;
        
        tb_A = 4'b0111;
        tb_B = 4'b0101;
        #10;
        
        $finish;
    end
endmodule
