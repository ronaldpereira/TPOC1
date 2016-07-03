module register_bank(clock, out, inn, reg_num, enable, enable_a, enable_r);

	input [7:0] enable;
	input enable_a, enable_r;
	input clock;
	input [2:0] reg_num;
	input [15:0] inn;
	output reg [15:0] out = 0;

	always @ (posedge clock)
	begin
		if(enable_a == 1)
			out <= inn;

		else if(enable_r == 1)
			out <= inn;

		else if(enable[reg_num] == 1)
			out <= inn;
	end

endmodule
