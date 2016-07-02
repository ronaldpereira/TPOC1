`include "counter.v"
module testbench;
	reg clock = 0;
	reg clear = 0;
	wire [1:0] out;

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	counter c(clock, clear, out);

	initial begin
		// These events must be in chronological order
		# 5 clear = 1;
		# 1 clear = 0;
		# 20 $finish;
	end
endmodule // testbench
