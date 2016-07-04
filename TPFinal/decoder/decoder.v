module decoder(register, out);

	input [2:0] register;
	output reg [7:0] out = 0;

	always @ (register)
	begin
		case(register)
			3'b000: out <= 8'b10000000; // r0
			3'b001: out <= 8'b01000000; // r1
			3'b010:	out <= 8'b00100000; // r2
			3'b011:	out <= 8'b00010000; // r3
			3'b100:	out <= 8'b00001000; // r4
			3'b101:	out <= 8'b00000100; // r5
			3'b110:	out <= 8'b00000010; // r6
			3'b111:	out <= 8'b00000001; // r7
		endcase
	end

endmodule
