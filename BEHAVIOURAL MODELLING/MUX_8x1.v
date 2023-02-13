`timescale 1ns / 1ps

module MUX_8x1(S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,OUT);
input S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7;
output OUT;
reg OUT;

always@(*)
begin
	if(S0==0 && S1==0 && S2==0)
		OUT=I0;
	else if(S0==0 && S1==0 && S2==1)
		OUT=I1;
	else if(S0==0 && S1==1 && S2==0)
		OUT=I2;
	else if(S0==0 && S1==1 && S2==1)
		OUT=I3;
	else if(S0==1 && S1==0 && S2==0)
		OUT=I4;
	else if(S0==1 && S1==0 && S2==1)
		OUT=I5;
	else if(S0==1 && S1==1 && S2==0)
		OUT=I6;
	else if(S0==1 && S1==1 && S2==1)
		OUT=I7;
end
endmodule
