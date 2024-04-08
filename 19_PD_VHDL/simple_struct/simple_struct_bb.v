
module simple_struct (
	clk_clk,
	input0_input0,
	leds_leds,
	reset_reset_n,
	scl_in,
	scl_oe,
	sda_in,
	sda_oe,
	usart_rxd,
	usart_txd,
	indicator2_indicator2,
	indicator3_indicator3,
	segment_segment,
	enable_enable,
	indicator_indicator);	

	input		clk_clk;
	input		input0_input0;
	output	[3:0]	leds_leds;
	input		reset_reset_n;
	input		scl_in;
	output		scl_oe;
	input		sda_in;
	output		sda_oe;
	input		usart_rxd;
	output		usart_txd;
	input	[6:0]	indicator2_indicator2;
	input	[6:0]	indicator3_indicator3;
	output	[6:0]	segment_segment;
	input	[3:0]	enable_enable;
	output	[3:0]	indicator_indicator;
endmodule
