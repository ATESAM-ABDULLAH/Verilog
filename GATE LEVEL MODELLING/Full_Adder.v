`timescale 1ns / 1ps
module Full_Adder(A,B,Cin,SUM,Cout);
input A,B,Cin;
output SUM,Cout;
wire w1,w2,w3;

xor(SUM,A,B,Cin);

and(w1,A,B);
and(w2,A,Cin);
and(w3,Cin,B);

or(Cout,w1,w2,w3);
endmodule
