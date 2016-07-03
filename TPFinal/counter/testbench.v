`include "counter.v"

module testbench;

	reg clock = 0, resetn = 0;
	wire [1:0] contador;

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	counter c(clock, resetn, contador);

	initial
	begin
		#1 resetn = 1;
		#1 resetn = 0;
		#11 resetn = 1;
		#1 resetn = 0;
		#20 $finish;
	end

endmodule // testbench
