module alu(a, b, opSelect, out);

	input [15:0] a, b;
	output reg [15:0] out;
	input opSelect;

	always @(opSelect or a or b)
	begin
		case(opSelect)
			1'b1:
				out = a + b; // Caso seja subtração, o registrador virá negado para a entrada da ALU
			1'b0:
				out = a ~& b; // Operação de NAND
		endcase
	end

endmodule
