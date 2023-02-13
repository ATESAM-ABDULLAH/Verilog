`timescale 1ns / 1ps

module Half_Adder(A,B,SUM,Cout);
input A,B;
output SUM,Cout;
reg SUM,Cout;

always @(*)
begin
	SUM = A^B;
	Cout = A & B;
end
endmodule
