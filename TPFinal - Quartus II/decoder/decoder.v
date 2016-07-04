module decoder(register, out);

	input [2:0] register;
	output reg [7:0] out;

	always @ (register)
	begin
		case(register)
			3'b000: begin out <= 8'b10000000; end// r0_enable
			3'b001: begin out <= 8'b01000000; end // r1_enable
			3'b010:	begin out <= 8'b00100000; end // r2_enable
			3'b011:	begin out <= 8'b00010000; end // r3_enable
			3'b100:	begin out <= 8'b00001000; end // r4_enable
			3'b101:	begin out <= 8'b00000100; end // r5_enable
			3'b110:	begin out <= 8'b00000010; end // r6_enable
			3'b111:	begin out <= 8'b00000001; end // r7_enable
		endcase
	end

endmodule
