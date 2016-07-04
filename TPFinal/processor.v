`include "./complement/complement.v"
`include "./register_bank/register_bank.v"
`include "./alu/alu.v"
`include "./extensor/extensor.v"
`include "./counter/counter.v"
`include "./multiplexer/multiplexer.v"
`include "./decoder/decoder.v"
`include "./control_unit/control_unit.v"

module processor(clock, iin, resetn, outputProcessor);

	input [15:0] iin;
	input clock, resetn;
	output reg [15:0] outputProcessor;
	wire [1:0] cont;
	wire [15:0] imediate;
	wire r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
	wire r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable;
	wire OperationSelect, clear, negativo;
	wire [15:0] saida, bus, out;
	wire [15:0] r0, r1, r2, r3, r4, r5, r6, r7, r, a;
	reg [8:0] in;

	always @ (bus)
	begin
		outputProcessor <= bus;
	end

	always @ (iin)
	begin
		in <= iin[15:7];
	end

	complement comp(saida, negativo, bus);

	extensor ext(iin, imediate);

	counter count(clock, resetn, cont);

	control_unit ctrl(in, resetn, cont, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select, r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable, OperationSelect, clear, negativo);

	multiplexer mux(saida, imediate, imediate_select, r, r_select, r0, r0_select, r1, r1_select, r2, r2_select, r3, r3_select, r4, r4_select, r5, r5_select, r6, r6_select, r7, r7_select);

	alu alu(a, bus, OperationSelect, out);
	register_bank R0(bus, r0_enable, clock, r0);
	register_bank R1(bus, r1_enable, clock, r1);
	register_bank R2(bus, r2_enable, clock, r2);
	register_bank R3(bus, r3_enable, clock, r3);
	register_bank R4(bus, r4_enable, clock, r4);
	register_bank R5(bus, r5_enable, clock, r5);
	register_bank R6(bus, r6_enable, clock, r6);
	register_bank R7(bus, r7_enable, clock, r7);
	register_bank Rr(bus, r_enable, clock, r);
	register_bank Ra(bus, a_enable, clock, a);

endmodule
