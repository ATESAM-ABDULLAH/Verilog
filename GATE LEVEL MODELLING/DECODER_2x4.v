`timescale 1ns / 1ps

module DECODER_2x4(A,B,I0,I1,I2,I3);
input  A,B;
output I0,I1,I2,I3;
wire a,b;

not(a,A);
not(b,B);

and(I0,a,b);
and(I1,a,B);
and(I2,A,b);
and(I3,A,B);

endmodule
