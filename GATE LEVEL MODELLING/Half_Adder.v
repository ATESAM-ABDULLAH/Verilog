`timescale 1ns / 1ps

module Half_Adder(A,B,SUM,Cout);
input A,B;
output SUM,Cout;

xor(SUM,A,B);
and(Cout,A,B);

endmodule
