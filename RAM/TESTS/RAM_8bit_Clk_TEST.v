`timescale 1ns / 1ps
module RAM_8bit_Clk_TEST;

	// Inputs
	reg [7:0] address;
	reg [7:0] data_in;
	reg wr;
	reg clk;

	// Outputs
	wire [7:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	RAM_8bit_Clk uut (
		.data_out(data_out), 
		.address(address), 
		.data_in(data_in), 
		.wr(wr), 
		.clk(clk)
	);

	always#5 clk=~clk;
	
	initial begin
		clk = 0;
		address = 4'b0000;
		repeat(4)begin
			data_in = address + 4'b0010; //data = address+2
			wr=1;#10;//write
			wr=0;#10;//read
			address = address + 1;//increment address
		end
		$finish;

	end
      
endmodule

