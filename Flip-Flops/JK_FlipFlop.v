`timescale 1ns / 1ps
module JK_FlipFlop(J,K,Clk,Q,Qnot);
input J,K,Clk;
output Q,Qnot;
reg Q,Qnot;

always@(posedge Clk)
begin

	if(J==0 & K==0)//no change
		begin
			Q = Q;
			Qnot = Qnot;
		end
	else if (J==0 & K==1)//reset
		begin
			Q = 0;
			Qnot = 1;
		end
	else if (J==1 & K==0)//set
		begin
			Q = 1;
			Qnot = 0;
		end
	else if (J==1 & K==1)//toggle
		begin
			Q = ~Q;
			Qnot = ~Qnot;
		end
end

endmodule
