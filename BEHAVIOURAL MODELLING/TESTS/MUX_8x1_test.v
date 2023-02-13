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
		$monitor ($time,"OUT=%b,S0=%b,S1=%b,S2=%b,I0=%b,I1=%b,I2=%b,I3=%b,I4=%b,I5=%b,I6=%b,I7=%b",OUT,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7);
		// Initialize Inputs
		I0=1; I1=0; I2=1; I3=0; I4=1; I5=0; I6=1; I7=0;
		
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

