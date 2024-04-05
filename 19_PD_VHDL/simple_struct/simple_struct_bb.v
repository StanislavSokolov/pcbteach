
module simple_struct (
	clk_clk,
	leds_leds,
	reset_reset_n,
	scl_in,
	scl_oe,
	sda_in,
	sda_oe,
	usart_rxd,
	usart_txd);	

	input		clk_clk;
	output	[3:0]	leds_leds;
	input		reset_reset_n;
	input		scl_in;
	output		scl_oe;
	input		sda_in;
	output		sda_oe;
	input		usart_rxd;
	output		usart_txd;
endmodule
