`timescale 1ns / 1ps
module Mealy_Nonlap_11011_Detector(
input x,clk,rst,
output reg y
    );
reg [2:0] state,next;

parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100; 

always @(state or x)begin

	case(state)
	s0: begin
		if(x)
			next = s1;
		else
			next = state;
		end
	s1: begin
		if(x)
			next = s2;
		else
			next = s0;
		end
	s2: begin
		if(x)
			next = state;
		else
			next = s3;
		end
	s3: begin
		if(x)
			next = s4;
		else
			next = s0;
		end
	s4: begin
		if(x)
			next = s2;
		else
			next = s0;
		end
	default:
		next=s0;
	endcase
	
end

always @(posedge clk)begin
y=0;
if(state==s4 && x==1)
	y=1;
if(rst)
	state =  s0;
else
	state = next;
end

endmodule
