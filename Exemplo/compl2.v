module compl2(in, controle, out);

input [15:0] in;
input controle;
output reg [15:0] out;

always @(in or controle) begin
	if(controle == 1)
		out <= - in;
	else
		out <= in;
end

endmodule