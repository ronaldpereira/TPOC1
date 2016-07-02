`include "compl2.v"
`include "register.v"
`include "ula.v"
`include "extensor.v"
`include "contador.v"
`include "mult.v"
`include "unidade_controle.v"

module processador(clk, iin, resetn, outProcessador);
input clk, resetn;
input [15:0] iin;
output reg [15:0] outProcessador;

// extensor de sinal
//reg [15:0] iin;
wire [15:0] imediat;

// contador
//reg clk, clear;
wire [1:0] cont;

//unidade de controle
reg [8:0] iin9;
//reg [1:0] cont;
wire r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select, immediate_select;
wire r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable;
wire opSelect, clear, negativo;

//multiplexador
//reg [15:0] imediat, r0, r1, r2, r3, r4, r5, r6, r7, r;
//reg imediat_select, r0_select, r1_select, r2_select, r3_select, r4_select, r5_select, r6_select, r7_select, r_select;
wire [15:0] bus1, bus;

//ula
//reg [15:0] bus, a;
//reg opSelect;
wire [15:0] out;

//registrador
//reg r0_enable, r1_enable, r2_enable, r3_enable, r4_enable, r5_enable, r6_enable, r7_enable, a_enable, r_enable;
wire [15:0] r0, r1, r2, r3, r4, r5, r6, r7, r, a;


always @(bus) begin 
	outProcessador <= bus;
end

always @(iin)begin
	iin9 <= {iin[15], iin[14],iin[13], iin[12], iin[11], iin[10],iin[9], iin[8], iin[7]};
end

compl2 c2(bus1, negativo, bus);

extensor ext (iin, imediat);

contador contad(clk, clear, cont);

unidade_controle uc(
iin9, 
resetn,
cont,
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

mult m(
	imediat, 
	r0,
	r1,
	r2,
	r3,
	r4,
	r5,
	r6,
	r7,
	r,
	immediate_select, 
	r0_select,
	r1_select,
	r2_select,
	r3_select,
	r4_select,
	r5_select,
	r6_select,
	r7_select,
	r_select,
	bus1);

ula u(a, bus, opSelect, out);
register Rr0(bus,r0_enable, clk, r0);
register Rr1(bus,r1_enable, clk, r1);
register Rr2(bus,r2_enable, clk, r2);
register Rr3(bus,r3_enable, clk, r3);
register Rr4(bus,r4_enable, clk, r4);
register Rr5(bus,r5_enable, clk, r5);
register Rr6(bus,r6_enable, clk, r6);
register Rr7(bus,r7_enable, clk, r7);
register Rr(out,r_enable, clk, r);
register Ra(bus,a_enable, clk, a);

endmodule