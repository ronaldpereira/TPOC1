`include "decoder.v"

module testbench;

	reg [2:0] register;
	wire [7:0] result;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	decoder d(register, result);

	initial
	begin
		#0 register = 2;
		#1 register = 5;
		#1 register = 4;
		#2 register = 7;
		#1 register = 0;
		#1 $finish;
	end

endmodule
