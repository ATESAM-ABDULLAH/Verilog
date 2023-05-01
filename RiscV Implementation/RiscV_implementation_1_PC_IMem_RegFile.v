`timescale 1ns / 1ps
module RiscV_implementation_PC_IMem_RegFile(

input clk,		//clock
input reset,   //reset whole circuit to default

output reg [31:0] instruction, //instruction fetched from Instruction Memory -> Instruction_memory

output reg [2:0] fn3,          //fn3 [3bit]
output reg [6:0] fn7,          //fn7 [7bit]
output reg [4:0] rs1,rs2,rd,   //register address [5bit] -> register_file input
output reg [31:0] rout1,rout2, //register data [32bit]-> register_file output
input [31:0] write_data,       //data to be written into destination reg
input reg_write,               //write/read from Reg File

output reg [4:0] pc_out    //5bit address -> 2^5 index -> 32 index
);
// 2^5 index with 32bit instruction each
reg [31:0] Instruction_Mem [31:0];
reg [31:0] Register_File [31:0];

integer i;
always@(posedge clk)begin

//PC
	if(reset) //reset pc_output
		pc_out <= 0;
	else      //keep on increasing pc by 1 -> b/c 32bit instruction not 8bit
		pc_out <= pc_out + 1;
			
//INSTRUCTOIN MEMORY

	//intialize Instruction_Mem
	for(i=0;i<32;i=i+1)begin
		Instruction_Mem[i]=0;
	end
	//temp data -> fn7|s2|s1|fn3|rd|opcode ~~ 7|5|5|3|5|7
	Instruction_Mem[0]=32'b00000000000100000000000100000000; // s1=0,s2=1,rd=3 , opcode=0 -> add
	Instruction_Mem[1]=32'b00000000000100000000000100000001; // s1=0,s2=1,rd=3 , opcode=1 -> sub
	Instruction_Mem[2]=32'b00000000000100000000000100000010; // s1=0,s2=1,rd=3 , opcode=2 -> and
	//Working
	instruction <= Instruction_Mem[pc_out];
	
//REGISTER FILE
	//temp data 
	Register_File[0]=0;
	Register_File[1]=2;
	Register_File[2]=3;
	//Decode instruction
   fn7=instruction[6:0]; //FN7
	rd =instruction[11:7];//destination reg
	fn3=instruction[14:12];//FN3
	rs1=instruction[19:15];//source1 
	rs2=instruction[24:20];//source2
	//Working
	if(reg_write)begin //write to rd
		Register_File[rd]<=write_data;
		end
	else begin         //read rs1,rs2
		rout1<=Register_File[rs1];
		rout2<=Register_File[rs2];
		end
		
end
 
endmodule