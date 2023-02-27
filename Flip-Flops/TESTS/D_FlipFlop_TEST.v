`timescale 1ns / 1ps

module D_FlipFlop_TEST;

	// Inputs
	reg D;
	reg Clk;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	D_FlipFlop uut (
		.D(D), 
		.Clk(Clk), 
		.Q(Q), 
		.Qnot(Qnot)
	);

	//foreever loop for cll
	initial begin
	  Clk=0;
		  forever #1 Clk = ~Clk;  
	end 
	
	//D possibilities
	initial begin 
	
	D=0;#10;//reset
	D=1;#10;//set
	 
	$finish;
	end 
      
endmodule

