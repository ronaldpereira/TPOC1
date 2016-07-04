`include "./complement/complement.v"
`include "./register_bank/register_bank.v"
`include "./alu/alu.v"
`include "./extensor/extensor.v"
`include "./counter/counter.v"
`include "./multiplexer/multiplexer.v"
`include "./decoder/decoder.v"
`include "./control_unit/control_unit.v"

module processor(clk, iin, resetn, outProcessador);
input clk, resetn;
input [15:0] iin;
output reg [15:0] outProcessador;
wire [15:0] imediat;
wire [1:0] cont;
reg [8:0] iin9;
wire r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
wire r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable;
wire opSelect, clear, negativo;
wire [15:0] bus1, bus;
wire [15:0] out;
wire [15:0] r0, r1, r2, r3, r4, r5, r6, r7, r, a;

always @(bus)
begin
	outProcessador <= bus;
end

always @(iin)
begin
	iin9 <= iin[15:7];
end

complement comp(bus1, negativo, bus);

extensor ext(iin, imediat);

counter contador(clk, clear, cont);

control_unit ctrl(
iin9,
resetn,
cont,
r0_select,
r1_select,
r2_select,
r3_select,
r4_select,
r5_select,
r6_select,
r7_select,
r_select,
immediate_select,
r0_enable,
r1_enable,
r2_enable,
r3_enable,
r4_enable,
r5_enable,
r6_enable,
r7_enable,
a_enable,
r_enable,
opSelect,
clear,
negativo
);

multiplexer mux(
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
	immediate_select,
	r0_select,
	r1_select,
	r2_select,
	r3_select,
	r4_select,
	r5_select,
	r6_select,
	r7_select,
	r_select,
	bus1);

alu alu(a, bus, opSelect, out);
register_bank Rr0(bus,r0_enable, clk, r0);
register_bank Rr1(bus,r1_enable, clk, r1);
register_bank Rr2(bus,r2_enable, clk, r2);
register_bank Rr3(bus,r3_enable, clk, r3);
register_bank Rr4(bus,r4_enable, clk, r4);
register_bank Rr5(bus,r5_enable, clk, r5);
register_bank Rr6(bus,r6_enable, clk, r6);
register_bank Rr7(bus,r7_enable, clk, r7);
register_bank Rr(out,r_enable, clk, r);
register_bank Ra(bus,a_enable, clk, a);

endmodule
