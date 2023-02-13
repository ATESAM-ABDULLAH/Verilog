`timescale 1ns / 1ps

module ALU_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [3:0] SEL;

	// Outputs
	wire [7:0] OUT;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.OUT(OUT), 
		.SEL(SEL)
	);
	integer i;
	initial begin
		// Initialize Inputs
		A = 8'h03; //dec/hex 3 
		B = 8'h05; //dec/hex 5
		SEL =3'h00; //dec/hex 0
		#10;
		
		for (i=0;i<8;i=i+1)//incremment SEL
      begin
       SEL = SEL + 3'h01;
       #10;
      end;
		$finish;
	end
      
endmodule

