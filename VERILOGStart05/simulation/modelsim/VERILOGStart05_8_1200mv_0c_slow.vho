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

-- DATE "03/21/2024 16:40:03"

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

ENTITY 	VERILOGStart05 IS
    PORT (
	sda : INOUT std_logic;
	led : OUT std_logic;
	clk : IN std_logic;
	rx : IN std_logic;
	tx : OUT std_logic;
	scl : OUT std_logic;
	led1 : OUT std_logic;
	indicator : OUT std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0);
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	key4 : IN std_logic;
	reset : IN std_logic
	);
END VERILOGStart05;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tx	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- scl	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- key1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sda	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart05 IS
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
SIGNAL ww_tx : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_indicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_key4 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \inst10|counter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \key4~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
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
SIGNAL \inst13|led~0_combout\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \inst17|latch~q\ : std_logic;
SIGNAL \inst17|count~0_combout\ : std_logic;
SIGNAL \inst17|count~2_combout\ : std_logic;
SIGNAL \inst17|count~3_combout\ : std_logic;
SIGNAL \inst17|count~4_combout\ : std_logic;
SIGNAL \inst17|count~1_combout\ : std_logic;
SIGNAL \inst17|q~0_combout\ : std_logic;
SIGNAL \inst17|q~q\ : std_logic;
SIGNAL \inst13|stateUART.Updating~q\ : std_logic;
SIGNAL \inst13|Selector3~2_combout\ : std_logic;
SIGNAL \inst13|rxPrev~0_combout\ : std_logic;
SIGNAL \inst13|rxPrev~q\ : std_logic;
SIGNAL \inst13|count[0]~34_combout\ : std_logic;
SIGNAL \inst13|count[0]~22_combout\ : std_logic;
SIGNAL \inst13|LessThan1~0_combout\ : std_logic;
SIGNAL \inst13|LessThan1~2_combout\ : std_logic;
SIGNAL \inst13|LessThan1~1_combout\ : std_logic;
SIGNAL \inst13|Selector3~0_combout\ : std_logic;
SIGNAL \inst13|count~21_combout\ : std_logic;
SIGNAL \inst13|LessThan0~0_combout\ : std_logic;
SIGNAL \inst13|LessThan0~1_combout\ : std_logic;
SIGNAL \inst13|LessThan0~2_combout\ : std_logic;
SIGNAL \inst13|Selector3~4_combout\ : std_logic;
SIGNAL \inst13|Selector1~0_combout\ : std_logic;
SIGNAL \inst13|stateUART.Starting~q\ : std_logic;
SIGNAL \inst13|count[0]~32_combout\ : std_logic;
SIGNAL \inst13|LessThan1~3_combout\ : std_logic;
SIGNAL \inst13|count[0]~33_combout\ : std_logic;
SIGNAL \inst13|count[0]~57_combout\ : std_logic;
SIGNAL \inst13|count[0]~23\ : std_logic;
SIGNAL \inst13|count[1]~24_combout\ : std_logic;
SIGNAL \inst13|count[1]~25\ : std_logic;
SIGNAL \inst13|count[2]~26_combout\ : std_logic;
SIGNAL \inst13|count[2]~27\ : std_logic;
SIGNAL \inst13|count[3]~28_combout\ : std_logic;
SIGNAL \inst13|count[3]~29\ : std_logic;
SIGNAL \inst13|count[4]~30_combout\ : std_logic;
SIGNAL \inst13|count[4]~31\ : std_logic;
SIGNAL \inst13|count[5]~35_combout\ : std_logic;
SIGNAL \inst13|count[5]~36\ : std_logic;
SIGNAL \inst13|count[6]~37_combout\ : std_logic;
SIGNAL \inst13|count[6]~38\ : std_logic;
SIGNAL \inst13|count[7]~39_combout\ : std_logic;
SIGNAL \inst13|count[7]~40\ : std_logic;
SIGNAL \inst13|count[8]~41_combout\ : std_logic;
SIGNAL \inst13|count[8]~42\ : std_logic;
SIGNAL \inst13|count[9]~43_combout\ : std_logic;
SIGNAL \inst13|count[9]~44\ : std_logic;
SIGNAL \inst13|count[10]~45_combout\ : std_logic;
SIGNAL \inst13|count[10]~46\ : std_logic;
SIGNAL \inst13|count[11]~47_combout\ : std_logic;
SIGNAL \inst13|count[11]~48\ : std_logic;
SIGNAL \inst13|count[12]~49_combout\ : std_logic;
SIGNAL \inst13|count[12]~50\ : std_logic;
SIGNAL \inst13|count[13]~51_combout\ : std_logic;
SIGNAL \inst13|count[13]~52\ : std_logic;
SIGNAL \inst13|count[14]~53_combout\ : std_logic;
SIGNAL \inst13|count[14]~54\ : std_logic;
SIGNAL \inst13|count[15]~55_combout\ : std_logic;
SIGNAL \inst13|count[0]~20_combout\ : std_logic;
SIGNAL \inst13|Selector0~5_combout\ : std_logic;
SIGNAL \inst13|Selector0~3_combout\ : std_logic;
SIGNAL \inst13|Selector0~2_combout\ : std_logic;
SIGNAL \inst13|Selector3~5_combout\ : std_logic;
SIGNAL \inst13|Selector0~4_combout\ : std_logic;
SIGNAL \inst13|Selector0~6_combout\ : std_logic;
SIGNAL \inst13|stateUART.Waiting~q\ : std_logic;
SIGNAL \inst13|Selector0~1_combout\ : std_logic;
SIGNAL \inst13|Selector2~0_combout\ : std_logic;
SIGNAL \inst13|Selector2~1_combout\ : std_logic;
SIGNAL \inst13|stateUART.ReceivingData~q\ : std_logic;
SIGNAL \inst13|bitPosition[0]~0_combout\ : std_logic;
SIGNAL \inst13|bitPosition[1]~1_combout\ : std_logic;
SIGNAL \inst13|bitPosition[2]~2_combout\ : std_logic;
SIGNAL \inst13|Selector3~1_combout\ : std_logic;
SIGNAL \inst13|Selector3~3_combout\ : std_logic;
SIGNAL \inst13|stateUART.Stopping~q\ : std_logic;
SIGNAL \inst13|led~q\ : std_logic;
SIGNAL \inst8|counter[0]~17_combout\ : std_logic;
SIGNAL \inst8|counter[0]~18\ : std_logic;
SIGNAL \inst8|counter[1]~19_combout\ : std_logic;
SIGNAL \inst8|counter[1]~20\ : std_logic;
SIGNAL \inst8|counter[2]~21_combout\ : std_logic;
SIGNAL \inst8|counter[2]~22\ : std_logic;
SIGNAL \inst8|counter[3]~23_combout\ : std_logic;
SIGNAL \inst8|counter[3]~24\ : std_logic;
SIGNAL \inst8|counter[4]~25_combout\ : std_logic;
SIGNAL \inst8|counter[4]~26\ : std_logic;
SIGNAL \inst8|counter[5]~27_combout\ : std_logic;
SIGNAL \inst8|counter[5]~28\ : std_logic;
SIGNAL \inst8|counter[6]~29_combout\ : std_logic;
SIGNAL \inst8|counter[6]~30\ : std_logic;
SIGNAL \inst8|counter[7]~31_combout\ : std_logic;
SIGNAL \inst8|counter[7]~32\ : std_logic;
SIGNAL \inst8|counter[8]~33_combout\ : std_logic;
SIGNAL \inst8|counter[8]~34\ : std_logic;
SIGNAL \inst8|counter[9]~35_combout\ : std_logic;
SIGNAL \inst8|counter[9]~36\ : std_logic;
SIGNAL \inst8|counter[10]~37_combout\ : std_logic;
SIGNAL \inst8|counter[10]~38\ : std_logic;
SIGNAL \inst8|counter[11]~39_combout\ : std_logic;
SIGNAL \inst8|counter[11]~40\ : std_logic;
SIGNAL \inst8|counter[12]~41_combout\ : std_logic;
SIGNAL \inst8|counter[12]~42\ : std_logic;
SIGNAL \inst8|counter[13]~43_combout\ : std_logic;
SIGNAL \inst8|counter[13]~44\ : std_logic;
SIGNAL \inst8|counter[14]~45_combout\ : std_logic;
SIGNAL \inst8|counter[14]~46\ : std_logic;
SIGNAL \inst8|counter[15]~47_combout\ : std_logic;
SIGNAL \inst8|counter[15]~48\ : std_logic;
SIGNAL \inst8|counter[16]~49_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|LessThan0~3_combout\ : std_logic;
SIGNAL \inst8|clkOut~0_combout\ : std_logic;
SIGNAL \inst8|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst8|clkOut~q\ : std_logic;
SIGNAL \inst8|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|counter[0]~1_combout\ : std_logic;
SIGNAL \inst10|counter~0_combout\ : std_logic;
SIGNAL \inst10|counter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|Decoder0~1_combout\ : std_logic;
SIGNAL \inst13|dataBuf[5]~1_combout\ : std_logic;
SIGNAL \inst11|updatePrev~q\ : std_logic;
SIGNAL \inst11|always0~0_combout\ : std_logic;
SIGNAL \inst13|Decoder0~3_combout\ : std_logic;
SIGNAL \inst13|dataBuf[7]~3_combout\ : std_logic;
SIGNAL \inst13|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst13|Decoder0~0_combout\ : std_logic;
SIGNAL \inst13|dataBuf[4]~0_combout\ : std_logic;
SIGNAL \inst13|Decoder0~2_combout\ : std_logic;
SIGNAL \inst13|dataBuf[6]~2_combout\ : std_logic;
SIGNAL \inst13|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst11|WideOr7~0_combout\ : std_logic;
SIGNAL \inst13|Decoder0~5_combout\ : std_logic;
SIGNAL \inst13|dataBuf[1]~5_combout\ : std_logic;
SIGNAL \inst13|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst13|Decoder0~6_combout\ : std_logic;
SIGNAL \inst13|dataBuf[2]~6_combout\ : std_logic;
SIGNAL \inst13|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst13|Decoder0~4_combout\ : std_logic;
SIGNAL \inst13|dataBuf[0]~4_combout\ : std_logic;
SIGNAL \inst13|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|Decoder0~7_combout\ : std_logic;
SIGNAL \inst13|dataBuf[3]~7_combout\ : std_logic;
SIGNAL \inst13|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst11|WideOr0~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|WideOr8~0_combout\ : std_logic;
SIGNAL \inst11|WideOr1~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr9~0_combout\ : std_logic;
SIGNAL \inst11|WideOr2~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|WideOr10~0_combout\ : std_logic;
SIGNAL \inst11|WideOr3~0_combout\ : std_logic;
SIGNAL \inst10|Mux8~0_combout\ : std_logic;
SIGNAL \inst11|WideOr4~0_combout\ : std_logic;
SIGNAL \inst11|WideOr11~0_combout\ : std_logic;
SIGNAL \inst10|Mux9~0_combout\ : std_logic;
SIGNAL \inst11|WideOr12~0_combout\ : std_logic;
SIGNAL \inst11|WideOr5~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst11|WideOr6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr13~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst11|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst13|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst8|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst10|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst10|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|ALT_INV_LessThan0~3_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_rx <= rx;
tx <= ww_tx;
scl <= ww_scl;
led1 <= ww_led1;
indicator <= ww_indicator;
segment <= ww_segment;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_key4 <= key4;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|counter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|counter\(1));

