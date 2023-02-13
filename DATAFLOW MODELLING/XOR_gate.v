`timescale 1ns / 1ps

module XOR_gate(
    input A,
    input B,
    output Z
    );

assign Z= (A & ~B)|(~A & B);
endmodule
