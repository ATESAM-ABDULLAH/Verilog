`timescale 1ns / 1ps////////

module Register_File_8x4_TEST;

	// Inputs
	reg clk;
	reg wr;
	reg [3:0] R1;
	reg [3:0] R2;
	reg [3:0] Rw;
	reg [7:0] Din;

	// Outputs
	wire [7:0] OUT1;
	wire [7:0] OUT2;

	// Instantiate the Unit Under Test (UUT)
	Register_FIle_8x4 uut (
		.clk(clk), 
		.wr(wr), 
		.R1(R1), 
		.R2(R2), 
		.Rw(Rw), 
		.Din(Din), 
		.OUT1(OUT1), 
		.OUT2(OUT2)
	);

	always #5 clk=~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;wr = 0;R1 = 0;R2 = 0;Rw = 0;Din = 8'b0;#10
		
		//Input
		wr=1;
		Rw=0;Din=8'd2;#10
		Rw=1;Din=8'd4;#10
		Rw=2;Din=8'd6;#10
		Rw=3;Din=8'd8;#10
		
		//Outputs
		wr=0;
		R1=0;R2=1;#10
		R1=2;R2=3;#10
		
		$finish;
	end
      
endmodule

