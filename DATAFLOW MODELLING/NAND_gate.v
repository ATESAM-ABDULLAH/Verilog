`timescale 1ns / 1ps

module NAND_gate(
    input A,
    input B,
    output Z
    );

assign Z = ~(A&B);
endmodule
