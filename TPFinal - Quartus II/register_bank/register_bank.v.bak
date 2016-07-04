module register_bank(in, enable, clock, out);

	input enable, clock;
	input [15:0] in;
	output reg [15:0] out;

	always @ (posedge clock)
	begin
		if(enable)
			out <= in;
	end

endmodule
