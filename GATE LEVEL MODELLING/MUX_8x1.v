`timescale 1ns / 1ps

module MUX_8x1(S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,OUT);
input S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7;
output OUT;
wire s1,s2,s3,i0,i1,i2,i3,i4,i5,i6,i7;

not(s0,S0);
not(s1,S1);
not(s2,S2);

and(i0,s0,s1,s2,I0);
and(i1,s0,s1,S2,I1);
and(i2,s0,S1,s2,I2);
and(i3,s0,S1,S2,I3);
and(i4,S0,s1,s2,I4);
and(i5,S0,s1,S2,I5);
and(i6,S0,S1,s2,I6);
and(i7,S0,S1,S2,I7);

or(OUT,i0,i1,i2,i3,i4,i5,i6,i7);

endmodule
