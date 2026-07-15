`timescale 1ns / 1ps

module comparator_structural (
    input  wire [3:0] a,
    input  wire [3:0] b,
    output wire esit,
    output wire buyuk,
    output wire kucuk
);

    // Her bir bit için eşitlik durumu (XNOR)
    wire e3 = ~(a[3] ^ b[3]);
    wire e2 = ~(a[2] ^ b[2]);
    wire e1 = ~(a[1] ^ b[1]);
    wire e0 = ~(a[0] ^ b[0]);

    // Bütün bitler eşitse sayılar eşittir (AND kapısı)
    assign esit = e3 & e2 & e1 & e0;

    // a'nın b'den büyük olma durumu
    assign buyuk = (a[3] & ~b[3]) | 
                   (e3 & a[2] & ~b[2]) | 
                   (e3 & e2 & a[1] & ~b[1]) | 
                   (e3 & e2 & e1 & a[0] & ~b[0]);

    // a'nın b'den küçük olma durumu
    assign kucuk = (~a[3] & b[3]) | 
                   (e3 & ~a[2] & b[2]) | 
                   (e3 & e2 & ~a[1] & b[1]) | 
                   (e3 & e2 & e1 & ~a[0] & b[0]);

endmodule