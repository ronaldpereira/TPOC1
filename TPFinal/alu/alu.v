module alu(a, b, opSelect, out);

	input [15:0] a, b;
	output reg [15:0] out;
	input opSelect;

	always @(opSelect or a or b)
	begin

		if(opSelect == 1)
		begin
			out = a + b;
		end
		else if(opSelect == 0)
		begin
			out = a ~& b;
		end

	end

endmodule
