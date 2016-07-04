module complement(in, control, out);

	input [15:0] in;
	input control;
	output reg [15:0] out;

	always @(in or control)
	begin
		if(control == 1)
			out <= - in;
		else
			out <= in;
	end

endmodule
