module complement(iin, enable, out);

input [15:0] iin;
input enable;
output reg [15:0] out;

always @(iin or enable)
begin
	if(enable == 1)
		out <= - iin;
	else
		out <= iin;
end

endmodule
