`timescale 1ns / 1ps

module DECODER_2x4_test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire I0;
	wire I1;
	wire I2;
	wire I3;

	// Instantiate the Unit Under Test (UUT)
	DECODER_2x4 uut (
		.A(A), 
		.B(B), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3)
	);

	initial begin
		// Initialize Inputs
		A = 0;B = 0;
		#10;
		A = 0;B = 1;
		#10;
		A = 1;B = 0;
		#10;
		A = 1;B = 1;
		#10;
		$finish;

	end
      
endmodule

