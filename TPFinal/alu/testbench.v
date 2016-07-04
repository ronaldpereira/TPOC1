`include "alu.v"
module testbench;

	reg [15:0] a,b;
	reg opSelect;
	wire [15:0] bus;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);
	alu alu(a, b, opSelect, bus);

	initial begin
		# 0 opSelect = 1'b1;
		# 0 a = 16'b0000000000000001;
		# 0 b = 16'b0000000000000001;
		# 8 opSelect = 1'b0;
		# 0 a = 16'bxxxxxxxxxxxxxxxx;
		# 0 b = 16'b1111111111111110;
		# 8 $finish;
	end
	
endmodule
