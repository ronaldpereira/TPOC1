module alu(clock, clear, result, zero, inputA, inputB, opCode);

	input clock, clear;
	input [31:0] inputA, inputB;
	input [2:0] opCode;
	output reg zero;
	output reg [31:0] result;

	always @ (posedge clock)
	begin
		case (opCode)
			3'b000: result = inputA+inputB; // Add operation
			3'b001: result = inputA-inputB; // Sub operation
			3'b010: result = inputA&inputB; // AND operation
			3'b011: result = inputA|inputB; // OR operation
			3'b100: result = inputA^inputB; // XOR operation
			default: result = 0;
		endcase

		if (result == 0)
			zero = 1;

		else
			zero = 0;

		if(clear == 1)
		begin
			result = 0;
			zero = 1;
		end
	end

endmodule // alu
