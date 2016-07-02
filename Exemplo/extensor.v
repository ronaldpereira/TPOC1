module extensor(inn, out);

input [15:0] inn;
output [15:0] out;

reg [2:0] in;
reg [9:0] imediat;
reg [15:0] out;

always @(inn) begin
	in = {inn[15], inn[14], inn[13]};
	imediat = {inn[9], inn[8], inn[7], inn[6], inn[5], inn[4], inn[3], inn[2], inn[1], inn[0]};
	if(imediat[9] == 1)
		out <= {6'b111111, imediat};
	else
		out <= {6'b000000, imediat};
end

endmodule
