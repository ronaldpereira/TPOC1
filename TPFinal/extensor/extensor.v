module extensor(iin, out);

	input [15:0] iin;
	output reg [15:0] out;
	output reg [9:0] imediate;
	reg [2:0] in;

	always @ (iin)
	begin
		in = iin[15:13];
		imediate = iin[9:0];

		if(imediate[9] == 1)
			out <= {6'b111111, imediate};
			
		else
			out <= {6'b000000, imediate};
	end

endmodule
