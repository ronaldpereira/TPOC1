module extensor(iin, out);

	input [15:0] iin;
	output reg [15:0] out;
	output reg [9:0] imediate;

	always @ (iin)
	begin
		imediate = iin[9:0];

		out <= {6'b000000, imediate};
	end

endmodule
