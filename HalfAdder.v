`timescale 1ns / 1ps

module HalfAdder(
    input A, B,
    output Sum, Cout
    );
       
    assign Sum = A^B;
    assign Cout = A&B;
    
endmodule
