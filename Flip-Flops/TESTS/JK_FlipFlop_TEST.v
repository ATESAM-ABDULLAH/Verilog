`timescale 1ns / 1ps

module JK_FlipFlop_TEST;

	// Inputs
	reg J;
	reg K;
	reg Clk;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	JK_FlipFlop uut (
		.J(J), 
		.K(K), 
		.Clk(Clk), 
		.Q(Q), 
		.Qnot(Qnot)
	);

	//foreever loop for cll
	initial begin
	  Clk=0;
		  forever #1 Clk = ~Clk;  
	end 
	
	//S R possibilities
	initial begin 
	 J= 0; K= 0; //nochange
	 #10;J= 0; K= 1; //reset q=0
	 #10;J= 1; K= 0; //set q=1
	 #10;J= 1; K= 1; //toggle
	 #10
	 $finish;
	end 
      
endmodule

