`timescale 1ns / 1ps
module MUX_4x1(S1,S2,I0,I1,I2,I3,OUT);
input S1,S2,I0,I1,I2,I3;
output OUT;

wire S1b,S2b;
wire I1b,I2b,I3b,I0b;

not(S1b,S1);
not(S2b,S2);

and(I0b,S1b,S2b,I0);
and(I1b,S1b,S2,I1);
and(I2b,S1,S2b,I2);
and(I3b,S1,S2,I3);

or(OUT,I0b,I1b,I2b,I3b);

endmodule
