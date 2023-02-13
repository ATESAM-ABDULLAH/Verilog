`timescale 1ns / 1ps

module MUX_8x1_test;

	// Inputs
	reg S0;
	reg S1;
	reg S2;
	reg I0;
	reg I1;
	reg I2;
	reg I3;
	reg I4;
	reg I5;
	reg I6;
	reg I7;

	// Outputs
	wire OUT;

	// Instantiate the Unit Under Test (UUT)
	MUX_8x1 uut (
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.I4(I4), 
		.I5(I5), 
		.I6(I6), 
		.I7(I7), 
		.OUT(OUT)
	);

	initial begin
		// Initialize Input
		I0 = 0;I1 = 1;I2 = 0;I3 = 1;I4 = 0;I5 = 1;I6 = 0;I7 = 1;
		
		S0 = 0;S1 = 0;S2 = 0;#10;
		S0 = 0;S1 = 0;S2 = 1;#10;
		S0 = 0;S1 = 1;S2 = 0;#10;
		S0 = 0;S1 = 1;S2 = 1;#10;
		S0 = 1;S1 = 0;S2 = 0;#10;
		S0 = 1;S1 = 0;S2 = 1;#10;
		S0 = 1;S1 = 1;S2 = 0;#10;
		S0 = 1;S1 = 1;S2 = 1;#10;

		$finish;

	end
      
endmodule

