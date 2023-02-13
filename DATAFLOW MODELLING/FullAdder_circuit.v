`timescale 1ns / 1ps

module FullAdder_circuit(
    input A,
    input B,
    input Cin,
    output SUM,
    output Cout
    );

assign SUM = A^B^Cin;
assign Cout = (A&B) + (A & Cin) + (B & Cin);
endmodule
