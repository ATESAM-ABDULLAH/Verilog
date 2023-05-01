`timescale 1ns / 1ps
module RiscV_implementation_TEST_1;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] write_data;
	reg reg_write;

	// Outputs
	wire [31:0] instruction;
	wire [2:0] fn3;
	wire [6:0] fn7;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	wire [31:0] rout1;
	wire [31:0] rout2;
	wire [4:0] pc_out;

	// Instantiate the Unit Under Test (UUT)
	RiscV_implementation_PC_IMem_RegFile uut (
		.clk(clk), 
		.reset(reset), 
		.instruction(instruction), 
		.fn3(fn3), 
		.fn7(fn7), 
		.rs1(rs1), 
		.rs2(rs2), 
		.rd(rd), 
		.rout1(rout1), 
		.rout2(rout2), 
		.write_data(write_data), 
		.reg_write(reg_write), 
		.pc_out(pc_out)
	);

	always #5 clk=~clk;
	initial begin
		clk=0;reset=1;#10 //initialize clock and reset
		reset=0;          //set reset=0 -> enabled
		#200              //time pc is enabled
		$finish;
	end
      
endmodule

