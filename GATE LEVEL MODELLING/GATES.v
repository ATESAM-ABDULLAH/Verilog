`timescale 1ns / 1ps

module GATES(A,B,AND,OR,NAND,XOR, XNOR,NOT);
input A,B;
output AND,OR,NAND,XOR,XNOR,NOT;

and(AND,A,B);
or(OR,A,B);
nand(NAND,A,B);
xor(XOR,A,B);
xnor(XNOR,A,B);
not(NOT,A);

endmodule
