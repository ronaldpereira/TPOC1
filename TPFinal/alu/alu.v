module alu(a, b, OpSelect, result);

	input [15:0] a, b;
	input OpSelect;
	output reg [15:0] result;

	always @ ( * )
	begin
		case (OpSelect)
			1'b1: result = a + b;
			1'b0: result = a ~& b;
			default: result = 0;
		endcase
	end

endmodule
