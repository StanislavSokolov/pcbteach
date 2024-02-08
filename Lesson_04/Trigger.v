// Copyright (C) 2022  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Standard Edition"
// CREATED		"Thu Feb  8 13:39:10 2024"

module Trigger(
	CLK,
	C,
	D0,
	D1,
	D2,
	D3
);


input wire	CLK;
input wire	C;
output wire	D0;
output wire	D1;
output wire	D2;
output wire	D3;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_36;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;





D-TriggerWithRisingEdge	b2v_inst1(
	.D(SYNTHESIZED_WIRE_0),
	.C(SYNTHESIZED_WIRE_29),
	.Q(SYNTHESIZED_WIRE_33),
	.nQ(SYNTHESIZED_WIRE_0));

assign	SYNTHESIZED_WIRE_31 =  ~SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_11 = SYNTHESIZED_WIRE_31 & SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_31 & SYNTHESIZED_WIRE_6;

assign	SYNTHESIZED_WIRE_23 = SYNTHESIZED_WIRE_31 & SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_30 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;


D-TriggerWithRisingEdge	b2v_inst2(
	.D(SYNTHESIZED_WIRE_11),
	.C(SYNTHESIZED_WIRE_12),
	.Q(SYNTHESIZED_WIRE_36),
	.nQ(SYNTHESIZED_WIRE_4));

assign	SYNTHESIZED_WIRE_24 = SYNTHESIZED_WIRE_34 | SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_22 = SYNTHESIZED_WIRE_36 | SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_12 = SYNTHESIZED_WIRE_33 | SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_35 = SYNTHESIZED_WIRE_29 & SYNTHESIZED_WIRE_30;


D-TriggerWithRisingEdge	b2v_inst3(
	.D(SYNTHESIZED_WIRE_21),
	.C(SYNTHESIZED_WIRE_22),
	.Q(SYNTHESIZED_WIRE_34),
	.nQ(SYNTHESIZED_WIRE_6));


D-TriggerWithRisingEdge	b2v_inst4(
	.D(SYNTHESIZED_WIRE_23),
	.C(SYNTHESIZED_WIRE_24),
	.Q(SYNTHESIZED_WIRE_32),
	.nQ(SYNTHESIZED_WIRE_8));

assign	D3 =  ~SYNTHESIZED_WIRE_32;

assign	D2 =  ~SYNTHESIZED_WIRE_34;

assign	D1 =  ~SYNTHESIZED_WIRE_36;

assign	D0 =  ~SYNTHESIZED_WIRE_33;


debouncer	b2v_inst9(
	.btn_in(C),
	.clk(CLK),
	.btn_out(SYNTHESIZED_WIRE_29));


endmodule
