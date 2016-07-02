`include "control_unit.v"
`include "extensor.v"
`include "counter.v"
`include "alu.v"
`include "decoder.v"
`include "multiplexer.v"
`include "register_bank.v"

module processor(clock, iin, resetn, outputProcessor);

	input [15:0] iin;
	input clock, resetn;
	output reg [15:0] outputProcessor;
	wire [1:0] cont;
	reg [8:0] in;

	counter count(clock, resetn, cont);

	always @(cont == 0)
	begin
		in = {iin[15], iin[14], iin[13], iin[12], iin[11], iin[10], iin[9], iin[8], iin[7]};
		
	end

	always @(cont == 1)
	begin

	end

	always @(cont == 2)
	begin

	end

	always @(cont == 3)
	begin

	end

endmodule
