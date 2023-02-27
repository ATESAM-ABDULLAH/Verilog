`timescale 1ns / 1ps

module T_FlipFlop_TEST;

	// Inputs
	reg T;
	reg Clk;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	T_FlipFlop uut (
		.T(T), 
		.Clk(Clk), 
		.Q(Q), 
		.Qnot(Qnot)
	);

	//foreever loop for cll
	initial begin
	  Clk=0;
		  forever #1 Clk = ~Clk;  
	end 
	
	//T possibilities
	initial begin 
	
	T=0;#10;//reset
	T=1;#10;//set
	 
	$finish;
	end 
endmodule

