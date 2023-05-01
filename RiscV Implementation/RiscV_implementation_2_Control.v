`timescale 1ns / 1ps
module RiscV_implementation_Control(
input clk,
input [6:0] Opcode,
output reg Branch,Mem_Read,Mem_to_Reg,Mem_Write,ALU_src,Reg_Write,
output reg [1:0] ALU_op
);

parameter R_type = 7'b0110011;
parameter S_type = 7'b0100011;
parameter L_type = 7'b0000011;
parameter B_type = 7'b1100011;

always@(posedge clk or Opcode)begin
	case(Opcode)
		R_type:begin
			ALU_src = 0;
			Mem_to_Reg = 0;
			Reg_Write = 1;
			Mem_Read = 0;
			Mem_Write = 0;
			Branch = 0;
			ALU_op = 2'b10;
		end
		S_type:begin
			ALU_src = 0;
			Mem_to_Reg = 1'bx;
			Reg_Write = 0;
			Mem_Read = 1;
			Mem_Write = 1;
			Branch = 0;
			ALU_op = 2'b00;
		end
		L_type:begin
			ALU_src = 1;
			Mem_to_Reg = 1;
			Reg_Write = 1;
			Mem_Read = 1;
			Mem_Write = 0;
			Branch = 0;
			ALU_op = 2'b00;
		end
		B_type:begin
			ALU_src = 0;
			Mem_to_Reg = 1'bx;
			Reg_Write = 0;
			Mem_Read = 0;
			Mem_Write = 0;
			Branch = 1;
			ALU_op = 2'b01;
		end
		default:begin
			ALU_src = 0;
			Mem_to_Reg = 0;
			Reg_Write = 0;
			Mem_Read = 0;
			Mem_Write = 0;
			Branch = 0;
			ALU_op = 2'b00;
		end
	endcase
	
end

endmodule
