module register_bank(clock, out, inn, reg_num, enable);

	input [7:0] enable;
	input clock;
	input [2:0] reg_num;
	input [15:0] inn;
	output reg [15:0] out = 0;

	always @ (posedge clock)
	begin
		if(enable[reg_num] == 1)
			out <= inn;
	end

endmodule
