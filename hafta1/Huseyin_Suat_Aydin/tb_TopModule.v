`timescale 1ns / 1ps

module tb_TopModule();

    reg clk;
    reg reset;
    reg [3:0] tb_A;
    reg [3:0] tb_B;
    wire [3:0] tb_count;
    
    TopModule uut(
        .clk(clk),
        .reset(reset),
        .A(tb_A),
        .B(tb_B),
        .count(tb_count)
    );
    
    always #5 clk = ~clk;
    
    initial begin
        clk = 0;
        reset = 1;
        tb_A = 4'b0000;
        tb_B = 4'b0000;
        #10;
        
        reset = 0;
        
        tb_A = 4'b1000; tb_B = 4'b0010; 
        #40;
        
        tb_A = 4'b0111; tb_B = 4'b0111; 
        #30;
        
        tb_A = 4'b0001; tb_B = 4'b1100; 
        #20;
        
        reset = 1;
        #10;
        
        $finish;
    end
    
endmodule