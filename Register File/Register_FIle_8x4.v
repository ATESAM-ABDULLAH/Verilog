`timescale 1ns / 1ps
module Register_FIle_8x4(
input clk,wr,
input [3:0] R1,R2,Rw,
input [7:0] Din,
output [7:0] OUT1,OUT2
    );
reg [7:0] Registers [3:0]; // 8bit x 4regs
reg [7:0] OUT1,OUT2; // 8bit x 2outputs

always@(posedge clk)begin
	if(wr)//write
		Registers[Rw] <= Din;
	else //read
		begin
		OUT1 <= Registers[R1];
		OUT2 <= Registers[R2];
		end
end
endmodule
