module counter(clock, clear, out);

	input clock, clear;
	output reg [1:0] out = 0;

	always @ (posedge clock)
	begin
		case(clear)
			1'b0:
				out = out + 1'b1; // Soma 1 ao contador
			1'b1:
				out = 2'b00; // Reseta o contador
		endcase
	end

endmodule
