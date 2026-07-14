`timescale 1ns / 1ps

module Structural(
    input [3:0] A, B,
    output esit,buyuk,kucuk
    );
    
    //eşitlik için
    wire xnor3,xnor2,xnor1,xnor0;
    
    xnor (xnor3,A[3],B[3]);
    xnor (xnor2,A[2],B[2]);
    xnor (xnor1,A[1],B[1]);
    xnor (xnor0,A[0],B[0]);
    
    and (esit,xnor3,xnor2,xnor1,xnor0);
    
    //büyüklük için
    wire not_B3, not_B2, not_B1, not_B0;
    
    not (not_B3, B[3]);
    not (not_B2, B[2]);
    not (not_B1, B[1]);
    not (not_B0, B[0]);
    
    wire Band3,Band2,Band1,Band0;
    
    and (Band3,A[3],not_B3);
    and (Band2,xnor3,A[2],not_B2);
    and (Band1,xnor2,A[1],not_B1);
    and (Band0,xnor1,A[0],not_B0);
    
    or (buyuk,Band3,Band2,Band1,Band0);
    
    //küçüklük için
    wire not_A3, not_A2, not_A1, not_A0;
    
    not (not_A3, A[3]);
    not (not_A2, A[2]);
    not (not_A1, A[1]);
    not (not_A0, A[0]);
    
    wire Kand3,Kand2,Kand1,Kand0;
    
    and (Kand3,B[3],not_A3);
    and (Kand2,xnor3,B[2],not_A2);
    and (Kand1,xnor2,B[1],not_A1);
    and (Kand0,xnor1,B[0],not_A0);
    
    or (kucuk,Kand3,Kand2,Kand1,Kand0);
    
endmodule
