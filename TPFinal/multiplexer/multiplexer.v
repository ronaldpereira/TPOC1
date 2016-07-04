module multiplexer(imediate,  r0, r1, r2, r3, r4, r5, r6, r7, r, imediate_select,  r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select,bus);

	input [15:0] imediate, r0, r1, r2, r3, r4, r5, r6, r7, r;
	input imediate_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select;
	output [15:0] bus;
	reg [15:0] bus;

	always @(imediate_select or r0_select or r1_select or r2_select or r3_select or r4_select or r5_select or r6_select or r7_select or r_select)
	begin
			if(imediate_select)
		 		bus <= imediate;

		 	else if(r_select)
		 		bus <= r;

		 	else if(r0_select)
		 		bus <= r0;

		 	else if(r1_select)
		 		bus <= r1;

		 	else if(r2_select)
		 		bus <= r2;

		 	else if(r3_select)
		 		bus <= r3;

		 	else if(r4_select)
		 		bus <= r4;

		 	else if(r5_select)
		 		bus <= r5;

		 	else if(r6_select)
		 		bus <= r6;

		 	else if(r7_select)
		 		bus <= r7;

		 	else
				bus <= 16'd0;
	end

endmodule
