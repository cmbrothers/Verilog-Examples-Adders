`timescale 1ns / 1ps

module FullAdder(
    input A, B, Cin,
    output Sum, Cout
    );
    
    assign Sum = (A^B)^Cin;
    assign Cout = (A&B)+((A^B)&Cin);
    
endmodule
