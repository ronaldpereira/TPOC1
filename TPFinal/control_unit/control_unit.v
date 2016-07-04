module control_unit(iin, resetn, count, imediate);

	input [8:0] iin;
	input [1:0] count;
	input resetn;
	input [15:0] imediate;
	reg [2:0] opSelect;
	reg [15:0] registera, registerb;
	wire [7:0] outRegisterA, outRegisterB;
	output reg r0_select = 0, r1_select = 0, r2_select = 0, r3_select = 0, r4_select = 0, r5_select = 0, r6_select = 0, r7_select = 0, r_select = 0, immediate_select = 0, clear = 0;

	always @ (count == 0)
	begin
		opSelect = iin[8:6];
	end

	always @ (count == 1)
	begin

		if(OpSelect == 3'b101)
			registera = imediate;

		else if(OpSelect == 3'b111)
			registera = registerb;

	end

endmodule
