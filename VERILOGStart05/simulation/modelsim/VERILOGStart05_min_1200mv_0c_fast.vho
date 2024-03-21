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

-- DATE "03/21/2024 17:20:15"

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
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	key4 : IN std_logic;
	reset : IN std_logic;
	tx : OUT std_logic;
	scl : OUT std_logic;
	led1 : OUT std_logic;
	indicator : OUT std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0);
	rx : IN std_logic
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
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sda	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_key4 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_indicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL \inst10|counter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx~input_o\ : std_logic;
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
SIGNAL \inst18|count[0]~16_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst22|latch~feeder_combout\ : std_logic;
SIGNAL \inst22|latch~q\ : std_logic;
SIGNAL \inst22|count~0_combout\ : std_logic;
SIGNAL \inst22|count~2_combout\ : std_logic;
SIGNAL \inst22|count~3_combout\ : std_logic;
SIGNAL \inst22|count~4_combout\ : std_logic;
SIGNAL \inst22|count~1_combout\ : std_logic;
SIGNAL \inst22|q~0_combout\ : std_logic;
SIGNAL \inst22|q~q\ : std_logic;
SIGNAL \inst12|resetPrev~0_combout\ : std_logic;
SIGNAL \inst12|resetPrev~q\ : std_logic;
SIGNAL \inst12|countUpdate[0]~2_combout\ : std_logic;
SIGNAL \inst12|countUpdate[1]~0_combout\ : std_logic;
SIGNAL \inst12|countUpdate[1]~1_combout\ : std_logic;
SIGNAL \inst12|countUpdate[2]~3_combout\ : std_logic;
SIGNAL \inst12|update~0_combout\ : std_logic;
SIGNAL \inst12|update~1_combout\ : std_logic;
SIGNAL \inst12|update~q\ : std_logic;
SIGNAL \inst18|updatePrev~q\ : std_logic;
SIGNAL \inst18|count[15]~41_combout\ : std_logic;
SIGNAL \inst18|dataBuf[7]~0_combout\ : std_logic;
SIGNAL \inst18|Selector2~3_combout\ : std_logic;
SIGNAL \inst18|Selector1~0_combout\ : std_logic;
SIGNAL \inst18|stateUART.Starting~q\ : std_logic;
SIGNAL \inst18|Selector2~1_combout\ : std_logic;
SIGNAL \inst18|Selector2~2_combout\ : std_logic;
SIGNAL \inst18|stateUART.ReceivingData~q\ : std_logic;
SIGNAL \inst18|bitPosition[0]~2_combout\ : std_logic;
SIGNAL \inst18|bitPosition[1]~1_combout\ : std_logic;
SIGNAL \inst18|Selector2~0_combout\ : std_logic;
SIGNAL \inst18|bitPosition[2]~0_combout\ : std_logic;
SIGNAL \inst18|Selector3~1_combout\ : std_logic;
SIGNAL \inst18|stateUART.Stopping~q\ : std_logic;
SIGNAL \inst18|Selector0~0_combout\ : std_logic;
SIGNAL \inst18|stateUART.Waiting~q\ : std_logic;
SIGNAL \inst18|count[15]~40_combout\ : std_logic;
SIGNAL \inst18|count[0]~17\ : std_logic;
SIGNAL \inst18|count[1]~18_combout\ : std_logic;
SIGNAL \inst18|count[1]~19\ : std_logic;
SIGNAL \inst18|count[2]~20_combout\ : std_logic;
SIGNAL \inst18|count[2]~21\ : std_logic;
SIGNAL \inst18|count[3]~22_combout\ : std_logic;
SIGNAL \inst18|count[3]~23\ : std_logic;
SIGNAL \inst18|count[4]~24_combout\ : std_logic;
SIGNAL \inst18|count[4]~25\ : std_logic;
SIGNAL \inst18|count[5]~26_combout\ : std_logic;
SIGNAL \inst18|count[5]~27\ : std_logic;
SIGNAL \inst18|count[6]~28_combout\ : std_logic;
SIGNAL \inst18|count[6]~29\ : std_logic;
SIGNAL \inst18|count[7]~30_combout\ : std_logic;
SIGNAL \inst18|count[7]~31\ : std_logic;
SIGNAL \inst18|count[8]~32_combout\ : std_logic;
SIGNAL \inst18|count[8]~33\ : std_logic;
SIGNAL \inst18|count[9]~34_combout\ : std_logic;
SIGNAL \inst18|count[9]~35\ : std_logic;
SIGNAL \inst18|count[10]~36_combout\ : std_logic;
SIGNAL \inst18|count[10]~37\ : std_logic;
SIGNAL \inst18|count[11]~38_combout\ : std_logic;
SIGNAL \inst18|count[11]~39\ : std_logic;
SIGNAL \inst18|count[12]~42_combout\ : std_logic;
SIGNAL \inst18|count[12]~43\ : std_logic;
SIGNAL \inst18|count[13]~44_combout\ : std_logic;
SIGNAL \inst18|count[13]~45\ : std_logic;
SIGNAL \inst18|count[14]~46_combout\ : std_logic;
SIGNAL \inst18|count[14]~47\ : std_logic;
SIGNAL \inst18|count[15]~48_combout\ : std_logic;
SIGNAL \inst18|LessThan0~0_combout\ : std_logic;
SIGNAL \inst18|LessThan0~1_combout\ : std_logic;
SIGNAL \inst18|LessThan0~2_combout\ : std_logic;
SIGNAL \inst18|LessThan0~3_combout\ : std_logic;
SIGNAL \inst18|led~0_combout\ : std_logic;
SIGNAL \inst18|led~q\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \inst|latch~feeder_combout\ : std_logic;
SIGNAL \inst|latch~q\ : std_logic;
SIGNAL \inst|count~2_combout\ : std_logic;
SIGNAL \inst|count~0_combout\ : std_logic;
SIGNAL \inst|count~3_combout\ : std_logic;
SIGNAL \inst|count~4_combout\ : std_logic;
SIGNAL \inst|count~1_combout\ : std_logic;
SIGNAL \inst|q~0_combout\ : std_logic;
SIGNAL \inst|q~q\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \inst19|latch~feeder_combout\ : std_logic;
SIGNAL \inst19|latch~q\ : std_logic;
SIGNAL \inst19|count~0_combout\ : std_logic;
SIGNAL \inst19|count~2_combout\ : std_logic;
SIGNAL \inst19|count~3_combout\ : std_logic;
SIGNAL \inst19|count~4_combout\ : std_logic;
SIGNAL \inst19|count~1_combout\ : std_logic;
SIGNAL \inst19|q~0_combout\ : std_logic;
SIGNAL \inst19|q~q\ : std_logic;
SIGNAL \inst12|key2Prev~0_combout\ : std_logic;
SIGNAL \inst12|key2Prev~q\ : std_logic;
SIGNAL \inst12|key1Prev~0_combout\ : std_logic;
SIGNAL \inst12|key1Prev~q\ : std_logic;
SIGNAL \inst12|dataBuf0[3]~0_combout\ : std_logic;
SIGNAL \inst12|dataBuf0~4_combout\ : std_logic;
SIGNAL \inst12|always1~1_combout\ : std_logic;
SIGNAL \inst12|dataBuf0[1]~3_combout\ : std_logic;
SIGNAL \inst12|dataBuf0[2]~1_combout\ : std_logic;
SIGNAL \inst12|dataBuf0[2]~2_combout\ : std_logic;
SIGNAL \inst12|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst12|dataBuf0[3]~5_combout\ : std_logic;
SIGNAL \inst12|dataBuf0[3]~6_combout\ : std_logic;
SIGNAL \inst12|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst12|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst12|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst18|Mux0~2_combout\ : std_logic;
SIGNAL \inst18|Mux0~3_combout\ : std_logic;
SIGNAL \key4~input_o\ : std_logic;
SIGNAL \inst21|latch~feeder_combout\ : std_logic;
SIGNAL \inst21|latch~q\ : std_logic;
SIGNAL \inst21|count~0_combout\ : std_logic;
SIGNAL \inst21|count~2_combout\ : std_logic;
SIGNAL \inst21|count~3_combout\ : std_logic;
SIGNAL \inst21|count~4_combout\ : std_logic;
SIGNAL \inst21|count~1_combout\ : std_logic;
SIGNAL \inst21|q~0_combout\ : std_logic;
SIGNAL \inst21|q~q\ : std_logic;
SIGNAL \inst12|key4Prev~0_combout\ : std_logic;
SIGNAL \inst12|key4Prev~q\ : std_logic;
SIGNAL \inst12|always1~0_combout\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \inst20|latch~feeder_combout\ : std_logic;
SIGNAL \inst20|latch~q\ : std_logic;
SIGNAL \inst20|count~0_combout\ : std_logic;
SIGNAL \inst20|count~2_combout\ : std_logic;
SIGNAL \inst20|count~3_combout\ : std_logic;
SIGNAL \inst20|count~4_combout\ : std_logic;
SIGNAL \inst20|count~1_combout\ : std_logic;
SIGNAL \inst20|q~0_combout\ : std_logic;
SIGNAL \inst20|q~q\ : std_logic;
SIGNAL \inst12|key3Prev~0_combout\ : std_logic;
SIGNAL \inst12|key3Prev~q\ : std_logic;
SIGNAL \inst12|dataBuf1[3]~0_combout\ : std_logic;
SIGNAL \inst12|dataBuf1~4_combout\ : std_logic;
SIGNAL \inst12|dataBuf1[1]~3_combout\ : std_logic;
SIGNAL \inst12|dataBuf1[2]~1_combout\ : std_logic;
SIGNAL \inst12|dataBuf1[2]~2_combout\ : std_logic;
SIGNAL \inst18|dataBuf[6]~feeder_combout\ : std_logic;
SIGNAL \inst12|dataBuf1[3]~5_combout\ : std_logic;
SIGNAL \inst12|dataBuf1[3]~6_combout\ : std_logic;
SIGNAL \inst12|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst18|dataBuf[5]~feeder_combout\ : std_logic;
SIGNAL \inst18|Mux0~0_combout\ : std_logic;
SIGNAL \inst18|Mux0~1_combout\ : std_logic;
SIGNAL \inst18|Selector20~0_combout\ : std_logic;
SIGNAL \inst18|Selector20~1_combout\ : std_logic;
SIGNAL \inst18|Selector20~2_combout\ : std_logic;
SIGNAL \inst18|tx~q\ : std_logic;
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
SIGNAL \inst8|counter[8]~feeder_combout\ : std_logic;
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
SIGNAL \inst8|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|LessThan0~3_combout\ : std_logic;
SIGNAL \inst8|clkOut~0_combout\ : std_logic;
SIGNAL \inst8|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst8|clkOut~q\ : std_logic;
SIGNAL \inst8|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst10|counter[0]~1_combout\ : std_logic;
SIGNAL \inst10|counter~0_combout\ : std_logic;
SIGNAL \inst10|counter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|updatePrev~q\ : std_logic;
SIGNAL \inst11|always0~0_combout\ : std_logic;
SIGNAL \inst11|WideOr0~0_combout\ : std_logic;
SIGNAL \inst11|WideOr7~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|WideOr1~0_combout\ : std_logic;
SIGNAL \inst11|WideOr8~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr2~0_combout\ : std_logic;
SIGNAL \inst11|WideOr9~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|WideOr10~0_combout\ : std_logic;
SIGNAL \inst11|WideOr3~0_combout\ : std_logic;
SIGNAL \inst10|Mux8~0_combout\ : std_logic;
SIGNAL \inst11|WideOr4~0_combout\ : std_logic;
SIGNAL \inst11|WideOr11~0_combout\ : std_logic;
SIGNAL \inst10|Mux9~0_combout\ : std_logic;
SIGNAL \inst11|WideOr5~0_combout\ : std_logic;
SIGNAL \inst11|WideOr12~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst11|WideOr6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr13~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|dataBuf1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst19|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst18|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst12|dataBuf0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst22|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst8|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst10|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst20|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|countUpdate\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst18|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst18|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst21|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst11|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_dataBuf[7]~0_combout\ : std_logic;
SIGNAL \inst18|ALT_INV_count[15]~41_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_key4 <= key4;
ww_reset <= reset;
tx <= ww_tx;
scl <= ww_scl;
led1 <= ww_led1;
indicator <= ww_indicator;
segment <= ww_segment;
ww_rx <= rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst10|counter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|counter\(1));

