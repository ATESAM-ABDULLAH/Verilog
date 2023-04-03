`timescale 1ns / 1ps
module Register_File_32x32(
input clk,wr,
input [4:0] R1,R2,Rw,
input [31:0] Din,
output [31:0] OUT1,OUT2
    );
reg [31:0] Registers [31:0]; // 32bit x 32regs
reg [31:0] OUT1,OUT2; // 32bit x 2outputs

always@(posedge clk)begin
	Registers[0]=32'b0;
	if(wr)//write
		Registers[Rw] <= Din;
	else //read
		begin
		OUT1 <= Registers[R1];
		OUT2 <= Registers[R2];
		end
end
endmodule
