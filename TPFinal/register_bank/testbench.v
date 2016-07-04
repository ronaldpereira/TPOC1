`include "register_bank.v"

module testbench;

	reg clock = 0;
	reg enable = 0;
	reg [15:0] in;
	wire [15:0] out; // Registrador a ser escrito

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	register_bank rb(in, enable, clock, out);

	initial
	begin
		#0 enable = 1;
		#0 in = 45;
		#2 enable = 1;
		#0 in = 92;
		#2 enable = 0;
		#0 in = 5; // Nao podera escrever no out, pois o enable nao esta ativado
		#8 $finish;
	end

endmodule
