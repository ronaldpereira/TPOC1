module control_unit(iin, resetn, count, r0_select,
r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select, r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable, clear);

	input [8:0] iin;
	input [1:0] count;
	input resetn;
	reg [2:0] opSelect;
	reg [2:0] registera, registerb;
	wire [7:0] outRegisterA, outRegisterB, outEnable;
	output reg r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
	output reg r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable, clear;

endmodule
