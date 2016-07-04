module decoder(register, out);

	input [2:0] register;
	output reg [7:0] out;

	always @ (register)
	begin
		case(register)
			3'b000: out <= 8'b10000000; // r0_enable
			3'b001: out <= 8'b01000000; // r1_enable
			3'b010:	out <= 8'b00100000; // r2_enable
			3'b011:	out <= 8'b00010000; // r3_enable
			3'b100:	out <= 8'b00001000; // r4_enable
			3'b101:	out <= 8'b00000100; // r5_enable
			3'b110:	out <= 8'b00000010; // r6_enable
			3'b111:	out <= 8'b00000001; // r7_enable
		endcase
	end

endmodule
