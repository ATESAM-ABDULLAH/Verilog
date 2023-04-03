`timescale 1ns / 1ps
module Register_File_32x32_TEST;

	// Inputs
	reg clk;
	reg wr;
	reg [5:0] R1;
	reg [5:0] R2;
	reg [5:0] Rw;
	reg [31:0] Din;

	// Outputs
	wire [31:0] OUT1;
	wire [31:0] OUT2;

	// Instantiate the Unit Under Test (UUT)
	Register_File_32x32 uut (
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
		repeat(32)begin
			Rw=Rw+1;Din=Din+2;#10;
		end
		
		//Outputs
		wr=0;
		repeat(31)begin
			R1=R1+1;R2=R1+1;#10;
		end
		
		$finish;
	end
      
endmodule

