`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:32:21 02/06/2023
// Design Name:   GATES
// Module Name:   C:/Users/DSA Lab/Desktop/2021114/LAB2/GATES_test.v
// Project Name:  LAB2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GATES
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GATES_test;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire AND;
	wire OR;
	wire NAND;
	wire XOR;
	wire XNOR;
	wire NOT;

	// Instantiate the Unit Under Test (UUT)
	GATES uut (
		.A(A), 
		.B(B), 
		.AND(AND), 
		.OR(OR), 
		.NAND(NAND), 
		.XOR(XOR), 
		.XNOR(XNOR), 
		.NOT(NOT)
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

