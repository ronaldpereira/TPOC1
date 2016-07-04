module multiplexer(imediate,  r0, r1, r2, r3, r4, r5, r6, r7, r, imediate_select,  r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select,bus);

	input [15:0] imediate, r0, r1, r2, r3, r4, r5, r6, r7, r;
	input imediate_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select;
	output [15:0] bus;
	reg [15:0] bus;

	always @(imediate_select or r0_select or r1_select or r2_select or r3_select or r4_select or r5_select or r6_select or r7_select or r_select)
	begin
			if(imediate_select)
			begin
		 		bus <= imediate;
			end
			
		 	else if(r_select)
			begin
		 		bus <= r;
			end
			
		 	else if(r0_select)
			begin
		 		bus <= r0;
			end
			
		 	else if(r1_select)
			begin
		 		bus <= r1;
			end
			
		 	else if(r2_select)
			begin
		 		bus <= r2;
			end
			
		 	else if(r3_select)
			begin
		 		bus <= r3;
			end
			
		 	else if(r4_select)
			begin
		 		bus <= r4;
			end
		 	else if(r5_select)
			begin
		 		bus <= r5;
			end
			
		 	else if(r6_select)
			begin
		 		bus <= r6;
			end
			
		 	else if(r7_select)
			begin
		 		bus <= r7;
			end
			
		 	else
			begin
				bus <= 16'd0;
			end
	end

endmodule
