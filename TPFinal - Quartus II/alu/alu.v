module alu(a, b, opSelect, out);

	input [15:0] a, b;
	output reg [15:0] out;
	input opSelect;

	always @(opSelect or a or b)
	begin
		case(opSelect)
			1'b1:
			begin
				out = a + b; // Caso seja subtração, o registrador virá negado para a entrada da ALU
			end
			1'b0:
			begin
				out = ~(a & b); // Operação de NAND
			end
		endcase
	end

endmodule