\inst8|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|clkOut~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst8|ALT_INV_LessThan0~3_combout\ <= NOT \inst8|LessThan0~3_combout\;
\inst18|ALT_INV_dataBuf[7]~0_combout\ <= NOT \inst18|dataBuf[7]~0_combout\;
\inst18|ALT_INV_count[15]~41_combout\ <= NOT \inst18|count[15]~41_combout\;

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
	i => \inst18|led~q\,
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
	i => \inst18|tx~q\,
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

-- Location: LCCOMB_X23_Y17_N0
\inst18|count[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[0]~16_combout\ = \inst18|count\(0) $ (VCC)
-- \inst18|count[0]~17\ = CARRY(\inst18|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(0),
	datad => VCC,
	combout => \inst18|count[0]~16_combout\,
	cout => \inst18|count[0]~17\);

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

-- Location: LCCOMB_X21_Y12_N18
\inst22|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|latch~feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \inst22|latch~feeder_combout\);

-- Location: FF_X21_Y12_N19
\inst22|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|latch~q\);

-- Location: LCCOMB_X21_Y12_N12
\inst22|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|count~0_combout\ = (!\inst22|count\(3) & (\reset~input_o\ $ (!\inst22|latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst22|latch~q\,
	datad => \inst22|count\(3),
	combout => \inst22|count~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst22|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|count~2_combout\ = (!\inst22|count\(0) & (!\inst22|count\(3) & (\reset~input_o\ $ (!\inst22|latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst22|latch~q\,
	datac => \inst22|count\(0),
	datad => \inst22|count\(3),
	combout => \inst22|count~2_combout\);

-- Location: FF_X21_Y12_N3
\inst22|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|count\(0));

-- Location: LCCOMB_X21_Y12_N8
\inst22|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|count~3_combout\ = (\inst22|count~0_combout\ & (\inst22|count\(1) $ (\inst22|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|count~0_combout\,
	datac => \inst22|count\(1),
	datad => \inst22|count\(0),
	combout => \inst22|count~3_combout\);

-- Location: FF_X21_Y12_N9
\inst22|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|count\(1));

-- Location: LCCOMB_X21_Y12_N22
\inst22|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|count~4_combout\ = (\inst22|count~0_combout\ & (\inst22|count\(2) $ (((\inst22|count\(1) & \inst22|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|count~0_combout\,
	datab => \inst22|count\(1),
	datac => \inst22|count\(2),
	datad => \inst22|count\(0),
	combout => \inst22|count~4_combout\);

-- Location: FF_X21_Y12_N23
\inst22|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|count\(2));

-- Location: LCCOMB_X21_Y12_N0
\inst22|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|count~1_combout\ = (\inst22|count~0_combout\ & (\inst22|count\(1) & (\inst22|count\(2) & \inst22|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|count~0_combout\,
	datab => \inst22|count\(1),
	datac => \inst22|count\(2),
	datad => \inst22|count\(0),
	combout => \inst22|count~1_combout\);

-- Location: FF_X21_Y12_N1
\inst22|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|count\(3));

-- Location: LCCOMB_X21_Y12_N20
\inst22|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22|q~0_combout\ = (\reset~input_o\ & ((\inst22|q~q\) # ((\inst22|latch~q\ & \inst22|count\(3))))) # (!\reset~input_o\ & (\inst22|q~q\ & ((\inst22|latch~q\) # (!\inst22|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \inst22|latch~q\,
	datac => \inst22|q~q\,
	datad => \inst22|count\(3),
	combout => \inst22|q~0_combout\);

-- Location: FF_X21_Y12_N21
\inst22|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst22|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|q~q\);

-- Location: LCCOMB_X25_Y17_N18
\inst12|resetPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|resetPrev~0_combout\ = !\inst22|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst22|q~q\,
	combout => \inst12|resetPrev~0_combout\);

-- Location: FF_X25_Y17_N19
\inst12|resetPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|resetPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|resetPrev~q\);

-- Location: LCCOMB_X25_Y17_N10
\inst12|countUpdate[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|countUpdate[0]~2_combout\ = \inst12|countUpdate\(0) $ (((\inst12|update~q\ & ((\inst12|resetPrev~q\) # (\inst22|q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|update~q\,
	datab => \inst12|resetPrev~q\,
	datac => \inst12|countUpdate\(0),
	datad => \inst22|q~q\,
	combout => \inst12|countUpdate[0]~2_combout\);

-- Location: FF_X25_Y17_N11
\inst12|countUpdate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|countUpdate[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|countUpdate\(0));

-- Location: LCCOMB_X25_Y17_N16
\inst12|countUpdate[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|countUpdate[1]~0_combout\ = (\inst12|update~q\ & (\inst12|countUpdate\(0) & ((\inst12|resetPrev~q\) # (\inst22|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|update~q\,
	datab => \inst12|resetPrev~q\,
	datac => \inst22|q~q\,
	datad => \inst12|countUpdate\(0),
	combout => \inst12|countUpdate[1]~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst12|countUpdate[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|countUpdate[1]~1_combout\ = \inst12|countUpdate\(1) $ (\inst12|countUpdate[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|countUpdate\(1),
	datad => \inst12|countUpdate[1]~0_combout\,
	combout => \inst12|countUpdate[1]~1_combout\);

-- Location: FF_X25_Y17_N13
\inst12|countUpdate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|countUpdate[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|countUpdate\(1));

-- Location: LCCOMB_X25_Y17_N28
\inst12|countUpdate[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|countUpdate[2]~3_combout\ = \inst12|countUpdate\(2) $ (((\inst12|countUpdate\(1) & \inst12|countUpdate[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|countUpdate\(1),
	datac => \inst12|countUpdate\(2),
	datad => \inst12|countUpdate[1]~0_combout\,
	combout => \inst12|countUpdate[2]~3_combout\);

-- Location: FF_X25_Y17_N29
\inst12|countUpdate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|countUpdate[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|countUpdate\(2));

-- Location: LCCOMB_X25_Y17_N24
\inst12|update~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|update~0_combout\ = (\inst12|update~q\ & (((!\inst12|countUpdate\(1)) # (!\inst12|countUpdate\(2))) # (!\inst12|countUpdate\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|countUpdate\(0),
	datab => \inst12|countUpdate\(2),
	datac => \inst12|update~q\,
	datad => \inst12|countUpdate\(1),
	combout => \inst12|update~0_combout\);

-- Location: LCCOMB_X25_Y17_N26
\inst12|update~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|update~1_combout\ = (\inst12|update~0_combout\) # ((!\inst12|resetPrev~q\ & !\inst22|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|resetPrev~q\,
	datac => \inst22|q~q\,
	datad => \inst12|update~0_combout\,
	combout => \inst12|update~1_combout\);

-- Location: FF_X25_Y17_N27
\inst12|update\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|update~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|update~q\);

-- Location: FF_X25_Y17_N25
\inst18|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|update~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|updatePrev~q\);

-- Location: LCCOMB_X25_Y17_N8
\inst18|count[15]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[15]~41_combout\ = (!\inst18|stateUART.Waiting~q\ & ((\inst18|updatePrev~q\) # (!\inst12|update~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|update~q\,
	datac => \inst18|updatePrev~q\,
	datad => \inst18|stateUART.Waiting~q\,
	combout => \inst18|count[15]~41_combout\);

-- Location: LCCOMB_X25_Y17_N6
\inst18|dataBuf[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|dataBuf[7]~0_combout\ = ((\inst18|updatePrev~q\) # (\inst18|stateUART.Waiting~q\)) # (!\inst12|update~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|update~q\,
	datac => \inst18|updatePrev~q\,
	datad => \inst18|stateUART.Waiting~q\,
	combout => \inst18|dataBuf[7]~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst18|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector2~3_combout\ = (\inst18|Selector2~0_combout\ & \inst18|bitPosition\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18|Selector2~0_combout\,
	datad => \inst18|bitPosition\(2),
	combout => \inst18|Selector2~3_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst18|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector1~0_combout\ = (!\inst18|Selector2~3_combout\ & (((\inst18|LessThan0~3_combout\ & \inst18|stateUART.Starting~q\)) # (!\inst18|dataBuf[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dataBuf[7]~0_combout\,
	datab => \inst18|LessThan0~3_combout\,
	datac => \inst18|stateUART.Starting~q\,
	datad => \inst18|Selector2~3_combout\,
	combout => \inst18|Selector1~0_combout\);

-- Location: FF_X24_Y17_N31
\inst18|stateUART.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|stateUART.Starting~q\);

-- Location: LCCOMB_X24_Y17_N0
\inst18|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector2~1_combout\ = (\inst18|dataBuf[7]~0_combout\ & (\inst18|stateUART.ReceivingData~q\ & ((!\inst18|bitPosition\(2)) # (!\inst18|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dataBuf[7]~0_combout\,
	datab => \inst18|stateUART.ReceivingData~q\,
	datac => \inst18|Selector2~0_combout\,
	datad => \inst18|bitPosition\(2),
	combout => \inst18|Selector2~1_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst18|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector2~2_combout\ = (\inst18|LessThan0~3_combout\ & (((\inst18|Selector2~1_combout\)))) # (!\inst18|LessThan0~3_combout\ & (!\inst18|stateUART.Stopping~q\ & ((\inst18|stateUART.Starting~q\) # (\inst18|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|stateUART.Stopping~q\,
	datab => \inst18|LessThan0~3_combout\,
	datac => \inst18|stateUART.Starting~q\,
	datad => \inst18|Selector2~1_combout\,
	combout => \inst18|Selector2~2_combout\);

-- Location: FF_X24_Y17_N27
\inst18|stateUART.ReceivingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|stateUART.ReceivingData~q\);

-- Location: LCCOMB_X24_Y17_N14
\inst18|bitPosition[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|bitPosition[0]~2_combout\ = \inst18|bitPosition\(0) $ (((\inst18|stateUART.ReceivingData~q\ & !\inst18|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|stateUART.ReceivingData~q\,
	datac => \inst18|bitPosition\(0),
	datad => \inst18|LessThan0~3_combout\,
	combout => \inst18|bitPosition[0]~2_combout\);

-- Location: FF_X24_Y17_N15
\inst18|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|bitPosition[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|bitPosition\(0));

-- Location: LCCOMB_X26_Y17_N14
\inst18|bitPosition[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|bitPosition[1]~1_combout\ = \inst18|bitPosition\(1) $ (((\inst18|stateUART.ReceivingData~q\ & (\inst18|bitPosition\(0) & !\inst18|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|stateUART.ReceivingData~q\,
	datab => \inst18|bitPosition\(0),
	datac => \inst18|bitPosition\(1),
	datad => \inst18|LessThan0~3_combout\,
	combout => \inst18|bitPosition[1]~1_combout\);

-- Location: FF_X26_Y17_N15
\inst18|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|bitPosition[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|bitPosition\(1));

-- Location: LCCOMB_X24_Y17_N8
\inst18|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector2~0_combout\ = (\inst18|bitPosition\(1) & (\inst18|stateUART.ReceivingData~q\ & (\inst18|bitPosition\(0) & !\inst18|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|bitPosition\(1),
	datab => \inst18|stateUART.ReceivingData~q\,
	datac => \inst18|bitPosition\(0),
	datad => \inst18|LessThan0~3_combout\,
	combout => \inst18|Selector2~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst18|bitPosition[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|bitPosition[2]~0_combout\ = \inst18|Selector2~0_combout\ $ (\inst18|bitPosition\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|Selector2~0_combout\,
	datac => \inst18|bitPosition\(2),
	combout => \inst18|bitPosition[2]~0_combout\);

-- Location: FF_X24_Y17_N25
\inst18|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|bitPosition[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|bitPosition\(2));

-- Location: LCCOMB_X25_Y17_N30
\inst18|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector3~1_combout\ = (\inst18|LessThan0~3_combout\ & ((\inst18|stateUART.Stopping~q\) # ((\inst18|bitPosition\(2) & \inst18|Selector2~0_combout\)))) # (!\inst18|LessThan0~3_combout\ & (\inst18|bitPosition\(2) & ((\inst18|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan0~3_combout\,
	datab => \inst18|bitPosition\(2),
	datac => \inst18|stateUART.Stopping~q\,
	datad => \inst18|Selector2~0_combout\,
	combout => \inst18|Selector3~1_combout\);

-- Location: FF_X25_Y17_N31
\inst18|stateUART.Stopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|stateUART.Stopping~q\);

-- Location: LCCOMB_X25_Y17_N20
\inst18|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector0~0_combout\ = (!\inst18|count[15]~41_combout\ & ((\inst18|LessThan0~3_combout\) # (!\inst18|stateUART.Stopping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan0~3_combout\,
	datac => \inst18|count[15]~41_combout\,
	datad => \inst18|stateUART.Stopping~q\,
	combout => \inst18|Selector0~0_combout\);

-- Location: FF_X25_Y17_N21
\inst18|stateUART.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|stateUART.Waiting~q\);

-- Location: LCCOMB_X24_Y17_N4
\inst18|count[15]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[15]~40_combout\ = (!\inst18|LessThan0~3_combout\) # (!\inst18|stateUART.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|stateUART.Waiting~q\,
	datad => \inst18|LessThan0~3_combout\,
	combout => \inst18|count[15]~40_combout\);

-- Location: FF_X23_Y17_N1
\inst18|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[0]~16_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(0));

-- Location: LCCOMB_X23_Y17_N2
\inst18|count[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[1]~18_combout\ = (\inst18|count\(1) & (!\inst18|count[0]~17\)) # (!\inst18|count\(1) & ((\inst18|count[0]~17\) # (GND)))
-- \inst18|count[1]~19\ = CARRY((!\inst18|count[0]~17\) # (!\inst18|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(1),
	datad => VCC,
	cin => \inst18|count[0]~17\,
	combout => \inst18|count[1]~18_combout\,
	cout => \inst18|count[1]~19\);

-- Location: FF_X23_Y17_N3
\inst18|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[1]~18_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(1));

-- Location: LCCOMB_X23_Y17_N4
\inst18|count[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[2]~20_combout\ = (\inst18|count\(2) & (\inst18|count[1]~19\ $ (GND))) # (!\inst18|count\(2) & (!\inst18|count[1]~19\ & VCC))
-- \inst18|count[2]~21\ = CARRY((\inst18|count\(2) & !\inst18|count[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(2),
	datad => VCC,
	cin => \inst18|count[1]~19\,
	combout => \inst18|count[2]~20_combout\,
	cout => \inst18|count[2]~21\);

-- Location: FF_X23_Y17_N5
\inst18|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[2]~20_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(2));

-- Location: LCCOMB_X23_Y17_N6
\inst18|count[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[3]~22_combout\ = (\inst18|count\(3) & (!\inst18|count[2]~21\)) # (!\inst18|count\(3) & ((\inst18|count[2]~21\) # (GND)))
-- \inst18|count[3]~23\ = CARRY((!\inst18|count[2]~21\) # (!\inst18|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(3),
	datad => VCC,
	cin => \inst18|count[2]~21\,
	combout => \inst18|count[3]~22_combout\,
	cout => \inst18|count[3]~23\);

-- Location: FF_X23_Y17_N7
\inst18|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[3]~22_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(3));

-- Location: LCCOMB_X23_Y17_N8
\inst18|count[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[4]~24_combout\ = (\inst18|count\(4) & (\inst18|count[3]~23\ $ (GND))) # (!\inst18|count\(4) & (!\inst18|count[3]~23\ & VCC))
-- \inst18|count[4]~25\ = CARRY((\inst18|count\(4) & !\inst18|count[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(4),
	datad => VCC,
	cin => \inst18|count[3]~23\,
	combout => \inst18|count[4]~24_combout\,
	cout => \inst18|count[4]~25\);

-- Location: FF_X23_Y17_N9
\inst18|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[4]~24_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(4));

-- Location: LCCOMB_X23_Y17_N10
\inst18|count[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[5]~26_combout\ = (\inst18|count\(5) & (!\inst18|count[4]~25\)) # (!\inst18|count\(5) & ((\inst18|count[4]~25\) # (GND)))
-- \inst18|count[5]~27\ = CARRY((!\inst18|count[4]~25\) # (!\inst18|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(5),
	datad => VCC,
	cin => \inst18|count[4]~25\,
	combout => \inst18|count[5]~26_combout\,
	cout => \inst18|count[5]~27\);

-- Location: FF_X23_Y17_N11
\inst18|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[5]~26_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(5));

-- Location: LCCOMB_X23_Y17_N12
\inst18|count[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[6]~28_combout\ = (\inst18|count\(6) & (\inst18|count[5]~27\ $ (GND))) # (!\inst18|count\(6) & (!\inst18|count[5]~27\ & VCC))
-- \inst18|count[6]~29\ = CARRY((\inst18|count\(6) & !\inst18|count[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(6),
	datad => VCC,
	cin => \inst18|count[5]~27\,
	combout => \inst18|count[6]~28_combout\,
	cout => \inst18|count[6]~29\);

-- Location: FF_X23_Y17_N13
\inst18|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[6]~28_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(6));

-- Location: LCCOMB_X23_Y17_N14
\inst18|count[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[7]~30_combout\ = (\inst18|count\(7) & (!\inst18|count[6]~29\)) # (!\inst18|count\(7) & ((\inst18|count[6]~29\) # (GND)))
-- \inst18|count[7]~31\ = CARRY((!\inst18|count[6]~29\) # (!\inst18|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(7),
	datad => VCC,
	cin => \inst18|count[6]~29\,
	combout => \inst18|count[7]~30_combout\,
	cout => \inst18|count[7]~31\);

-- Location: FF_X23_Y17_N15
\inst18|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[7]~30_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(7));

-- Location: LCCOMB_X23_Y17_N16
\inst18|count[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[8]~32_combout\ = (\inst18|count\(8) & (\inst18|count[7]~31\ $ (GND))) # (!\inst18|count\(8) & (!\inst18|count[7]~31\ & VCC))
-- \inst18|count[8]~33\ = CARRY((\inst18|count\(8) & !\inst18|count[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(8),
	datad => VCC,
	cin => \inst18|count[7]~31\,
	combout => \inst18|count[8]~32_combout\,
	cout => \inst18|count[8]~33\);

-- Location: FF_X23_Y17_N17
\inst18|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[8]~32_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(8));

-- Location: LCCOMB_X23_Y17_N18
\inst18|count[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[9]~34_combout\ = (\inst18|count\(9) & (!\inst18|count[8]~33\)) # (!\inst18|count\(9) & ((\inst18|count[8]~33\) # (GND)))
-- \inst18|count[9]~35\ = CARRY((!\inst18|count[8]~33\) # (!\inst18|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(9),
	datad => VCC,
	cin => \inst18|count[8]~33\,
	combout => \inst18|count[9]~34_combout\,
	cout => \inst18|count[9]~35\);

-- Location: FF_X23_Y17_N19
\inst18|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[9]~34_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(9));

-- Location: LCCOMB_X23_Y17_N20
\inst18|count[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[10]~36_combout\ = (\inst18|count\(10) & (\inst18|count[9]~35\ $ (GND))) # (!\inst18|count\(10) & (!\inst18|count[9]~35\ & VCC))
-- \inst18|count[10]~37\ = CARRY((\inst18|count\(10) & !\inst18|count[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(10),
	datad => VCC,
	cin => \inst18|count[9]~35\,
	combout => \inst18|count[10]~36_combout\,
	cout => \inst18|count[10]~37\);

-- Location: FF_X23_Y17_N21
\inst18|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[10]~36_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(10));

-- Location: LCCOMB_X23_Y17_N22
\inst18|count[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[11]~38_combout\ = (\inst18|count\(11) & (!\inst18|count[10]~37\)) # (!\inst18|count\(11) & ((\inst18|count[10]~37\) # (GND)))
-- \inst18|count[11]~39\ = CARRY((!\inst18|count[10]~37\) # (!\inst18|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(11),
	datad => VCC,
	cin => \inst18|count[10]~37\,
	combout => \inst18|count[11]~38_combout\,
	cout => \inst18|count[11]~39\);

-- Location: FF_X23_Y17_N23
\inst18|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[11]~38_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(11));

-- Location: LCCOMB_X23_Y17_N24
\inst18|count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[12]~42_combout\ = (\inst18|count\(12) & (\inst18|count[11]~39\ $ (GND))) # (!\inst18|count\(12) & (!\inst18|count[11]~39\ & VCC))
-- \inst18|count[12]~43\ = CARRY((\inst18|count\(12) & !\inst18|count[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(12),
	datad => VCC,
	cin => \inst18|count[11]~39\,
	combout => \inst18|count[12]~42_combout\,
	cout => \inst18|count[12]~43\);

-- Location: FF_X23_Y17_N25
\inst18|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[12]~42_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(12));

-- Location: LCCOMB_X23_Y17_N26
\inst18|count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[13]~44_combout\ = (\inst18|count\(13) & (!\inst18|count[12]~43\)) # (!\inst18|count\(13) & ((\inst18|count[12]~43\) # (GND)))
-- \inst18|count[13]~45\ = CARRY((!\inst18|count[12]~43\) # (!\inst18|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(13),
	datad => VCC,
	cin => \inst18|count[12]~43\,
	combout => \inst18|count[13]~44_combout\,
	cout => \inst18|count[13]~45\);

-- Location: FF_X23_Y17_N27
\inst18|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[13]~44_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(13));

-- Location: LCCOMB_X23_Y17_N28
\inst18|count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[14]~46_combout\ = (\inst18|count\(14) & (\inst18|count[13]~45\ $ (GND))) # (!\inst18|count\(14) & (!\inst18|count[13]~45\ & VCC))
-- \inst18|count[14]~47\ = CARRY((\inst18|count\(14) & !\inst18|count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(14),
	datad => VCC,
	cin => \inst18|count[13]~45\,
	combout => \inst18|count[14]~46_combout\,
	cout => \inst18|count[14]~47\);

-- Location: FF_X23_Y17_N29
\inst18|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[14]~46_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(14));

-- Location: LCCOMB_X23_Y17_N30
\inst18|count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|count[15]~48_combout\ = \inst18|count\(15) $ (\inst18|count[14]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(15),
	cin => \inst18|count[14]~47\,
	combout => \inst18|count[15]~48_combout\);

-- Location: FF_X23_Y17_N31
\inst18|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|count[15]~48_combout\,
	sclr => \inst18|count[15]~40_combout\,
	ena => \inst18|ALT_INV_count[15]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|count\(15));

-- Location: LCCOMB_X24_Y17_N22
\inst18|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~0_combout\ = (\inst18|count\(14)) # ((\inst18|count\(13)) # (\inst18|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|count\(14),
	datac => \inst18|count\(13),
	datad => \inst18|count\(15),
	combout => \inst18|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst18|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~1_combout\ = (!\inst18|count\(7) & (((!\inst18|count\(5) & !\inst18|count\(4))) # (!\inst18|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(7),
	datab => \inst18|count\(6),
	datac => \inst18|count\(5),
	datad => \inst18|count\(4),
	combout => \inst18|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst18|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~2_combout\ = (\inst18|count\(10) & ((\inst18|count\(8)) # ((\inst18|count\(9)) # (!\inst18|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(8),
	datab => \inst18|count\(9),
	datac => \inst18|count\(10),
	datad => \inst18|LessThan0~1_combout\,
	combout => \inst18|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst18|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|LessThan0~3_combout\ = (!\inst18|LessThan0~0_combout\ & (((!\inst18|count\(11) & !\inst18|LessThan0~2_combout\)) # (!\inst18|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|count\(11),
	datab => \inst18|count\(12),
	datac => \inst18|LessThan0~0_combout\,
	datad => \inst18|LessThan0~2_combout\,
	combout => \inst18|LessThan0~3_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst18|led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|led~0_combout\ = \inst18|led~q\ $ (((!\inst18|LessThan0~3_combout\ & \inst18|stateUART.Stopping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|LessThan0~3_combout\,
	datac => \inst18|led~q\,
	datad => \inst18|stateUART.Stopping~q\,
	combout => \inst18|led~0_combout\);

-- Location: FF_X25_Y17_N1
\inst18|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|led~q\);

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

-- Location: LCCOMB_X22_Y17_N22
\inst|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|latch~feeder_combout\ = \key1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1~input_o\,
	combout => \inst|latch~feeder_combout\);

-- Location: FF_X22_Y17_N23
\inst|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|latch~q\);

-- Location: LCCOMB_X22_Y17_N2
\inst|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~2_combout\ = (!\inst|count\(3) & (!\inst|count\(0) & (\inst|latch~q\ $ (!\key1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|latch~q\,
	datab => \inst|count\(3),
	datac => \inst|count\(0),
	datad => \key1~input_o\,
	combout => \inst|count~2_combout\);

-- Location: FF_X22_Y17_N3
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X22_Y17_N0
\inst|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~0_combout\ = (!\inst|count\(3) & (\inst|latch~q\ $ (!\key1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datac => \inst|latch~q\,
	datad => \key1~input_o\,
	combout => \inst|count~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\inst|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~3_combout\ = (\inst|count~0_combout\ & (\inst|count\(0) $ (\inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datac => \inst|count\(1),
	datad => \inst|count~0_combout\,
	combout => \inst|count~3_combout\);

-- Location: FF_X22_Y17_N13
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X22_Y17_N14
\inst|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~4_combout\ = (\inst|count~0_combout\ & (\inst|count\(2) $ (((\inst|count\(1) & \inst|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count~0_combout\,
	combout => \inst|count~4_combout\);

-- Location: FF_X22_Y17_N15
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X22_Y17_N28
\inst|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count~1_combout\ = (\inst|count\(1) & (\inst|count\(0) & (\inst|count\(2) & \inst|count~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|count\(0),
	datac => \inst|count\(2),
	datad => \inst|count~0_combout\,
	combout => \inst|count~1_combout\);

-- Location: FF_X22_Y17_N29
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X22_Y17_N20
\inst|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|q~0_combout\ = (\inst|latch~q\ & ((\inst|q~q\) # ((\inst|count\(3) & \key1~input_o\)))) # (!\inst|latch~q\ & (\inst|q~q\ & ((\key1~input_o\) # (!\inst|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|latch~q\,
	datab => \inst|count\(3),
	datac => \inst|q~q\,
	datad => \key1~input_o\,
	combout => \inst|q~0_combout\);

-- Location: FF_X22_Y17_N21
\inst|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|q~q\);

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

-- Location: LCCOMB_X30_Y17_N10
\inst19|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|latch~feeder_combout\ = \key2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key2~input_o\,
	combout => \inst19|latch~feeder_combout\);

-- Location: FF_X30_Y17_N11
\inst19|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|latch~q\);

-- Location: LCCOMB_X30_Y17_N28
\inst19|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|count~0_combout\ = (!\inst19|count\(3) & (\inst19|latch~q\ $ (!\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|latch~q\,
	datab => \inst19|count\(3),
	datad => \key2~input_o\,
	combout => \inst19|count~0_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst19|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|count~2_combout\ = (!\inst19|count\(3) & (!\inst19|count\(0) & (\inst19|latch~q\ $ (!\key2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|latch~q\,
	datab => \inst19|count\(3),
	datac => \inst19|count\(0),
	datad => \key2~input_o\,
	combout => \inst19|count~2_combout\);

-- Location: FF_X30_Y17_N3
\inst19|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|count\(0));

-- Location: LCCOMB_X30_Y17_N12
\inst19|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|count~3_combout\ = (\inst19|count~0_combout\ & (\inst19|count\(1) $ (\inst19|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19|count~0_combout\,
	datac => \inst19|count\(1),
	datad => \inst19|count\(0),
	combout => \inst19|count~3_combout\);

-- Location: FF_X30_Y17_N13
\inst19|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|count\(1));

-- Location: LCCOMB_X30_Y17_N22
\inst19|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|count~4_combout\ = (\inst19|count~0_combout\ & (\inst19|count\(2) $ (((\inst19|count\(1) & \inst19|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|count\(1),
	datab => \inst19|count~0_combout\,
	datac => \inst19|count\(2),
	datad => \inst19|count\(0),
	combout => \inst19|count~4_combout\);

-- Location: FF_X30_Y17_N23
\inst19|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|count\(2));

-- Location: LCCOMB_X30_Y17_N0
\inst19|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|count~1_combout\ = (\inst19|count\(1) & (\inst19|count~0_combout\ & (\inst19|count\(2) & \inst19|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|count\(1),
	datab => \inst19|count~0_combout\,
	datac => \inst19|count\(2),
	datad => \inst19|count\(0),
	combout => \inst19|count~1_combout\);

-- Location: FF_X30_Y17_N1
\inst19|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|count\(3));

-- Location: LCCOMB_X30_Y17_N4
\inst19|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst19|q~0_combout\ = (\inst19|latch~q\ & ((\inst19|q~q\) # ((\inst19|count\(3) & \key2~input_o\)))) # (!\inst19|latch~q\ & (\inst19|q~q\ & ((\key2~input_o\) # (!\inst19|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19|latch~q\,
	datab => \inst19|count\(3),
	datac => \inst19|q~q\,
	datad => \key2~input_o\,
	combout => \inst19|q~0_combout\);

-- Location: FF_X30_Y17_N5
\inst19|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst19|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19|q~q\);

-- Location: LCCOMB_X21_Y17_N16
\inst12|key2Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|key2Prev~0_combout\ = !\inst19|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst19|q~q\,
	combout => \inst12|key2Prev~0_combout\);

-- Location: FF_X21_Y17_N17
\inst12|key2Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|key2Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|key2Prev~q\);

-- Location: LCCOMB_X21_Y17_N26
\inst12|key1Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|key1Prev~0_combout\ = !\inst|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|q~q\,
	combout => \inst12|key1Prev~0_combout\);

-- Location: FF_X21_Y17_N27
\inst12|key1Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|key1Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|key1Prev~q\);

-- Location: LCCOMB_X21_Y17_N20
\inst12|dataBuf0[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[3]~0_combout\ = (\inst|q~q\ & ((\inst12|key2Prev~q\) # ((\inst19|q~q\)))) # (!\inst|q~q\ & (\inst12|key1Prev~q\ & ((\inst12|key2Prev~q\) # (\inst19|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|q~q\,
	datab => \inst12|key2Prev~q\,
	datac => \inst12|key1Prev~q\,
	datad => \inst19|q~q\,
	combout => \inst12|dataBuf0[3]~0_combout\);

-- Location: LCCOMB_X21_Y17_N12
\inst12|dataBuf0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0~4_combout\ = \inst12|dataBuf0\(0) $ (!\inst12|dataBuf0[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|dataBuf0\(0),
	datad => \inst12|dataBuf0[3]~0_combout\,
	combout => \inst12|dataBuf0~4_combout\);

-- Location: FF_X21_Y17_N13
\inst12|dataBuf0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf0\(0));

-- Location: LCCOMB_X21_Y17_N0
\inst12|always1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|always1~1_combout\ = (!\inst12|key2Prev~q\ & !\inst19|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|key2Prev~q\,
	datad => \inst19|q~q\,
	combout => \inst12|always1~1_combout\);

-- Location: LCCOMB_X21_Y17_N22
\inst12|dataBuf0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[1]~3_combout\ = \inst12|dataBuf0\(1) $ (((!\inst12|dataBuf0[3]~0_combout\ & (\inst12|dataBuf0\(0) $ (\inst12|always1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dataBuf0\(0),
	datab => \inst12|always1~1_combout\,
	datac => \inst12|dataBuf0\(1),
	datad => \inst12|dataBuf0[3]~0_combout\,
	combout => \inst12|dataBuf0[1]~3_combout\);

-- Location: FF_X21_Y17_N23
\inst12|dataBuf0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf0[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf0\(1));

-- Location: LCCOMB_X21_Y17_N6
\inst12|dataBuf0[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[2]~1_combout\ = (\inst12|dataBuf0\(0) & (\inst12|dataBuf0\(1) & ((\inst12|key2Prev~q\) # (\inst19|q~q\)))) # (!\inst12|dataBuf0\(0) & (!\inst12|key2Prev~q\ & (!\inst12|dataBuf0\(1) & !\inst19|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dataBuf0\(0),
	datab => \inst12|key2Prev~q\,
	datac => \inst12|dataBuf0\(1),
	datad => \inst19|q~q\,
	combout => \inst12|dataBuf0[2]~1_combout\);

-- Location: LCCOMB_X21_Y17_N28
\inst12|dataBuf0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[2]~2_combout\ = \inst12|dataBuf0\(2) $ (((\inst12|dataBuf0[2]~1_combout\ & !\inst12|dataBuf0[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dataBuf0[2]~1_combout\,
	datac => \inst12|dataBuf0\(2),
	datad => \inst12|dataBuf0[3]~0_combout\,
	combout => \inst12|dataBuf0[2]~2_combout\);

-- Location: FF_X21_Y17_N29
\inst12|dataBuf0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf0[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf0\(2));

-- Location: LCCOMB_X21_Y17_N4
\inst12|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|data[2]~feeder_combout\ = \inst12|dataBuf0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|dataBuf0\(2),
	combout => \inst12|data[2]~feeder_combout\);

-- Location: FF_X21_Y17_N5
\inst12|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|data[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(2));

-- Location: FF_X24_Y17_N5
\inst18|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(2),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(2));

-- Location: LCCOMB_X21_Y17_N10
\inst12|dataBuf0[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[3]~5_combout\ = (\inst12|dataBuf0\(0) & (\inst12|dataBuf0\(2) & (\inst12|dataBuf0\(1) & !\inst12|always1~1_combout\))) # (!\inst12|dataBuf0\(0) & (!\inst12|dataBuf0\(2) & (!\inst12|dataBuf0\(1) & \inst12|always1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dataBuf0\(0),
	datab => \inst12|dataBuf0\(2),
	datac => \inst12|dataBuf0\(1),
	datad => \inst12|always1~1_combout\,
	combout => \inst12|dataBuf0[3]~5_combout\);

-- Location: LCCOMB_X21_Y17_N18
\inst12|dataBuf0[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf0[3]~6_combout\ = \inst12|dataBuf0\(3) $ (((!\inst12|dataBuf0[3]~0_combout\ & \inst12|dataBuf0[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|dataBuf0[3]~0_combout\,
	datac => \inst12|dataBuf0\(3),
	datad => \inst12|dataBuf0[3]~5_combout\,
	combout => \inst12|dataBuf0[3]~6_combout\);

-- Location: FF_X21_Y17_N19
\inst12|dataBuf0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf0[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf0\(3));

-- Location: LCCOMB_X21_Y17_N14
\inst12|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|data[3]~feeder_combout\ = \inst12|dataBuf0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|dataBuf0\(3),
	combout => \inst12|data[3]~feeder_combout\);

-- Location: FF_X21_Y17_N15
\inst12|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|data[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(3));

-- Location: FF_X24_Y17_N7
\inst18|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(3),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(3));

-- Location: LCCOMB_X21_Y17_N2
\inst12|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|data[1]~feeder_combout\ = \inst12|dataBuf0\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|dataBuf0\(1),
	combout => \inst12|data[1]~feeder_combout\);

-- Location: FF_X21_Y17_N3
\inst12|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|data[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(1));

-- Location: FF_X24_Y17_N11
\inst18|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(1),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(1));

-- Location: LCCOMB_X21_Y17_N24
\inst12|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|data[0]~feeder_combout\ = \inst12|dataBuf0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|dataBuf0\(0),
	combout => \inst12|data[0]~feeder_combout\);

-- Location: FF_X21_Y17_N25
\inst12|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|data[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(0));

-- Location: FF_X24_Y17_N21
\inst18|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(0),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(0));

-- Location: LCCOMB_X24_Y17_N20
\inst18|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux0~2_combout\ = (\inst18|bitPosition\(0) & ((\inst18|dataBuf\(1)) # ((\inst18|bitPosition\(1))))) # (!\inst18|bitPosition\(0) & (((\inst18|dataBuf\(0) & !\inst18|bitPosition\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dataBuf\(1),
	datab => \inst18|bitPosition\(0),
	datac => \inst18|dataBuf\(0),
	datad => \inst18|bitPosition\(1),
	combout => \inst18|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst18|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux0~3_combout\ = (\inst18|bitPosition\(1) & ((\inst18|Mux0~2_combout\ & ((\inst18|dataBuf\(3)))) # (!\inst18|Mux0~2_combout\ & (\inst18|dataBuf\(2))))) # (!\inst18|bitPosition\(1) & (((\inst18|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|bitPosition\(1),
	datab => \inst18|dataBuf\(2),
	datac => \inst18|dataBuf\(3),
	datad => \inst18|Mux0~2_combout\,
	combout => \inst18|Mux0~3_combout\);

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

-- Location: LCCOMB_X28_Y17_N10
\inst21|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|latch~feeder_combout\ = \key4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key4~input_o\,
	combout => \inst21|latch~feeder_combout\);

-- Location: FF_X28_Y17_N11
\inst21|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|latch~q\);

-- Location: LCCOMB_X28_Y17_N28
\inst21|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|count~0_combout\ = (!\inst21|count\(3) & (\inst21|latch~q\ $ (!\key4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|latch~q\,
	datab => \inst21|count\(3),
	datad => \key4~input_o\,
	combout => \inst21|count~0_combout\);

-- Location: LCCOMB_X28_Y17_N2
\inst21|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|count~2_combout\ = (!\inst21|count\(3) & (!\inst21|count\(0) & (\inst21|latch~q\ $ (!\key4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|latch~q\,
	datab => \inst21|count\(3),
	datac => \inst21|count\(0),
	datad => \key4~input_o\,
	combout => \inst21|count~2_combout\);

-- Location: FF_X28_Y17_N3
\inst21|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|count\(0));

-- Location: LCCOMB_X28_Y17_N12
\inst21|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|count~3_combout\ = (\inst21|count~0_combout\ & (\inst21|count\(1) $ (\inst21|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst21|count~0_combout\,
	datac => \inst21|count\(1),
	datad => \inst21|count\(0),
	combout => \inst21|count~3_combout\);

-- Location: FF_X28_Y17_N13
\inst21|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|count\(1));

-- Location: LCCOMB_X28_Y17_N22
\inst21|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|count~4_combout\ = (\inst21|count~0_combout\ & (\inst21|count\(2) $ (((\inst21|count\(1) & \inst21|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|count\(1),
	datab => \inst21|count~0_combout\,
	datac => \inst21|count\(2),
	datad => \inst21|count\(0),
	combout => \inst21|count~4_combout\);

-- Location: FF_X28_Y17_N23
\inst21|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|count\(2));

-- Location: LCCOMB_X28_Y17_N0
\inst21|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|count~1_combout\ = (\inst21|count\(1) & (\inst21|count~0_combout\ & (\inst21|count\(2) & \inst21|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|count\(1),
	datab => \inst21|count~0_combout\,
	datac => \inst21|count\(2),
	datad => \inst21|count\(0),
	combout => \inst21|count~1_combout\);

-- Location: FF_X28_Y17_N1
\inst21|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|count\(3));

-- Location: LCCOMB_X28_Y17_N4
\inst21|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21|q~0_combout\ = (\inst21|latch~q\ & ((\inst21|q~q\) # ((\inst21|count\(3) & \key4~input_o\)))) # (!\inst21|latch~q\ & (\inst21|q~q\ & ((\key4~input_o\) # (!\inst21|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|latch~q\,
	datab => \inst21|count\(3),
	datac => \inst21|q~q\,
	datad => \key4~input_o\,
	combout => \inst21|q~0_combout\);

-- Location: FF_X28_Y17_N5
\inst21|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst21|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst21|q~q\);

-- Location: LCCOMB_X26_Y17_N18
\inst12|key4Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|key4Prev~0_combout\ = !\inst21|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst21|q~q\,
	combout => \inst12|key4Prev~0_combout\);

-- Location: FF_X26_Y17_N19
\inst12|key4Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|key4Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|key4Prev~q\);

-- Location: LCCOMB_X26_Y17_N30
\inst12|always1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|always1~0_combout\ = (!\inst12|key4Prev~q\ & !\inst21|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|key4Prev~q\,
	datad => \inst21|q~q\,
	combout => \inst12|always1~0_combout\);

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

-- Location: LCCOMB_X26_Y12_N22
\inst20|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|latch~feeder_combout\ = \key3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key3~input_o\,
	combout => \inst20|latch~feeder_combout\);

-- Location: FF_X26_Y12_N23
\inst20|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|latch~q\);

-- Location: LCCOMB_X26_Y12_N12
\inst20|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|count~0_combout\ = (!\inst20|count\(3) & (\inst20|latch~q\ $ (!\key3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|count\(3),
	datac => \inst20|latch~q\,
	datad => \key3~input_o\,
	combout => \inst20|count~0_combout\);

-- Location: LCCOMB_X26_Y12_N18
\inst20|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|count~2_combout\ = (!\inst20|count\(3) & (!\inst20|count\(0) & (\inst20|latch~q\ $ (!\key3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|latch~q\,
	datab => \inst20|count\(3),
	datac => \inst20|count\(0),
	datad => \key3~input_o\,
	combout => \inst20|count~2_combout\);

-- Location: FF_X26_Y12_N19
\inst20|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|count\(0));

-- Location: LCCOMB_X26_Y12_N4
\inst20|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|count~3_combout\ = (\inst20|count~0_combout\ & (\inst20|count\(1) $ (\inst20|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|count~0_combout\,
	datac => \inst20|count\(1),
	datad => \inst20|count\(0),
	combout => \inst20|count~3_combout\);

-- Location: FF_X26_Y12_N5
\inst20|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|count\(1));

-- Location: LCCOMB_X26_Y12_N2
\inst20|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|count~4_combout\ = (\inst20|count~0_combout\ & (\inst20|count\(2) $ (((\inst20|count\(1) & \inst20|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|count~0_combout\,
	datab => \inst20|count\(1),
	datac => \inst20|count\(2),
	datad => \inst20|count\(0),
	combout => \inst20|count~4_combout\);

-- Location: FF_X26_Y12_N3
\inst20|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|count\(2));

-- Location: LCCOMB_X26_Y12_N8
\inst20|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|count~1_combout\ = (\inst20|count~0_combout\ & (\inst20|count\(0) & (\inst20|count\(1) & \inst20|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|count~0_combout\,
	datab => \inst20|count\(0),
	datac => \inst20|count\(1),
	datad => \inst20|count\(2),
	combout => \inst20|count~1_combout\);

-- Location: FF_X26_Y12_N9
\inst20|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|count\(3));

-- Location: LCCOMB_X26_Y12_N0
\inst20|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|q~0_combout\ = (\inst20|latch~q\ & ((\inst20|q~q\) # ((\inst20|count\(3) & \key3~input_o\)))) # (!\inst20|latch~q\ & (\inst20|q~q\ & ((\key3~input_o\) # (!\inst20|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|latch~q\,
	datab => \inst20|count\(3),
	datac => \inst20|q~q\,
	datad => \key3~input_o\,
	combout => \inst20|q~0_combout\);

-- Location: FF_X26_Y12_N1
\inst20|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst20|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|q~q\);

-- Location: LCCOMB_X26_Y17_N8
\inst12|key3Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|key3Prev~0_combout\ = !\inst20|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|q~q\,
	combout => \inst12|key3Prev~0_combout\);

-- Location: FF_X26_Y17_N11
\inst12|key3Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|key3Prev~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|key3Prev~q\);

-- Location: LCCOMB_X26_Y17_N10
\inst12|dataBuf1[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[3]~0_combout\ = (\inst21|q~q\ & (((\inst12|key3Prev~q\) # (\inst20|q~q\)))) # (!\inst21|q~q\ & (\inst12|key4Prev~q\ & ((\inst12|key3Prev~q\) # (\inst20|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst21|q~q\,
	datab => \inst12|key4Prev~q\,
	datac => \inst12|key3Prev~q\,
	datad => \inst20|q~q\,
	combout => \inst12|dataBuf1[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst12|dataBuf1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1~4_combout\ = \inst12|dataBuf1\(0) $ (!\inst12|dataBuf1[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|dataBuf1\(0),
	datad => \inst12|dataBuf1[3]~0_combout\,
	combout => \inst12|dataBuf1~4_combout\);

-- Location: FF_X26_Y17_N5
\inst12|dataBuf1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf1\(0));

-- Location: LCCOMB_X26_Y17_N12
\inst12|dataBuf1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[1]~3_combout\ = \inst12|dataBuf1\(1) $ (((!\inst12|dataBuf1[3]~0_combout\ & (\inst12|always1~0_combout\ $ (\inst12|dataBuf1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|always1~0_combout\,
	datab => \inst12|dataBuf1\(0),
	datac => \inst12|dataBuf1\(1),
	datad => \inst12|dataBuf1[3]~0_combout\,
	combout => \inst12|dataBuf1[1]~3_combout\);

-- Location: FF_X26_Y17_N13
\inst12|dataBuf1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf1[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf1\(1));

-- Location: LCCOMB_X26_Y17_N16
\inst12|dataBuf1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[2]~1_combout\ = (\inst12|dataBuf1\(1) & (\inst12|dataBuf1\(0) & ((\inst12|key4Prev~q\) # (\inst21|q~q\)))) # (!\inst12|dataBuf1\(1) & (!\inst12|key4Prev~q\ & (!\inst12|dataBuf1\(0) & !\inst21|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|dataBuf1\(1),
	datab => \inst12|key4Prev~q\,
	datac => \inst12|dataBuf1\(0),
	datad => \inst21|q~q\,
	combout => \inst12|dataBuf1[2]~1_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst12|dataBuf1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[2]~2_combout\ = \inst12|dataBuf1\(2) $ (((\inst12|dataBuf1[2]~1_combout\ & !\inst12|dataBuf1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|dataBuf1[2]~1_combout\,
	datac => \inst12|dataBuf1\(2),
	datad => \inst12|dataBuf1[3]~0_combout\,
	combout => \inst12|dataBuf1[2]~2_combout\);

-- Location: FF_X26_Y17_N29
\inst12|dataBuf1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf1\(2));

-- Location: FF_X26_Y17_N31
\inst12|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|dataBuf1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(6));

-- Location: LCCOMB_X26_Y17_N6
\inst18|dataBuf[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|dataBuf[6]~feeder_combout\ = \inst12|data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|data\(6),
	combout => \inst18|dataBuf[6]~feeder_combout\);

-- Location: FF_X26_Y17_N7
\inst18|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|dataBuf[6]~feeder_combout\,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(6));

-- Location: LCCOMB_X26_Y17_N24
\inst12|dataBuf1[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[3]~5_combout\ = (\inst12|always1~0_combout\ & (!\inst12|dataBuf1\(0) & (!\inst12|dataBuf1\(2) & !\inst12|dataBuf1\(1)))) # (!\inst12|always1~0_combout\ & (\inst12|dataBuf1\(0) & (\inst12|dataBuf1\(2) & \inst12|dataBuf1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|always1~0_combout\,
	datab => \inst12|dataBuf1\(0),
	datac => \inst12|dataBuf1\(2),
	datad => \inst12|dataBuf1\(1),
	combout => \inst12|dataBuf1[3]~5_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst12|dataBuf1[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|dataBuf1[3]~6_combout\ = \inst12|dataBuf1\(3) $ (((\inst12|dataBuf1[3]~5_combout\ & !\inst12|dataBuf1[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|dataBuf1[3]~5_combout\,
	datac => \inst12|dataBuf1\(3),
	datad => \inst12|dataBuf1[3]~0_combout\,
	combout => \inst12|dataBuf1[3]~6_combout\);

-- Location: FF_X26_Y17_N23
\inst12|dataBuf1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|dataBuf1[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|dataBuf1\(3));

-- Location: FF_X26_Y17_N9
\inst12|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|dataBuf1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(7));

-- Location: FF_X26_Y17_N3
\inst18|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(7),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(7));

-- Location: LCCOMB_X26_Y17_N0
\inst12|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|data[5]~feeder_combout\ = \inst12|dataBuf1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|dataBuf1\(1),
	combout => \inst12|data[5]~feeder_combout\);

-- Location: FF_X26_Y17_N1
\inst12|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|data[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(5));

-- Location: LCCOMB_X26_Y17_N26
\inst18|dataBuf[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|dataBuf[5]~feeder_combout\ = \inst12|data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|data\(5),
	combout => \inst18|dataBuf[5]~feeder_combout\);

-- Location: FF_X26_Y17_N27
\inst18|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|dataBuf[5]~feeder_combout\,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(5));

-- Location: FF_X26_Y17_N17
\inst12|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|dataBuf1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|data\(4));

-- Location: FF_X26_Y17_N21
\inst18|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(4),
	sload => VCC,
	ena => \inst18|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|dataBuf\(4));

-- Location: LCCOMB_X26_Y17_N20
\inst18|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux0~0_combout\ = (\inst18|bitPosition\(1) & (((\inst18|bitPosition\(0))))) # (!\inst18|bitPosition\(1) & ((\inst18|bitPosition\(0) & (\inst18|dataBuf\(5))) # (!\inst18|bitPosition\(0) & ((\inst18|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dataBuf\(5),
	datab => \inst18|bitPosition\(1),
	datac => \inst18|dataBuf\(4),
	datad => \inst18|bitPosition\(0),
	combout => \inst18|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y17_N2
\inst18|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Mux0~1_combout\ = (\inst18|bitPosition\(1) & ((\inst18|Mux0~0_combout\ & ((\inst18|dataBuf\(7)))) # (!\inst18|Mux0~0_combout\ & (\inst18|dataBuf\(6))))) # (!\inst18|bitPosition\(1) & (((\inst18|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|dataBuf\(6),
	datab => \inst18|bitPosition\(1),
	datac => \inst18|dataBuf\(7),
	datad => \inst18|Mux0~0_combout\,
	combout => \inst18|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y17_N22
\inst18|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector20~0_combout\ = (\inst18|bitPosition\(2) & ((\inst18|Mux0~1_combout\))) # (!\inst18|bitPosition\(2) & (\inst18|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18|bitPosition\(2),
	datac => \inst18|Mux0~3_combout\,
	datad => \inst18|Mux0~1_combout\,
	combout => \inst18|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst18|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector20~1_combout\ = (\inst18|LessThan0~3_combout\ & ((\inst18|Selector20~0_combout\))) # (!\inst18|LessThan0~3_combout\ & (\inst18|tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|tx~q\,
	datab => \inst18|LessThan0~3_combout\,
	datad => \inst18|Selector20~0_combout\,
	combout => \inst18|Selector20~1_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst18|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst18|Selector20~2_combout\ = ((\inst18|stateUART.Stopping~q\) # ((\inst18|stateUART.ReceivingData~q\ & \inst18|Selector20~1_combout\))) # (!\inst18|stateUART.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst18|stateUART.Waiting~q\,
	datab => \inst18|stateUART.ReceivingData~q\,
	datac => \inst18|stateUART.Stopping~q\,
	datad => \inst18|Selector20~1_combout\,
	combout => \inst18|Selector20~2_combout\);

-- Location: FF_X24_Y17_N29
\inst18|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst18|Selector20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18|tx~q\);

-- Location: LCCOMB_X33_Y17_N16
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

-- Location: FF_X33_Y17_N17
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

-- Location: LCCOMB_X33_Y17_N18
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

-- Location: FF_X33_Y17_N19
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

-- Location: LCCOMB_X33_Y17_N20
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

-- Location: FF_X33_Y17_N21
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

-- Location: LCCOMB_X33_Y17_N22
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

-- Location: FF_X33_Y17_N23
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

-- Location: LCCOMB_X33_Y17_N24
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

-- Location: FF_X33_Y17_N25
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

-- Location: LCCOMB_X33_Y17_N26
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

-- Location: FF_X33_Y17_N27
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

-- Location: LCCOMB_X33_Y17_N28
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

-- Location: FF_X33_Y17_N29
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

-- Location: LCCOMB_X33_Y17_N30
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

-- Location: FF_X33_Y17_N31
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

-- Location: LCCOMB_X33_Y16_N0
\inst8|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~33_combout\ = (\inst8|counter\(8) & (\inst8|counter[7]~32\ $ (GND))) # (!\inst8|counter\(8) & (!\inst8|counter[7]~32\ & VCC))
-- \inst8|counter[8]~34\ = CARRY((\inst8|counter\(8) & !\inst8|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(8),
	datad => VCC,
	cin => \inst8|counter[7]~32\,
	combout => \inst8|counter[8]~33_combout\,
	cout => \inst8|counter[8]~34\);

-- Location: LCCOMB_X33_Y17_N14
\inst8|counter[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~feeder_combout\ = \inst8|counter[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter[8]~33_combout\,
	combout => \inst8|counter[8]~feeder_combout\);

-- Location: FF_X33_Y17_N15
\inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[8]~feeder_combout\,
	sclr => \inst8|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(8));

-- Location: LCCOMB_X33_Y16_N2
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

-- Location: FF_X33_Y16_N3
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

-- Location: LCCOMB_X33_Y16_N4
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

-- Location: FF_X33_Y16_N5
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

-- Location: LCCOMB_X33_Y16_N6
\inst8|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[11]~39_combout\ = (\inst8|counter\(11) & (!\inst8|counter[10]~38\)) # (!\inst8|counter\(11) & ((\inst8|counter[10]~38\) # (GND)))
-- \inst8|counter[11]~40\ = CARRY((!\inst8|counter[10]~38\) # (!\inst8|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(11),
	datad => VCC,
	cin => \inst8|counter[10]~38\,
	combout => \inst8|counter[11]~39_combout\,
	cout => \inst8|counter[11]~40\);

-- Location: FF_X33_Y16_N7
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

-- Location: LCCOMB_X33_Y16_N8
\inst8|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[12]~41_combout\ = (\inst8|counter\(12) & (\inst8|counter[11]~40\ $ (GND))) # (!\inst8|counter\(12) & (!\inst8|counter[11]~40\ & VCC))
-- \inst8|counter[12]~42\ = CARRY((\inst8|counter\(12) & !\inst8|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(12),
	datad => VCC,
	cin => \inst8|counter[11]~40\,
	combout => \inst8|counter[12]~41_combout\,
	cout => \inst8|counter[12]~42\);

-- Location: FF_X33_Y16_N9
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

-- Location: LCCOMB_X33_Y16_N10
\inst8|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[13]~43_combout\ = (\inst8|counter\(13) & (!\inst8|counter[12]~42\)) # (!\inst8|counter\(13) & ((\inst8|counter[12]~42\) # (GND)))
-- \inst8|counter[13]~44\ = CARRY((!\inst8|counter[12]~42\) # (!\inst8|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(13),
	datad => VCC,
	cin => \inst8|counter[12]~42\,
	combout => \inst8|counter[13]~43_combout\,
	cout => \inst8|counter[13]~44\);

-- Location: FF_X33_Y16_N11
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

-- Location: LCCOMB_X33_Y16_N12
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

-- Location: FF_X33_Y16_N13
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

-- Location: LCCOMB_X33_Y16_N14
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

-- Location: FF_X33_Y16_N15
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

-- Location: LCCOMB_X33_Y16_N16
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

-- Location: FF_X33_Y16_N17
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

-- Location: LCCOMB_X33_Y16_N30
\inst8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~2_combout\ = (!\inst8|counter\(13) & (!\inst8|counter\(12) & (!\inst8|counter\(11) & !\inst8|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(13),
	datab => \inst8|counter\(12),
	datac => \inst8|counter\(11),
	datad => \inst8|counter\(14),
	combout => \inst8|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y17_N10
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = ((!\inst8|counter\(5) & (!\inst8|counter\(6) & !\inst8|counter\(8)))) # (!\inst8|counter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(6),
	datac => \inst8|counter\(8),
	datad => \inst8|counter\(9),
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y17_N0
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = ((\inst8|LessThan0~0_combout\) # ((!\inst8|counter\(7) & !\inst8|counter\(8)))) # (!\inst8|counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(7),
	datab => \inst8|counter\(8),
	datac => \inst8|counter\(10),
	datad => \inst8|LessThan0~0_combout\,
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y17_N6
\inst8|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_combout\ = (((\inst8|LessThan0~2_combout\ & \inst8|LessThan0~1_combout\)) # (!\inst8|counter\(16))) # (!\inst8|counter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(15),
	datab => \inst8|counter\(16),
	datac => \inst8|LessThan0~2_combout\,
	datad => \inst8|LessThan0~1_combout\,
	combout => \inst8|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y17_N2
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

-- Location: LCCOMB_X33_Y17_N12
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

-- Location: FF_X33_Y17_N13
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

-- Location: LCCOMB_X13_Y17_N2
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

-- Location: FF_X13_Y17_N3
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

-- Location: LCCOMB_X13_Y17_N14
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

-- Location: FF_X13_Y17_N25
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

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X13_Y17_N24
\inst10|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|indicator\(1))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((!\inst10|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|indicator\(1),
	datab => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|counter\(0),
	combout => \inst10|indicator\(1));

-- Location: LCCOMB_X12_Y17_N24
\inst10|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|indicator\(0)))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter\(0),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|indicator\(0),
	combout => \inst10|indicator\(0));

-- Location: FF_X14_Y17_N1
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

-- Location: LCCOMB_X14_Y17_N0
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

-- Location: FF_X13_Y17_N11
\inst11|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(2),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(2));

-- Location: FF_X13_Y17_N9
\inst11|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(1),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(1));

-- Location: FF_X13_Y17_N5
\inst11|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(0),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(0));

-- Location: FF_X13_Y17_N13
\inst11|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(3),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(3));

-- Location: LCCOMB_X13_Y17_N16
\inst11|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr0~0_combout\ = (\inst11|dataBuf\(0) & ((\inst11|dataBuf\(3)) # (\inst11|dataBuf\(2) $ (\inst11|dataBuf\(1))))) # (!\inst11|dataBuf\(0) & ((\inst11|dataBuf\(1)) # (\inst11|dataBuf\(2) $ (\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr0~0_combout\);

-- Location: FF_X14_Y17_N9
\inst11|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(6),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(6));

-- Location: FF_X14_Y17_N29
\inst11|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(4),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(4));

-- Location: FF_X14_Y17_N27
\inst11|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(5),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(5));

-- Location: FF_X14_Y17_N31
\inst11|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst12|data\(7),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(7));

-- Location: LCCOMB_X14_Y17_N4
\inst11|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr7~0_combout\ = (\inst11|dataBuf\(4) & ((\inst11|dataBuf\(7)) # (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(5))))) # (!\inst11|dataBuf\(4) & ((\inst11|dataBuf\(5)) # (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(6),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(5),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr7~0_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst10|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr7~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|WideOr0~0_combout\,
	datac => \inst11|WideOr7~0_combout\,
	datad => \inst10|counter\(0),
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst10|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(6) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(6))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((!\inst10|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datab => \inst10|segment\(6),
	datad => \inst10|Mux5~0_combout\,
	combout => \inst10|segment\(6));

-- Location: LCCOMB_X13_Y17_N26
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

-- Location: LCCOMB_X14_Y17_N30
\inst11|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr8~0_combout\ = (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & ((\inst11|dataBuf\(4)) # (!\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(4) & (\inst11|dataBuf\(7) $ (!\inst11|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(7),
	datad => \inst11|dataBuf\(6),
	combout => \inst11|WideOr8~0_combout\);

-- Location: LCCOMB_X14_Y17_N12
\inst10|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr8~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|WideOr1~0_combout\,
	datac => \inst11|WideOr8~0_combout\,
	datad => \inst10|counter\(0),
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst10|segment[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(5) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(5))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datac => \inst10|segment\(5),
	datad => \inst10|Mux6~0_combout\,
	combout => \inst10|segment\(5));

-- Location: LCCOMB_X13_Y17_N0
\inst11|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr2~0_combout\ = (\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(0)))) # (!\inst11|dataBuf\(1) & ((\inst11|dataBuf\(2) & (!\inst11|dataBuf\(3))) # (!\inst11|dataBuf\(2) & ((\inst11|dataBuf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(0),
	datac => \inst11|dataBuf\(1),
	datad => \inst11|dataBuf\(2),
	combout => \inst11|WideOr2~0_combout\);

-- Location: LCCOMB_X14_Y17_N8
\inst11|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr9~0_combout\ = (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & ((\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(5) & ((\inst11|dataBuf\(6) & (!\inst11|dataBuf\(7))) # (!\inst11|dataBuf\(6) & ((\inst11|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(7),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(4),
	combout => \inst11|WideOr9~0_combout\);

-- Location: LCCOMB_X14_Y17_N6
\inst10|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr9~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter\(0),
	datac => \inst11|WideOr2~0_combout\,
	datad => \inst11|WideOr9~0_combout\,
	combout => \inst10|Mux7~0_combout\);

-- Location: LCCOMB_X14_Y17_N20
\inst10|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(4) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(4))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datac => \inst10|segment\(4),
	datad => \inst10|Mux7~0_combout\,
	combout => \inst10|segment\(4));

-- Location: LCCOMB_X14_Y17_N24
\inst11|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr10~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(4) & (\inst11|dataBuf\(6))) # (!\inst11|dataBuf\(4) & (!\inst11|dataBuf\(6) & \inst11|dataBuf\(7))))) # (!\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & (\inst11|dataBuf\(4) $ 
-- (\inst11|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr10~0_combout\);

-- Location: LCCOMB_X13_Y17_N8
\inst11|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr3~0_combout\ = (\inst11|dataBuf\(1) & ((\inst11|dataBuf\(2) & ((\inst11|dataBuf\(0)))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(3) & !\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) $ 
-- (\inst11|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(1),
	datad => \inst11|dataBuf\(0),
	combout => \inst11|WideOr3~0_combout\);

-- Location: LCCOMB_X13_Y17_N20
\inst10|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux8~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr10~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr10~0_combout\,
	datad => \inst11|WideOr3~0_combout\,
	combout => \inst10|Mux8~0_combout\);

-- Location: LCCOMB_X13_Y17_N10
\inst10|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(3) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(3))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(3),
	datab => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux8~0_combout\,
	combout => \inst10|segment\(3));

-- Location: LCCOMB_X13_Y17_N30
\inst11|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr4~0_combout\ = (\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) & ((\inst11|dataBuf\(1)) # (!\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(3) & (!\inst11|dataBuf\(2) & (!\inst11|dataBuf\(0) & \inst11|dataBuf\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(1),
	combout => \inst11|WideOr4~0_combout\);

-- Location: LCCOMB_X14_Y17_N22
\inst11|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr11~0_combout\ = (\inst11|dataBuf\(6) & (\inst11|dataBuf\(7) & ((\inst11|dataBuf\(5)) # (!\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(6) & (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(4) & !\inst11|dataBuf\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr11~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
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

-- Location: LCCOMB_X13_Y17_N4
\inst10|segment[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(2) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(2))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(2),
	datab => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux9~0_combout\,
	combout => \inst10|segment\(2));

-- Location: LCCOMB_X13_Y17_N22
\inst11|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr5~0_combout\ = (\inst11|dataBuf\(3) & ((\inst11|dataBuf\(0) & ((\inst11|dataBuf\(1)))) # (!\inst11|dataBuf\(0) & (\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) & (\inst11|dataBuf\(0) $ (\inst11|dataBuf\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(2),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(1),
	combout => \inst11|WideOr5~0_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst11|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr12~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(4) & ((\inst11|dataBuf\(7)))) # (!\inst11|dataBuf\(4) & (\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(6) & (\inst11|dataBuf\(4) $ (\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr12~0_combout\);

-- Location: LCCOMB_X13_Y17_N18
\inst10|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr12~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr5~0_combout\,
	datad => \inst11|WideOr12~0_combout\,
	combout => \inst10|Mux10~0_combout\);

-- Location: LCCOMB_X13_Y17_N12
\inst10|segment[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(1))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(1),
	datab => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux10~0_combout\,
	combout => \inst10|segment\(1));

-- Location: LCCOMB_X13_Y17_N6
\inst11|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr6~0_combout\ = (\inst11|dataBuf\(3) & (\inst11|dataBuf\(0) & (\inst11|dataBuf\(1) $ (\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(3) & (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(0) $ (\inst11|dataBuf\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(2),
	combout => \inst11|WideOr6~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst11|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr13~0_combout\ = (\inst11|dataBuf\(6) & (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(7) $ (!\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(6) & (\inst11|dataBuf\(4) & (\inst11|dataBuf\(7) $ (!\inst11|dataBuf\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(6),
	datab => \inst11|dataBuf\(7),
	datac => \inst11|dataBuf\(5),
	datad => \inst11|dataBuf\(4),
	combout => \inst11|WideOr13~0_combout\);

-- Location: LCCOMB_X14_Y17_N18
\inst10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr13~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter\(0),
	datab => \inst11|WideOr6~0_combout\,
	datad => \inst11|WideOr13~0_combout\,
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst10|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(0))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datac => \inst10|segment\(0),
	datad => \inst10|Mux0~0_combout\,
	combout => \inst10|segment\(0));

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


