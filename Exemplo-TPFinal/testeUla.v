`include "ula.v"
module testeUla;
reg [15:0] f1,f2;
reg opSelect;
wire [15:0] bus;

initial $dumpfile("testeUla.vcd");
initial $dumpvars(0, testeUla);
ula u(f1, f2, opSelect, bus);

initial begin
	# 0 opSelect = 1'b1;
	# 0 f1 = 16'b0000000000000001;
	# 0 f2 = 16'b0000000000000001;
	# 8 opSelect = 1'b0;
	# 0 f1 = 16'bxxxxxxxxxxxxxxxx;
	# 0 f2 = 16'b1111111111111110;
	# 8 $finish;
end
endmodule
