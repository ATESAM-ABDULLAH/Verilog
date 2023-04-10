`timescale 1ns / 1ps
module RiscV_implementation_TEST;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [4:0] pc_out;
	wire [31:0] instruction,rout1,rout2;
	wire [2:0] fn3;
	wire [6:0] fn7;
	wire [5:0] rs1,rs2,rd;//reg address
	
	// Instantiate the Unit Under Test (UUT)
	RiscV_implementation uut (
		.clk(clk), 
		.reset(reset), 
		.pc_out(pc_out),
		.instruction(instruction),
		.rs1(rs1),
		.rs2(rs2),
		.rd(rd),
		.rout1(rout1),
		.rout2(rout2)
	);
	
	always #5 clk=~clk;
	initial begin
		clk=0;reset=1;#10 //initialize clock and reset
		reset=0;          //set reset=0 -> enabled
		#200              //time pc is enabled
		$finish;
	end
      
endmodule

