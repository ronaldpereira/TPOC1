`include "./complement/complement.v"
`include "./register_bank/register_bank.v"
`include "./alu/alu.v"
`include "./extensor/extensor.v"
`include "./counter/counter.v"
`include "./multiplexer/multiplexer.v"
`include "./decoder/decoder.v"
`include "./control_unit/control_unit.v"

module processor(clock, iin, resetn, OutputProcessor);

	input clock, resetn;
	input [15:0] iin;
	output reg [15:0] OutputProcessor;
	reg [8:0] in;
	wire [15:0] imediate;
	wire [1:0] cont;
	wire [15:0] out;
	wire [15:0] saida, bus;
	wire [15:0] r0, r1, r2, r3, r4, r5, r6, r7, r, a;
	wire r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
	wire r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable;
	wire opSelect, clear, negativo;

	always @(bus)
	begin
		OutputProcessor <= bus;
	end

	always @(iin)
	begin
		in <= iin[15:7];
	end

	complement comp(saida, negativo, bus);

	extensor ext(iin, imediate);

	counter contador(clock, clear, cont);

	control_unit ctrl(in, resetn, cont, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select, r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable, opSelect, clear, negativo);

	multiplexer mux(imediate, r0, r1, r2, r3, r4, r5, r6, r7, r, immediate_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, saida);

	alu alu(a, bus, opSelect, out);

	register_bank Register0(bus,r0_enable, clock, r0);
	register_bank Register1(bus,r1_enable, clock, r1);
	register_bank Register2(bus,r2_enable, clock, r2);
	register_bank Register3(bus,r3_enable, clock, r3);
	register_bank Register4(bus,r4_enable, clock, r4);
	register_bank Register5(bus,r5_enable, clock, r5);
	register_bank Register6(bus,r6_enable, clock, r6);
	register_bank Register7(bus,r7_enable, clock, r7);
	register_bank RegisterR(out,r_enable, clock, r);
	register_bank RegisterA(bus,a_enable, clock, a);

endmodule
