`timescale 1ns / 1ps

module T_FlipFlop(T,Clk,Q,Qnot);
input T,Clk;
output Q,Qnot;
reg Q=0,Qnot=1;

always@(posedge Clk)
begin

	if(T==0)//no change
		begin
			Q = Q;
			Qnot = Qnot;
		end
	else if(T==1)//toggle
		begin
			Q = ~Q;
			Qnot = ~Qnot;
		end
end

endmodule
