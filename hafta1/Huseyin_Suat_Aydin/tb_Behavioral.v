`timescale 1ns / 1ps

module tb_Behavioral();

    reg [3:0] tb_A;
    reg [3:0] tb_B;
    wire tb_esit;
    wire tb_buyuk;
    wire tb_kucuk;
    
    Behavioral uut(
        .A(tb_A),
        .B(tb_B),
        .esit(tb_esit),
        .buyuk(tb_buyuk),
        .kucuk(tb_kucuk)
    );
    
    initial begin
        tb_A = 4'b0100;
        tb_B = 4'b0010;
        #10;
        
        tb_A = 4'b1000;
        tb_B = 4'b1001;
        #10;
        
        tb_A = 4'b0011;
        tb_B = 4'b0101;
        #10;
        
        tb_A = 4'b1111;
        tb_B = 4'b1111;
        #10;
        
        $finish;
    end
    
endmodule
