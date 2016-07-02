module contador(clk, clear, out);

input clear, clk;
output [1:0] out;
reg [1:0] out = 0;

always @(negedge clk) begin
	if(clear == 0) out = out + 1'b1;
	else out  = 2'b00;
end

endmodule
