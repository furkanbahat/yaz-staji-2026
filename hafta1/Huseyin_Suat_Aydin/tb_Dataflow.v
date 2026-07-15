`timescale 1ns / 1ps

module tb_Dataflow();

    reg [3:0] tb_A;
    reg [3:0] tb_B;
    wire tb_esit;
    wire tb_buyuk;
    wire tb_kucuk;
    
    Dataflow uut(
        .A(tb_A),
        .B(tb_B),
        .esit(tb_esit),
        .buyuk(tb_buyuk),
        .kucuk(tb_kucuk)
    );
    
    initial begin
        tb_A = 4'b0000;
        tb_B = 4'b0000;
        #10;
        
        tb_A = 4'b0000;
        tb_B = 4'b0001;
        #10;
        
        tb_A = 4'b0011;
        tb_B = 4'b0001;
        #10;
        
        tb_A = 4'b1101;
        tb_B = 4'b1101;
        #10;
        
        $finish;
    end
    
endmodule
