module multiplexer(bus, imediate, imediate_select, r, r_select, r0, r0_select, r1, r1_select, r2, r2_select, r3, r3_select, r4, r4_select, r5, r5_select, r6, r6_select, r7, r7_select);

	input [15:0] imediate, r, r0, r1, r2, r3, r4, r5, r6, r7;
	input imediate_select, r_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select;
	output reg [15:0] bus;

	always @(imediate_select or r_select or r0_select or r1_select or r2_select or r3_select or r4_select or r5_select or r6_select or r7_select)
	begin
		if(imediate_select == 1)
			bus <= imediate;

		else if(r0_select == 1)
			bus <= r0;

		else if(r1_select == 1)
			bus <= r1;

		else if(r2_select == 1)
			bus <= r2;

		else if(r3_select == 1)
			bus <= r3;

		else if(r4_select == 1)
			bus <= r4;

		else if(r5_select == 1)
			bus <= r5;

		else if(r6_select == 1)
			bus <= r6;

		else if(r7_select == 1)
			bus <= r7;

		else
			bus <= 0;
	end

endmodule
