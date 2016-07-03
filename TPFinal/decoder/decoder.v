module decoder(out, register);

	input [2:0] register;
	output reg [7:0] out = 0;

	always @ (register)
	begin
		case(register)
			3'b000: out[7] <= 1; // r7
			3'b001: out[6] <= 1; // r6
			3'b010:	out[5] <= 1; // r5
			3'b011:	out[4] <= 1; // r4
			3'b100:	out[3] <= 1; // r3
			3'b101:	out[2] <= 1; // r2
			3'b110:	out[1] <= 1; // r1
			3'b111:	out[0] <= 1; // r0
		endcase
	end

endmodule
