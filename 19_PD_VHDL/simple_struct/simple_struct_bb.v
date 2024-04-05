
module simple_struct (
	clk_clk,
	leds_leds,
	reset_reset_n,
	scl_in,
	scl_oe,
	usart_rxd,
	usart_txd,
	sda_in,
	sda_oe,
	input0_input0);	

	input		clk_clk;
	output	[3:0]	leds_leds;
	input		reset_reset_n;
	input		scl_in;
	output		scl_oe;
	input		usart_rxd;
	output		usart_txd;
	input		sda_in;
	output		sda_oe;
	input		input0_input0;
endmodule
