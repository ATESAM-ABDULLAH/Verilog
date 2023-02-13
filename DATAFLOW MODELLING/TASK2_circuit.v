`timescale 1ns / 1ps

module TASK2_circuit(
    input A,
    input B,
    input C,
    input D,
    output G
    );

assign G = (A|B)&(C|D);
endmodule
