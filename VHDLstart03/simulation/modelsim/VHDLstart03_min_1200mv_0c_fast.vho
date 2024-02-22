-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "02/22/2024 14:35:04"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VHDLstart03 IS
    PORT (
	led : OUT std_logic;
	clk : IN std_logic;
	rx : IN std_logic;
	indicator : OUT std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0)
	);
END VHDLstart03;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[6]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[5]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[2]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[0]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VHDLstart03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL ww_indicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|clkCounter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clkOutBuf~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \indicator[3]~output_o\ : std_logic;
SIGNAL \indicator[2]~output_o\ : std_logic;
SIGNAL \indicator[1]~output_o\ : std_logic;
SIGNAL \indicator[0]~output_o\ : std_logic;
SIGNAL \segment[6]~output_o\ : std_logic;
SIGNAL \segment[5]~output_o\ : std_logic;
SIGNAL \segment[4]~output_o\ : std_logic;
SIGNAL \segment[3]~output_o\ : std_logic;
SIGNAL \segment[2]~output_o\ : std_logic;
SIGNAL \segment[1]~output_o\ : std_logic;
SIGNAL \segment[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6|ledBuf~0_combout\ : std_logic;
SIGNAL \inst6|stateUART.Updating~q\ : std_logic;
SIGNAL \inst6|count[0]~16_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \inst5|latch~feeder_combout\ : std_logic;
SIGNAL \inst5|latch~q\ : std_logic;
SIGNAL \inst5|count~1_combout\ : std_logic;
SIGNAL \inst5|count~2_combout\ : std_logic;
SIGNAL \inst5|output~0_combout\ : std_logic;
SIGNAL \inst5|output~2_combout\ : std_logic;
SIGNAL \inst5|count~0_combout\ : std_logic;
SIGNAL \inst5|output~1_combout\ : std_logic;
SIGNAL \inst5|output~q\ : std_logic;
SIGNAL \inst6|rxPrev~0_combout\ : std_logic;
SIGNAL \inst6|rxPrev~q\ : std_logic;
SIGNAL \inst6|LessThan1~0_combout\ : std_logic;
SIGNAL \inst6|LessThan1~1_combout\ : std_logic;
SIGNAL \inst6|LessThan1~3_combout\ : std_logic;
SIGNAL \inst6|Selector3~4_combout\ : std_logic;
SIGNAL \inst6|LessThan0~0_combout\ : std_logic;
SIGNAL \inst6|LessThan0~1_combout\ : std_logic;
SIGNAL \inst6|LessThan0~2_combout\ : std_logic;
SIGNAL \inst6|count~14_combout\ : std_logic;
SIGNAL \inst6|count~15_combout\ : std_logic;
SIGNAL \inst6|Selector1~0_combout\ : std_logic;
SIGNAL \inst6|stateUART.Starting~q\ : std_logic;
SIGNAL \inst6|bitPosition[0]~0_combout\ : std_logic;
SIGNAL \inst6|bitPosition[1]~1_combout\ : std_logic;
SIGNAL \inst6|Selector0~2_combout\ : std_logic;
SIGNAL \inst6|Selector0~3_combout\ : std_logic;
SIGNAL \inst6|Selector0~4_combout\ : std_logic;
SIGNAL \inst6|Selector0~5_combout\ : std_logic;
SIGNAL \inst6|Selector0~6_combout\ : std_logic;
SIGNAL \inst6|stateUART.Waiting~q\ : std_logic;
SIGNAL \inst6|Selector0~1_combout\ : std_logic;
SIGNAL \inst6|count~13_combout\ : std_logic;
SIGNAL \inst6|Selector2~0_combout\ : std_logic;
SIGNAL \inst6|stateUART.ReceivingData~q\ : std_logic;
SIGNAL \inst6|count[6]~26_combout\ : std_logic;
SIGNAL \inst6|count[6]~27_combout\ : std_logic;
SIGNAL \inst6|count[6]~28_combout\ : std_logic;
SIGNAL \inst6|count[0]~17\ : std_logic;
SIGNAL \inst6|count[1]~18_combout\ : std_logic;
SIGNAL \inst6|count[1]~19\ : std_logic;
SIGNAL \inst6|count[2]~20_combout\ : std_logic;
SIGNAL \inst6|count[2]~21\ : std_logic;
SIGNAL \inst6|count[3]~22_combout\ : std_logic;
SIGNAL \inst6|count[3]~23\ : std_logic;
SIGNAL \inst6|count[4]~24_combout\ : std_logic;
SIGNAL \inst6|count[4]~25\ : std_logic;
SIGNAL \inst6|count[5]~29_combout\ : std_logic;
SIGNAL \inst6|count[5]~30\ : std_logic;
SIGNAL \inst6|count[6]~31_combout\ : std_logic;
SIGNAL \inst6|count[6]~32\ : std_logic;
SIGNAL \inst6|count[7]~33_combout\ : std_logic;
SIGNAL \inst6|count[7]~34\ : std_logic;
SIGNAL \inst6|count[8]~35_combout\ : std_logic;
SIGNAL \inst6|count[8]~36\ : std_logic;
SIGNAL \inst6|count[9]~37_combout\ : std_logic;
SIGNAL \inst6|count[9]~38\ : std_logic;
SIGNAL \inst6|count[10]~39_combout\ : std_logic;
SIGNAL \inst6|count[10]~40\ : std_logic;
SIGNAL \inst6|count[11]~41_combout\ : std_logic;
SIGNAL \inst6|count[11]~42\ : std_logic;
SIGNAL \inst6|count[12]~43_combout\ : std_logic;
SIGNAL \inst6|LessThan1~2_combout\ : std_logic;
SIGNAL \inst6|Selector3~2_combout\ : std_logic;
SIGNAL \inst6|bitPosition[2]~2_combout\ : std_logic;
SIGNAL \inst6|Selector3~3_combout\ : std_logic;
SIGNAL \inst6|Selector3~5_combout\ : std_logic;
SIGNAL \inst6|stateUART.Stopping~q\ : std_logic;
SIGNAL \inst6|ledBuf~q\ : std_logic;
SIGNAL \inst|clkCounter[0]~17_combout\ : std_logic;
SIGNAL \inst|clkCounter[15]~48\ : std_logic;
SIGNAL \inst|clkCounter[16]~49_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clkCounter[0]~18\ : std_logic;
SIGNAL \inst|clkCounter[1]~19_combout\ : std_logic;
SIGNAL \inst|clkCounter[1]~20\ : std_logic;
SIGNAL \inst|clkCounter[2]~21_combout\ : std_logic;
SIGNAL \inst|clkCounter[2]~22\ : std_logic;
SIGNAL \inst|clkCounter[3]~23_combout\ : std_logic;
SIGNAL \inst|clkCounter[3]~24\ : std_logic;
SIGNAL \inst|clkCounter[4]~25_combout\ : std_logic;
SIGNAL \inst|clkCounter[4]~26\ : std_logic;
SIGNAL \inst|clkCounter[5]~27_combout\ : std_logic;
SIGNAL \inst|clkCounter[5]~28\ : std_logic;
SIGNAL \inst|clkCounter[6]~29_combout\ : std_logic;
SIGNAL \inst|clkCounter[6]~30\ : std_logic;
SIGNAL \inst|clkCounter[7]~31_combout\ : std_logic;
SIGNAL \inst|clkCounter[7]~32\ : std_logic;
SIGNAL \inst|clkCounter[8]~33_combout\ : std_logic;
SIGNAL \inst|clkCounter[8]~34\ : std_logic;
SIGNAL \inst|clkCounter[9]~35_combout\ : std_logic;
SIGNAL \inst|clkCounter[9]~36\ : std_logic;
SIGNAL \inst|clkCounter[10]~37_combout\ : std_logic;
SIGNAL \inst|clkCounter[10]~38\ : std_logic;
SIGNAL \inst|clkCounter[11]~39_combout\ : std_logic;
SIGNAL \inst|clkCounter[11]~40\ : std_logic;
SIGNAL \inst|clkCounter[12]~41_combout\ : std_logic;
SIGNAL \inst|clkCounter[12]~42\ : std_logic;
SIGNAL \inst|clkCounter[13]~43_combout\ : std_logic;
SIGNAL \inst|clkCounter[13]~44\ : std_logic;
SIGNAL \inst|clkCounter[14]~45_combout\ : std_logic;
SIGNAL \inst|clkCounter[14]~46\ : std_logic;
SIGNAL \inst|clkCounter[15]~47_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~0_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~feeder_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~q\ : std_logic;
SIGNAL \inst|clkOutBuf~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|clkCounter[0]~1_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~0_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|Decoder0~7_combout\ : std_logic;
SIGNAL \inst6|dataBuf[3]~7_combout\ : std_logic;
SIGNAL \inst6|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst6|Selector18~0_combout\ : std_logic;
SIGNAL \inst6|update~q\ : std_logic;
SIGNAL \inst1|updatePrev~q\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst6|Decoder0~6_combout\ : std_logic;
SIGNAL \inst6|dataBuf[2]~6_combout\ : std_logic;
SIGNAL \inst6|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~5_combout\ : std_logic;
SIGNAL \inst6|dataBuf[1]~5_combout\ : std_logic;
SIGNAL \inst6|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~4_combout\ : std_logic;
SIGNAL \inst6|dataBuf[0]~4_combout\ : std_logic;
SIGNAL \inst6|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Decoder0~3_combout\ : std_logic;
SIGNAL \inst6|dataBuf[7]~3_combout\ : std_logic;
SIGNAL \inst6|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~0_combout\ : std_logic;
SIGNAL \inst6|dataBuf[4]~0_combout\ : std_logic;
SIGNAL \inst6|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~1_combout\ : std_logic;
SIGNAL \inst6|dataBuf[5]~1_combout\ : std_logic;
SIGNAL \inst6|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst6|Decoder0~2_combout\ : std_logic;
SIGNAL \inst6|dataBuf[6]~2_combout\ : std_logic;
SIGNAL \inst6|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Mux7~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|Mux7~0_combout\ : std_logic;
SIGNAL \inst1|Mux11~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst1|Mux12~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux9~0_combout\ : std_logic;
SIGNAL \inst1|Mux13~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux10~0_combout\ : std_logic;
SIGNAL \inst2|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|clkCounter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst1|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst6|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst5|count\ : std_logic_vector(2 DOWNTO 0);

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_rx <= rx;
indicator <= ww_indicator;
segment <= ww_segment;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|clkCounter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkCounter\(1));

