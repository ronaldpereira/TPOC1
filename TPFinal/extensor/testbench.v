`include "extensor.v"

module testbench;

	reg [15:0] in;
	wire [15:0] out;
	wire [9:0] imediate;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	extensor e(in, out);

	initial
	begin
		#0 in = 16'b1010000000011100;
		#2 in = 16'b1010010000001010;
		#2 in = 16'b0010000010000000;
		#2 in = 16'b1000000000000000;
		#2 $finish;
	end

endmodule
