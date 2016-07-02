module bank (clock, clear, dataReadA, dataReadB, readRegA, readRegB, writeReg, readWrite, writeData); // Falta passar o register para o module pelo testbench

	input clock, clear;
	input [4:0] readRegA, readRegB, writeReg;
	input readWrite;
	input [31:0] writeData;
	reg [31:0] register[31:0];
	output reg [31:0] dataReadA, dataReadB;

	always @ (posedge clock)
	begin
		/* Declaracao dos registradores e seus respectivos valores hipoteticos */
		register[0] = 0*2;
		register[1] = 1*2;
		register[2] = 2*2;
		register[3] = 3*2;
		register[4] = 4*2;
		register[5] = 5*2;
		register[6] = 6*2;
		register[7] = 7*2;
		register[8] = 8*2;
		register[9] = 9*2;
		register[10] = 10*2;
		register[11] = 11*2;
		register[12] = 12*2;
		register[13] = 13*2;
		register[14] = 14*2;
		register[15] = 15*2;
		register[16] = 16*2;
		register[17] = 17*2;
		register[18] = 18*2;
		register[19] = 19*2;
		register[20] = 20*2;
		register[21] = 21*2;
		register[22] = 22*2;
		register[23] = 23*2;
		register[24] = 24*2;
		register[25] = 25*2;
		register[26] = 26*2;
		register[27] = 27*2;
		register[28] = 28*2;
		register[29] = 29*2;
		register[30] = 30*2;
		register[31] = 31*2;

		dataReadA = register[readRegA];
		dataReadB = register[readRegB];

		if (readWrite == 1)
			register[writeReg] = writeData;

		if (clear == 1)
		begin
			dataReadA = 0;
			dataReadB = 0;
		end
	end
endmodule // bank
