`include "./control_unit/control_unit.v"
`include "./extensor/extensor.v"
`include "./counter/counter.v"
`include "./alu/alu.v"
`include "./decoder/decoder.v"
`include "./multiplexer/multiplexer.v"
`include "./register_bank/register_bank.v"

module processor(clock, iin, resetn, outputProcessor);

	input [15:0] iin;
	input clock, resetn;
	output reg [15:0] outputProcessor;
	wire [1:0] cont;
	wire [15:0] imediate;
	wire [0:7] reg_enable;
	reg [2:0] register;
	reg [8:0] in;

	counter count(clock, resetn, cont);

	always @(cont == 0)
	begin
		in = iin[15:7];
	end

	extensor ext(iin, imediate);
	control_unit c(in, resetn, cont, imediate);

	always @(cont == 1)
	begin
		register = iin[12:10];
	end

	decoder d(reg_enable, register);

	always @(cont == 2)
	begin

	end

	always @(cont == 3)
	begin

	end

endmodule