\inst8|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|clkOut~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst8|ALT_INV_LessThan0~3_combout\ <= NOT \inst8|LessThan0~3_combout\;

-- Location: IOOBUF_X28_Y24_N9
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|led~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1~output_o\);

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
	i => \inst10|indicator\(1),
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
	i => \inst10|indicator\(0),
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
	i => \inst10|segment\(6),
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
	i => \inst10|segment\(5),
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
	i => \inst10|segment\(4),
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
	i => \inst10|segment\(3),
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
	i => \inst10|segment\(2),
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
	i => \inst10|segment\(1),
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
	i => \inst10|segment\(0),
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

-- Location: LCCOMB_X26_Y21_N8
\inst13|led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|led~0_combout\ = !\inst13|led~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|led~q\,
	combout => \inst13|led~0_combout\);

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

-- Location: FF_X24_Y21_N15
\inst17|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|latch~q\);

-- Location: LCCOMB_X24_Y21_N4
\inst17|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|count~0_combout\ = (!\inst17|count\(3) & (\inst17|latch~q\ $ (!\rx~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|latch~q\,
	datac => \rx~input_o\,
	datad => \inst17|count\(3),
	combout => \inst17|count~0_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst17|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|count~2_combout\ = (!\inst17|count\(0) & (!\inst17|count\(3) & (\rx~input_o\ $ (!\inst17|latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \inst17|latch~q\,
	datac => \inst17|count\(0),
	datad => \inst17|count\(3),
	combout => \inst17|count~2_combout\);

-- Location: FF_X24_Y21_N3
\inst17|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|count\(0));

-- Location: LCCOMB_X24_Y21_N28
\inst17|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|count~3_combout\ = (\inst17|count~0_combout\ & (\inst17|count\(1) $ (\inst17|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|count~0_combout\,
	datac => \inst17|count\(1),
	datad => \inst17|count\(0),
	combout => \inst17|count~3_combout\);

-- Location: FF_X24_Y21_N29
\inst17|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|count\(1));

-- Location: LCCOMB_X24_Y21_N18
\inst17|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|count~4_combout\ = (\inst17|count~0_combout\ & (\inst17|count\(2) $ (((\inst17|count\(1) & \inst17|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|count\(1),
	datab => \inst17|count~0_combout\,
	datac => \inst17|count\(2),
	datad => \inst17|count\(0),
	combout => \inst17|count~4_combout\);

-- Location: FF_X24_Y21_N19
\inst17|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|count\(2));

-- Location: LCCOMB_X24_Y21_N0
\inst17|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|count~1_combout\ = (\inst17|count\(1) & (\inst17|count\(2) & (\inst17|count~0_combout\ & \inst17|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|count\(1),
	datab => \inst17|count\(2),
	datac => \inst17|count~0_combout\,
	datad => \inst17|count\(0),
	combout => \inst17|count~1_combout\);

-- Location: FF_X24_Y21_N1
\inst17|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|count\(3));

-- Location: LCCOMB_X24_Y21_N10
\inst17|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|q~0_combout\ = (\rx~input_o\ & ((\inst17|q~q\) # ((\inst17|latch~q\ & \inst17|count\(3))))) # (!\rx~input_o\ & (\inst17|q~q\ & ((\inst17|latch~q\) # (!\inst17|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx~input_o\,
	datab => \inst17|latch~q\,
	datac => \inst17|q~q\,
	datad => \inst17|count\(3),
	combout => \inst17|q~0_combout\);

-- Location: FF_X24_Y21_N11
\inst17|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|q~q\);

-- Location: FF_X26_Y21_N11
\inst13|stateUART.Updating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|stateUART.Stopping~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|stateUART.Updating~q\);

-- Location: LCCOMB_X26_Y21_N14
\inst13|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~2_combout\ = (!\inst13|stateUART.Updating~q\ & !\inst13|stateUART.Stopping~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|stateUART.Updating~q\,
	datad => \inst13|stateUART.Stopping~q\,
	combout => \inst13|Selector3~2_combout\);

-- Location: LCCOMB_X25_Y21_N22
\inst13|rxPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|rxPrev~0_combout\ = !\inst17|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|q~q\,
	combout => \inst13|rxPrev~0_combout\);

-- Location: FF_X25_Y21_N23
\inst13|rxPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|rxPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|rxPrev~q\);

-- Location: LCCOMB_X25_Y21_N8
\inst13|count[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~34_combout\ = (!\inst13|stateUART.Waiting~q\ & ((\inst13|rxPrev~q\) # (\inst17|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|rxPrev~q\,
	datac => \inst13|stateUART.Waiting~q\,
	datad => \inst17|q~q\,
	combout => \inst13|count[0]~34_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst13|count[0]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~22_combout\ = \inst13|count\(0) $ (VCC)
-- \inst13|count[0]~23\ = CARRY(\inst13|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(0),
	datad => VCC,
	combout => \inst13|count[0]~22_combout\,
	cout => \inst13|count[0]~23\);

-- Location: LCCOMB_X24_Y21_N16
\inst13|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~0_combout\ = (!\inst13|count\(9) & (((!\inst13|count\(4) & !\inst13|count\(5))) # (!\inst13|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(4),
	datab => \inst13|count\(9),
	datac => \inst13|count\(6),
	datad => \inst13|count\(5),
	combout => \inst13|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst13|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~2_combout\ = ((!\inst13|count\(11) & !\inst13|count\(10))) # (!\inst13|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(11),
	datac => \inst13|count\(10),
	datad => \inst13|count\(12),
	combout => \inst13|LessThan1~2_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst13|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~1_combout\ = (!\inst13|count\(7) & (!\inst13|count\(8) & !\inst13|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(7),
	datac => \inst13|count\(8),
	datad => \inst13|count\(11),
	combout => \inst13|LessThan1~1_combout\);

-- Location: LCCOMB_X25_Y21_N2
\inst13|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~0_combout\ = ((!\inst13|LessThan1~2_combout\ & ((!\inst13|LessThan1~1_combout\) # (!\inst13|LessThan1~0_combout\)))) # (!\inst13|count[0]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|LessThan1~0_combout\,
	datab => \inst13|LessThan1~2_combout\,
	datac => \inst13|LessThan1~1_combout\,
	datad => \inst13|count[0]~20_combout\,
	combout => \inst13|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y21_N4
\inst13|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count~21_combout\ = (\inst13|Selector3~2_combout\ & (((!\inst13|Selector3~1_combout\) # (!\inst13|Selector3~0_combout\)) # (!\inst13|stateUART.ReceivingData~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Selector3~2_combout\,
	datab => \inst13|stateUART.ReceivingData~q\,
	datac => \inst13|Selector3~0_combout\,
	datad => \inst13|Selector3~1_combout\,
	combout => \inst13|count~21_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst13|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~0_combout\ = (!\inst13|count\(6) & (((!\inst13|count\(4) & !\inst13|count\(3))) # (!\inst13|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(4),
	datab => \inst13|count\(3),
	datac => \inst13|count\(6),
	datad => \inst13|count\(5),
	combout => \inst13|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y21_N24
\inst13|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~1_combout\ = (\inst13|count\(9) & ((\inst13|count\(7)) # ((\inst13|count\(8)) # (!\inst13|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(9),
	datab => \inst13|count\(7),
	datac => \inst13|count\(8),
	datad => \inst13|LessThan0~0_combout\,
	combout => \inst13|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst13|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan0~2_combout\ = (!\inst13|count\(12) & (((!\inst13|count\(10) & !\inst13|LessThan0~1_combout\)) # (!\inst13|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(12),
	datab => \inst13|count\(10),
	datac => \inst13|count\(11),
	datad => \inst13|LessThan0~1_combout\,
	combout => \inst13|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y21_N28
\inst13|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~4_combout\ = (\inst13|stateUART.Starting~q\ & (((\inst17|q~q\) # (!\inst13|LessThan0~2_combout\)) # (!\inst13|count[0]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count[0]~20_combout\,
	datab => \inst17|q~q\,
	datac => \inst13|stateUART.Starting~q\,
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|Selector3~4_combout\);

-- Location: LCCOMB_X25_Y21_N26
\inst13|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector1~0_combout\ = (\inst13|count~21_combout\ & (!\inst13|Selector3~4_combout\ & ((\inst13|Selector0~1_combout\) # (\inst13|stateUART.Starting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Selector0~1_combout\,
	datab => \inst13|count~21_combout\,
	datac => \inst13|stateUART.Starting~q\,
	datad => \inst13|Selector3~4_combout\,
	combout => \inst13|Selector1~0_combout\);

-- Location: FF_X25_Y21_N27
\inst13|stateUART.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|stateUART.Starting~q\);

-- Location: LCCOMB_X24_Y21_N26
\inst13|count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~32_combout\ = (\inst13|stateUART.Waiting~q\ & (\inst13|count[0]~20_combout\ & ((!\inst13|stateUART.Starting~q\) # (!\inst17|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datab => \inst13|stateUART.Waiting~q\,
	datac => \inst13|count[0]~20_combout\,
	datad => \inst13|stateUART.Starting~q\,
	combout => \inst13|count[0]~32_combout\);

-- Location: LCCOMB_X24_Y21_N8
\inst13|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|LessThan1~3_combout\ = (\inst13|LessThan1~2_combout\) # ((\inst13|LessThan1~0_combout\ & \inst13|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|LessThan1~0_combout\,
	datac => \inst13|LessThan1~2_combout\,
	datad => \inst13|LessThan1~1_combout\,
	combout => \inst13|LessThan1~3_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst13|count[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~33_combout\ = ((\inst13|stateUART.ReceivingData~q\ & (!\inst13|LessThan1~3_combout\)) # (!\inst13|stateUART.ReceivingData~q\ & ((!\inst13|LessThan0~2_combout\)))) # (!\inst13|count[0]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count[0]~32_combout\,
	datab => \inst13|stateUART.ReceivingData~q\,
	datac => \inst13|LessThan1~3_combout\,
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|count[0]~33_combout\);

-- Location: LCCOMB_X24_Y21_N22
\inst13|count[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~57_combout\ = (\inst13|Selector3~2_combout\ & ((\inst13|stateUART.Waiting~q\) # ((!\inst17|q~q\ & !\inst13|rxPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datab => \inst13|rxPrev~q\,
	datac => \inst13|Selector3~2_combout\,
	datad => \inst13|stateUART.Waiting~q\,
	combout => \inst13|count[0]~57_combout\);

-- Location: FF_X23_Y21_N1
\inst13|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[0]~22_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(0));

-- Location: LCCOMB_X23_Y21_N2
\inst13|count[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[1]~24_combout\ = (\inst13|count\(1) & (!\inst13|count[0]~23\)) # (!\inst13|count\(1) & ((\inst13|count[0]~23\) # (GND)))
-- \inst13|count[1]~25\ = CARRY((!\inst13|count[0]~23\) # (!\inst13|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(1),
	datad => VCC,
	cin => \inst13|count[0]~23\,
	combout => \inst13|count[1]~24_combout\,
	cout => \inst13|count[1]~25\);

-- Location: FF_X23_Y21_N3
\inst13|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[1]~24_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(1));

-- Location: LCCOMB_X23_Y21_N4
\inst13|count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[2]~26_combout\ = (\inst13|count\(2) & (\inst13|count[1]~25\ $ (GND))) # (!\inst13|count\(2) & (!\inst13|count[1]~25\ & VCC))
-- \inst13|count[2]~27\ = CARRY((\inst13|count\(2) & !\inst13|count[1]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(2),
	datad => VCC,
	cin => \inst13|count[1]~25\,
	combout => \inst13|count[2]~26_combout\,
	cout => \inst13|count[2]~27\);

-- Location: FF_X23_Y21_N5
\inst13|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[2]~26_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(2));

-- Location: LCCOMB_X23_Y21_N6
\inst13|count[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[3]~28_combout\ = (\inst13|count\(3) & (!\inst13|count[2]~27\)) # (!\inst13|count\(3) & ((\inst13|count[2]~27\) # (GND)))
-- \inst13|count[3]~29\ = CARRY((!\inst13|count[2]~27\) # (!\inst13|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(3),
	datad => VCC,
	cin => \inst13|count[2]~27\,
	combout => \inst13|count[3]~28_combout\,
	cout => \inst13|count[3]~29\);

-- Location: FF_X23_Y21_N7
\inst13|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[3]~28_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(3));

-- Location: LCCOMB_X23_Y21_N8
\inst13|count[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[4]~30_combout\ = (\inst13|count\(4) & (\inst13|count[3]~29\ $ (GND))) # (!\inst13|count\(4) & (!\inst13|count[3]~29\ & VCC))
-- \inst13|count[4]~31\ = CARRY((\inst13|count\(4) & !\inst13|count[3]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(4),
	datad => VCC,
	cin => \inst13|count[3]~29\,
	combout => \inst13|count[4]~30_combout\,
	cout => \inst13|count[4]~31\);

-- Location: FF_X23_Y21_N9
\inst13|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[4]~30_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(4));

-- Location: LCCOMB_X23_Y21_N10
\inst13|count[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[5]~35_combout\ = (\inst13|count\(5) & (!\inst13|count[4]~31\)) # (!\inst13|count\(5) & ((\inst13|count[4]~31\) # (GND)))
-- \inst13|count[5]~36\ = CARRY((!\inst13|count[4]~31\) # (!\inst13|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(5),
	datad => VCC,
	cin => \inst13|count[4]~31\,
	combout => \inst13|count[5]~35_combout\,
	cout => \inst13|count[5]~36\);

-- Location: FF_X23_Y21_N11
\inst13|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[5]~35_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(5));

-- Location: LCCOMB_X23_Y21_N12
\inst13|count[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[6]~37_combout\ = (\inst13|count\(6) & (\inst13|count[5]~36\ $ (GND))) # (!\inst13|count\(6) & (!\inst13|count[5]~36\ & VCC))
-- \inst13|count[6]~38\ = CARRY((\inst13|count\(6) & !\inst13|count[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(6),
	datad => VCC,
	cin => \inst13|count[5]~36\,
	combout => \inst13|count[6]~37_combout\,
	cout => \inst13|count[6]~38\);

-- Location: FF_X23_Y21_N13
\inst13|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[6]~37_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(6));

-- Location: LCCOMB_X23_Y21_N14
\inst13|count[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[7]~39_combout\ = (\inst13|count\(7) & (!\inst13|count[6]~38\)) # (!\inst13|count\(7) & ((\inst13|count[6]~38\) # (GND)))
-- \inst13|count[7]~40\ = CARRY((!\inst13|count[6]~38\) # (!\inst13|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(7),
	datad => VCC,
	cin => \inst13|count[6]~38\,
	combout => \inst13|count[7]~39_combout\,
	cout => \inst13|count[7]~40\);

-- Location: FF_X23_Y21_N15
\inst13|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[7]~39_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(7));

-- Location: LCCOMB_X23_Y21_N16
\inst13|count[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[8]~41_combout\ = (\inst13|count\(8) & (\inst13|count[7]~40\ $ (GND))) # (!\inst13|count\(8) & (!\inst13|count[7]~40\ & VCC))
-- \inst13|count[8]~42\ = CARRY((\inst13|count\(8) & !\inst13|count[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(8),
	datad => VCC,
	cin => \inst13|count[7]~40\,
	combout => \inst13|count[8]~41_combout\,
	cout => \inst13|count[8]~42\);

-- Location: FF_X23_Y21_N17
\inst13|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[8]~41_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(8));

-- Location: LCCOMB_X23_Y21_N18
\inst13|count[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[9]~43_combout\ = (\inst13|count\(9) & (!\inst13|count[8]~42\)) # (!\inst13|count\(9) & ((\inst13|count[8]~42\) # (GND)))
-- \inst13|count[9]~44\ = CARRY((!\inst13|count[8]~42\) # (!\inst13|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(9),
	datad => VCC,
	cin => \inst13|count[8]~42\,
	combout => \inst13|count[9]~43_combout\,
	cout => \inst13|count[9]~44\);

-- Location: FF_X23_Y21_N19
\inst13|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[9]~43_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(9));

-- Location: LCCOMB_X23_Y21_N20
\inst13|count[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[10]~45_combout\ = (\inst13|count\(10) & (\inst13|count[9]~44\ $ (GND))) # (!\inst13|count\(10) & (!\inst13|count[9]~44\ & VCC))
-- \inst13|count[10]~46\ = CARRY((\inst13|count\(10) & !\inst13|count[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(10),
	datad => VCC,
	cin => \inst13|count[9]~44\,
	combout => \inst13|count[10]~45_combout\,
	cout => \inst13|count[10]~46\);

-- Location: FF_X23_Y21_N21
\inst13|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[10]~45_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(10));

-- Location: LCCOMB_X23_Y21_N22
\inst13|count[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[11]~47_combout\ = (\inst13|count\(11) & (!\inst13|count[10]~46\)) # (!\inst13|count\(11) & ((\inst13|count[10]~46\) # (GND)))
-- \inst13|count[11]~48\ = CARRY((!\inst13|count[10]~46\) # (!\inst13|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(11),
	datad => VCC,
	cin => \inst13|count[10]~46\,
	combout => \inst13|count[11]~47_combout\,
	cout => \inst13|count[11]~48\);

-- Location: FF_X23_Y21_N23
\inst13|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[11]~47_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(11));

-- Location: LCCOMB_X23_Y21_N24
\inst13|count[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[12]~49_combout\ = (\inst13|count\(12) & (\inst13|count[11]~48\ $ (GND))) # (!\inst13|count\(12) & (!\inst13|count[11]~48\ & VCC))
-- \inst13|count[12]~50\ = CARRY((\inst13|count\(12) & !\inst13|count[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(12),
	datad => VCC,
	cin => \inst13|count[11]~48\,
	combout => \inst13|count[12]~49_combout\,
	cout => \inst13|count[12]~50\);

-- Location: FF_X23_Y21_N25
\inst13|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[12]~49_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(12));

-- Location: LCCOMB_X23_Y21_N26
\inst13|count[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[13]~51_combout\ = (\inst13|count\(13) & (!\inst13|count[12]~50\)) # (!\inst13|count\(13) & ((\inst13|count[12]~50\) # (GND)))
-- \inst13|count[13]~52\ = CARRY((!\inst13|count[12]~50\) # (!\inst13|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(13),
	datad => VCC,
	cin => \inst13|count[12]~50\,
	combout => \inst13|count[13]~51_combout\,
	cout => \inst13|count[13]~52\);

-- Location: FF_X23_Y21_N27
\inst13|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[13]~51_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(13));

-- Location: LCCOMB_X23_Y21_N28
\inst13|count[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[14]~53_combout\ = (\inst13|count\(14) & (\inst13|count[13]~52\ $ (GND))) # (!\inst13|count\(14) & (!\inst13|count[13]~52\ & VCC))
-- \inst13|count[14]~54\ = CARRY((\inst13|count\(14) & !\inst13|count[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|count\(14),
	datad => VCC,
	cin => \inst13|count[13]~52\,
	combout => \inst13|count[14]~53_combout\,
	cout => \inst13|count[14]~54\);

-- Location: FF_X23_Y21_N29
\inst13|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[14]~53_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(14));

-- Location: LCCOMB_X23_Y21_N30
\inst13|count[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[15]~55_combout\ = \inst13|count\(15) $ (\inst13|count[14]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(15),
	cin => \inst13|count[14]~54\,
	combout => \inst13|count[15]~55_combout\);

-- Location: FF_X23_Y21_N31
\inst13|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count[15]~55_combout\,
	sclr => \inst13|count[0]~33_combout\,
	ena => \inst13|count[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(15));

-- Location: LCCOMB_X24_Y21_N14
\inst13|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count[0]~20_combout\ = (!\inst13|count\(13) & (!\inst13|count\(15) & !\inst13|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count\(13),
	datab => \inst13|count\(15),
	datad => \inst13|count\(14),
	combout => \inst13|count[0]~20_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst13|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~5_combout\ = (\inst13|stateUART.ReceivingData~q\ & (((!\inst13|Selector3~1_combout\)))) # (!\inst13|stateUART.ReceivingData~q\ & (\inst13|count[0]~20_combout\ & ((\inst13|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count[0]~20_combout\,
	datab => \inst13|Selector3~1_combout\,
	datac => \inst13|stateUART.ReceivingData~q\,
	datad => \inst13|LessThan0~2_combout\,
	combout => \inst13|Selector0~5_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst13|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~3_combout\ = (!\inst13|stateUART.Waiting~q\ & ((\inst17|q~q\) # ((!\inst13|stateUART.Starting~q\ & \inst13|rxPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|stateUART.Starting~q\,
	datab => \inst13|rxPrev~q\,
	datac => \inst13|stateUART.Waiting~q\,
	datad => \inst17|q~q\,
	combout => \inst13|Selector0~3_combout\);

-- Location: LCCOMB_X26_Y21_N10
\inst13|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~2_combout\ = (\inst13|stateUART.Updating~q\) # ((\inst13|stateUART.Starting~q\ & \inst17|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|stateUART.Starting~q\,
	datac => \inst13|stateUART.Updating~q\,
	datad => \inst17|q~q\,
	combout => \inst13|Selector0~2_combout\);

-- Location: LCCOMB_X25_Y21_N30
\inst13|Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~5_combout\ = (\inst13|stateUART.ReceivingData~q\ & \inst13|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|stateUART.ReceivingData~q\,
	datad => \inst13|Selector3~0_combout\,
	combout => \inst13|Selector3~5_combout\);

-- Location: LCCOMB_X26_Y21_N18
\inst13|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~4_combout\ = (\inst13|Selector0~2_combout\) # ((\inst13|Selector0~3_combout\ & (!\inst13|stateUART.Stopping~q\ & !\inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Selector0~3_combout\,
	datab => \inst13|stateUART.Stopping~q\,
	datac => \inst13|Selector0~2_combout\,
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Selector0~4_combout\);

-- Location: LCCOMB_X26_Y21_N4
\inst13|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~6_combout\ = (!\inst13|Selector0~4_combout\ & (((\inst13|stateUART.Stopping~q\) # (!\inst13|Selector0~5_combout\)) # (!\inst13|count[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|count[0]~34_combout\,
	datab => \inst13|stateUART.Stopping~q\,
	datac => \inst13|Selector0~5_combout\,
	datad => \inst13|Selector0~4_combout\,
	combout => \inst13|Selector0~6_combout\);

-- Location: FF_X26_Y21_N5
\inst13|stateUART.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|Selector0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|stateUART.Waiting~q\);

-- Location: LCCOMB_X25_Y21_N0
\inst13|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector0~1_combout\ = (!\inst13|rxPrev~q\ & (!\inst13|stateUART.Waiting~q\ & !\inst17|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|rxPrev~q\,
	datac => \inst13|stateUART.Waiting~q\,
	datad => \inst17|q~q\,
	combout => \inst13|Selector0~1_combout\);

-- Location: LCCOMB_X25_Y21_N14
\inst13|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector2~0_combout\ = (!\inst13|Selector0~1_combout\ & (\inst13|stateUART.ReceivingData~q\ & (\inst13|count~21_combout\ & !\inst13|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Selector0~1_combout\,
	datab => \inst13|stateUART.ReceivingData~q\,
	datac => \inst13|count~21_combout\,
	datad => \inst13|Selector3~4_combout\,
	combout => \inst13|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst13|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector2~1_combout\ = (\inst13|Selector2~0_combout\) # ((!\inst17|q~q\ & (\inst13|Selector3~2_combout\ & \inst13|Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datab => \inst13|Selector3~2_combout\,
	datac => \inst13|Selector2~0_combout\,
	datad => \inst13|Selector3~4_combout\,
	combout => \inst13|Selector2~1_combout\);

-- Location: FF_X25_Y21_N17
\inst13|stateUART.ReceivingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|stateUART.ReceivingData~q\);

-- Location: LCCOMB_X24_Y21_N20
\inst13|bitPosition[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|bitPosition[0]~0_combout\ = \inst13|bitPosition\(0) $ (((\inst13|stateUART.ReceivingData~q\ & ((!\inst13|LessThan1~3_combout\) # (!\inst13|count[0]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|stateUART.ReceivingData~q\,
	datab => \inst13|count[0]~20_combout\,
	datac => \inst13|bitPosition\(0),
	datad => \inst13|LessThan1~3_combout\,
	combout => \inst13|bitPosition[0]~0_combout\);

-- Location: FF_X24_Y21_N21
\inst13|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|bitPosition[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bitPosition\(0));

-- Location: LCCOMB_X26_Y21_N6
\inst13|bitPosition[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|bitPosition[1]~1_combout\ = \inst13|bitPosition\(1) $ (((\inst13|bitPosition\(0) & (\inst13|stateUART.ReceivingData~q\ & \inst13|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|stateUART.ReceivingData~q\,
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~0_combout\,
	combout => \inst13|bitPosition[1]~1_combout\);

-- Location: FF_X26_Y21_N7
\inst13|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|bitPosition[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bitPosition\(1));

-- Location: LCCOMB_X26_Y21_N16
\inst13|bitPosition[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|bitPosition[2]~2_combout\ = \inst13|bitPosition\(2) $ (((\inst13|bitPosition\(1) & (\inst13|bitPosition\(0) & \inst13|Selector3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(1),
	datab => \inst13|bitPosition\(0),
	datac => \inst13|bitPosition\(2),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|bitPosition[2]~2_combout\);

-- Location: FF_X26_Y21_N17
\inst13|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|bitPosition[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|bitPosition\(2));

-- Location: LCCOMB_X26_Y21_N30
\inst13|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~1_combout\ = (\inst13|bitPosition\(0) & (\inst13|bitPosition\(2) & \inst13|bitPosition\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datad => \inst13|bitPosition\(1),
	combout => \inst13|Selector3~1_combout\);

-- Location: LCCOMB_X26_Y21_N2
\inst13|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Selector3~3_combout\ = (\inst13|Selector3~1_combout\ & (\inst13|stateUART.ReceivingData~q\ & (\inst13|Selector3~2_combout\ & \inst13|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Selector3~1_combout\,
	datab => \inst13|stateUART.ReceivingData~q\,
	datac => \inst13|Selector3~2_combout\,
	datad => \inst13|Selector3~0_combout\,
	combout => \inst13|Selector3~3_combout\);

-- Location: FF_X26_Y21_N3
\inst13|stateUART.Stopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|stateUART.Stopping~q\);

-- Location: FF_X26_Y21_N9
\inst13|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|led~0_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|led~q\);

-- Location: LCCOMB_X23_Y20_N16
\inst8|counter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[0]~17_combout\ = \inst8|counter\(0) $ (VCC)
-- \inst8|counter[0]~18\ = CARRY(\inst8|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datad => VCC,
	combout => \inst8|counter[0]~17_combout\,
	cout => \inst8|counter[0]~18\);

-- Location: FF_X23_Y20_N17
\inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[0]~17_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(0));

-- Location: LCCOMB_X23_Y20_N18
\inst8|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[1]~19_combout\ = (\inst8|counter\(1) & (!\inst8|counter[0]~18\)) # (!\inst8|counter\(1) & ((\inst8|counter[0]~18\) # (GND)))
-- \inst8|counter[1]~20\ = CARRY((!\inst8|counter[0]~18\) # (!\inst8|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(1),
	datad => VCC,
	cin => \inst8|counter[0]~18\,
	combout => \inst8|counter[1]~19_combout\,
	cout => \inst8|counter[1]~20\);

-- Location: FF_X23_Y20_N19
\inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[1]~19_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(1));

-- Location: LCCOMB_X23_Y20_N20
\inst8|counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[2]~21_combout\ = (\inst8|counter\(2) & (\inst8|counter[1]~20\ $ (GND))) # (!\inst8|counter\(2) & (!\inst8|counter[1]~20\ & VCC))
-- \inst8|counter[2]~22\ = CARRY((\inst8|counter\(2) & !\inst8|counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(2),
	datad => VCC,
	cin => \inst8|counter[1]~20\,
	combout => \inst8|counter[2]~21_combout\,
	cout => \inst8|counter[2]~22\);

-- Location: FF_X23_Y20_N21
\inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[2]~21_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(2));

-- Location: LCCOMB_X23_Y20_N22
\inst8|counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[3]~23_combout\ = (\inst8|counter\(3) & (!\inst8|counter[2]~22\)) # (!\inst8|counter\(3) & ((\inst8|counter[2]~22\) # (GND)))
-- \inst8|counter[3]~24\ = CARRY((!\inst8|counter[2]~22\) # (!\inst8|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(3),
	datad => VCC,
	cin => \inst8|counter[2]~22\,
	combout => \inst8|counter[3]~23_combout\,
	cout => \inst8|counter[3]~24\);

-- Location: FF_X23_Y20_N23
\inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[3]~23_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(3));

-- Location: LCCOMB_X23_Y20_N24
\inst8|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[4]~25_combout\ = (\inst8|counter\(4) & (\inst8|counter[3]~24\ $ (GND))) # (!\inst8|counter\(4) & (!\inst8|counter[3]~24\ & VCC))
-- \inst8|counter[4]~26\ = CARRY((\inst8|counter\(4) & !\inst8|counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(4),
	datad => VCC,
	cin => \inst8|counter[3]~24\,
	combout => \inst8|counter[4]~25_combout\,
	cout => \inst8|counter[4]~26\);

-- Location: FF_X23_Y20_N25
\inst8|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[4]~25_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(4));

-- Location: LCCOMB_X23_Y20_N26
\inst8|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[5]~27_combout\ = (\inst8|counter\(5) & (!\inst8|counter[4]~26\)) # (!\inst8|counter\(5) & ((\inst8|counter[4]~26\) # (GND)))
-- \inst8|counter[5]~28\ = CARRY((!\inst8|counter[4]~26\) # (!\inst8|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datad => VCC,
	cin => \inst8|counter[4]~26\,
	combout => \inst8|counter[5]~27_combout\,
	cout => \inst8|counter[5]~28\);

-- Location: FF_X23_Y20_N27
\inst8|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[5]~27_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(5));

-- Location: LCCOMB_X23_Y20_N28
\inst8|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[6]~29_combout\ = (\inst8|counter\(6) & (\inst8|counter[5]~28\ $ (GND))) # (!\inst8|counter\(6) & (!\inst8|counter[5]~28\ & VCC))
-- \inst8|counter[6]~30\ = CARRY((\inst8|counter\(6) & !\inst8|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(6),
	datad => VCC,
	cin => \inst8|counter[5]~28\,
	combout => \inst8|counter[6]~29_combout\,
	cout => \inst8|counter[6]~30\);

-- Location: FF_X23_Y20_N29
\inst8|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[6]~29_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(6));

-- Location: LCCOMB_X23_Y20_N30
\inst8|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[7]~31_combout\ = (\inst8|counter\(7) & (!\inst8|counter[6]~30\)) # (!\inst8|counter\(7) & ((\inst8|counter[6]~30\) # (GND)))
-- \inst8|counter[7]~32\ = CARRY((!\inst8|counter[6]~30\) # (!\inst8|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(7),
	datad => VCC,
	cin => \inst8|counter[6]~30\,
	combout => \inst8|counter[7]~31_combout\,
	cout => \inst8|counter[7]~32\);

-- Location: FF_X23_Y20_N31
\inst8|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[7]~31_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(7));

-- Location: LCCOMB_X23_Y19_N0
\inst8|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~33_combout\ = (\inst8|counter\(8) & (\inst8|counter[7]~32\ $ (GND))) # (!\inst8|counter\(8) & (!\inst8|counter[7]~32\ & VCC))
-- \inst8|counter[8]~34\ = CARRY((\inst8|counter\(8) & !\inst8|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(8),
	datad => VCC,
	cin => \inst8|counter[7]~32\,
	combout => \inst8|counter[8]~33_combout\,
	cout => \inst8|counter[8]~34\);

-- Location: FF_X23_Y19_N1
\inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[8]~33_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(8));

-- Location: LCCOMB_X23_Y19_N2
\inst8|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[9]~35_combout\ = (\inst8|counter\(9) & (!\inst8|counter[8]~34\)) # (!\inst8|counter\(9) & ((\inst8|counter[8]~34\) # (GND)))
-- \inst8|counter[9]~36\ = CARRY((!\inst8|counter[8]~34\) # (!\inst8|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(9),
	datad => VCC,
	cin => \inst8|counter[8]~34\,
	combout => \inst8|counter[9]~35_combout\,
	cout => \inst8|counter[9]~36\);

-- Location: FF_X23_Y19_N3
\inst8|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[9]~35_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(9));

-- Location: LCCOMB_X23_Y19_N4
\inst8|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[10]~37_combout\ = (\inst8|counter\(10) & (\inst8|counter[9]~36\ $ (GND))) # (!\inst8|counter\(10) & (!\inst8|counter[9]~36\ & VCC))
-- \inst8|counter[10]~38\ = CARRY((\inst8|counter\(10) & !\inst8|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(10),
	datad => VCC,
	cin => \inst8|counter[9]~36\,
	combout => \inst8|counter[10]~37_combout\,
	cout => \inst8|counter[10]~38\);

-- Location: FF_X23_Y19_N5
\inst8|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[10]~37_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(10));

-- Location: LCCOMB_X23_Y19_N6
\inst8|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[11]~39_combout\ = (\inst8|counter\(11) & (!\inst8|counter[10]~38\)) # (!\inst8|counter\(11) & ((\inst8|counter[10]~38\) # (GND)))
-- \inst8|counter[11]~40\ = CARRY((!\inst8|counter[10]~38\) # (!\inst8|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(11),
	datad => VCC,
	cin => \inst8|counter[10]~38\,
	combout => \inst8|counter[11]~39_combout\,
	cout => \inst8|counter[11]~40\);

-- Location: FF_X23_Y19_N7
\inst8|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[11]~39_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(11));

-- Location: LCCOMB_X23_Y19_N8
\inst8|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[12]~41_combout\ = (\inst8|counter\(12) & (\inst8|counter[11]~40\ $ (GND))) # (!\inst8|counter\(12) & (!\inst8|counter[11]~40\ & VCC))
-- \inst8|counter[12]~42\ = CARRY((\inst8|counter\(12) & !\inst8|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(12),
	datad => VCC,
	cin => \inst8|counter[11]~40\,
	combout => \inst8|counter[12]~41_combout\,
	cout => \inst8|counter[12]~42\);

-- Location: FF_X23_Y19_N9
\inst8|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[12]~41_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(12));

-- Location: LCCOMB_X23_Y19_N10
\inst8|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[13]~43_combout\ = (\inst8|counter\(13) & (!\inst8|counter[12]~42\)) # (!\inst8|counter\(13) & ((\inst8|counter[12]~42\) # (GND)))
-- \inst8|counter[13]~44\ = CARRY((!\inst8|counter[12]~42\) # (!\inst8|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(13),
	datad => VCC,
	cin => \inst8|counter[12]~42\,
	combout => \inst8|counter[13]~43_combout\,
	cout => \inst8|counter[13]~44\);

-- Location: FF_X23_Y19_N11
\inst8|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[13]~43_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(13));

-- Location: LCCOMB_X23_Y19_N12
\inst8|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[14]~45_combout\ = (\inst8|counter\(14) & (\inst8|counter[13]~44\ $ (GND))) # (!\inst8|counter\(14) & (!\inst8|counter[13]~44\ & VCC))
-- \inst8|counter[14]~46\ = CARRY((\inst8|counter\(14) & !\inst8|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(14),
	datad => VCC,
	cin => \inst8|counter[13]~44\,
	combout => \inst8|counter[14]~45_combout\,
	cout => \inst8|counter[14]~46\);

-- Location: FF_X23_Y19_N13
\inst8|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[14]~45_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(14));

-- Location: LCCOMB_X23_Y19_N14
\inst8|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[15]~47_combout\ = (\inst8|counter\(15) & (!\inst8|counter[14]~46\)) # (!\inst8|counter\(15) & ((\inst8|counter[14]~46\) # (GND)))
-- \inst8|counter[15]~48\ = CARRY((!\inst8|counter[14]~46\) # (!\inst8|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(15),
	datad => VCC,
	cin => \inst8|counter[14]~46\,
	combout => \inst8|counter[15]~47_combout\,
	cout => \inst8|counter[15]~48\);

-- Location: FF_X23_Y19_N15
\inst8|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[15]~47_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(15));

-- Location: LCCOMB_X23_Y19_N16
\inst8|counter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[16]~49_combout\ = \inst8|counter[15]~48\ $ (!\inst8|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter\(16),
	cin => \inst8|counter[15]~48\,
	combout => \inst8|counter[16]~49_combout\);

-- Location: FF_X23_Y19_N17
\inst8|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[16]~49_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(16));

-- Location: LCCOMB_X23_Y20_N10
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = (!\inst8|counter\(8) & (((!\inst8|counter\(6) & !\inst8|counter\(5))) # (!\inst8|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(7),
	datab => \inst8|counter\(6),
	datac => \inst8|counter\(5),
	datad => \inst8|counter\(8),
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = ((\inst8|LessThan0~0_combout\) # (!\inst8|counter\(10))) # (!\inst8|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(9),
	datac => \inst8|counter\(10),
	datad => \inst8|LessThan0~0_combout\,
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y19_N26
\inst8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~2_combout\ = (!\inst8|counter\(13) & (!\inst8|counter\(11) & (!\inst8|counter\(12) & !\inst8|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(13),
	datab => \inst8|counter\(11),
	datac => \inst8|counter\(12),
	datad => \inst8|counter\(14),
	combout => \inst8|LessThan0~2_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst8|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_combout\ = (((\inst8|LessThan0~1_combout\ & \inst8|LessThan0~2_combout\)) # (!\inst8|counter\(15))) # (!\inst8|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(16),
	datab => \inst8|counter\(15),
	datac => \inst8|LessThan0~1_combout\,
	datad => \inst8|LessThan0~2_combout\,
	combout => \inst8|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst8|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|clkOut~0_combout\ = \inst8|clkOut~q\ $ (!\inst8|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|clkOut~q\,
	datad => \inst8|LessThan0~3_combout\,
	combout => \inst8|clkOut~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst8|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|clkOut~feeder_combout\ = \inst8|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|clkOut~0_combout\,
	combout => \inst8|clkOut~feeder_combout\);

-- Location: FF_X23_Y20_N7
\inst8|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clkOut~q\);

-- Location: CLKCTRL_G6
\inst8|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y20_N18
\inst10|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter[0]~1_combout\ = !\inst10|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|counter\(0),
	combout => \inst10|counter[0]~1_combout\);

-- Location: FF_X29_Y20_N19
\inst10|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst10|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(0));

-- Location: LCCOMB_X29_Y20_N14
\inst10|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter~0_combout\ = \inst10|counter\(1) $ (\inst10|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|counter\(1),
	datad => \inst10|counter\(0),
	combout => \inst10|counter~0_combout\);

-- Location: FF_X29_Y20_N21
\inst10|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	asdata => \inst10|counter~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(1));

-- Location: CLKCTRL_G9
\inst10|counter[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|counter[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|counter[1]~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y20_N28
\inst10|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|indicator\(1)))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (!\inst10|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|indicator\(1),
	combout => \inst10|indicator\(1));

-- Location: LCCOMB_X29_Y20_N20
\inst10|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|indicator\(0))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|indicator\(0),
	datab => \inst10|counter\(0),
	datad => \inst10|counter[1]~clkctrl_outclk\,
	combout => \inst10|indicator\(0));

-- Location: LCCOMB_X26_Y21_N12
\inst13|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~1_combout\ = (!\inst13|bitPosition\(1) & (\inst13|bitPosition\(2) & (\inst13|bitPosition\(0) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(1),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(0),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~1_combout\);

-- Location: LCCOMB_X26_Y21_N28
\inst13|dataBuf[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[5]~1_combout\ = (\inst13|Decoder0~1_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~1_combout\ & ((\inst13|dataBuf\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(5),
	datad => \inst13|Decoder0~1_combout\,
	combout => \inst13|dataBuf[5]~1_combout\);

-- Location: FF_X26_Y21_N29
\inst13|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(5));

-- Location: FF_X26_Y21_N15
\inst13|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|dataBuf\(5),
	sload => VCC,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(5));

-- Location: FF_X28_Y20_N19
\inst11|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|clkOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|updatePrev~q\);

-- Location: LCCOMB_X28_Y20_N18
\inst11|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|always0~0_combout\ = (\inst8|clkOut~q\ & !\inst11|updatePrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clkOut~q\,
	datac => \inst11|updatePrev~q\,
	combout => \inst11|always0~0_combout\);

-- Location: FF_X28_Y20_N27
\inst11|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(5),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(5));

-- Location: LCCOMB_X26_Y20_N0
\inst13|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~3_combout\ = (\inst13|bitPosition\(0) & (\inst13|bitPosition\(2) & (\inst13|bitPosition\(1) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~3_combout\);

-- Location: LCCOMB_X26_Y20_N2
\inst13|dataBuf[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[7]~3_combout\ = (\inst13|Decoder0~3_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~3_combout\ & ((\inst13|dataBuf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(7),
	datad => \inst13|Decoder0~3_combout\,
	combout => \inst13|dataBuf[7]~3_combout\);

-- Location: FF_X26_Y20_N3
\inst13|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(7));

-- Location: LCCOMB_X26_Y20_N16
\inst13|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[7]~feeder_combout\ = \inst13|dataBuf\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|dataBuf\(7),
	combout => \inst13|data[7]~feeder_combout\);

-- Location: FF_X26_Y20_N17
\inst13|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[7]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(7));

-- Location: FF_X28_Y20_N15
\inst11|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(7),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(7));

-- Location: LCCOMB_X26_Y21_N0
\inst13|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~0_combout\ = (!\inst13|bitPosition\(1) & (\inst13|bitPosition\(2) & (!\inst13|bitPosition\(0) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(1),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(0),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~0_combout\);

-- Location: LCCOMB_X26_Y21_N22
\inst13|dataBuf[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[4]~0_combout\ = (\inst13|Decoder0~0_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~0_combout\ & ((\inst13|dataBuf\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(4),
	datad => \inst13|Decoder0~0_combout\,
	combout => \inst13|dataBuf[4]~0_combout\);

-- Location: FF_X26_Y21_N23
\inst13|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(4));

-- Location: FF_X26_Y21_N31
\inst13|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|dataBuf\(4),
	sload => VCC,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(4));

-- Location: FF_X28_Y20_N5
\inst11|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(4),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(4));

-- Location: LCCOMB_X26_Y21_N20
\inst13|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~2_combout\ = (\inst13|bitPosition\(1) & (\inst13|bitPosition\(2) & (!\inst13|bitPosition\(0) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(1),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(0),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~2_combout\);

-- Location: LCCOMB_X26_Y21_N26
\inst13|dataBuf[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[6]~2_combout\ = (\inst13|Decoder0~2_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~2_combout\ & ((\inst13|dataBuf\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(6),
	datad => \inst13|Decoder0~2_combout\,
	combout => \inst13|dataBuf[6]~2_combout\);

-- Location: FF_X26_Y21_N27
\inst13|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(6));

-- Location: LCCOMB_X26_Y21_N24
\inst13|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[6]~feeder_combout\ = \inst13|dataBuf\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|dataBuf\(6),
	combout => \inst13|data[6]~feeder_combout\);

-- Location: FF_X26_Y21_N25
\inst13|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[6]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(6));

-- Location: FF_X28_Y20_N29
\inst11|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(6),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(6));

-- Location: LCCOMB_X28_Y20_N4
\inst11|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr7~0_combout\ = (\inst11|dataBuf\(4) & ((\inst11|dataBuf\(7)) # (\inst11|dataBuf\(5) $ (\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(4) & ((\inst11|dataBuf\(5)) # (\inst11|dataBuf\(7) $ (\inst11|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(7),
	datac => \inst11|dataBuf\(4),
	datad => \inst11|dataBuf\(6),
	combout => \inst11|WideOr7~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\inst13|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~5_combout\ = (\inst13|bitPosition\(0) & (!\inst13|bitPosition\(2) & (!\inst13|bitPosition\(1) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~5_combout\);

-- Location: LCCOMB_X26_Y20_N22
\inst13|dataBuf[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[1]~5_combout\ = (\inst13|Decoder0~5_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~5_combout\ & ((\inst13|dataBuf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(1),
	datad => \inst13|Decoder0~5_combout\,
	combout => \inst13|dataBuf[1]~5_combout\);

-- Location: FF_X26_Y20_N23
\inst13|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(1));

-- Location: LCCOMB_X26_Y20_N20
\inst13|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[1]~feeder_combout\ = \inst13|dataBuf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|dataBuf\(1),
	combout => \inst13|data[1]~feeder_combout\);

-- Location: FF_X26_Y20_N21
\inst13|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[1]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(1));

-- Location: FF_X28_Y20_N23
\inst11|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(1),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(1));

-- Location: LCCOMB_X26_Y20_N6
\inst13|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~6_combout\ = (!\inst13|bitPosition\(0) & (!\inst13|bitPosition\(2) & (\inst13|bitPosition\(1) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~6_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst13|dataBuf[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[2]~6_combout\ = (\inst13|Decoder0~6_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~6_combout\ & ((\inst13|dataBuf\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(2),
	datad => \inst13|Decoder0~6_combout\,
	combout => \inst13|dataBuf[2]~6_combout\);

-- Location: FF_X26_Y20_N29
\inst13|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(2));

-- Location: LCCOMB_X26_Y20_N26
\inst13|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[2]~feeder_combout\ = \inst13|dataBuf\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|dataBuf\(2),
	combout => \inst13|data[2]~feeder_combout\);

-- Location: FF_X26_Y20_N27
\inst13|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[2]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(2));

-- Location: FF_X28_Y20_N9
\inst11|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(2),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(2));

-- Location: LCCOMB_X26_Y20_N10
\inst13|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~4_combout\ = (!\inst13|bitPosition\(0) & (!\inst13|bitPosition\(2) & (!\inst13|bitPosition\(1) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~4_combout\);

-- Location: LCCOMB_X26_Y20_N8
\inst13|dataBuf[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[0]~4_combout\ = (\inst13|Decoder0~4_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~4_combout\ & ((\inst13|dataBuf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(0),
	datad => \inst13|Decoder0~4_combout\,
	combout => \inst13|dataBuf[0]~4_combout\);

-- Location: FF_X26_Y20_N9
\inst13|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(0));

-- Location: LCCOMB_X26_Y20_N14
\inst13|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[0]~feeder_combout\ = \inst13|dataBuf\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|dataBuf\(0),
	combout => \inst13|data[0]~feeder_combout\);

-- Location: FF_X26_Y20_N15
\inst13|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[0]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(0));

-- Location: FF_X28_Y20_N25
\inst11|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(0),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(0));

-- Location: LCCOMB_X26_Y20_N24
\inst13|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|Decoder0~7_combout\ = (\inst13|bitPosition\(0) & (!\inst13|bitPosition\(2) & (\inst13|bitPosition\(1) & \inst13|Selector3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|bitPosition\(0),
	datab => \inst13|bitPosition\(2),
	datac => \inst13|bitPosition\(1),
	datad => \inst13|Selector3~5_combout\,
	combout => \inst13|Decoder0~7_combout\);

-- Location: LCCOMB_X26_Y20_N30
\inst13|dataBuf[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|dataBuf[3]~7_combout\ = (\inst13|Decoder0~7_combout\ & (\inst17|q~q\)) # (!\inst13|Decoder0~7_combout\ & ((\inst13|dataBuf\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|q~q\,
	datac => \inst13|dataBuf\(3),
	datad => \inst13|Decoder0~7_combout\,
	combout => \inst13|dataBuf[3]~7_combout\);

-- Location: FF_X26_Y20_N31
\inst13|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|dataBuf[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|dataBuf\(3));

-- Location: LCCOMB_X26_Y20_N4
\inst13|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|data[3]~feeder_combout\ = \inst13|dataBuf\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|dataBuf\(3),
	combout => \inst13|data[3]~feeder_combout\);

-- Location: FF_X26_Y20_N5
\inst13|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|data[3]~feeder_combout\,
	ena => \inst13|stateUART.Stopping~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|data\(3));

-- Location: FF_X28_Y20_N11
\inst11|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst13|data\(3),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(3));

-- Location: LCCOMB_X28_Y20_N24
\inst11|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr0~0_combout\ = (\inst11|dataBuf\(0) & ((\inst11|dataBuf\(3)) # (\inst11|dataBuf\(1) $ (\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(0) & ((\inst11|dataBuf\(1)) # (\inst11|dataBuf\(2) $ (\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(1),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr0~0_combout\);

-- Location: LCCOMB_X29_Y20_N12
\inst10|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr7~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr7~0_combout\,
	datad => \inst11|WideOr0~0_combout\,
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X29_Y20_N10
\inst10|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(6) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(6))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((!\inst10|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(6),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux5~0_combout\,
	combout => \inst10|segment\(6));

-- Location: LCCOMB_X28_Y20_N16
\inst11|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr8~0_combout\ = (\inst11|dataBuf\(4) & (\inst11|dataBuf\(7) $ (((\inst11|dataBuf\(5)) # (!\inst11|dataBuf\(6)))))) # (!\inst11|dataBuf\(4) & (!\inst11|dataBuf\(6) & (\inst11|dataBuf\(5) & !\inst11|dataBuf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(4),
	datab => \inst11|dataBuf\(6),
	datac => \inst11|dataBuf\(5),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr8~0_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst11|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr1~0_combout\ = (\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & ((\inst11|dataBuf\(0)) # (!\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(0) & (\inst11|dataBuf\(3) $ (!\inst11|dataBuf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(2),
	combout => \inst11|WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst10|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr8~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr8~0_combout\,
	datad => \inst11|WideOr1~0_combout\,
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\inst10|segment[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(5) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(5))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(5),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux6~0_combout\,
	combout => \inst10|segment\(5));

-- Location: LCCOMB_X29_Y20_N4
\inst11|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr9~0_combout\ = (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & (\inst11|dataBuf\(4)))) # (!\inst11|dataBuf\(5) & ((\inst11|dataBuf\(6) & (!\inst11|dataBuf\(7))) # (!\inst11|dataBuf\(6) & ((\inst11|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(7),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(5),
	datad => \inst11|dataBuf\(6),
	combout => \inst11|WideOr9~0_combout\);

-- Location: LCCOMB_X29_Y20_N24
\inst11|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr2~0_combout\ = (\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(0)))) # (!\inst11|dataBuf\(1) & ((\inst11|dataBuf\(2) & (!\inst11|dataBuf\(3))) # (!\inst11|dataBuf\(2) & ((\inst11|dataBuf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(2),
	combout => \inst11|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\inst10|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr9~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr9~0_combout\,
	datad => \inst11|WideOr2~0_combout\,
	combout => \inst10|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y20_N8
\inst10|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(4) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(4))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|segment\(4),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux7~0_combout\,
	combout => \inst10|segment\(4));

-- Location: LCCOMB_X28_Y20_N14
\inst11|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr10~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(6) & ((\inst11|dataBuf\(4)))) # (!\inst11|dataBuf\(6) & (\inst11|dataBuf\(7) & !\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & (\inst11|dataBuf\(6) $ 
-- (\inst11|dataBuf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(6),
	datac => \inst11|dataBuf\(7),
	datad => \inst11|dataBuf\(4),
	combout => \inst11|WideOr10~0_combout\);

-- Location: LCCOMB_X28_Y20_N8
\inst11|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr3~0_combout\ = (\inst11|dataBuf\(1) & ((\inst11|dataBuf\(0) & ((\inst11|dataBuf\(2)))) # (!\inst11|dataBuf\(0) & (\inst11|dataBuf\(3) & !\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(0) $ 
-- (\inst11|dataBuf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(0),
	datac => \inst11|dataBuf\(2),
	datad => \inst11|dataBuf\(1),
	combout => \inst11|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\inst10|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux8~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr10~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|WideOr10~0_combout\,
	datab => \inst10|counter\(0),
	datad => \inst11|WideOr3~0_combout\,
	combout => \inst10|Mux8~0_combout\);

-- Location: LCCOMB_X28_Y20_N22
\inst10|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(3) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(3))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datab => \inst10|segment\(3),
	datad => \inst10|Mux8~0_combout\,
	combout => \inst10|segment\(3));

-- Location: LCCOMB_X28_Y20_N6
\inst11|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr4~0_combout\ = (\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) & ((\inst11|dataBuf\(1)) # (!\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(3) & (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(1) & !\inst11|dataBuf\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(1),
	datad => \inst11|dataBuf\(0),
	combout => \inst11|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y20_N20
\inst11|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr11~0_combout\ = (\inst11|dataBuf\(6) & (\inst11|dataBuf\(7) & ((\inst11|dataBuf\(5)) # (!\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(6) & (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(4) & !\inst11|dataBuf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(6),
	datac => \inst11|dataBuf\(4),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr11~0_combout\);

-- Location: LCCOMB_X29_Y20_N28
\inst10|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux9~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr11~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr4~0_combout\,
	datad => \inst11|WideOr11~0_combout\,
	combout => \inst10|Mux9~0_combout\);

-- Location: LCCOMB_X29_Y20_N22
\inst10|segment[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(2) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(2))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(2),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux9~0_combout\,
	combout => \inst10|segment\(2));

-- Location: LCCOMB_X28_Y20_N0
\inst11|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr12~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(4) & ((\inst11|dataBuf\(7)))) # (!\inst11|dataBuf\(4) & (\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(6) & (\inst11|dataBuf\(4) $ (\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(4),
	datab => \inst11|dataBuf\(6),
	datac => \inst11|dataBuf\(5),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr12~0_combout\);

-- Location: LCCOMB_X28_Y20_N30
\inst11|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr5~0_combout\ = (\inst11|dataBuf\(3) & ((\inst11|dataBuf\(0) & ((\inst11|dataBuf\(1)))) # (!\inst11|dataBuf\(0) & (\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) & (\inst11|dataBuf\(1) $ (\inst11|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(1),
	datad => \inst11|dataBuf\(0),
	combout => \inst11|WideOr5~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst10|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr12~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr12~0_combout\,
	datad => \inst11|WideOr5~0_combout\,
	combout => \inst10|Mux10~0_combout\);

-- Location: LCCOMB_X29_Y20_N26
\inst10|segment[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(1))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(1),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux10~0_combout\,
	combout => \inst10|segment\(1));

-- Location: LCCOMB_X28_Y20_N10
\inst11|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr6~0_combout\ = (\inst11|dataBuf\(2) & (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(0) $ (!\inst11|dataBuf\(3))))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(0) & (\inst11|dataBuf\(3) $ (!\inst11|dataBuf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(0),
	datac => \inst11|dataBuf\(3),
	datad => \inst11|dataBuf\(1),
	combout => \inst11|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y20_N28
\inst11|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr13~0_combout\ = (\inst11|dataBuf\(7) & (\inst11|dataBuf\(4) & (\inst11|dataBuf\(5) $ (\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(7) & (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(7),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(4),
	combout => \inst11|WideOr13~0_combout\);

-- Location: LCCOMB_X28_Y20_N12
\inst10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr13~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr6~0_combout\,
	datad => \inst11|WideOr13~0_combout\,
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y20_N26
\inst10|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(0))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datab => \inst10|segment\(0),
	datad => \inst10|Mux0~0_combout\,
	combout => \inst10|segment\(0));

-- Location: IOIBUF_X34_Y12_N22
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\key3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\key4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key4,
	o => \key4~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

ww_led <= \led~output_o\;

ww_tx <= \tx~output_o\;

ww_scl <= \scl~output_o\;

ww_led1 <= \led1~output_o\;

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

sda <= \sda~output_o\;
END structure;


