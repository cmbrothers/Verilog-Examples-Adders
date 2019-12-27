`timescale 1ns / 1ps

module TwoBitAdder(
    input [3:0] sw, clk,
    output [6:0] led, [6:0] seg, [7:0] an
    );

    wire carry, HA0SUM, FA0SUM, FA0CARRY;

    assign an[7] = 1;
    assign an[6] = 1;
    assign an[5] = 1;
    assign an[4] = 1;
    assign an[3] = 1;
    assign an[2] = 1;
    assign an[1] = 1;
    
    assign an[0] = 0;
    
    assign led[3:0] = sw[3:0];
    assign led[6:4] = {FA0CARRY, FA0SUM, HA0SUM};
    
    HalfAdder HA0 (.A(sw[0]), .B(sw[2]), .Sum(HA0SUM), .Cout(carry));
    
    FullAdder FA0 (.A(sw[1]), .B(sw[3]), .Cin(carry), .Sum(FA0SUM), .Cout(FA0CARRY));
    
    
    
    decoder DEC0 (.B0(HA0SUM), .B1(FA0SUM), .B2(FA0CARRY), .B3(0), .sA(seg[0]), .sB(seg[1]), .sC(seg[2]), .sD(seg[3]), .sE(seg[4]), .sF(seg[5]), .sG(seg[6]));

//    decoder DEC1 (.B0(sw[2]), .B1(sw[3]), .B2(0), .B3(0), .sA(seg[0]), .sB(seg[1]), .sC(seg[2]), .sD(seg[3]), .sE(seg[4]), .sF(seg[5]), .sG(seg[6]));
    
//    decoder DEC2 (.B0(sw[0]), .B1(sw[1]), .B2(0), .B3(0), .sA(seg[0]), .sB(seg[1]), .sC(seg[2]), .sD(seg[3]), .sE(seg[4]), .sF(seg[5]), .sG(seg[6]));  
    
      
endmodule
