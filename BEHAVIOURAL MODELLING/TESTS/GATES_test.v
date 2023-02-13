`timescale 1ns / 1ps

module GATES_test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire AND;
	wire OR;
	wire NOT;

	// Instantiate the Unit Under Test (UUT)
	Gates uut (
		.A(A), 
		.B(B), 
		.AND(AND), 
		.OR(OR), 
		.NOT(NOT)
	);

	initial begin
		$monitor ($time,"A=%b,B=%b,AND=%b,OR=%b,NOT=%b",A,B,AND,OR,NOT);
		// Initialize Inputs
		A = 0;B = 0;#10;
      A = 0;B = 1;#10;
		A = 1;B = 0;#10;
		A = 1;B = 1;#10;
		$finish;

	end
      
endmodule

