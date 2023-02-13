`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:21:58 01/30/2023
// Design Name:   OR_gate
// Module Name:   C:/Users/DSA Lab/Desktop/2021114/LAB1/OR_stimulus.v
// Project Name:  LAB1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: OR_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module OR_stimulus;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Z;

	// Instantiate the Unit Under Test (UUT)
	OR_gate uut (
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

