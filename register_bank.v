module register_bank(clock, out, inn, enable);

	input enable, clock;
	input [15:0] inn;
	output reg [15:0] out;

	always @ (posedge clock)
	begin
		if(enable == 1)
			out <= inn;
	end

endmodule
