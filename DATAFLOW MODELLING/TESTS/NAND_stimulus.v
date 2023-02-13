`timescale 1ns / 1ps

module NAND_stimulus;

	// Inputs
	reg A;
	reg B;

	// Outputs
wire Z;

	// Instantiate the Unit Under Test (UUT)
	NAND_gate uut (
		.A(A), 
		.B(B), 
		.Z(Z)
	);

	initial begin
		// Initialize Input
		
		A = 0; B = 0;
		#10 //10ns delay
		A = 0; B = 1;
		#10
		A = 1; B = 0;
		#10
		A = 1; B = 1;
		#10
		$finish;
	end
      
endmodule