\inst|clkOutBuf~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOutBuf~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y9_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ledBuf~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\indicator[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \indicator[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\indicator[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \indicator[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\indicator[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|indicator\(1),
	devoe => ww_devoe,
	o => \indicator[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\indicator[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|indicator\(0),
	devoe => ww_devoe,
	o => \indicator[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segment[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(6),
	devoe => ww_devoe,
	o => \segment[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segment[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(5),
	devoe => ww_devoe,
	o => \segment[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\segment[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(4),
	devoe => ww_devoe,
	o => \segment[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\segment[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(3),
	devoe => ww_devoe,
	o => \segment[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segment[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(2),
	devoe => ww_devoe,
	o => \segment[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segment[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(1),
	devoe => ww_devoe,
	o => \segment[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\segment[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|segment\(0),
	devoe => ww_devoe,
	o => \segment[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N18
\inst6|ledBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|ledBuf~0_combout\ = !\inst6|ledBuf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|ledBuf~q\,
	combout => \inst6|ledBuf~0_combout\);

-- Location: FF_X21_Y19_N23
\inst6|stateUART.Updating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|stateUART.Stopping~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|stateUART.Updating~q\);

-- Location: LCCOMB_X22_Y19_N4
\inst6|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[0]~16_combout\ = \inst6|count\(0) $ (VCC)
-- \inst6|count[0]~17\ = CARRY(\inst6|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(0),
	datad => VCC,
	combout => \inst6|count[0]~16_combout\,
	cout => \inst6|count[0]~17\);

-- Location: IOIBUF_X28_Y24_N22
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

-- Location: LCCOMB_X24_Y19_N22
\inst5|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|latch~feeder_combout\ = \rx~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx~input_o\,
	combout => \inst5|latch~feeder_combout\);

-- Location: FF_X24_Y19_N23
\inst5|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|latch~q\);

-- Location: LCCOMB_X24_Y19_N2
\inst5|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count~1_combout\ = (!\inst5|count\(0) & (\inst5|latch~q\ $ (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|latch~q\,
	datac => \inst5|count\(0),
	datad => \rx~input_o\,
	combout => \inst5|count~1_combout\);

-- Location: FF_X24_Y19_N3
\inst5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(0));

-- Location: LCCOMB_X24_Y19_N0
\inst5|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count~2_combout\ = (\inst5|latch~q\ & (\rx~input_o\ & (\inst5|count\(0) $ (\inst5|count\(1))))) # (!\inst5|latch~q\ & (!\rx~input_o\ & (\inst5|count\(0) $ (\inst5|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|latch~q\,
	datab => \inst5|count\(0),
	datac => \inst5|count\(1),
	datad => \rx~input_o\,
	combout => \inst5|count~2_combout\);

-- Location: FF_X24_Y19_N1
\inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(1));

-- Location: LCCOMB_X24_Y19_N12
\inst5|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|output~0_combout\ = (\inst5|count\(0) & (\inst5|count\(1) & (\rx~input_o\ $ (!\inst5|latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \inst5|count\(0),
	datac => \inst5|latch~q\,
	datad => \inst5|count\(1),
	combout => \inst5|output~0_combout\);

-- Location: LCCOMB_X24_Y19_N10
\inst5|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|output~2_combout\ = \inst5|latch~q\ $ (\rx~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|latch~q\,
	datad => \rx~input_o\,
	combout => \inst5|output~2_combout\);

-- Location: LCCOMB_X24_Y19_N28
\inst5|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|count~0_combout\ = (!\inst5|output~2_combout\ & (\inst5|count\(2) $ (((\inst5|count\(1) & \inst5|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~2_combout\,
	datab => \inst5|count\(1),
	datac => \inst5|count\(2),
	datad => \inst5|count\(0),
	combout => \inst5|count~0_combout\);

-- Location: FF_X24_Y19_N29
\inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|count\(2));

-- Location: LCCOMB_X24_Y19_N4
\inst5|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|output~1_combout\ = (\inst5|output~0_combout\ & ((\inst5|count\(2) & ((\rx~input_o\))) # (!\inst5|count\(2) & (\inst5|output~q\)))) # (!\inst5|output~0_combout\ & (((\inst5|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~0_combout\,
	datab => \inst5|count\(2),
	datac => \inst5|output~q\,
	datad => \rx~input_o\,
	combout => \inst5|output~1_combout\);

-- Location: FF_X24_Y19_N5
\inst5|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|output~q\);

-- Location: LCCOMB_X21_Y19_N30
\inst6|rxPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|rxPrev~0_combout\ = !\inst5|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|output~q\,
	combout => \inst6|rxPrev~0_combout\);

-- Location: FF_X21_Y19_N31
\inst6|rxPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|rxPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|rxPrev~q\);

-- Location: LCCOMB_X22_Y19_N0
\inst6|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~0_combout\ = (!\inst6|count\(9) & (((!\inst6|count\(5) & !\inst6|count\(4))) # (!\inst6|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(9),
	datab => \inst6|count\(6),
	datac => \inst6|count\(5),
	datad => \inst6|count\(4),
	combout => \inst6|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst6|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~1_combout\ = (!\inst6|count\(7) & (!\inst6|count\(11) & !\inst6|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(7),
	datac => \inst6|count\(11),
	datad => \inst6|count\(8),
	combout => \inst6|LessThan1~1_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst6|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~3_combout\ = (\inst6|LessThan1~2_combout\) # ((\inst6|LessThan1~0_combout\ & \inst6|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datac => \inst6|LessThan1~0_combout\,
	datad => \inst6|LessThan1~1_combout\,
	combout => \inst6|LessThan1~3_combout\);

-- Location: LCCOMB_X21_Y19_N14
\inst6|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~4_combout\ = (!\inst6|stateUART.Updating~q\ & !\inst6|stateUART.Stopping~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.Updating~q\,
	datac => \inst6|stateUART.Stopping~q\,
	combout => \inst6|Selector3~4_combout\);

-- Location: LCCOMB_X23_Y19_N24
\inst6|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~0_combout\ = (!\inst6|count\(6) & (((!\inst6|count\(3) & !\inst6|count\(4))) # (!\inst6|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(5),
	datab => \inst6|count\(3),
	datac => \inst6|count\(6),
	datad => \inst6|count\(4),
	combout => \inst6|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst6|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~1_combout\ = (\inst6|count\(9) & ((\inst6|count\(8)) # ((\inst6|count\(7)) # (!\inst6|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(8),
	datab => \inst6|count\(9),
	datac => \inst6|count\(7),
	datad => \inst6|LessThan0~0_combout\,
	combout => \inst6|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst6|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan0~2_combout\ = (!\inst6|count\(12) & (((!\inst6|count\(10) & !\inst6|LessThan0~1_combout\)) # (!\inst6|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(11),
	datab => \inst6|count\(10),
	datac => \inst6|count\(12),
	datad => \inst6|LessThan0~1_combout\,
	combout => \inst6|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst6|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count~14_combout\ = (\inst6|Selector3~4_combout\ & (((!\inst5|output~q\ & \inst6|LessThan0~2_combout\)) # (!\inst6|stateUART.Starting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datab => \inst6|Selector3~4_combout\,
	datac => \inst6|stateUART.Starting~q\,
	datad => \inst6|LessThan0~2_combout\,
	combout => \inst6|count~14_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst6|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count~15_combout\ = (\inst6|count~14_combout\ & (((\inst6|LessThan1~3_combout\) # (!\inst6|Selector3~3_combout\)) # (!\inst6|stateUART.ReceivingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.ReceivingData~q\,
	datab => \inst6|Selector3~3_combout\,
	datac => \inst6|LessThan1~3_combout\,
	datad => \inst6|count~14_combout\,
	combout => \inst6|count~15_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst6|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector1~0_combout\ = (\inst6|count~15_combout\ & ((\inst6|Selector0~1_combout\) # (\inst6|stateUART.Starting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Selector0~1_combout\,
	datac => \inst6|stateUART.Starting~q\,
	datad => \inst6|count~15_combout\,
	combout => \inst6|Selector1~0_combout\);

-- Location: FF_X23_Y19_N23
\inst6|stateUART.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|stateUART.Starting~q\);

-- Location: LCCOMB_X21_Y19_N20
\inst6|bitPosition[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|bitPosition[0]~0_combout\ = \inst6|Selector3~2_combout\ $ (\inst6|bitPosition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Selector3~2_combout\,
	datac => \inst6|bitPosition\(0),
	combout => \inst6|bitPosition[0]~0_combout\);

-- Location: FF_X21_Y19_N21
\inst6|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|bitPosition[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bitPosition\(0));

-- Location: LCCOMB_X21_Y19_N4
\inst6|bitPosition[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|bitPosition[1]~1_combout\ = \inst6|bitPosition\(1) $ (((\inst6|Selector3~2_combout\ & \inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Selector3~2_combout\,
	datac => \inst6|bitPosition\(1),
	datad => \inst6|bitPosition\(0),
	combout => \inst6|bitPosition[1]~1_combout\);

-- Location: FF_X21_Y19_N5
\inst6|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|bitPosition[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bitPosition\(1));

-- Location: LCCOMB_X23_Y19_N8
\inst6|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~2_combout\ = (\inst6|stateUART.ReceivingData~q\ & (((!\inst6|bitPosition\(1)) # (!\inst6|bitPosition\(0))) # (!\inst6|bitPosition\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.ReceivingData~q\,
	datab => \inst6|bitPosition\(2),
	datac => \inst6|bitPosition\(0),
	datad => \inst6|bitPosition\(1),
	combout => \inst6|Selector0~2_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst6|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~3_combout\ = (\inst6|Selector0~2_combout\) # ((!\inst6|stateUART.ReceivingData~q\ & \inst6|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.ReceivingData~q\,
	datac => \inst6|Selector0~2_combout\,
	datad => \inst6|LessThan0~2_combout\,
	combout => \inst6|Selector0~3_combout\);

-- Location: LCCOMB_X23_Y19_N0
\inst6|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~4_combout\ = (\inst6|stateUART.Starting~q\ & (!\inst6|stateUART.Stopping~q\ & ((\inst6|Selector0~3_combout\)))) # (!\inst6|stateUART.Starting~q\ & ((\inst6|stateUART.Stopping~q\) # ((\inst6|Selector3~2_combout\ & 
-- !\inst6|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.Starting~q\,
	datab => \inst6|stateUART.Stopping~q\,
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|Selector0~3_combout\,
	combout => \inst6|Selector0~4_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst6|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~5_combout\ = (\inst6|stateUART.Starting~q\ & ((\inst5|output~q\) # ((!\inst6|stateUART.Waiting~q\ & \inst6|Selector0~4_combout\)))) # (!\inst6|stateUART.Starting~q\ & (((!\inst6|stateUART.Waiting~q\ & !\inst6|Selector0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datab => \inst6|stateUART.Waiting~q\,
	datac => \inst6|stateUART.Starting~q\,
	datad => \inst6|Selector0~4_combout\,
	combout => \inst6|Selector0~5_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst6|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~6_combout\ = (!\inst6|stateUART.Updating~q\ & (((!\inst5|output~q\ & !\inst6|rxPrev~q\)) # (!\inst6|Selector0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datab => \inst6|stateUART.Updating~q\,
	datac => \inst6|rxPrev~q\,
	datad => \inst6|Selector0~5_combout\,
	combout => \inst6|Selector0~6_combout\);

-- Location: FF_X23_Y19_N15
\inst6|stateUART.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Selector0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|stateUART.Waiting~q\);

-- Location: LCCOMB_X24_Y19_N6
\inst6|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector0~1_combout\ = (!\inst5|output~q\ & (!\inst6|rxPrev~q\ & !\inst6|stateUART.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|rxPrev~q\,
	datad => \inst6|stateUART.Waiting~q\,
	combout => \inst6|Selector0~1_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst6|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count~13_combout\ = (!\inst5|output~q\ & (\inst6|Selector3~4_combout\ & (\inst6|stateUART.Starting~q\ & !\inst6|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datab => \inst6|Selector3~4_combout\,
	datac => \inst6|stateUART.Starting~q\,
	datad => \inst6|LessThan0~2_combout\,
	combout => \inst6|count~13_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst6|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector2~0_combout\ = (\inst6|count~13_combout\) # ((!\inst6|Selector0~1_combout\ & (\inst6|stateUART.ReceivingData~q\ & \inst6|count~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Selector0~1_combout\,
	datab => \inst6|count~13_combout\,
	datac => \inst6|stateUART.ReceivingData~q\,
	datad => \inst6|count~15_combout\,
	combout => \inst6|Selector2~0_combout\);

-- Location: FF_X23_Y19_N13
\inst6|stateUART.ReceivingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|stateUART.ReceivingData~q\);

-- Location: LCCOMB_X23_Y19_N4
\inst6|count[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[6]~26_combout\ = (\inst6|stateUART.Waiting~q\ & ((!\inst5|output~q\) # (!\inst6|stateUART.Starting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.Starting~q\,
	datac => \inst6|stateUART.Waiting~q\,
	datad => \inst5|output~q\,
	combout => \inst6|count[6]~26_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst6|count[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[6]~27_combout\ = ((\inst6|stateUART.ReceivingData~q\ & (!\inst6|LessThan1~3_combout\)) # (!\inst6|stateUART.ReceivingData~q\ & ((!\inst6|LessThan0~2_combout\)))) # (!\inst6|count[6]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.ReceivingData~q\,
	datab => \inst6|count[6]~26_combout\,
	datac => \inst6|LessThan1~3_combout\,
	datad => \inst6|LessThan0~2_combout\,
	combout => \inst6|count[6]~27_combout\);

-- Location: LCCOMB_X21_Y19_N16
\inst6|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[6]~28_combout\ = (\inst6|Selector3~4_combout\ & ((\inst6|stateUART.Waiting~q\) # ((!\inst6|rxPrev~q\ & !\inst5|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|rxPrev~q\,
	datab => \inst6|stateUART.Waiting~q\,
	datac => \inst6|Selector3~4_combout\,
	datad => \inst5|output~q\,
	combout => \inst6|count[6]~28_combout\);

-- Location: FF_X22_Y19_N5
\inst6|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[0]~16_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(0));

-- Location: LCCOMB_X22_Y19_N6
\inst6|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[1]~18_combout\ = (\inst6|count\(1) & (!\inst6|count[0]~17\)) # (!\inst6|count\(1) & ((\inst6|count[0]~17\) # (GND)))
-- \inst6|count[1]~19\ = CARRY((!\inst6|count[0]~17\) # (!\inst6|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(1),
	datad => VCC,
	cin => \inst6|count[0]~17\,
	combout => \inst6|count[1]~18_combout\,
	cout => \inst6|count[1]~19\);

-- Location: FF_X22_Y19_N7
\inst6|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[1]~18_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(1));

-- Location: LCCOMB_X22_Y19_N8
\inst6|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[2]~20_combout\ = (\inst6|count\(2) & (\inst6|count[1]~19\ $ (GND))) # (!\inst6|count\(2) & (!\inst6|count[1]~19\ & VCC))
-- \inst6|count[2]~21\ = CARRY((\inst6|count\(2) & !\inst6|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(2),
	datad => VCC,
	cin => \inst6|count[1]~19\,
	combout => \inst6|count[2]~20_combout\,
	cout => \inst6|count[2]~21\);

-- Location: FF_X22_Y19_N9
\inst6|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[2]~20_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(2));

-- Location: LCCOMB_X22_Y19_N10
\inst6|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[3]~22_combout\ = (\inst6|count\(3) & (!\inst6|count[2]~21\)) # (!\inst6|count\(3) & ((\inst6|count[2]~21\) # (GND)))
-- \inst6|count[3]~23\ = CARRY((!\inst6|count[2]~21\) # (!\inst6|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(3),
	datad => VCC,
	cin => \inst6|count[2]~21\,
	combout => \inst6|count[3]~22_combout\,
	cout => \inst6|count[3]~23\);

-- Location: FF_X22_Y19_N11
\inst6|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[3]~22_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(3));

-- Location: LCCOMB_X22_Y19_N12
\inst6|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[4]~24_combout\ = (\inst6|count\(4) & (\inst6|count[3]~23\ $ (GND))) # (!\inst6|count\(4) & (!\inst6|count[3]~23\ & VCC))
-- \inst6|count[4]~25\ = CARRY((\inst6|count\(4) & !\inst6|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(4),
	datad => VCC,
	cin => \inst6|count[3]~23\,
	combout => \inst6|count[4]~24_combout\,
	cout => \inst6|count[4]~25\);

-- Location: FF_X22_Y19_N13
\inst6|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[4]~24_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(4));

-- Location: LCCOMB_X22_Y19_N14
\inst6|count[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[5]~29_combout\ = (\inst6|count\(5) & (!\inst6|count[4]~25\)) # (!\inst6|count\(5) & ((\inst6|count[4]~25\) # (GND)))
-- \inst6|count[5]~30\ = CARRY((!\inst6|count[4]~25\) # (!\inst6|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(5),
	datad => VCC,
	cin => \inst6|count[4]~25\,
	combout => \inst6|count[5]~29_combout\,
	cout => \inst6|count[5]~30\);

-- Location: FF_X22_Y19_N15
\inst6|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[5]~29_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(5));

-- Location: LCCOMB_X22_Y19_N16
\inst6|count[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[6]~31_combout\ = (\inst6|count\(6) & (\inst6|count[5]~30\ $ (GND))) # (!\inst6|count\(6) & (!\inst6|count[5]~30\ & VCC))
-- \inst6|count[6]~32\ = CARRY((\inst6|count\(6) & !\inst6|count[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(6),
	datad => VCC,
	cin => \inst6|count[5]~30\,
	combout => \inst6|count[6]~31_combout\,
	cout => \inst6|count[6]~32\);

-- Location: FF_X22_Y19_N17
\inst6|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[6]~31_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(6));

-- Location: LCCOMB_X22_Y19_N18
\inst6|count[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[7]~33_combout\ = (\inst6|count\(7) & (!\inst6|count[6]~32\)) # (!\inst6|count\(7) & ((\inst6|count[6]~32\) # (GND)))
-- \inst6|count[7]~34\ = CARRY((!\inst6|count[6]~32\) # (!\inst6|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(7),
	datad => VCC,
	cin => \inst6|count[6]~32\,
	combout => \inst6|count[7]~33_combout\,
	cout => \inst6|count[7]~34\);

-- Location: FF_X22_Y19_N19
\inst6|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[7]~33_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(7));

-- Location: LCCOMB_X22_Y19_N20
\inst6|count[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[8]~35_combout\ = (\inst6|count\(8) & (\inst6|count[7]~34\ $ (GND))) # (!\inst6|count\(8) & (!\inst6|count[7]~34\ & VCC))
-- \inst6|count[8]~36\ = CARRY((\inst6|count\(8) & !\inst6|count[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(8),
	datad => VCC,
	cin => \inst6|count[7]~34\,
	combout => \inst6|count[8]~35_combout\,
	cout => \inst6|count[8]~36\);

-- Location: FF_X22_Y19_N21
\inst6|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[8]~35_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(8));

-- Location: LCCOMB_X22_Y19_N22
\inst6|count[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[9]~37_combout\ = (\inst6|count\(9) & (!\inst6|count[8]~36\)) # (!\inst6|count\(9) & ((\inst6|count[8]~36\) # (GND)))
-- \inst6|count[9]~38\ = CARRY((!\inst6|count[8]~36\) # (!\inst6|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|count\(9),
	datad => VCC,
	cin => \inst6|count[8]~36\,
	combout => \inst6|count[9]~37_combout\,
	cout => \inst6|count[9]~38\);

-- Location: FF_X22_Y19_N23
\inst6|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[9]~37_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(9));

-- Location: LCCOMB_X22_Y19_N24
\inst6|count[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[10]~39_combout\ = (\inst6|count\(10) & (\inst6|count[9]~38\ $ (GND))) # (!\inst6|count\(10) & (!\inst6|count[9]~38\ & VCC))
-- \inst6|count[10]~40\ = CARRY((\inst6|count\(10) & !\inst6|count[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(10),
	datad => VCC,
	cin => \inst6|count[9]~38\,
	combout => \inst6|count[10]~39_combout\,
	cout => \inst6|count[10]~40\);

-- Location: FF_X22_Y19_N25
\inst6|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[10]~39_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(10));

-- Location: LCCOMB_X22_Y19_N26
\inst6|count[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[11]~41_combout\ = (\inst6|count\(11) & (!\inst6|count[10]~40\)) # (!\inst6|count\(11) & ((\inst6|count[10]~40\) # (GND)))
-- \inst6|count[11]~42\ = CARRY((!\inst6|count[10]~40\) # (!\inst6|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(11),
	datad => VCC,
	cin => \inst6|count[10]~40\,
	combout => \inst6|count[11]~41_combout\,
	cout => \inst6|count[11]~42\);

-- Location: FF_X22_Y19_N27
\inst6|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[11]~41_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(11));

-- Location: LCCOMB_X22_Y19_N28
\inst6|count[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|count[12]~43_combout\ = \inst6|count[11]~42\ $ (!\inst6|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst6|count\(12),
	cin => \inst6|count[11]~42\,
	combout => \inst6|count[12]~43_combout\);

-- Location: FF_X22_Y19_N29
\inst6|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|count[12]~43_combout\,
	sclr => \inst6|count[6]~27_combout\,
	ena => \inst6|count[6]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|count\(12));

-- Location: LCCOMB_X22_Y19_N2
\inst6|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|LessThan1~2_combout\ = ((!\inst6|count\(11) & !\inst6|count\(10))) # (!\inst6|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|count\(12),
	datac => \inst6|count\(11),
	datad => \inst6|count\(10),
	combout => \inst6|LessThan1~2_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst6|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~2_combout\ = (!\inst6|LessThan1~2_combout\ & (\inst6|stateUART.ReceivingData~q\ & ((!\inst6|LessThan1~1_combout\) # (!\inst6|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|LessThan1~2_combout\,
	datab => \inst6|LessThan1~0_combout\,
	datac => \inst6|LessThan1~1_combout\,
	datad => \inst6|stateUART.ReceivingData~q\,
	combout => \inst6|Selector3~2_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst6|bitPosition[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|bitPosition[2]~2_combout\ = \inst6|bitPosition\(2) $ (((\inst6|Selector3~2_combout\ & (\inst6|bitPosition\(1) & \inst6|bitPosition\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|Selector3~2_combout\,
	datab => \inst6|bitPosition\(1),
	datac => \inst6|bitPosition\(2),
	datad => \inst6|bitPosition\(0),
	combout => \inst6|bitPosition[2]~2_combout\);

-- Location: FF_X21_Y19_N3
\inst6|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|bitPosition[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|bitPosition\(2));

-- Location: LCCOMB_X21_Y19_N22
\inst6|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~3_combout\ = (\inst6|bitPosition\(2) & (\inst6|bitPosition\(1) & \inst6|bitPosition\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(2),
	datab => \inst6|bitPosition\(1),
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Selector3~3_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst6|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector3~5_combout\ = (!\inst6|stateUART.Updating~q\ & (\inst6|Selector3~3_combout\ & (!\inst6|stateUART.Stopping~q\ & \inst6|Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.Updating~q\,
	datab => \inst6|Selector3~3_combout\,
	datac => \inst6|stateUART.Stopping~q\,
	datad => \inst6|Selector3~2_combout\,
	combout => \inst6|Selector3~5_combout\);

-- Location: FF_X21_Y19_N9
\inst6|stateUART.Stopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Selector3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|stateUART.Stopping~q\);

-- Location: FF_X21_Y19_N19
\inst6|ledBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|ledBuf~0_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|ledBuf~q\);

-- Location: LCCOMB_X33_Y13_N16
\inst|clkCounter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[0]~17_combout\ = \inst|clkCounter\(0) $ (VCC)
-- \inst|clkCounter[0]~18\ = CARRY(\inst|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(0),
	datad => VCC,
	combout => \inst|clkCounter[0]~17_combout\,
	cout => \inst|clkCounter[0]~18\);

-- Location: LCCOMB_X33_Y12_N14
\inst|clkCounter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[15]~47_combout\ = (\inst|clkCounter\(15) & (!\inst|clkCounter[14]~46\)) # (!\inst|clkCounter\(15) & ((\inst|clkCounter[14]~46\) # (GND)))
-- \inst|clkCounter[15]~48\ = CARRY((!\inst|clkCounter[14]~46\) # (!\inst|clkCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(15),
	datad => VCC,
	cin => \inst|clkCounter[14]~46\,
	combout => \inst|clkCounter[15]~47_combout\,
	cout => \inst|clkCounter[15]~48\);

-- Location: LCCOMB_X33_Y12_N16
\inst|clkCounter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[16]~49_combout\ = \inst|clkCounter[15]~48\ $ (!\inst|clkCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter\(16),
	cin => \inst|clkCounter[15]~48\,
	combout => \inst|clkCounter[16]~49_combout\);

-- Location: FF_X33_Y12_N17
\inst|clkCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[16]~49_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(16));

-- Location: LCCOMB_X33_Y13_N8
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|clkCounter\(8) & (((!\inst|clkCounter\(6) & !\inst|clkCounter\(5))) # (!\inst|clkCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(7),
	datab => \inst|clkCounter\(6),
	datac => \inst|clkCounter\(5),
	datad => \inst|clkCounter\(8),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|clkCounter\(11) & (!\inst|clkCounter\(13) & (!\inst|clkCounter\(12) & !\inst|clkCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(11),
	datab => \inst|clkCounter\(13),
	datac => \inst|clkCounter\(12),
	datad => \inst|clkCounter\(14),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|LessThan0~0_combout\ & (((\inst|LessThan0~1_combout\) # (!\inst|clkCounter\(9))) # (!\inst|clkCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(10),
	datab => \inst|clkCounter\(9),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y13_N6
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|clkCounter\(16) & (\inst|clkCounter\(15) & !\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(16),
	datac => \inst|clkCounter\(15),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: FF_X33_Y13_N17
\inst|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[0]~17_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(0));

-- Location: LCCOMB_X33_Y13_N18
\inst|clkCounter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[1]~19_combout\ = (\inst|clkCounter\(1) & (!\inst|clkCounter[0]~18\)) # (!\inst|clkCounter\(1) & ((\inst|clkCounter[0]~18\) # (GND)))
-- \inst|clkCounter[1]~20\ = CARRY((!\inst|clkCounter[0]~18\) # (!\inst|clkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(1),
	datad => VCC,
	cin => \inst|clkCounter[0]~18\,
	combout => \inst|clkCounter[1]~19_combout\,
	cout => \inst|clkCounter[1]~20\);

-- Location: FF_X33_Y13_N19
\inst|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[1]~19_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(1));

-- Location: LCCOMB_X33_Y13_N20
\inst|clkCounter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[2]~21_combout\ = (\inst|clkCounter\(2) & (\inst|clkCounter[1]~20\ $ (GND))) # (!\inst|clkCounter\(2) & (!\inst|clkCounter[1]~20\ & VCC))
-- \inst|clkCounter[2]~22\ = CARRY((\inst|clkCounter\(2) & !\inst|clkCounter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(2),
	datad => VCC,
	cin => \inst|clkCounter[1]~20\,
	combout => \inst|clkCounter[2]~21_combout\,
	cout => \inst|clkCounter[2]~22\);

-- Location: FF_X33_Y13_N21
\inst|clkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[2]~21_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(2));

-- Location: LCCOMB_X33_Y13_N22
\inst|clkCounter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[3]~23_combout\ = (\inst|clkCounter\(3) & (!\inst|clkCounter[2]~22\)) # (!\inst|clkCounter\(3) & ((\inst|clkCounter[2]~22\) # (GND)))
-- \inst|clkCounter[3]~24\ = CARRY((!\inst|clkCounter[2]~22\) # (!\inst|clkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(3),
	datad => VCC,
	cin => \inst|clkCounter[2]~22\,
	combout => \inst|clkCounter[3]~23_combout\,
	cout => \inst|clkCounter[3]~24\);

-- Location: FF_X33_Y13_N23
\inst|clkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[3]~23_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(3));

-- Location: LCCOMB_X33_Y13_N24
\inst|clkCounter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[4]~25_combout\ = (\inst|clkCounter\(4) & (\inst|clkCounter[3]~24\ $ (GND))) # (!\inst|clkCounter\(4) & (!\inst|clkCounter[3]~24\ & VCC))
-- \inst|clkCounter[4]~26\ = CARRY((\inst|clkCounter\(4) & !\inst|clkCounter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(4),
	datad => VCC,
	cin => \inst|clkCounter[3]~24\,
	combout => \inst|clkCounter[4]~25_combout\,
	cout => \inst|clkCounter[4]~26\);

-- Location: FF_X33_Y13_N25
\inst|clkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[4]~25_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(4));

-- Location: LCCOMB_X33_Y13_N26
\inst|clkCounter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[5]~27_combout\ = (\inst|clkCounter\(5) & (!\inst|clkCounter[4]~26\)) # (!\inst|clkCounter\(5) & ((\inst|clkCounter[4]~26\) # (GND)))
-- \inst|clkCounter[5]~28\ = CARRY((!\inst|clkCounter[4]~26\) # (!\inst|clkCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(5),
	datad => VCC,
	cin => \inst|clkCounter[4]~26\,
	combout => \inst|clkCounter[5]~27_combout\,
	cout => \inst|clkCounter[5]~28\);

-- Location: FF_X33_Y13_N27
\inst|clkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[5]~27_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(5));

-- Location: LCCOMB_X33_Y13_N28
\inst|clkCounter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[6]~29_combout\ = (\inst|clkCounter\(6) & (\inst|clkCounter[5]~28\ $ (GND))) # (!\inst|clkCounter\(6) & (!\inst|clkCounter[5]~28\ & VCC))
-- \inst|clkCounter[6]~30\ = CARRY((\inst|clkCounter\(6) & !\inst|clkCounter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(6),
	datad => VCC,
	cin => \inst|clkCounter[5]~28\,
	combout => \inst|clkCounter[6]~29_combout\,
	cout => \inst|clkCounter[6]~30\);

-- Location: FF_X33_Y13_N29
\inst|clkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[6]~29_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(6));

-- Location: LCCOMB_X33_Y13_N30
\inst|clkCounter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[7]~31_combout\ = (\inst|clkCounter\(7) & (!\inst|clkCounter[6]~30\)) # (!\inst|clkCounter\(7) & ((\inst|clkCounter[6]~30\) # (GND)))
-- \inst|clkCounter[7]~32\ = CARRY((!\inst|clkCounter[6]~30\) # (!\inst|clkCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(7),
	datad => VCC,
	cin => \inst|clkCounter[6]~30\,
	combout => \inst|clkCounter[7]~31_combout\,
	cout => \inst|clkCounter[7]~32\);

-- Location: FF_X33_Y13_N31
\inst|clkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[7]~31_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(7));

-- Location: LCCOMB_X33_Y12_N0
\inst|clkCounter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[8]~33_combout\ = (\inst|clkCounter\(8) & (\inst|clkCounter[7]~32\ $ (GND))) # (!\inst|clkCounter\(8) & (!\inst|clkCounter[7]~32\ & VCC))
-- \inst|clkCounter[8]~34\ = CARRY((\inst|clkCounter\(8) & !\inst|clkCounter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(8),
	datad => VCC,
	cin => \inst|clkCounter[7]~32\,
	combout => \inst|clkCounter[8]~33_combout\,
	cout => \inst|clkCounter[8]~34\);

-- Location: FF_X33_Y12_N1
\inst|clkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[8]~33_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(8));

-- Location: LCCOMB_X33_Y12_N2
\inst|clkCounter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[9]~35_combout\ = (\inst|clkCounter\(9) & (!\inst|clkCounter[8]~34\)) # (!\inst|clkCounter\(9) & ((\inst|clkCounter[8]~34\) # (GND)))
-- \inst|clkCounter[9]~36\ = CARRY((!\inst|clkCounter[8]~34\) # (!\inst|clkCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(9),
	datad => VCC,
	cin => \inst|clkCounter[8]~34\,
	combout => \inst|clkCounter[9]~35_combout\,
	cout => \inst|clkCounter[9]~36\);

-- Location: FF_X33_Y12_N3
\inst|clkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[9]~35_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(9));

-- Location: LCCOMB_X33_Y12_N4
\inst|clkCounter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[10]~37_combout\ = (\inst|clkCounter\(10) & (\inst|clkCounter[9]~36\ $ (GND))) # (!\inst|clkCounter\(10) & (!\inst|clkCounter[9]~36\ & VCC))
-- \inst|clkCounter[10]~38\ = CARRY((\inst|clkCounter\(10) & !\inst|clkCounter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(10),
	datad => VCC,
	cin => \inst|clkCounter[9]~36\,
	combout => \inst|clkCounter[10]~37_combout\,
	cout => \inst|clkCounter[10]~38\);

-- Location: FF_X33_Y12_N5
\inst|clkCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[10]~37_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(10));

-- Location: LCCOMB_X33_Y12_N6
\inst|clkCounter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[11]~39_combout\ = (\inst|clkCounter\(11) & (!\inst|clkCounter[10]~38\)) # (!\inst|clkCounter\(11) & ((\inst|clkCounter[10]~38\) # (GND)))
-- \inst|clkCounter[11]~40\ = CARRY((!\inst|clkCounter[10]~38\) # (!\inst|clkCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(11),
	datad => VCC,
	cin => \inst|clkCounter[10]~38\,
	combout => \inst|clkCounter[11]~39_combout\,
	cout => \inst|clkCounter[11]~40\);

-- Location: FF_X33_Y12_N7
\inst|clkCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[11]~39_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(11));

-- Location: LCCOMB_X33_Y12_N8
\inst|clkCounter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[12]~41_combout\ = (\inst|clkCounter\(12) & (\inst|clkCounter[11]~40\ $ (GND))) # (!\inst|clkCounter\(12) & (!\inst|clkCounter[11]~40\ & VCC))
-- \inst|clkCounter[12]~42\ = CARRY((\inst|clkCounter\(12) & !\inst|clkCounter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(12),
	datad => VCC,
	cin => \inst|clkCounter[11]~40\,
	combout => \inst|clkCounter[12]~41_combout\,
	cout => \inst|clkCounter[12]~42\);

-- Location: FF_X33_Y12_N9
\inst|clkCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[12]~41_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(12));

-- Location: LCCOMB_X33_Y12_N10
\inst|clkCounter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[13]~43_combout\ = (\inst|clkCounter\(13) & (!\inst|clkCounter[12]~42\)) # (!\inst|clkCounter\(13) & ((\inst|clkCounter[12]~42\) # (GND)))
-- \inst|clkCounter[13]~44\ = CARRY((!\inst|clkCounter[12]~42\) # (!\inst|clkCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(13),
	datad => VCC,
	cin => \inst|clkCounter[12]~42\,
	combout => \inst|clkCounter[13]~43_combout\,
	cout => \inst|clkCounter[13]~44\);

-- Location: FF_X33_Y12_N11
\inst|clkCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[13]~43_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(13));

-- Location: LCCOMB_X33_Y12_N12
\inst|clkCounter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[14]~45_combout\ = (\inst|clkCounter\(14) & (\inst|clkCounter[13]~44\ $ (GND))) # (!\inst|clkCounter\(14) & (!\inst|clkCounter[13]~44\ & VCC))
-- \inst|clkCounter[14]~46\ = CARRY((\inst|clkCounter\(14) & !\inst|clkCounter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(14),
	datad => VCC,
	cin => \inst|clkCounter[13]~44\,
	combout => \inst|clkCounter[14]~45_combout\,
	cout => \inst|clkCounter[14]~46\);

-- Location: FF_X33_Y12_N13
\inst|clkCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[14]~45_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(14));

-- Location: FF_X33_Y12_N15
\inst|clkCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[15]~47_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(15));

-- Location: LCCOMB_X33_Y13_N10
\inst|clkOutBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~0_combout\ = \inst|clkOutBuf~q\ $ (((\inst|clkCounter\(15) & (\inst|clkCounter\(16) & !\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOutBuf~q\,
	datab => \inst|clkCounter\(15),
	datac => \inst|clkCounter\(16),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|clkOutBuf~0_combout\);

-- Location: LCCOMB_X33_Y13_N0
\inst|clkOutBuf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~feeder_combout\ = \inst|clkOutBuf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkOutBuf~0_combout\,
	combout => \inst|clkOutBuf~feeder_combout\);

-- Location: FF_X33_Y13_N1
\inst|clkOutBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkOutBuf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOutBuf~q\);

-- Location: CLKCTRL_G9
\inst|clkOutBuf~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkOutBuf~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkOutBuf~clkctrl_outclk\);

-- Location: LCCOMB_X13_Y23_N6
\inst2|clkCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[0]~1_combout\ = !\inst2|clkCounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[0]~1_combout\);

-- Location: FF_X13_Y23_N7
\inst2|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst2|clkCounter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkCounter\(0));

-- Location: LCCOMB_X13_Y23_N26
\inst2|clkCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~0_combout\ = \inst2|clkCounter\(1) $ (\inst2|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clkCounter\(1),
	datad => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[1]~0_combout\);

-- Location: FF_X13_Y23_N21
\inst2|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	asdata => \inst2|clkCounter[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkCounter\(1));

-- Location: CLKCTRL_G3
\inst2|clkCounter[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clkCounter[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clkCounter[1]~clkctrl_outclk\);

-- Location: LCCOMB_X12_Y23_N28
\inst2|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(1) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|indicator\(1)))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (!\inst2|clkCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkCounter\(0),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|indicator\(1),
	combout => \inst2|indicator\(1));

-- Location: LCCOMB_X13_Y23_N20
\inst2|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|indicator\(0))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|clkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|indicator\(0),
	datab => \inst2|clkCounter\(0),
	datad => \inst2|clkCounter[1]~clkctrl_outclk\,
	combout => \inst2|indicator\(0));

-- Location: LCCOMB_X19_Y19_N10
\inst6|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~7_combout\ = (\inst6|bitPosition\(1) & (!\inst6|bitPosition\(2) & (\inst6|Selector3~2_combout\ & \inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(1),
	datab => \inst6|bitPosition\(2),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~7_combout\);

-- Location: LCCOMB_X19_Y19_N20
\inst6|dataBuf[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[3]~7_combout\ = (\inst6|Decoder0~7_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~7_combout\ & ((\inst6|dataBuf\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|dataBuf\(3),
	datad => \inst6|Decoder0~7_combout\,
	combout => \inst6|dataBuf[3]~7_combout\);

-- Location: FF_X19_Y19_N21
\inst6|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(3));

-- Location: LCCOMB_X19_Y19_N2
\inst6|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[3]~feeder_combout\ = \inst6|dataBuf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(3),
	combout => \inst6|data[3]~feeder_combout\);

-- Location: FF_X19_Y19_N3
\inst6|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[3]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(3));

-- Location: LCCOMB_X16_Y22_N0
\inst6|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Selector18~0_combout\ = (\inst6|stateUART.Updating~q\) # ((\inst6|update~q\ & \inst6|stateUART.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|stateUART.Updating~q\,
	datac => \inst6|update~q\,
	datad => \inst6|stateUART.Waiting~q\,
	combout => \inst6|Selector18~0_combout\);

-- Location: FF_X16_Y22_N1
\inst6|update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|update~q\);

-- Location: FF_X14_Y23_N31
\inst1|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|update~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|updatePrev~q\);

-- Location: LCCOMB_X14_Y23_N30
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst6|update~q\ & !\inst1|updatePrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|update~q\,
	datac => \inst1|updatePrev~q\,
	combout => \inst1|process_0~0_combout\);

-- Location: FF_X13_Y23_N31
\inst1|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(3),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(3));

-- Location: LCCOMB_X21_Y19_N10
\inst6|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~6_combout\ = (!\inst6|bitPosition\(2) & (\inst6|bitPosition\(1) & (\inst6|Selector3~2_combout\ & !\inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(2),
	datab => \inst6|bitPosition\(1),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~6_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst6|dataBuf[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[2]~6_combout\ = (\inst6|Decoder0~6_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~6_combout\ & ((\inst6|dataBuf\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datac => \inst6|dataBuf\(2),
	datad => \inst6|Decoder0~6_combout\,
	combout => \inst6|dataBuf[2]~6_combout\);

-- Location: FF_X21_Y19_N7
\inst6|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(2));

-- Location: LCCOMB_X17_Y23_N16
\inst6|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[2]~feeder_combout\ = \inst6|dataBuf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(2),
	combout => \inst6|data[2]~feeder_combout\);

-- Location: FF_X17_Y23_N17
\inst6|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[2]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(2));

-- Location: FF_X13_Y23_N1
\inst1|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(2),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(2));

-- Location: LCCOMB_X19_Y19_N24
\inst6|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~5_combout\ = (!\inst6|bitPosition\(1) & (!\inst6|bitPosition\(2) & (\inst6|Selector3~2_combout\ & \inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(1),
	datab => \inst6|bitPosition\(2),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~5_combout\);

-- Location: LCCOMB_X19_Y19_N22
\inst6|dataBuf[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[1]~5_combout\ = (\inst6|Decoder0~5_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~5_combout\ & ((\inst6|dataBuf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|dataBuf\(1),
	datad => \inst6|Decoder0~5_combout\,
	combout => \inst6|dataBuf[1]~5_combout\);

-- Location: FF_X19_Y19_N23
\inst6|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(1));

-- Location: LCCOMB_X17_Y23_N10
\inst6|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[1]~feeder_combout\ = \inst6|dataBuf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(1),
	combout => \inst6|data[1]~feeder_combout\);

-- Location: FF_X17_Y23_N11
\inst6|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[1]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(1));

-- Location: FF_X13_Y23_N9
\inst1|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(1),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(1));

-- Location: LCCOMB_X21_Y19_N28
\inst6|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~4_combout\ = (!\inst6|bitPosition\(2) & (!\inst6|bitPosition\(1) & (\inst6|Selector3~2_combout\ & !\inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(2),
	datab => \inst6|bitPosition\(1),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~4_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst6|dataBuf[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[0]~4_combout\ = (\inst6|Decoder0~4_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~4_combout\ & ((\inst6|dataBuf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datac => \inst6|dataBuf\(0),
	datad => \inst6|Decoder0~4_combout\,
	combout => \inst6|dataBuf[0]~4_combout\);

-- Location: FF_X21_Y19_N1
\inst6|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(0));

-- Location: LCCOMB_X17_Y20_N0
\inst6|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[0]~feeder_combout\ = \inst6|dataBuf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|dataBuf\(0),
	combout => \inst6|data[0]~feeder_combout\);

-- Location: FF_X17_Y20_N1
\inst6|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[0]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(0));

-- Location: FF_X13_Y23_N5
\inst1|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(0),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(0));

-- Location: LCCOMB_X13_Y23_N14
\inst1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst1|dataBuf\(0) & ((\inst1|dataBuf\(3)) # (\inst1|dataBuf\(2) $ (\inst1|dataBuf\(1))))) # (!\inst1|dataBuf\(0) & ((\inst1|dataBuf\(1)) # (\inst1|dataBuf\(3) $ (\inst1|dataBuf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(3),
	datab => \inst1|dataBuf\(2),
	datac => \inst1|dataBuf\(1),
	datad => \inst1|dataBuf\(0),
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y19_N6
\inst6|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~3_combout\ = (\inst6|bitPosition\(1) & (\inst6|bitPosition\(2) & (\inst6|Selector3~2_combout\ & \inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(1),
	datab => \inst6|bitPosition\(2),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~3_combout\);

-- Location: LCCOMB_X19_Y19_N8
\inst6|dataBuf[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[7]~3_combout\ = (\inst6|Decoder0~3_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~3_combout\ & ((\inst6|dataBuf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|dataBuf\(7),
	datad => \inst6|Decoder0~3_combout\,
	combout => \inst6|dataBuf[7]~3_combout\);

-- Location: FF_X19_Y19_N9
\inst6|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(7));

-- Location: LCCOMB_X17_Y23_N12
\inst6|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[7]~feeder_combout\ = \inst6|dataBuf\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(7),
	combout => \inst6|data[7]~feeder_combout\);

-- Location: FF_X17_Y23_N13
\inst6|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[7]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(7));

-- Location: FF_X14_Y23_N11
\inst1|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(7),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(7));

-- Location: LCCOMB_X19_Y19_N18
\inst6|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~0_combout\ = (!\inst6|bitPosition\(1) & (\inst6|bitPosition\(2) & (\inst6|Selector3~2_combout\ & !\inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(1),
	datab => \inst6|bitPosition\(2),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~0_combout\);

-- Location: LCCOMB_X19_Y19_N12
\inst6|dataBuf[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[4]~0_combout\ = (\inst6|Decoder0~0_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~0_combout\ & ((\inst6|dataBuf\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|dataBuf\(4),
	datad => \inst6|Decoder0~0_combout\,
	combout => \inst6|dataBuf[4]~0_combout\);

-- Location: FF_X19_Y19_N13
\inst6|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(4));

-- Location: LCCOMB_X17_Y23_N4
\inst6|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[4]~feeder_combout\ = \inst6|dataBuf\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(4),
	combout => \inst6|data[4]~feeder_combout\);

-- Location: FF_X17_Y23_N5
\inst6|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[4]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(4));

-- Location: FF_X14_Y23_N5
\inst1|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(4),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(4));

-- Location: LCCOMB_X21_Y19_N12
\inst6|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~1_combout\ = (\inst6|bitPosition\(2) & (!\inst6|bitPosition\(1) & (\inst6|Selector3~2_combout\ & \inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(2),
	datab => \inst6|bitPosition\(1),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~1_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst6|dataBuf[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[5]~1_combout\ = (\inst6|Decoder0~1_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~1_combout\ & ((\inst6|dataBuf\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|output~q\,
	datac => \inst6|dataBuf\(5),
	datad => \inst6|Decoder0~1_combout\,
	combout => \inst6|dataBuf[5]~1_combout\);

-- Location: FF_X21_Y19_N25
\inst6|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(5));

-- Location: LCCOMB_X19_Y19_N0
\inst6|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[5]~feeder_combout\ = \inst6|dataBuf\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(5),
	combout => \inst6|data[5]~feeder_combout\);

-- Location: FF_X19_Y19_N1
\inst6|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[5]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(5));

-- Location: FF_X14_Y23_N27
\inst1|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(5),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(5));

-- Location: LCCOMB_X19_Y19_N28
\inst6|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|Decoder0~2_combout\ = (\inst6|bitPosition\(1) & (\inst6|bitPosition\(2) & (\inst6|Selector3~2_combout\ & !\inst6|bitPosition\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|bitPosition\(1),
	datab => \inst6|bitPosition\(2),
	datac => \inst6|Selector3~2_combout\,
	datad => \inst6|bitPosition\(0),
	combout => \inst6|Decoder0~2_combout\);

-- Location: LCCOMB_X19_Y19_N26
\inst6|dataBuf[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|dataBuf[6]~2_combout\ = (\inst6|Decoder0~2_combout\ & (\inst5|output~q\)) # (!\inst6|Decoder0~2_combout\ & ((\inst6|dataBuf\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|output~q\,
	datac => \inst6|dataBuf\(6),
	datad => \inst6|Decoder0~2_combout\,
	combout => \inst6|dataBuf[6]~2_combout\);

-- Location: FF_X19_Y19_N27
\inst6|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|dataBuf[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|dataBuf\(6));

-- Location: LCCOMB_X17_Y23_N2
\inst6|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|data[6]~feeder_combout\ = \inst6|dataBuf\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst6|dataBuf\(6),
	combout => \inst6|data[6]~feeder_combout\);

-- Location: FF_X17_Y23_N3
\inst6|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst6|data[6]~feeder_combout\,
	ena => \inst6|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|data\(6));

-- Location: FF_X14_Y23_N29
\inst1|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst6|data\(6),
	sload => VCC,
	ena => \inst1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(6));

-- Location: LCCOMB_X14_Y23_N24
\inst1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux7~0_combout\ = (\inst1|dataBuf\(4) & ((\inst1|dataBuf\(7)) # (\inst1|dataBuf\(5) $ (\inst1|dataBuf\(6))))) # (!\inst1|dataBuf\(4) & ((\inst1|dataBuf\(5)) # (\inst1|dataBuf\(7) $ (\inst1|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(7),
	datab => \inst1|dataBuf\(4),
	datac => \inst1|dataBuf\(5),
	datad => \inst1|dataBuf\(6),
	combout => \inst1|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y23_N28
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst2|clkCounter\(0) & ((\inst1|Mux7~0_combout\))) # (!\inst2|clkCounter\(0) & (\inst1|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(0),
	datac => \inst1|Mux0~0_combout\,
	datad => \inst1|Mux7~0_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y23_N30
\inst2|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(6) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(6))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((!\inst2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter[1]~clkctrl_outclk\,
	datab => \inst2|segment\(6),
	datad => \inst2|Mux4~0_combout\,
	combout => \inst2|segment\(6));

-- Location: LCCOMB_X14_Y23_N18
\inst1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux8~0_combout\ = (\inst1|dataBuf\(5) & (!\inst1|dataBuf\(7) & ((\inst1|dataBuf\(4)) # (!\inst1|dataBuf\(6))))) # (!\inst1|dataBuf\(5) & (\inst1|dataBuf\(4) & (\inst1|dataBuf\(7) $ (!\inst1|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(5),
	datab => \inst1|dataBuf\(7),
	datac => \inst1|dataBuf\(4),
	datad => \inst1|dataBuf\(6),
	combout => \inst1|Mux8~0_combout\);

-- Location: LCCOMB_X13_Y23_N8
\inst1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst1|dataBuf\(2) & (\inst1|dataBuf\(0) & (\inst1|dataBuf\(3) $ (\inst1|dataBuf\(1))))) # (!\inst1|dataBuf\(2) & (!\inst1|dataBuf\(3) & ((\inst1|dataBuf\(1)) # (\inst1|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(3),
	datab => \inst1|dataBuf\(2),
	datac => \inst1|dataBuf\(1),
	datad => \inst1|dataBuf\(0),
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y23_N2
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst2|clkCounter\(0) & (\inst1|Mux8~0_combout\)) # (!\inst2|clkCounter\(0) & ((\inst1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(0),
	datac => \inst1|Mux8~0_combout\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y23_N4
\inst2|segment[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(5) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(5))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter[1]~clkctrl_outclk\,
	datab => \inst2|segment\(5),
	datad => \inst2|Mux5~0_combout\,
	combout => \inst2|segment\(5));

-- Location: LCCOMB_X13_Y23_N18
\inst1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst1|dataBuf\(1) & (!\inst1|dataBuf\(3) & (\inst1|dataBuf\(0)))) # (!\inst1|dataBuf\(1) & ((\inst1|dataBuf\(2) & (!\inst1|dataBuf\(3))) # (!\inst1|dataBuf\(2) & ((\inst1|dataBuf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(3),
	datab => \inst1|dataBuf\(0),
	datac => \inst1|dataBuf\(1),
	datad => \inst1|dataBuf\(2),
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y23_N26
\inst1|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux9~0_combout\ = (\inst1|dataBuf\(5) & (!\inst1|dataBuf\(7) & ((\inst1|dataBuf\(4))))) # (!\inst1|dataBuf\(5) & ((\inst1|dataBuf\(6) & (!\inst1|dataBuf\(7))) # (!\inst1|dataBuf\(6) & ((\inst1|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(7),
	datab => \inst1|dataBuf\(6),
	datac => \inst1|dataBuf\(5),
	datad => \inst1|dataBuf\(4),
	combout => \inst1|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y23_N12
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst2|clkCounter\(0) & ((\inst1|Mux9~0_combout\))) # (!\inst2|clkCounter\(0) & (\inst1|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux2~0_combout\,
	datac => \inst2|clkCounter\(0),
	datad => \inst1|Mux9~0_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y23_N4
\inst2|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(4) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(4))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter[1]~clkctrl_outclk\,
	datab => \inst2|segment\(4),
	datad => \inst2|Mux6~0_combout\,
	combout => \inst2|segment\(4));

-- Location: LCCOMB_X13_Y23_N22
\inst1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst1|dataBuf\(1) & ((\inst1|dataBuf\(2) & ((\inst1|dataBuf\(0)))) # (!\inst1|dataBuf\(2) & (\inst1|dataBuf\(3) & !\inst1|dataBuf\(0))))) # (!\inst1|dataBuf\(1) & (!\inst1|dataBuf\(3) & (\inst1|dataBuf\(2) $ 
-- (\inst1|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(3),
	datab => \inst1|dataBuf\(2),
	datac => \inst1|dataBuf\(0),
	datad => \inst1|dataBuf\(1),
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y23_N22
\inst1|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux10~0_combout\ = (\inst1|dataBuf\(5) & ((\inst1|dataBuf\(4) & ((\inst1|dataBuf\(6)))) # (!\inst1|dataBuf\(4) & (\inst1|dataBuf\(7) & !\inst1|dataBuf\(6))))) # (!\inst1|dataBuf\(5) & (!\inst1|dataBuf\(7) & (\inst1|dataBuf\(4) $ 
-- (\inst1|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(7),
	datab => \inst1|dataBuf\(4),
	datac => \inst1|dataBuf\(5),
	datad => \inst1|dataBuf\(6),
	combout => \inst1|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y23_N16
\inst2|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux7~0_combout\ = (\inst2|clkCounter\(0) & ((\inst1|Mux10~0_combout\))) # (!\inst2|clkCounter\(0) & (\inst1|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(0),
	datac => \inst1|Mux3~0_combout\,
	datad => \inst1|Mux10~0_combout\,
	combout => \inst2|Mux7~0_combout\);

-- Location: LCCOMB_X13_Y23_N0
\inst2|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(3) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(3))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter[1]~clkctrl_outclk\,
	datab => \inst2|segment\(3),
	datad => \inst2|Mux7~0_combout\,
	combout => \inst2|segment\(3));

-- Location: LCCOMB_X14_Y23_N8
\inst1|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux11~0_combout\ = (\inst1|dataBuf\(7) & (\inst1|dataBuf\(6) & ((\inst1|dataBuf\(5)) # (!\inst1|dataBuf\(4))))) # (!\inst1|dataBuf\(7) & (!\inst1|dataBuf\(6) & (\inst1|dataBuf\(5) & !\inst1|dataBuf\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(7),
	datab => \inst1|dataBuf\(6),
	datac => \inst1|dataBuf\(5),
	datad => \inst1|dataBuf\(4),
	combout => \inst1|Mux11~0_combout\);

-- Location: LCCOMB_X13_Y23_N12
\inst1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst1|dataBuf\(3) & (\inst1|dataBuf\(2) & ((\inst1|dataBuf\(1)) # (!\inst1|dataBuf\(0))))) # (!\inst1|dataBuf\(3) & (\inst1|dataBuf\(1) & (!\inst1|dataBuf\(0) & !\inst1|dataBuf\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(1),
	datab => \inst1|dataBuf\(3),
	datac => \inst1|dataBuf\(0),
	datad => \inst1|dataBuf\(2),
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y23_N6
\inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (\inst2|clkCounter\(0) & (\inst1|Mux11~0_combout\)) # (!\inst2|clkCounter\(0) & ((\inst1|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux11~0_combout\,
	datac => \inst2|clkCounter\(0),
	datad => \inst1|Mux4~0_combout\,
	combout => \inst2|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y23_N10
\inst2|segment[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(2) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(2))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter[1]~clkctrl_outclk\,
	datab => \inst2|segment\(2),
	datad => \inst2|Mux8~0_combout\,
	combout => \inst2|segment\(2));

-- Location: LCCOMB_X14_Y23_N28
\inst1|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux12~0_combout\ = (\inst1|dataBuf\(5) & ((\inst1|dataBuf\(4) & (\inst1|dataBuf\(7))) # (!\inst1|dataBuf\(4) & ((\inst1|dataBuf\(6)))))) # (!\inst1|dataBuf\(5) & (\inst1|dataBuf\(6) & (\inst1|dataBuf\(7) $ (\inst1|dataBuf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(5),
	datab => \inst1|dataBuf\(7),
	datac => \inst1|dataBuf\(6),
	datad => \inst1|dataBuf\(4),
	combout => \inst1|Mux12~0_combout\);

-- Location: LCCOMB_X13_Y23_N10
\inst1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst1|dataBuf\(1) & ((\inst1|dataBuf\(0) & ((\inst1|dataBuf\(3)))) # (!\inst1|dataBuf\(0) & (\inst1|dataBuf\(2))))) # (!\inst1|dataBuf\(1) & (\inst1|dataBuf\(2) & (\inst1|dataBuf\(0) $ (\inst1|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(1),
	datab => \inst1|dataBuf\(2),
	datac => \inst1|dataBuf\(0),
	datad => \inst1|dataBuf\(3),
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y23_N0
\inst2|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux9~0_combout\ = (\inst2|clkCounter\(0) & (\inst1|Mux12~0_combout\)) # (!\inst2|clkCounter\(0) & ((\inst1|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux12~0_combout\,
	datac => \inst2|clkCounter\(0),
	datad => \inst1|Mux5~0_combout\,
	combout => \inst2|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y23_N20
\inst2|segment[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(1) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(1))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|segment\(1),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|Mux9~0_combout\,
	combout => \inst2|segment\(1));

-- Location: LCCOMB_X14_Y23_N14
\inst1|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux13~0_combout\ = (\inst1|dataBuf\(7) & (\inst1|dataBuf\(4) & (\inst1|dataBuf\(5) $ (\inst1|dataBuf\(6))))) # (!\inst1|dataBuf\(7) & (!\inst1|dataBuf\(5) & (\inst1|dataBuf\(4) $ (\inst1|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(7),
	datab => \inst1|dataBuf\(4),
	datac => \inst1|dataBuf\(5),
	datad => \inst1|dataBuf\(6),
	combout => \inst1|Mux13~0_combout\);

-- Location: LCCOMB_X13_Y23_N24
\inst1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst1|dataBuf\(2) & (!\inst1|dataBuf\(1) & (\inst1|dataBuf\(0) $ (!\inst1|dataBuf\(3))))) # (!\inst1|dataBuf\(2) & (\inst1|dataBuf\(0) & (\inst1|dataBuf\(1) $ (!\inst1|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|dataBuf\(2),
	datab => \inst1|dataBuf\(1),
	datac => \inst1|dataBuf\(0),
	datad => \inst1|dataBuf\(3),
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y23_N16
\inst2|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux10~0_combout\ = (\inst2|clkCounter\(0) & (\inst1|Mux13~0_combout\)) # (!\inst2|clkCounter\(0) & ((\inst1|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Mux13~0_combout\,
	datac => \inst2|clkCounter\(0),
	datad => \inst1|Mux6~0_combout\,
	combout => \inst2|Mux10~0_combout\);

-- Location: LCCOMB_X14_Y23_N2
\inst2|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(0))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|segment\(0),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|Mux10~0_combout\,
	combout => \inst2|segment\(0));

ww_led <= \led~output_o\;

ww_indicator(3) <= \indicator[3]~output_o\;

ww_indicator(2) <= \indicator[2]~output_o\;

ww_indicator(1) <= \indicator[1]~output_o\;

ww_indicator(0) <= \indicator[0]~output_o\;

ww_segment(6) <= \segment[6]~output_o\;

ww_segment(5) <= \segment[5]~output_o\;

ww_segment(4) <= \segment[4]~output_o\;

ww_segment(3) <= \segment[3]~output_o\;

ww_segment(2) <= \segment[2]~output_o\;

ww_segment(1) <= \segment[1]~output_o\;

ww_segment(0) <= \segment[0]~output_o\;
END structure;


