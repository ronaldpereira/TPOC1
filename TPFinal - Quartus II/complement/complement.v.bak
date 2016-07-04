module complement(in, enable, out);

	input [15:0] in;
	input enable;
	output reg [15:0] out;

	always @(in or enable)
	begin
		case(enable)
			1'b1:
				out <= - in; // Nega o valor do numero para que seja feita um subtracao na ALU ao somar o registrador a com o registrador b
			1'b0:
				out <= in;
		endcase
	end

endmodule
