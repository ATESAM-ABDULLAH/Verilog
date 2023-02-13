`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:05:41 02/06/2023
// Design Name:   Full_Adder
// Module Name:   C:/Users/DSA Lab/Desktop/2021114/LAB2/Full_Adder_test.v
// Project Name:  LAB2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Full_Adder_test;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire SUM;
	wire Cout;

	// Instantiate the Unit Under Test (UUT)
	Full_Adder uut (
		.A(A), 
		.B(B), 
		.Cin(Cin), 
		.SUM(SUM), 
		.Cout(Cout)
	);

	initial begin
		// Initialize Inputs
		A = 0;B = 0;Cin = 0;#10;
		A = 0;B = 0;Cin = 1;#10;
		A = 0;B = 1;Cin = 0;#10;
		A = 0;B = 1;Cin = 1;#10;
		A = 1;B = 0;Cin = 0;#10;
		A = 1;B = 0;Cin = 1;#10;
		A = 1;B = 1;Cin = 0;#10;
		A = 1;B = 1;Cin = 1;#10;
		$finish;
	end
      
endmodule

