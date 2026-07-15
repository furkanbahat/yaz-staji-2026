`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.07.2026 04:23:00
// Design Name: 
// Module Name: tb_top_system
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module tb_top_system();

    reg clk;
    reg reset;
    reg [3:0] a;
    reg [3:0] b;

    wire [3:0] count;
    wire buyuk;
    wire kucuk;
    wire esit;

    top_system uut (
        .clk(clk),
        .reset(reset),
        .a(a),
        .b(b),
        .count(count),
        .buyuk(buyuk),
        .kucuk(kucuk),
        .esit(esit)
    );

    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1; 
        a = 4'd0;
        b = 4'd0;
        #15;
        reset = 0;

        a = 4'd10; 
        b = 4'd5;
        #50; 

        a = 4'd7; 
        b = 4'd7;
        #30; 

        a = 4'd2; 
        b = 4'd8;
        #50; 

        $finish; 
    end

endmodule
