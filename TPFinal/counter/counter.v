module counter(clock, clear, out);

	input clock, clear;
	output reg [1:0] out = 0;

	always @ (posedge clock)
	begin
		if(clear == 0)
			out = out + 1'b1;
		else
			out = 2'b00;
	end

endmodule
