`timescale 1ns / 1ps
module MUX_4x1_test;

	// Inputs
	reg S1;
	reg S2;
	reg I0;
	reg I1;
	reg I2;
	reg I3;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	MUX_4x1 uut (
		.S1(S1), 
		.S2(S2), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Inputs
		I0 = 1;I1 = 0;I2 = 1;I3 = 0;
		 
		S1 = 0;S2 = 0;
		#10;
		S1 = 0;S2 = 1;
		#10;
		S1 = 1;S2 = 0;
		#10;
		S2 = 1;S2 = 1;
		#10;
		$finish;

	end
      
endmodule

