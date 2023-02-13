`timescale 1ns / 1ps

module Gates(A,B,AND,OR,NOT);
input A,B;
output AND,OR,NOT;
reg AND,OR,NOT;

always @(*)
begin
	AND = A&B;
	OR = A|B;
	NOT = ~A;
end

endmodule
