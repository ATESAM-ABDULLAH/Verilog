`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:42:39 01/30/2023
// Design Name:   TaskB_circuit
// Module Name:   C:/Users/DSA Lab/Desktop/2021114/LAB1/TaskB_stimulus.v
// Project Name:  LAB1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TaskB_circuit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TaskB_stimulus;

	// Inputs
	reg A;
	reg B;
	reg C;
	reg D;

	// Outputs
	wire F;

	// Instantiate the Unit Under Test (UUT)
	TaskB_circuit uut (
		.A(A), 
		.B(B), 
		.C(C), 
		.D(D), 
		.F(F)
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

