`timescale 1ns / 1ps
module Mealy_Reg_Detector(
input x,clk,rst,
output reg y
    );
reg [1:0] state,next;

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;


always @(state or x)begin

	case(state)
	s0: begin
		if(x)
			next = state;
		else
			next = s1;
		end
	s1: begin
		if(x)
			next = s2;
		else
			next = state;
		end
	s2: begin
		if(x)
			next = s0;
		else
			next = s3;
		end
	s3: begin
		if(x)
			next = s2;
		else
			next = s1;
		end
	default:
		next=s0;
	endcase
end

always @(posedge clk)begin
y=0;
if(state==s3 && x==0)
	y=1;
if(rst)
	state =  s0;
else
	state = next;
end
endmodule
