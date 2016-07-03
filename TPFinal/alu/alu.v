module alu(result, OpSelect, a, b);

	input [15:0] a, b;
	input [1:0] OpSelect;
	output reg [15:0] result = 0;

	always @ ( * )
	begin
		case (OpSelect)
			2'b00: result = a + b;
			2'b01: result = a - b;
			2'b10: result = a ~& b;
			default: result = 0;
		endcase
	end

endmodule
