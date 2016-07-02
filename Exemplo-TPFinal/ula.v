module ula(f1, f2, opSelect, out);

input [15:0] f1, f2;
output [15:0] out;
input opSelect;
reg [15:0] out;

always @(opSelect or f1 or f2) begin

	if(opSelect == 1) begin
		out = f1 + f2;
	end else 
	if(opSelect == 0) begin
		out = f1 ~& f2;
	end
	
end

endmodule
