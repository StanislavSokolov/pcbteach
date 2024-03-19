module VERILOGStart02(
	clk,
	button,
	en,
	seg
);


input wire	clk;
input wire	button;
output wire	[3:0] en;
output wire	[6:0] seg;

wire	[3:0] en_ALTERA_SYNTHESIZED;
wire	[3:0] SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;





dc7	b2v_inst(
	.d(SYNTHESIZED_WIRE_0),
	.q(seg));



countMod9	b2v_inst5(
	.clk(clk),
	.button(SYNTHESIZED_WIRE_1),
	.count(SYNTHESIZED_WIRE_0));



filter30	b2v_inst7(
	.d(button),
	.clk(clk),
	.q(SYNTHESIZED_WIRE_1));

assign	en = en_ALTERA_SYNTHESIZED;
assign	en_ALTERA_SYNTHESIZED[1] = 1;
assign	en_ALTERA_SYNTHESIZED[2] = 1;
assign	en_ALTERA_SYNTHESIZED[3] = 1;
assign	en_ALTERA_SYNTHESIZED[0] = 0;

endmodule
