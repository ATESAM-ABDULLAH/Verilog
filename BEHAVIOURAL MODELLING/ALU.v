`timescale 1ns / 1ps

module ALU(A,B,OUT,SEL);
input [7:0] A,B; //8bit inputs
input [2:0] SEL; //3bit seelction
output [7:0] OUT; //8bit output
reg [7:0] OUT;

always@(*)
begin
	case(SEL)
	3'b000://0-ADD
		OUT=A+B;
	3'b001://1-SUBTRACT
		OUT=A-B;
	3'b010://2-MULTIPLY
		OUT=A*B;
	3'b011://3-DIVIDE
		OUT=A/B;
	3'b100://4-AND
		OUT=A&B;
	3'b101://5-OR
		OUT=A|B;
	3'b110://6-XOR
		OUT=A^B;
	3'b111://7-XNOR
		OUT=~(A^B);
	default: OUT = 8'b00000000;//default value 0
	endcase
end

endmodule
