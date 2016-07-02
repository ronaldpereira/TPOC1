`include "bank.v"

module testbench;

	reg clock = 0, clear = 0;
	reg [4:0] readRegA, readRegB, writeReg;
	reg readWrite;
	reg [31:0] writeData;
	wire [31:0] dataReadA, dataReadB;

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	bank c(clock, clear, dataReadA, dataReadB, readRegA, readRegB, writeReg, readWrite, writeData);

	initial
	begin
		#1 clear = 1;
		#1 clear = 0;
		#1 readRegA = 4;
		#1 readRegB = 7;
		#1 readWrite = 1;
		#0 writeData = 22;
		#0 writeReg = 20;
		#1 readWrite = 0;
		#5 clear = 1;
		#5 $finish;
	end

endmodule // testbench
