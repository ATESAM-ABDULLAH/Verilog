`timescale 1ns / 1ps

module OR_gate(
    input A,
    input B,
    output Z
    );

assign Z = A | B; 
endmodule
