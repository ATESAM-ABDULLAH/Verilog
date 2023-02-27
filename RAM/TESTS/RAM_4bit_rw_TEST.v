`timescale 1ns / 1ps

module RAM_4bit_rw_TEST;

	// Inputs
	reg [3:0] address;
	reg [3:0] data_in;
	reg rw;

	// Outputs
	wire [3:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	RAM_4bit_rw uut (
		.address(address), 
		.data_in(data_in), 
		.rw(rw), 
		.data_out(data_out)
	);

	initial begin
	
		address = 4'b0000; //starting address
		repeat(16)begin
			data_in = address + 4'b0010; //data = address+2
			rw=1;#10;//write
			rw=0;#10;//read
			address = address + 1;//increment address
		end
		$finish;

	end
      
endmodule

