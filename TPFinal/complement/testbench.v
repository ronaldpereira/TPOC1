`include "complement.v"

module testbench;

	reg [15:0] iin;
	reg enable;
	wire [15:0] out;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);
	complement comp(iin, enable, out);

	initial begin
		# 8 enable = 1;
		# 0 iin = 16'b0000000000000001;
		# 8 enable = 1;
		# 0 iin = 16'b0000000000000011;
		# 8 enable = 1;
		# 0 iin = 16'b1111111111111110;
		# 8 $finish;
	end

endmodule
