`timescale 1ns / 1ps

module Decoder_2x4(A,B,I0,I1,I2,I3);
input  A,B;
output I0,I1,I2,I3;
reg I0,I1,I2,I3;

always@(*)
begin
	I0=0;I1=0;I2=0;I3=0;
	if(A==0 && B==0)
		I0=1;
	else if(A==0 && B==1)
		I1=1;
	else if(A==1 && B==0)
		I2=1;
	else
		I3=1;
end

endmodule
