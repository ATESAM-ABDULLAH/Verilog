`timescale 1ns / 1ps

module D_FlipFlop(D,Clk,Q,Qnot);
input D,Clk;
output Q,Qnot;
reg Q,Qnot;

always@(posedge Clk)
begin

	if(D==0)//reset
		begin
			Q = 0;
			Qnot = 1;
		end
	else if(D==1)//set
		begin
			Q = 1;
			Qnot = 0;
		end
end


endmodule
