`timescale 1ns / 1ps
module RAM_4bit_rw(
	 input [3:0] address,
	 input [3:0] data_in, 
	 input rw,
	 output [3:0] data_out
	);
	reg [3:0] RAM [15:0]; //16 index 4bit per index 
	reg [3:0] data_out;
		
	always @(*)
	 begin
		  if (rw) 
				RAM[address] <= data_in;//write to ram
		  if (!rw)
				data_out <= RAM[address];//read from ram
	 end

endmodule
