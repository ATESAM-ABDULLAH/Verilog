`timescale 1ns / 1ps
module RiscV_implementation_TEST2;

	// Inputs
	reg clk;
	reg [6:0] Opcode;

	// Outputs
	wire Branch;
	wire Mem_Read;
	wire Mem_to_Reg;
	wire Mem_Write;
	wire ALU_src;
	wire Reg_Write;
	wire [1:0] ALU_op;

	// Instantiate the Unit Under Test (UUT)
	RiscV_implementation_Control uut (
		.clk(clk), 
		.Opcode(Opcode), 
		.Branch(Branch), 
		.Mem_Read(Mem_Read), 
		.Mem_to_Reg(Mem_to_Reg), 
		.Mem_Write(Mem_Write), 
		.ALU_src(ALU_src), 
		.Reg_Write(Reg_Write), 
		.ALU_op(ALU_op)
	);

	always #5 clk=~clk;
	initial begin
		clk=0;#10
		$display("TIME 	Branch	Mem_Read	Mem_to_Reg	Mem_Write	ALU_src	Reg_Write	ALU_op");
		$monitor("%2d	%b	%b	%b	%b	%b	%b	%b",$time,Branch,Mem_Read,Mem_to_Reg,Mem_Write,ALU_src,Reg_Write,ALU_op);

		Opcode = 7'b0110011;#10;
		Opcode = 7'b0100011;#10;
		Opcode = 7'b0000011;#10;
		Opcode = 7'b1100011;#10;
		#10
		$finish;
	end
      
endmodule

