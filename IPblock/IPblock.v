module IPblock(
	clk,
	key1,
	key2,
	led1,
	led2,
	led3,
	buzz
);


input wire	clk;
input wire	key1;
input wire	key2;
output wire	led1;
output wire	led2;
output wire	led3;
output wire	buzz;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_13;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_19;

assign	SYNTHESIZED_WIRE_0 = 0;




AltPLL01	b2v_inst(
	.inclk0(clk),
	.areset(SYNTHESIZED_WIRE_0),
	.c0(SYNTHESIZED_WIRE_10)
	);


DTrigWRE	b2v_inst1(
	.D(SYNTHESIZED_WIRE_1),
	.C(SYNTHESIZED_WIRE_20),
	.Q(SYNTHESIZED_WIRE_7),
	.nQ(SYNTHESIZED_WIRE_1));


CountM1	b2v_inst10(
	.clock(SYNTHESIZED_WIRE_21),
	.cout(SYNTHESIZED_WIRE_19)
	);


DTrigWRE	b2v_inst11(
	.D(SYNTHESIZED_WIRE_4),
	.C(SYNTHESIZED_WIRE_21),
	.Q(led3),
	.nQ(SYNTHESIZED_WIRE_4));

assign	buzz = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;


DTrigWRE	b2v_inst14(
	.D(SYNTHESIZED_WIRE_8),
	.C(key1),
	.Q(SYNTHESIZED_WIRE_13),
	.nQ(SYNTHESIZED_WIRE_8));


DTrigWRE	b2v_inst15(
	.D(SYNTHESIZED_WIRE_9),
	.C(key2),
	.Q(SYNTHESIZED_WIRE_14),
	.nQ(SYNTHESIZED_WIRE_9));



CountM9	b2v_inst3(
	.clock(SYNTHESIZED_WIRE_10),
	.cout(SYNTHESIZED_WIRE_20)
	);


CountM9	b2v_inst4(
	.clock(SYNTHESIZED_WIRE_20),
	.cout(SYNTHESIZED_WIRE_12)
	);


CountM9	b2v_inst5(
	.clock(SYNTHESIZED_WIRE_12),
	.cout(SYNTHESIZED_WIRE_21)
	);


LogBlock	b2v_inst6(
	.clk(clk),
	.input0(SYNTHESIZED_WIRE_13),
	.input1(SYNTHESIZED_WIRE_14),
	.output0(SYNTHESIZED_WIRE_6));


DTrigWRE	b2v_inst7(
	.D(SYNTHESIZED_WIRE_15),
	.C(SYNTHESIZED_WIRE_16),
	.Q(led1),
	.nQ(SYNTHESIZED_WIRE_15));


CountM2	b2v_inst8(
	.clock(SYNTHESIZED_WIRE_21),
	.cout(SYNTHESIZED_WIRE_16)
	);


DTrigWRE	b2v_inst9(
	.D(SYNTHESIZED_WIRE_18),
	.C(SYNTHESIZED_WIRE_19),
	.Q(led2),
	.nQ(SYNTHESIZED_WIRE_18));


endmodule
