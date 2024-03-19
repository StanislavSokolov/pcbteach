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

-- DATE "03/19/2024 14:36:13"

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

ENTITY 	VERILOGStart02 IS
    PORT (
	clk : IN std_logic;
	button : IN std_logic;
	en : OUT std_logic_vector(3 DOWNTO 0);
	seg : OUT std_logic_vector(6 DOWNTO 0)
	);
END VERILOGStart02;

-- Design Ports Information
-- en[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_en : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_seg : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \seg[0]~output_o\ : std_logic;
SIGNAL \seg[1]~output_o\ : std_logic;
SIGNAL \seg[2]~output_o\ : std_logic;
SIGNAL \seg[3]~output_o\ : std_logic;
SIGNAL \seg[4]~output_o\ : std_logic;
SIGNAL \seg[5]~output_o\ : std_logic;
SIGNAL \seg[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst5|count~2_combout\ : std_logic;
SIGNAL \b2v_inst7|count[0]~5_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \b2v_inst7|latch~feeder_combout\ : std_logic;
SIGNAL \b2v_inst7|latch~q\ : std_logic;
SIGNAL \b2v_inst7|q~3_combout\ : std_logic;
SIGNAL \b2v_inst7|count[2]~10\ : std_logic;
SIGNAL \b2v_inst7|count[3]~11_combout\ : std_logic;
SIGNAL \b2v_inst7|count[3]~12\ : std_logic;
SIGNAL \b2v_inst7|count[4]~13_combout\ : std_logic;
SIGNAL \b2v_inst7|q~4_combout\ : std_logic;
SIGNAL \b2v_inst7|count[0]~6\ : std_logic;
SIGNAL \b2v_inst7|count[1]~7_combout\ : std_logic;
SIGNAL \b2v_inst7|count[1]~8\ : std_logic;
SIGNAL \b2v_inst7|count[2]~9_combout\ : std_logic;
SIGNAL \b2v_inst7|q~0_combout\ : std_logic;
SIGNAL \b2v_inst7|q~1_combout\ : std_logic;
SIGNAL \b2v_inst7|q~2_combout\ : std_logic;
SIGNAL \b2v_inst7|q~q\ : std_logic;
SIGNAL \b2v_inst5|buttonPrev~q\ : std_logic;
SIGNAL \b2v_inst5|always0~0_combout\ : std_logic;
SIGNAL \b2v_inst5|count~0_combout\ : std_logic;
SIGNAL \b2v_inst5|count~1_combout\ : std_logic;
SIGNAL \b2v_inst5|count~3_combout\ : std_logic;
SIGNAL \b2v_inst|q[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|q[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|q[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst|q[4]~3_combout\ : std_logic;
SIGNAL \b2v_inst|q[5]~4_combout\ : std_logic;
SIGNAL \b2v_inst|q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \b2v_inst5|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst7|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|ALT_INV_q[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst|ALT_INV_q[0]~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button <= button;
en <= ww_en;
seg <= ww_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\b2v_inst|ALT_INV_q[1]~1_combout\ <= NOT \b2v_inst|q[1]~1_combout\;
\b2v_inst|ALT_INV_q[0]~0_combout\ <= NOT \b2v_inst|q[0]~0_combout\;

-- Location: IOOBUF_X13_Y24_N23
\en[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \en[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\en[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\en[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\en[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \en[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\seg[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ALT_INV_q[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\seg[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|ALT_INV_q[1]~1_combout\,
	devoe => ww_devoe,
	o => \seg[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\seg[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|q[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\seg[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|q\(3),
	devoe => ww_devoe,
	o => \seg[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\seg[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|q[4]~3_combout\,
	devoe => ww_devoe,
	o => \seg[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\seg[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|q[5]~4_combout\,
	devoe => ww_devoe,
	o => \seg[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\seg[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|q\(6),
	devoe => ww_devoe,
	o => \seg[6]~output_o\);

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

-- Location: LCCOMB_X19_Y20_N28
\b2v_inst5|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|count~2_combout\ = (!\b2v_inst5|count\(0) & (((!\b2v_inst5|count\(1) & !\b2v_inst5|count\(2))) # (!\b2v_inst5|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(3),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(0),
	datad => \b2v_inst5|count\(2),
	combout => \b2v_inst5|count~2_combout\);

-- Location: LCCOMB_X21_Y20_N6
\b2v_inst7|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|count[0]~5_combout\ = \b2v_inst7|count\(0) $ (VCC)
-- \b2v_inst7|count[0]~6\ = CARRY(\b2v_inst7|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|count\(0),
	datad => VCC,
	combout => \b2v_inst7|count[0]~5_combout\,
	cout => \b2v_inst7|count[0]~6\);

-- Location: IOIBUF_X34_Y12_N22
\button~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button,
	o => \button~input_o\);

-- Location: LCCOMB_X21_Y20_N16
\b2v_inst7|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|latch~feeder_combout\ = \button~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \button~input_o\,
	combout => \b2v_inst7|latch~feeder_combout\);

-- Location: FF_X21_Y20_N17
\b2v_inst7|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|latch~q\);

-- Location: LCCOMB_X21_Y20_N4
\b2v_inst7|q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|q~3_combout\ = \button~input_o\ $ (\b2v_inst7|latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datad => \b2v_inst7|latch~q\,
	combout => \b2v_inst7|q~3_combout\);

-- Location: LCCOMB_X21_Y20_N10
\b2v_inst7|count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|count[2]~9_combout\ = (\b2v_inst7|count\(2) & (\b2v_inst7|count[1]~8\ $ (GND))) # (!\b2v_inst7|count\(2) & (!\b2v_inst7|count[1]~8\ & VCC))
-- \b2v_inst7|count[2]~10\ = CARRY((\b2v_inst7|count\(2) & !\b2v_inst7|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|count\(2),
	datad => VCC,
	cin => \b2v_inst7|count[1]~8\,
	combout => \b2v_inst7|count[2]~9_combout\,
	cout => \b2v_inst7|count[2]~10\);

-- Location: LCCOMB_X21_Y20_N12
\b2v_inst7|count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|count[3]~11_combout\ = (\b2v_inst7|count\(3) & (!\b2v_inst7|count[2]~10\)) # (!\b2v_inst7|count\(3) & ((\b2v_inst7|count[2]~10\) # (GND)))
-- \b2v_inst7|count[3]~12\ = CARRY((!\b2v_inst7|count[2]~10\) # (!\b2v_inst7|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|count\(3),
	datad => VCC,
	cin => \b2v_inst7|count[2]~10\,
	combout => \b2v_inst7|count[3]~11_combout\,
	cout => \b2v_inst7|count[3]~12\);

-- Location: FF_X21_Y20_N13
\b2v_inst7|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|count[3]~11_combout\,
	sclr => \b2v_inst7|q~3_combout\,
	ena => \b2v_inst7|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|count\(3));

-- Location: LCCOMB_X21_Y20_N14
\b2v_inst7|count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|count[4]~13_combout\ = \b2v_inst7|count\(4) $ (!\b2v_inst7|count[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|count\(4),
	cin => \b2v_inst7|count[3]~12\,
	combout => \b2v_inst7|count[4]~13_combout\);

-- Location: FF_X21_Y20_N15
\b2v_inst7|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|count[4]~13_combout\,
	sclr => \b2v_inst7|q~3_combout\,
	ena => \b2v_inst7|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|count\(4));

-- Location: LCCOMB_X21_Y20_N2
\b2v_inst7|q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|q~4_combout\ = ((!\b2v_inst7|q~0_combout\) # (!\b2v_inst7|count\(4))) # (!\b2v_inst7|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|count\(3),
	datac => \b2v_inst7|count\(4),
	datad => \b2v_inst7|q~0_combout\,
	combout => \b2v_inst7|q~4_combout\);

-- Location: FF_X21_Y20_N7
\b2v_inst7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|count[0]~5_combout\,
	sclr => \b2v_inst7|q~3_combout\,
	ena => \b2v_inst7|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|count\(0));

-- Location: LCCOMB_X21_Y20_N8
\b2v_inst7|count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|count[1]~7_combout\ = (\b2v_inst7|count\(1) & (!\b2v_inst7|count[0]~6\)) # (!\b2v_inst7|count\(1) & ((\b2v_inst7|count[0]~6\) # (GND)))
-- \b2v_inst7|count[1]~8\ = CARRY((!\b2v_inst7|count[0]~6\) # (!\b2v_inst7|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst7|count\(1),
	datad => VCC,
	cin => \b2v_inst7|count[0]~6\,
	combout => \b2v_inst7|count[1]~7_combout\,
	cout => \b2v_inst7|count[1]~8\);

-- Location: FF_X21_Y20_N9
\b2v_inst7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|count[1]~7_combout\,
	sclr => \b2v_inst7|q~3_combout\,
	ena => \b2v_inst7|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|count\(1));

-- Location: FF_X21_Y20_N11
\b2v_inst7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|count[2]~9_combout\,
	sclr => \b2v_inst7|q~3_combout\,
	ena => \b2v_inst7|q~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|count\(2));

-- Location: LCCOMB_X21_Y20_N18
\b2v_inst7|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|q~0_combout\ = (\b2v_inst7|count\(2) & (\b2v_inst7|count\(1) & (\button~input_o\ $ (!\b2v_inst7|latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|count\(2),
	datab => \button~input_o\,
	datac => \b2v_inst7|count\(1),
	datad => \b2v_inst7|latch~q\,
	combout => \b2v_inst7|q~0_combout\);

-- Location: LCCOMB_X21_Y20_N24
\b2v_inst7|q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|q~1_combout\ = (\b2v_inst7|count\(4) & \b2v_inst7|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst7|count\(4),
	datad => \b2v_inst7|count\(3),
	combout => \b2v_inst7|q~1_combout\);

-- Location: LCCOMB_X19_Y20_N22
\b2v_inst7|q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|q~2_combout\ = (\b2v_inst7|q~0_combout\ & ((\b2v_inst7|q~1_combout\ & (!\button~input_o\)) # (!\b2v_inst7|q~1_combout\ & ((\b2v_inst7|q~q\))))) # (!\b2v_inst7|q~0_combout\ & (((\b2v_inst7|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|q~0_combout\,
	datab => \button~input_o\,
	datac => \b2v_inst7|q~q\,
	datad => \b2v_inst7|q~1_combout\,
	combout => \b2v_inst7|q~2_combout\);

-- Location: FF_X19_Y20_N23
\b2v_inst7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst7|q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst7|q~q\);

-- Location: FF_X19_Y20_N1
\b2v_inst5|buttonPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b2v_inst7|q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|buttonPrev~q\);

-- Location: LCCOMB_X19_Y20_N0
\b2v_inst5|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|always0~0_combout\ = (\b2v_inst7|q~q\ & !\b2v_inst5|buttonPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst7|q~q\,
	datac => \b2v_inst5|buttonPrev~q\,
	combout => \b2v_inst5|always0~0_combout\);

-- Location: FF_X19_Y20_N29
\b2v_inst5|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst5|count~2_combout\,
	ena => \b2v_inst5|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|count\(0));

-- Location: LCCOMB_X19_Y20_N20
\b2v_inst5|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|count~0_combout\ = (!\b2v_inst5|count\(3) & (\b2v_inst5|count\(1) $ (\b2v_inst5|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(3),
	datac => \b2v_inst5|count\(1),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst5|count~0_combout\);

-- Location: FF_X19_Y20_N21
\b2v_inst5|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst5|count~0_combout\,
	ena => \b2v_inst5|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|count\(1));

-- Location: LCCOMB_X19_Y20_N30
\b2v_inst5|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|count~1_combout\ = (\b2v_inst5|count\(2) & (\b2v_inst5|count\(1) & (!\b2v_inst5|count\(3) & \b2v_inst5|count\(0)))) # (!\b2v_inst5|count\(2) & (!\b2v_inst5|count\(1) & (\b2v_inst5|count\(3) & !\b2v_inst5|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst5|count~1_combout\);

-- Location: FF_X19_Y20_N31
\b2v_inst5|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst5|count~1_combout\,
	ena => \b2v_inst5|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|count\(3));

-- Location: LCCOMB_X19_Y20_N26
\b2v_inst5|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|count~3_combout\ = (!\b2v_inst5|count\(3) & (\b2v_inst5|count\(2) $ (((\b2v_inst5|count\(1) & \b2v_inst5|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(3),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(2),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst5|count~3_combout\);

-- Location: FF_X19_Y20_N27
\b2v_inst5|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2v_inst5|count~3_combout\,
	ena => \b2v_inst5|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|count\(2));

-- Location: LCCOMB_X19_Y20_N8
\b2v_inst|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q[0]~0_combout\ = (\b2v_inst5|count\(1)) # ((\b2v_inst5|count\(3)) # (\b2v_inst5|count\(2) $ (!\b2v_inst5|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q[0]~0_combout\);

-- Location: LCCOMB_X19_Y20_N6
\b2v_inst|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q[1]~1_combout\ = ((\b2v_inst5|count\(3)) # (\b2v_inst5|count\(1) $ (!\b2v_inst5|count\(0)))) # (!\b2v_inst5|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q[1]~1_combout\);

-- Location: LCCOMB_X19_Y20_N12
\b2v_inst|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q[2]~2_combout\ = (!\b2v_inst5|count\(2) & (\b2v_inst5|count\(1) & (!\b2v_inst5|count\(3) & !\b2v_inst5|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q[2]~2_combout\);

-- Location: LCCOMB_X19_Y20_N10
\b2v_inst|q[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q\(3) = (!\b2v_inst5|count\(3) & ((\b2v_inst5|count\(2) & (\b2v_inst5|count\(1) $ (!\b2v_inst5|count\(0)))) # (!\b2v_inst5|count\(2) & (!\b2v_inst5|count\(1) & \b2v_inst5|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q\(3));

-- Location: LCCOMB_X19_Y20_N16
\b2v_inst|q[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q[4]~3_combout\ = (\b2v_inst5|count\(1) & (((!\b2v_inst5|count\(3) & \b2v_inst5|count\(0))))) # (!\b2v_inst5|count\(1) & ((\b2v_inst5|count\(2) & (!\b2v_inst5|count\(3))) # (!\b2v_inst5|count\(2) & ((\b2v_inst5|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q[4]~3_combout\);

-- Location: LCCOMB_X19_Y20_N18
\b2v_inst|q[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q[5]~4_combout\ = (!\b2v_inst5|count\(3) & ((\b2v_inst5|count\(2) & (\b2v_inst5|count\(1) & \b2v_inst5|count\(0))) # (!\b2v_inst5|count\(2) & ((\b2v_inst5|count\(1)) # (\b2v_inst5|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q[5]~4_combout\);

-- Location: LCCOMB_X19_Y20_N24
\b2v_inst|q[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst|q\(6) = (!\b2v_inst5|count\(3) & ((\b2v_inst5|count\(2) & (\b2v_inst5|count\(1) & \b2v_inst5|count\(0))) # (!\b2v_inst5|count\(2) & (!\b2v_inst5|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|count\(2),
	datab => \b2v_inst5|count\(1),
	datac => \b2v_inst5|count\(3),
	datad => \b2v_inst5|count\(0),
	combout => \b2v_inst|q\(6));

ww_en(0) <= \en[0]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(3) <= \en[3]~output_o\;

ww_seg(0) <= \seg[0]~output_o\;

ww_seg(1) <= \seg[1]~output_o\;

ww_seg(2) <= \seg[2]~output_o\;

ww_seg(3) <= \seg[3]~output_o\;

ww_seg(4) <= \seg[4]~output_o\;

ww_seg(5) <= \seg[5]~output_o\;

ww_seg(6) <= \seg[6]~output_o\;
END structure;


