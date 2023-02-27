`timescale 1ns / 1ps

module SR_FlipFlop_TEST;

	// Inputs
	reg S;
	reg R;
	reg Clk;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	SR_FlipFlop uut (
		.S(S), 
		.R(R), 
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
	 S= 0; R= 0; //nochange
	 #10;S= 0; R= 1; //reset q=0
	 #10;S= 1; R= 0; //set q=1
	 #10;S= 1; R= 1; //error
	 
	 $finish;
	end 
	
   

endmodule

