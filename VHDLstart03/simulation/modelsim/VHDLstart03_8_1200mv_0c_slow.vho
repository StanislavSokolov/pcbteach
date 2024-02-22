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

-- DATE "02/22/2024 12:18:43"

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
SIGNAL \inst|clkOutBuf~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst|clkCounter[0]~17_combout\ : std_logic;
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
SIGNAL \inst|clkCounter[8]~feeder_combout\ : std_logic;
SIGNAL \inst|clkCounter[8]~34\ : std_logic;
SIGNAL \inst|clkCounter[9]~35_combout\ : std_logic;
SIGNAL \inst|clkCounter[9]~feeder_combout\ : std_logic;
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
SIGNAL \inst|clkCounter[15]~48\ : std_logic;
SIGNAL \inst|clkCounter[16]~49_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~0_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~feeder_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~q\ : std_logic;
SIGNAL \inst|clkOutBuf~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|clkCounter[0]~1_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~0_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|clkCounter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan0~3_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_clk <= clk;
ww_rx <= rx;
indicator <= ww_indicator;
segment <= ww_segment;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clkOutBuf~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOutBuf~q\);

\inst2|clkCounter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkCounter\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_LessThan0~3_combout\ <= NOT \inst|LessThan0~3_combout\;

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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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

-- Location: LCCOMB_X33_Y13_N14
\inst|clkCounter[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[8]~feeder_combout\ = \inst|clkCounter[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter[8]~33_combout\,
	combout => \inst|clkCounter[8]~feeder_combout\);

-- Location: FF_X33_Y13_N15
\inst|clkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[8]~feeder_combout\,
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(9),
	datad => VCC,
	cin => \inst|clkCounter[8]~34\,
	combout => \inst|clkCounter[9]~35_combout\,
	cout => \inst|clkCounter[9]~36\);

-- Location: LCCOMB_X33_Y13_N2
\inst|clkCounter[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[9]~feeder_combout\ = \inst|clkCounter[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter[9]~35_combout\,
	combout => \inst|clkCounter[9]~feeder_combout\);

-- Location: FF_X33_Y13_N3
\inst|clkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[9]~feeder_combout\,
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(11),
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(13),
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
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
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(14),
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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(14));

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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(15));

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
	sclr => \inst|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(16));

-- Location: LCCOMB_X33_Y12_N30
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (!\inst|clkCounter\(14) & (!\inst|clkCounter\(12) & (!\inst|clkCounter\(13) & !\inst|clkCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(14),
	datab => \inst|clkCounter\(12),
	datac => \inst|clkCounter\(13),
	datad => \inst|clkCounter\(11),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y13_N8
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ((!\inst|clkCounter\(5) & (!\inst|clkCounter\(6) & !\inst|clkCounter\(8)))) # (!\inst|clkCounter\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(5),
	datab => \inst|clkCounter\(6),
	datac => \inst|clkCounter\(8),
	datad => \inst|clkCounter\(9),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y13_N0
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|LessThan0~0_combout\) # (((!\inst|clkCounter\(7) & !\inst|clkCounter\(8))) # (!\inst|clkCounter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(7),
	datab => \inst|clkCounter\(8),
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|clkCounter\(10),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y13_N10
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (((\inst|LessThan0~2_combout\ & \inst|LessThan0~1_combout\)) # (!\inst|clkCounter\(16))) # (!\inst|clkCounter\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(15),
	datab => \inst|clkCounter\(16),
	datac => \inst|LessThan0~2_combout\,
	datad => \inst|LessThan0~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y13_N12
\inst|clkOutBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~0_combout\ = \inst|clkOutBuf~q\ $ (!\inst|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clkOutBuf~q\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|clkOutBuf~0_combout\);

-- Location: LCCOMB_X33_Y13_N6
\inst|clkOutBuf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~feeder_combout\ = \inst|clkOutBuf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clkOutBuf~0_combout\,
	combout => \inst|clkOutBuf~feeder_combout\);

-- Location: FF_X33_Y13_N7
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

-- Location: LCCOMB_X6_Y11_N24
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

-- Location: FF_X6_Y11_N25
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

-- Location: LCCOMB_X6_Y11_N20
\inst2|clkCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~0_combout\ = \inst2|clkCounter\(1) $ (\inst2|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkCounter\(1),
	datad => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[1]~0_combout\);

-- Location: LCCOMB_X6_Y11_N28
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

-- Location: FF_X6_Y11_N29
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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X6_Y11_N22
\inst2|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(1) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|indicator\(1))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((!\inst2|clkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|indicator\(1),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|clkCounter\(0),
	combout => \inst2|indicator\(1));

-- Location: LCCOMB_X6_Y11_N30
\inst2|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|indicator\(0))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|clkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|indicator\(0),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|clkCounter\(0),
	combout => \inst2|indicator\(0));

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


