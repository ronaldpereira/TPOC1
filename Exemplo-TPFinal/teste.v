`include "decodificador.v"
module teste;
reg [2:0] inn;
wire [7:0] out;
decodificador d(inn, out);

initial $dumpfile("teste.vcd");
initial $dumpvars(0, teste);


initial begin
	# 1 inn = 3'b000;
	# 1 inn = 3'b001;
	# 1 inn = 3'b010;
	# 1 inn = 3'b011;
	# 1 inn = 3'b100;
	# 1 inn = 3'b101;
	# 1 inn = 3'b110;
	# 1 inn = 3'b111;
	# 20 $finish;
end

endmodule