`include "decodificador.v"
module unidade_countrole
(
in,
resetn,
count,
r0_select,
r1_select,
r2_select,
r3_select,
r4_select,
r5_select,
r6_select,
r7_select,
r_select,
immediate_select,
r0_enable,
r1_enable,
r2_enable,
r3_enable,
r4_enable,
r5_enable,
r6_enable,
r7_enable,
a_enable,
r_enable,
opSelect,
clear,
negativo
);

input [8:0] in;
input [1:0] count;
input resetn;
output reg r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
output reg r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable, clear;
output reg opSelect, negativo;
reg [2:0] operation;
reg [2:0] registera, registerb;
reg [1:0] status;
reg saida, negar;
wire [7:0] outRegistera, outRegisterb, outEnableRegister;

decodificador d1(registera, outRegistera);
decodificador d2(registerb, outRegisterb);
decodificador d3(registera, outEnableRegister);


always @(posedge resetn) begin
	if(resetn == 1)
		clear <= 1;
	else
		clear <= 0;
end

always @(in or count) begin
	operation = {in[8], in[7], in[6]};
	registera = {in[5], in[4], in[3]};
	registerb = {in[2], in[1], in[0]};
	clear <= 0;
	case (count)
			2'b00:begin// clk 1
				//clear = 0;
				r_select <= 0;
				r0_enable <= 0;
				r1_enable <= 0;
				r2_enable <= 0;
				r3_enable <= 0;
				r4_enable <= 0;
				r5_enable <= 0;
				r6_enable <= 0;
				r7_enable <= 0;
				if(operation == 3'b111) begin
						opSelect <= 1; //REP
						status <= 2'b01;
						negar <= 0;
						saida <= 0;
				end
				else if(operation == 3'b101) begin
						opSelect <= 1; //LDI
						status <= 2'b11;
						negar <= 0;
						saida <= 0;
				end
				else if(operation == 3'b000) begin
					opSelect <= 1;// Somar
					status <= 2'b00;
					negar <= 0;
					saida <= 0;
				end
				else if(operation == 3'b001) begin
						opSelect <= 1;// Subtrair
						status <= 2'b00;
						negar <= 1;
						saida <= 0;
				end
				else if(operation == 3'b010) begin
						opSelect <= 0; //NAN
						status <= 2'b00;
						negar <= 0;
						saida <= 0;
				end
				else if(operation == 3'b100) begin
						opSelect <= 1; //OUT
						status <= 2'b01;
						negar <= 0;
						saida <= 1;
				end

			end
			2'b01:begin// clk 2
				a_enable <= 1;
				if(status == 2'b00 || status == 2'b10 && saida == 1) begin
					immediate_select <= 0;
					r_select <= 0;
					r0_select <= outRegistera[7];
					r1_select <= outRegistera[6];
					r2_select <= outRegistera[5];
					r3_select <= outRegistera[4];
					r4_select <= outRegistera[3];
					r5_select <= outRegistera[2];
					r6_select <= outRegistera[1];
					r7_select <= outRegistera[0];
				end else if(status == 2'b01 || 2'b11) begin
					immediate_select <= 0;
					r_select <= 0;
					r0_select <= 0;
					r1_select <= 0;
					r2_select <= 0;
					r3_select <= 0;
					r4_select <= 0;
					r5_select <= 0;
					r6_select <= 0;
					r7_select <= 0;
				end
			end
			2'b10:begin// clk 3
				a_enable <= 0;
				r_enable <= 1;
				if(status != 2'b11) begin
					immediate_select <= 0;
					r_select <= 0;
					r0_select <= outRegisterb[7];
					r1_select <= outRegisterb[6];
					r2_select <= outRegisterb[5];
					r3_select <= outRegisterb[4];
					r4_select <= outRegisterb[3];
					r5_select <= outRegisterb[2];
					r6_select <= outRegisterb[1];
					r7_select <= outRegisterb[0];
				end
				else begin
					immediate_select <= 1;
					r_select <= 0;
				end

				if(negar == 1)begin
					negativo <= 1;
				end
			end
			2'b11:begin// clk 4
				negativo <= 0;
				r_enable <= 0;
				immediate_select <= 0;
				r_select <= 1;
				status = 2'bxx;
				r0_enable = outEnableRegister[7];
				r1_enable = outEnableRegister[6];
				r2_enable = outEnableRegister[5];
				r3_enable = outEnableRegister[4];
				r4_enable = outEnableRegister[3];
				r5_enable = outEnableRegister[2];
				r6_enable = outEnableRegister[1];
				r7_enable = outEnableRegister[0];
			end
		endcase
end
endmodule
