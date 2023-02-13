`timescale 1ns / 1ps


module Half_Adder_test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire SUM;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Half_Adder uut (
		.A(A), 
		.B(B), 
		.SUM(SUM), 
		.Cout(Cout)
	);

	initial begin
		$monitor ($time,"A=%b,B=%b,SUM=%b,Cout=%b",A,B,SUM,Cout);
		// Initialize Inputs
		A = 0;B = 0;#10;
      A = 0;B = 1;#10;
		A = 1;B = 0;#10;
		A = 1;B = 1;#10;
		$finish;

	end
      
endmodule

