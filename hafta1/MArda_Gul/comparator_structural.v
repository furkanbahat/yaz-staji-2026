`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2026 20:57:01
// Design Name: 
// Module Name: comparator_structural
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


module comparator_structural(
    input [3:0] a,
    input [3:0] b,
    output esit,
    output buyuk,
    output kucuk
);

    wire x3, x2, x1, x0;
    wire not_b3, not_b2, not_b1, not_b0;
    wire not_a3, not_a2, not_a1, not_a0;
    
    wire term_b3, term_b2, term_b1, term_b0;
    wire term_k3, term_k2, term_k1, term_k0;

    
    xnor u3 (x3, a[3], b[3]);
    xnor u2 (x2, a[2], b[2]);
    xnor u1 (x1, a[1], b[1]);
    xnor u0 (x0, a[0], b[0]);

    
    and eq_gate (esit, x3, x2, x1, x0);

    
    not n_b3 (not_b3, b[3]);
    not n_b2 (not_b2, b[2]);
    not n_b1 (not_b1, b[1]);
    not n_b0 (not_b0, b[0]);

    not n_a3 (not_a3, a[3]);
    not n_a2 (not_a2, a[2]);
    not n_a1 (not_a1, a[1]);
    not n_a0 (not_a0, a[0]);

    
    and g_b3 (term_b3, a[3], not_b3);
    and g_b2 (term_b2, x3, a[2], not_b2);
    and g_b1 (term_b1, x3, x2, a[1], not_b1);
    and g_b0 (term_b0, x3, x2, x1, a[0], not_b0);

    or buyuk_gate (buyuk, term_b3, term_b2, term_b1, term_b0);

    
    and g_k3 (term_k3, not_a3, b[3]);
    and g_k2 (term_k2, x3, not_a2, b[2]);
    and g_k1 (term_k1, x3, x2, not_a1, b[1]);
    and g_k0 (term_k0, x3, x2, x1, not_a0, b[0]);

    or kucuk_gate (kucuk, term_k3, term_k2, term_k1, term_k0);

endmodule
