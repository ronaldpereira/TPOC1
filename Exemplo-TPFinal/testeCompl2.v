`include "compl2.v"
module testeCompl2;
reg [15:0] in;
reg controle;
wire [15:0] bus;

initial $dumpfile("testeCompl2.vcd");
initial $dumpvars(0, testeCompl2);
compl2 c2(in, controle, bus);

initial begin
	# 8 controle = 1;
	# 0 in = 16'b0000000000000001;
	# 8 controle = 1;
	# 0 in = 16'b0000000000000011;
	# 8 controle = 1;
	# 0 in = 16'b1111111111111110;
	# 8 $finish;
end
endmodule
