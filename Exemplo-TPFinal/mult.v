module mult(
	imediat, 
	r0,
	r1,
	r2,
	r3,
	r4,
	r5,
	r6,
	r7,
	r,
	imediat_select, 
	r0_select,
	r1_select,
	r2_select,
	r3_select,
	r4_select,
	r5_select,
	r6_select,
	r7_select,
	r_select,
	bus);

input [15:0] imediat, r0, r1, r2, r3, r4, r5, r6, r7, r;
input imediat_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select;
output [15:0] bus;
reg [15:0] bus;

 always @(imediat_select or r0_select or r1_select or r2_select or r3_select or r4_select or r5_select or r6_select or r7_select or r_select) begin
 	if(imediat_select == 1)begin
 		bus <= imediat;
 	end
 	else if(r_select == 1)begin
 		bus <= r;
 	end
 	else if(r0_select == 1)begin
 		bus <= r0;
 	end 
 	else if(r1_select == 1)begin
 		bus <= r1;
 	end 
 	else if(r2_select == 1)begin
 		bus <= r2;
 	end 
 	else if(r3_select == 1)begin
 		bus <= r3;
 	end 
 	else if(r4_select == 1)begin
 		bus <= r4;
 	end 
 	else if(r5_select == 1)begin
 		bus <= r5;
 	end 
 	else if(r6_select == 1)begin
 		bus <= r6;
 	end 
 	else if(r7_select == 1)begin
 		bus <= r7;
 	end
 	else bus <= 16'b0000000000000000; 
 end

endmodule