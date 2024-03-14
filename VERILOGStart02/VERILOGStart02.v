// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
// CREATED		"Thu Mar 14 15:48:22 2024"

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
