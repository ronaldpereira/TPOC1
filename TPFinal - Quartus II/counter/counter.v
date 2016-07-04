module counter(clock, clear, out);

	input clock, clear;
	output reg [1:0] out = 0;

	always @ (negedge clock)
	begin
		case(clear)
			1'b0:
			begin
				out = out + 1'b1; // Soma 1 ao contador
			end
			1'b1:
			begin
				out = 2'b00; // Reseta o contador
			end
		endcase
	end

endmodule
