// simple_struct.v

// Generated using ACDS version 22.1 915

`timescale 1 ps / 1 ps
module simple_struct (
		input  wire       clk_clk,               //        clk.clk
		input  wire [3:0] enable_enable,         //     enable.enable
		output wire [3:0] indicator_indicator,   //  indicator.indicator
		input  wire [6:0] indicator2_indicator2, // indicator2.indicator2
		input  wire [6:0] indicator3_indicator3, // indicator3.indicator3
		input  wire       input0_input0,         //     input0.input0
		input  wire       input0_1_input0,       //   input0_1.input0
		output wire [3:0] leds_leds,             //       leds.leds
		input  wire       reset_reset_n,         //      reset.reset_n
		input  wire       scl_in,                //        scl.in
		output wire       scl_oe,                //           .oe
		input  wire       sda_in,                //        sda.in
		output wire       sda_oe,                //           .oe
		output wire [6:0] segment_segment,       //    segment.segment
		input  wire       usart_rxd,             //      usart.rxd
		output wire       usart_txd              //           .txd
	);

	wire         count250000_0_clkout_clk;           // Count250000_0:clkOut -> DataConversionUnit_0:update
	wire   [7:0] controller_0_datatoupdate_data;     // controller_0:dataToUpdate -> DataConversionUnit_0:data
	wire   [6:0] dataconversionunit_0_indic0_indic0; // DataConversionUnit_0:indicator0 -> DynamicIllumination4Indicators_0:indicator0
	wire   [6:0] dataconversionunit_0_indic1_indic1; // DataConversionUnit_0:indicator1 -> DynamicIllumination4Indicators_0:indicator1
	wire         digitalfilter_0_output0_key;        // DigitalFilter_0:output0 -> controller_0:key1
	wire         digitalfilter_1_output0_key;        // DigitalFilter_1:output0 -> controller_0:key2
	wire   [7:0] i2c_transcever_0_port_data_rd;      // i2c_transcever_0:data_rd -> controller_0:i2c_data_rd
	wire         controller_0_i2c_port_rw;           // controller_0:i2c_rw -> i2c_transcever_0:rw
	wire   [7:0] controller_0_i2c_port_data_wr;      // controller_0:i2c_data_wr -> i2c_transcever_0:data_wr
	wire         i2c_transcever_0_port_busy;         // i2c_transcever_0:busy -> controller_0:i2c_busy
	wire         controller_0_i2c_port_ena;          // controller_0:i2c_ena -> i2c_transcever_0:ena
	wire   [6:0] controller_0_i2c_port_addr;         // controller_0:i2c_addr -> i2c_transcever_0:addr
	wire         controller_0_i2c_port_ack_error;    // [] -> [controller_0:i2c_ack_error, i2c_transcever_0:ack_error]
	wire  [15:0] usart_0_usart_port_rx_data;         // usart_0:rx_data -> controller_0:uart_rx_data
	wire         usart_0_usart_port_rx_busy;         // usart_0:rx_busy -> controller_0:uart_rx_busy
	wire  [15:0] controller_0_uart_port_tx_data;     // controller_0:uart_tx_data -> usart_0:tx_data
	wire         controller_0_uart_port_tx_dv;       // controller_0:uart_tx_dv -> usart_0:tx_dv
	wire         usart_0_usart_port_rx_ready;        // usart_0:rx_dv -> controller_0:uart_rx_ready
	wire         usart_0_usart_port_tx_ready;        // usart_0:tx_ready -> controller_0:uart_tx_ready
	wire         rst_controller_reset_out_reset;     // rst_controller:reset_out -> [controller_0:en, i2c_transcever_0:reset_n, usart_0:en]

	Count250000 count250000_0 (
		.clkIn  (clk_clk),                  //  clkIn.clk
		.clkOut (count250000_0_clkout_clk)  // clkOut.clk
	);

	DataConversionUnit dataconversionunit_0 (
		.clk        (clk_clk),                            //  clock.clk
		.data       (controller_0_datatoupdate_data),     //   data.data
		.indicator0 (dataconversionunit_0_indic0_indic0), // indic0.indic0
		.indicator1 (dataconversionunit_0_indic1_indic1), // indic1.indic1
		.update     (count250000_0_clkout_clk)            // update.clk
	);

	DigitalFilter #(
		.PHASE_SHIFT (200)
	) digitalfilter_0 (
		.clk     (clk_clk),                     //   clock.clk
		.output0 (digitalfilter_0_output0_key), // output0.key
		.input0  (input0_input0)                //  input0.input0
	);

	DigitalFilter #(
		.PHASE_SHIFT (2000)
	) digitalfilter_1 (
		.clk     (clk_clk),                     //   clock.clk
		.output0 (digitalfilter_1_output0_key), // output0.key
		.input0  (input0_1_input0)              //  input0.input0
	);

	DynamicIllumination4Indicators dynamicillumination4indicators_0 (
		.indicator  (indicator_indicator),                //  indicator.indicator
		.enable     (enable_enable),                      //     enable.enable
		.indicator0 (dataconversionunit_0_indic0_indic0), // indicator0.indic0
		.indicator1 (dataconversionunit_0_indic1_indic1), // indicator1.indic1
		.indicator2 (indicator2_indicator2),              // indicator2.indicator2
		.indicator3 (indicator3_indicator3),              // indicator3.indicator3
		.segment    (segment_segment),                    //    segment.segment
		.clk        (clk_clk)                             //        clk.clk
	);

	controller controller_0 (
		.clk           (clk_clk),                         //        clock.clk
		.en            (~rst_controller_reset_out_reset), //      reset_n.reset_n
		.uart_rx_busy  (usart_0_usart_port_rx_busy),      //    uart_port.rx_busy
		.uart_rx_data  (usart_0_usart_port_rx_data),      //             .rx_data
		.uart_rx_ready (usart_0_usart_port_rx_ready),     //             .rx_ready
		.uart_tx_data  (controller_0_uart_port_tx_data),  //             .tx_data
		.uart_tx_dv    (controller_0_uart_port_tx_dv),    //             .tx_dv
		.uart_tx_ready (usart_0_usart_port_tx_ready),     //             .tx_ready
		.i2c_ack_error (controller_0_i2c_port_ack_error), //     i2c_port.ack_error
		.i2c_addr      (controller_0_i2c_port_addr),      //             .addr
		.i2c_busy      (i2c_transcever_0_port_busy),      //             .busy
		.i2c_data_rd   (i2c_transcever_0_port_data_rd),   //             .data_rd
		.i2c_data_wr   (controller_0_i2c_port_data_wr),   //             .data_wr
		.i2c_ena       (controller_0_i2c_port_ena),       //             .ena
		.i2c_rw        (controller_0_i2c_port_rw),        //             .rw
		.leds          (leds_leds),                       //         leds.leds
		.dataToUpdate  (controller_0_datatoupdate_data),  // dataToUpdate.data
		.key1          (digitalfilter_0_output0_key),     //         key1.key
		.key2          (digitalfilter_1_output0_key)      //         key2.key
	);

	i2c_master #(
		.input_clk (50000000),
		.bus_clk   (100000)
	) i2c_transcever_0 (
		.clk       (clk_clk),                         // clock.clk
		.reset_n   (~rst_controller_reset_out_reset), // reset.reset_n
		.ena       (controller_0_i2c_port_ena),       //  port.ena
		.addr      (controller_0_i2c_port_addr),      //      .addr
		.rw        (controller_0_i2c_port_rw),        //      .rw
		.data_wr   (controller_0_i2c_port_data_wr),   //      .data_wr
		.busy      (i2c_transcever_0_port_busy),      //      .busy
		.data_rd   (i2c_transcever_0_port_data_rd),   //      .data_rd
		.ack_error (controller_0_i2c_port_ack_error), //      .ack_error
		.scl_in    (scl_in),                          //   SCL.in
		.scl_oe    (scl_oe),                          //      .oe
		.sda_in    (sda_in),                          //   SDA.in
		.sda_oe    (sda_oe)                           //      .oe
	);

	usart #(
		.CLK_FREQ_HZ (50000000),
		.BAUD_RATE   (9600),
		.DATA_BITS   (8),
		.PARITY      (0),
		.STOP_BITS   (1)
	) usart_0 (
		.clk      (clk_clk),                         //      clock.clk
		.rx       (usart_rxd),                       //        ser.rxd
		.tx       (usart_txd),                       //           .txd
		.tx_data  (controller_0_uart_port_tx_data),  // usart_port.tx_data
		.rx_data  (usart_0_usart_port_rx_data),      //           .rx_data
		.tx_dv    (controller_0_uart_port_tx_dv),    //           .tx_dv
		.rx_dv    (usart_0_usart_port_rx_ready),     //           .rx_ready
		.rx_busy  (usart_0_usart_port_rx_busy),      //           .rx_busy
		.tx_ready (usart_0_usart_port_tx_ready),     //           .tx_ready
		.en       (~rst_controller_reset_out_reset)  //      reset.reset_n
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
