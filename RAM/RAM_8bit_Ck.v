`timescale 1ns / 1ps
module RAM_8bit_Clk(
	output [7:0] data_out,
	input [7:0] address,
	input [7:0] data_in, 
	input wr,
	input clk
);
reg [7:0] RAM [255:0];
reg [7:0] data_out;

always @(posedge clk) 
	begin
		if (wr)
			RAM[address] <= data_in;
		else
			data_out <= RAM[address];
	end

endmodule

