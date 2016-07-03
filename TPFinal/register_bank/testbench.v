`include "register_bank.v"

module testbench;

	reg clock = 0;
	reg [7:0] enable = 0;
	reg enable_a = 0, enable_r = 0;
	reg [2:0] reg_num;
	reg [15:0] in;
	wire [15:0] out; // Registrador a ser escrito

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	register_bank rb(clock, out, in, reg_num, enable, enable_a, enable_r);

	initial
	begin
		#0 enable_a = 1;
		#0 in = 45;
		#2 enable_a = 0;
		#0 enable_r = 1;
		#0 in = 92;
		#2 enable_r = 0;
		#3 enable = 8'b00000001; // Vetor de enable's passado pelo decoder
		#0 in = 256;
		#0 reg_num = 0;
		#3 enable = 8'b00010001; // Vetor de enable's passado pelo decoder
		#0 in = 35;
		#0 reg_num = 4;
		#2 in = 22;
		#0 reg_num = 5; // Nao podera escrever no out, pois o bit 5 do enable nao esta ativado
		#8 $finish;
	end

endmodule // testbench
