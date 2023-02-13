`timescale 1ns / 1ps

module TASK2_stimulus;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire G;

	// Instantiate the Unit Under Test (UUT)
	TASK2_circuit uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.G(G)
	);

	initial begin
		// Initialize Inputs

		A = 0;B = 0;C = 0;D = 0;
		#10;
		A = 0;B = 0;C = 0;D = 1;
		#10;
		A = 0;B = 0;C = 1;D = 0;
		#10;
		A = 0;B = 0;C = 1;D = 1;
		#10;
		A = 0;B = 1;C = 0;D = 0;
		#10;
		A = 0;B = 1;C = 0;D = 1;
		#10;
		A = 0;B = 1;C = 1;D = 0;
		#10;
		A = 0;B = 1;C = 1;D = 1;
		#10;
		A = 1;B = 0;C = 0;D = 0;
		#10;
		A = 1;B = 0;C = 0;D = 1;
		#10;
		A = 1;B = 0;C = 1;D = 0;
		#10;
		A = 1;B = 0;C = 1;D = 1;
		#10;
		A = 1;B = 1;C = 0;D = 0;
		#10;
		A = 1;B = 1;C = 0;D = 1;
		#10;
		A = 1;B = 1;C = 1;D = 0;
		#10;
		A = 1;B = 1;C = 1;D = 1;
		#10;
		$finish;
	end
      
endmodule

