`timescale 1ns / 1ps

module Mealy_Nolap_11011_Detector_TEST;

	// Inputs
	reg x;
	reg clk;
	reg rst;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	Mealy_Nonlap_11011_Detector uut (
		.x(x), 
		.clk(clk), 
		.rst(rst), 
		.y(y)
	);

	integer i;
	reg [19:0] data;

	always #5 clk=~clk;
	initial begin
		data = 20'b11101110101101110100;
		clk=0;
		rst=1;#10
		rst=0;#10
		
		for(i=0;i<20;i=i+1) begin
			x=data[i];
			#10;
		end
		$finish;

	end
      
endmodule

