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

-- DATE "02/22/2024 11:23:23"

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
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \rx~input_o\ : std_logic;
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
SIGNAL \inst|clkCounter[0]~18_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|clkCounter[0]~19\ : std_logic;
SIGNAL \inst|clkCounter[1]~20_combout\ : std_logic;
SIGNAL \inst|clkCounter[1]~21\ : std_logic;
SIGNAL \inst|clkCounter[2]~22_combout\ : std_logic;
SIGNAL \inst|clkCounter[2]~23\ : std_logic;
SIGNAL \inst|clkCounter[3]~24_combout\ : std_logic;
SIGNAL \inst|clkCounter[3]~25\ : std_logic;
SIGNAL \inst|clkCounter[4]~26_combout\ : std_logic;
SIGNAL \inst|clkCounter[4]~27\ : std_logic;
SIGNAL \inst|clkCounter[5]~28_combout\ : std_logic;
SIGNAL \inst|clkCounter[5]~29\ : std_logic;
SIGNAL \inst|clkCounter[6]~30_combout\ : std_logic;
SIGNAL \inst|clkCounter[6]~31\ : std_logic;
SIGNAL \inst|clkCounter[7]~32_combout\ : std_logic;
SIGNAL \inst|clkCounter[7]~33\ : std_logic;
SIGNAL \inst|clkCounter[8]~34_combout\ : std_logic;
SIGNAL \inst|clkCounter[8]~35\ : std_logic;
SIGNAL \inst|clkCounter[9]~36_combout\ : std_logic;
SIGNAL \inst|clkCounter[9]~37\ : std_logic;
SIGNAL \inst|clkCounter[10]~38_combout\ : std_logic;
SIGNAL \inst|clkCounter[10]~39\ : std_logic;
SIGNAL \inst|clkCounter[11]~40_combout\ : std_logic;
SIGNAL \inst|clkCounter[11]~41\ : std_logic;
SIGNAL \inst|clkCounter[12]~42_combout\ : std_logic;
SIGNAL \inst|clkCounter[12]~43\ : std_logic;
SIGNAL \inst|clkCounter[13]~44_combout\ : std_logic;
SIGNAL \inst|clkCounter[13]~45\ : std_logic;
SIGNAL \inst|clkCounter[14]~46_combout\ : std_logic;
SIGNAL \inst|clkCounter[14]~47\ : std_logic;
SIGNAL \inst|clkCounter[15]~48_combout\ : std_logic;
SIGNAL \inst|clkCounter[15]~49\ : std_logic;
SIGNAL \inst|clkCounter[16]~50_combout\ : std_logic;
SIGNAL \inst|clkCounter[16]~51\ : std_logic;
SIGNAL \inst|clkCounter[17]~52_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~0_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~feeder_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~q\ : std_logic;
SIGNAL \inst|clkOutBuf~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|clkCounter[0]~1_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~0_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|updatePrev~feeder_combout\ : std_logic;
SIGNAL \inst1|updatePrev~q\ : std_logic;
SIGNAL \inst1|dataBuf[3]~0_combout\ : std_logic;
SIGNAL \inst2|Mux8~0_combout\ : std_logic;
SIGNAL \inst2|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst2|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|clkCounter\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|dataBuf\ : std_logic_vector(3 DOWNTO 0);

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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X33_Y13_N14
\inst|clkCounter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[0]~18_combout\ = \inst|clkCounter\(0) $ (VCC)
-- \inst|clkCounter[0]~19\ = CARRY(\inst|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(0),
	datad => VCC,
	combout => \inst|clkCounter[0]~18_combout\,
	cout => \inst|clkCounter[0]~19\);

