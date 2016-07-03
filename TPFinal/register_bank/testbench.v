`include "register_bank.v"

module testbench;

	reg clock = 0;
	reg [7:0] enable;
	reg [2:0] reg_num;
	reg [15:0] in;
	wire [15:0] out; // Registrador a ser escrito

	always #1 clock = !clock;

	initial $dumpfile("testbench.vcd");
	initial $dumpvars(0, testbench);

	register_bank rb(clock, out, in, reg_num, enable);

	initial
	begin
		#1 enable = 8'b00000001; // Vetor de enable's passado pelo decoder
		#0 in = 256;
		#0 reg_num = 0;
		#3 enable = 8'b00010001; // Vetor de enable's passado pelo decoder
		#0 in = 35;
		#0 reg_num = 4;
		#0 in = 22;
		#0 reg_num = 5; // Nao podera escrever no out, pois o bit 5 do enable nao esta ativado
		#2 $finish;
	end

endmodule // testbench
