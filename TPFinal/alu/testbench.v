`include "alu.v"

module testbench;

	reg clock = 0, clear = 0;
	reg [15:0] inputA, inputB;
	reg [1:0] opCode;
	wire [15:0] result;

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	alu c(result, opCode, inputA, inputB);

	initial
	begin
		#0 opCode = 2'b00; // 805 + 302 = 1107
		#0 inputA = 16'b0000001100100101;
		#0 inputB = 16'b0000000100101110;
		#1 inputA = 16'b0000001100100101;
		#0 inputB = 16'b0000000100101110;
		#0 opCode = 3'b01; // 805 - 302 = 503
		#1 inputA = 16'b0000000100101110;
		#0 inputB = 16'b0000000100101110; // Expected = 1111111011010001
		#0 opCode = 2'b10;
		#2 $finish;
	end

endmodule // testbench