-- Location: LCCOMB_X33_Y12_N30
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (((!\inst|clkCounter\(13) & !\inst|clkCounter\(12))) # (!\inst|clkCounter\(14))) # (!\inst|clkCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(15),
	datab => \inst|clkCounter\(13),
	datac => \inst|clkCounter\(12),
	datad => \inst|clkCounter\(14),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|clkCounter\(11) & (!\inst|clkCounter\(10) & (!\inst|clkCounter\(8) & !\inst|clkCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(11),
	datab => \inst|clkCounter\(10),
	datac => \inst|clkCounter\(8),
	datad => \inst|clkCounter\(9),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y13_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ((!\inst|clkCounter\(4) & (!\inst|clkCounter\(5) & !\inst|clkCounter\(6)))) # (!\inst|clkCounter\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(4),
	datab => \inst|clkCounter\(5),
	datac => \inst|clkCounter\(6),
	datad => \inst|clkCounter\(7),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|LessThan0~0_combout\) # ((!\inst|clkCounter\(13) & (\inst|LessThan0~2_combout\ & \inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~0_combout\,
	datab => \inst|clkCounter\(13),
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|clkCounter\(17) & (\inst|clkCounter\(16) & !\inst|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(17),
	datac => \inst|clkCounter\(16),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: FF_X33_Y13_N15
\inst|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[0]~18_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(0));

-- Location: LCCOMB_X33_Y13_N16
\inst|clkCounter[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[1]~20_combout\ = (\inst|clkCounter\(1) & (!\inst|clkCounter[0]~19\)) # (!\inst|clkCounter\(1) & ((\inst|clkCounter[0]~19\) # (GND)))
-- \inst|clkCounter[1]~21\ = CARRY((!\inst|clkCounter[0]~19\) # (!\inst|clkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(1),
	datad => VCC,
	cin => \inst|clkCounter[0]~19\,
	combout => \inst|clkCounter[1]~20_combout\,
	cout => \inst|clkCounter[1]~21\);

-- Location: FF_X33_Y13_N17
\inst|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[1]~20_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(1));

-- Location: LCCOMB_X33_Y13_N18
\inst|clkCounter[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[2]~22_combout\ = (\inst|clkCounter\(2) & (\inst|clkCounter[1]~21\ $ (GND))) # (!\inst|clkCounter\(2) & (!\inst|clkCounter[1]~21\ & VCC))
-- \inst|clkCounter[2]~23\ = CARRY((\inst|clkCounter\(2) & !\inst|clkCounter[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(2),
	datad => VCC,
	cin => \inst|clkCounter[1]~21\,
	combout => \inst|clkCounter[2]~22_combout\,
	cout => \inst|clkCounter[2]~23\);

-- Location: FF_X33_Y13_N19
\inst|clkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[2]~22_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(2));

-- Location: LCCOMB_X33_Y13_N20
\inst|clkCounter[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[3]~24_combout\ = (\inst|clkCounter\(3) & (!\inst|clkCounter[2]~23\)) # (!\inst|clkCounter\(3) & ((\inst|clkCounter[2]~23\) # (GND)))
-- \inst|clkCounter[3]~25\ = CARRY((!\inst|clkCounter[2]~23\) # (!\inst|clkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(3),
	datad => VCC,
	cin => \inst|clkCounter[2]~23\,
	combout => \inst|clkCounter[3]~24_combout\,
	cout => \inst|clkCounter[3]~25\);

-- Location: FF_X33_Y13_N21
\inst|clkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[3]~24_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(3));

-- Location: LCCOMB_X33_Y13_N22
\inst|clkCounter[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[4]~26_combout\ = (\inst|clkCounter\(4) & (\inst|clkCounter[3]~25\ $ (GND))) # (!\inst|clkCounter\(4) & (!\inst|clkCounter[3]~25\ & VCC))
-- \inst|clkCounter[4]~27\ = CARRY((\inst|clkCounter\(4) & !\inst|clkCounter[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(4),
	datad => VCC,
	cin => \inst|clkCounter[3]~25\,
	combout => \inst|clkCounter[4]~26_combout\,
	cout => \inst|clkCounter[4]~27\);

-- Location: FF_X33_Y13_N23
\inst|clkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[4]~26_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(4));

-- Location: LCCOMB_X33_Y13_N24
\inst|clkCounter[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[5]~28_combout\ = (\inst|clkCounter\(5) & (!\inst|clkCounter[4]~27\)) # (!\inst|clkCounter\(5) & ((\inst|clkCounter[4]~27\) # (GND)))
-- \inst|clkCounter[5]~29\ = CARRY((!\inst|clkCounter[4]~27\) # (!\inst|clkCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(5),
	datad => VCC,
	cin => \inst|clkCounter[4]~27\,
	combout => \inst|clkCounter[5]~28_combout\,
	cout => \inst|clkCounter[5]~29\);

-- Location: FF_X33_Y13_N25
\inst|clkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[5]~28_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(5));

-- Location: LCCOMB_X33_Y13_N26
\inst|clkCounter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[6]~30_combout\ = (\inst|clkCounter\(6) & (\inst|clkCounter[5]~29\ $ (GND))) # (!\inst|clkCounter\(6) & (!\inst|clkCounter[5]~29\ & VCC))
-- \inst|clkCounter[6]~31\ = CARRY((\inst|clkCounter\(6) & !\inst|clkCounter[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(6),
	datad => VCC,
	cin => \inst|clkCounter[5]~29\,
	combout => \inst|clkCounter[6]~30_combout\,
	cout => \inst|clkCounter[6]~31\);

-- Location: FF_X33_Y13_N27
\inst|clkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[6]~30_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(6));

-- Location: LCCOMB_X33_Y13_N28
\inst|clkCounter[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[7]~32_combout\ = (\inst|clkCounter\(7) & (!\inst|clkCounter[6]~31\)) # (!\inst|clkCounter\(7) & ((\inst|clkCounter[6]~31\) # (GND)))
-- \inst|clkCounter[7]~33\ = CARRY((!\inst|clkCounter[6]~31\) # (!\inst|clkCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(7),
	datad => VCC,
	cin => \inst|clkCounter[6]~31\,
	combout => \inst|clkCounter[7]~32_combout\,
	cout => \inst|clkCounter[7]~33\);

-- Location: FF_X33_Y13_N29
\inst|clkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[7]~32_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(7));

-- Location: LCCOMB_X33_Y13_N30
\inst|clkCounter[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[8]~34_combout\ = (\inst|clkCounter\(8) & (\inst|clkCounter[7]~33\ $ (GND))) # (!\inst|clkCounter\(8) & (!\inst|clkCounter[7]~33\ & VCC))
-- \inst|clkCounter[8]~35\ = CARRY((\inst|clkCounter\(8) & !\inst|clkCounter[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(8),
	datad => VCC,
	cin => \inst|clkCounter[7]~33\,
	combout => \inst|clkCounter[8]~34_combout\,
	cout => \inst|clkCounter[8]~35\);

-- Location: FF_X33_Y13_N31
\inst|clkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[8]~34_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(8));

-- Location: LCCOMB_X33_Y12_N0
\inst|clkCounter[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[9]~36_combout\ = (\inst|clkCounter\(9) & (!\inst|clkCounter[8]~35\)) # (!\inst|clkCounter\(9) & ((\inst|clkCounter[8]~35\) # (GND)))
-- \inst|clkCounter[9]~37\ = CARRY((!\inst|clkCounter[8]~35\) # (!\inst|clkCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(9),
	datad => VCC,
	cin => \inst|clkCounter[8]~35\,
	combout => \inst|clkCounter[9]~36_combout\,
	cout => \inst|clkCounter[9]~37\);

-- Location: FF_X33_Y12_N1
\inst|clkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[9]~36_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(9));

-- Location: LCCOMB_X33_Y12_N2
\inst|clkCounter[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[10]~38_combout\ = (\inst|clkCounter\(10) & (\inst|clkCounter[9]~37\ $ (GND))) # (!\inst|clkCounter\(10) & (!\inst|clkCounter[9]~37\ & VCC))
-- \inst|clkCounter[10]~39\ = CARRY((\inst|clkCounter\(10) & !\inst|clkCounter[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(10),
	datad => VCC,
	cin => \inst|clkCounter[9]~37\,
	combout => \inst|clkCounter[10]~38_combout\,
	cout => \inst|clkCounter[10]~39\);

-- Location: FF_X33_Y12_N3
\inst|clkCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[10]~38_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(10));

-- Location: LCCOMB_X33_Y12_N4
\inst|clkCounter[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[11]~40_combout\ = (\inst|clkCounter\(11) & (!\inst|clkCounter[10]~39\)) # (!\inst|clkCounter\(11) & ((\inst|clkCounter[10]~39\) # (GND)))
-- \inst|clkCounter[11]~41\ = CARRY((!\inst|clkCounter[10]~39\) # (!\inst|clkCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(11),
	datad => VCC,
	cin => \inst|clkCounter[10]~39\,
	combout => \inst|clkCounter[11]~40_combout\,
	cout => \inst|clkCounter[11]~41\);

-- Location: FF_X33_Y12_N5
\inst|clkCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[11]~40_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(11));

-- Location: LCCOMB_X33_Y12_N6
\inst|clkCounter[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[12]~42_combout\ = (\inst|clkCounter\(12) & (\inst|clkCounter[11]~41\ $ (GND))) # (!\inst|clkCounter\(12) & (!\inst|clkCounter[11]~41\ & VCC))
-- \inst|clkCounter[12]~43\ = CARRY((\inst|clkCounter\(12) & !\inst|clkCounter[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(12),
	datad => VCC,
	cin => \inst|clkCounter[11]~41\,
	combout => \inst|clkCounter[12]~42_combout\,
	cout => \inst|clkCounter[12]~43\);

-- Location: FF_X33_Y12_N7
\inst|clkCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[12]~42_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(12));

-- Location: LCCOMB_X33_Y12_N8
\inst|clkCounter[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[13]~44_combout\ = (\inst|clkCounter\(13) & (!\inst|clkCounter[12]~43\)) # (!\inst|clkCounter\(13) & ((\inst|clkCounter[12]~43\) # (GND)))
-- \inst|clkCounter[13]~45\ = CARRY((!\inst|clkCounter[12]~43\) # (!\inst|clkCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(13),
	datad => VCC,
	cin => \inst|clkCounter[12]~43\,
	combout => \inst|clkCounter[13]~44_combout\,
	cout => \inst|clkCounter[13]~45\);

-- Location: FF_X33_Y12_N9
\inst|clkCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[13]~44_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(13));

-- Location: LCCOMB_X33_Y12_N10
\inst|clkCounter[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[14]~46_combout\ = (\inst|clkCounter\(14) & (\inst|clkCounter[13]~45\ $ (GND))) # (!\inst|clkCounter\(14) & (!\inst|clkCounter[13]~45\ & VCC))
-- \inst|clkCounter[14]~47\ = CARRY((\inst|clkCounter\(14) & !\inst|clkCounter[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(14),
	datad => VCC,
	cin => \inst|clkCounter[13]~45\,
	combout => \inst|clkCounter[14]~46_combout\,
	cout => \inst|clkCounter[14]~47\);

-- Location: FF_X33_Y12_N11
\inst|clkCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[14]~46_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(14));

-- Location: LCCOMB_X33_Y12_N12
\inst|clkCounter[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[15]~48_combout\ = (\inst|clkCounter\(15) & (!\inst|clkCounter[14]~47\)) # (!\inst|clkCounter\(15) & ((\inst|clkCounter[14]~47\) # (GND)))
-- \inst|clkCounter[15]~49\ = CARRY((!\inst|clkCounter[14]~47\) # (!\inst|clkCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(15),
	datad => VCC,
	cin => \inst|clkCounter[14]~47\,
	combout => \inst|clkCounter[15]~48_combout\,
	cout => \inst|clkCounter[15]~49\);

-- Location: FF_X33_Y12_N13
\inst|clkCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[15]~48_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(15));

-- Location: LCCOMB_X33_Y12_N14
\inst|clkCounter[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[16]~50_combout\ = (\inst|clkCounter\(16) & (\inst|clkCounter[15]~49\ $ (GND))) # (!\inst|clkCounter\(16) & (!\inst|clkCounter[15]~49\ & VCC))
-- \inst|clkCounter[16]~51\ = CARRY((\inst|clkCounter\(16) & !\inst|clkCounter[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(16),
	datad => VCC,
	cin => \inst|clkCounter[15]~49\,
	combout => \inst|clkCounter[16]~50_combout\,
	cout => \inst|clkCounter[16]~51\);

-- Location: FF_X33_Y12_N15
\inst|clkCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[16]~50_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(16));

-- Location: LCCOMB_X33_Y12_N16
\inst|clkCounter[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[17]~52_combout\ = \inst|clkCounter[16]~51\ $ (\inst|clkCounter\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter\(17),
	cin => \inst|clkCounter[16]~51\,
	combout => \inst|clkCounter[17]~52_combout\);

-- Location: FF_X33_Y12_N17
\inst|clkCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[17]~52_combout\,
	sclr => \inst|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(17));

-- Location: LCCOMB_X33_Y12_N24
\inst|clkOutBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~0_combout\ = \inst|clkOutBuf~q\ $ (((\inst|clkCounter\(17) & (\inst|clkCounter\(16) & !\inst|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOutBuf~q\,
	datab => \inst|clkCounter\(17),
	datac => \inst|clkCounter\(16),
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|clkOutBuf~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst|clkOutBuf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~feeder_combout\ = \inst|clkOutBuf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkOutBuf~0_combout\,
	combout => \inst|clkOutBuf~feeder_combout\);

-- Location: FF_X33_Y12_N19
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X18_Y23_N24
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

-- Location: FF_X18_Y23_N25
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

-- Location: LCCOMB_X18_Y23_N10
\inst2|clkCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~0_combout\ = \inst2|clkCounter\(1) $ (\inst2|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(1),
	datad => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[1]~0_combout\);

-- Location: LCCOMB_X18_Y23_N20
\inst2|clkCounter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~feeder_combout\ = \inst2|clkCounter[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|clkCounter[1]~0_combout\,
	combout => \inst2|clkCounter[1]~feeder_combout\);

-- Location: FF_X18_Y23_N21
\inst2|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst2|clkCounter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkCounter\(1));

-- Location: CLKCTRL_G8
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

-- Location: LCCOMB_X18_Y23_N14
\inst2|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(1) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|indicator\(1)))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (!\inst2|clkCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkCounter\(0),
	datac => \inst2|indicator\(1),
	datad => \inst2|clkCounter[1]~clkctrl_outclk\,
	combout => \inst2|indicator\(1));

-- Location: LCCOMB_X18_Y23_N26
\inst2|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|indicator\(0)))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|clkCounter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkCounter\(0),
	datac => \inst2|indicator\(0),
	datad => \inst2|clkCounter[1]~clkctrl_outclk\,
	combout => \inst2|indicator\(0));

-- Location: LCCOMB_X18_Y23_N12
\inst1|updatePrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|updatePrev~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|updatePrev~feeder_combout\);

-- Location: FF_X18_Y23_N13
\inst1|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|updatePrev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|updatePrev~q\);

-- Location: LCCOMB_X18_Y23_N8
\inst1|dataBuf[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|dataBuf[3]~0_combout\ = (\inst1|dataBuf\(3)) # (!\inst1|updatePrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|dataBuf\(3),
	datad => \inst1|updatePrev~q\,
	combout => \inst1|dataBuf[3]~0_combout\);

-- Location: FF_X18_Y23_N9
\inst1|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|dataBuf[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|dataBuf\(3));

-- Location: LCCOMB_X18_Y23_N30
\inst2|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux8~0_combout\ = (!\inst2|clkCounter\(0) & !\inst1|dataBuf\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(0),
	datac => \inst1|dataBuf\(3),
	combout => \inst2|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y23_N22
\inst2|segment[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(2) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(2))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|segment\(2),
	datac => \inst2|Mux8~0_combout\,
	datad => \inst2|clkCounter[1]~clkctrl_outclk\,
	combout => \inst2|segment\(2));

-- Location: LCCOMB_X18_Y23_N28
\inst2|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|segment\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|segment\(0))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((!\inst2|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|segment\(0),
	datac => \inst2|Mux8~0_combout\,
	datad => \inst2|clkCounter[1]~clkctrl_outclk\,
	combout => \inst2|segment\(0));

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


