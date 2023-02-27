`timescale 1ns / 1ps

`module SR_FlipFlop(S,R,Clk,Q,Qnot);
input S,R,Clk;
output Q,Qnot;
reg Q,Qnot;

always@(posedge Clk)
begin

	if(S==0 & R==0)
		begin
			Q = Q;
			Qnot = Qnot;
		end
	else if (S==0 & R==1)
		begin
			Q = 0;
			Qnot = 1;
		end
	else if (S==1 & R==0)
		begin
			Q = 1;
			Qnot = 0;
		end
		
end

endmodule
