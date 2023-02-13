`timescale 1ns / 1ps

module TaskB_circuit(
    input A,
    input B,
    input C,
    input D,
    output F
    );

assign F= (A&B) | (C&D);
endmodule
