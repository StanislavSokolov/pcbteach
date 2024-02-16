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

-- DATE "02/16/2024 10:13:24"

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

ENTITY 	IndicatorProject IS
    PORT (
	en5 : OUT std_logic;
	clk : IN std_logic;
	button : IN std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END IndicatorProject;

-- Design Ports Information
-- en5	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[6]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[4]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[2]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[1]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[0]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IndicatorProject IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en5 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_button : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \en5~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|counter[0]~3_combout\ : std_logic;
SIGNAL \button~input_o\ : std_logic;
SIGNAL \inst2|latch~q\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|count~3_combout\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
SIGNAL \inst2|LessThan0~0_combout\ : std_logic;
SIGNAL \inst2|OUTPUT~0_combout\ : std_logic;
SIGNAL \inst2|OUTPUT~q\ : std_logic;
SIGNAL \inst|buttonPrev~q\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst|counter[2]~1_combout\ : std_logic;
SIGNAL \inst|counter~2_combout\ : std_logic;
SIGNAL \inst|counter~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux6~0_combout\ : std_logic;
SIGNAL \inst|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

en5 <= ww_en5;
ww_clk <= clk;
ww_button <= button;
led5 <= ww_led5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst3|ALT_INV_Mux6~0_combout\ <= NOT \inst3|Mux6~0_combout\;

-- Location: IOOBUF_X13_Y24_N23
\en5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \en5~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\led5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\led5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\led5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\led5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\led5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\led5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\led5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

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

-- Location: LCCOMB_X16_Y23_N22
\inst|counter[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~3_combout\ = !\inst|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(0),
	combout => \inst|counter[0]~3_combout\);

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

-- Location: FF_X16_Y23_N25
\inst2|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \button~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|latch~q\);

-- Location: LCCOMB_X16_Y23_N6
\inst2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (!\inst2|count\(0) & (\inst2|LessThan0~0_combout\ & (\inst2|latch~q\ $ (!\button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latch~q\,
	datab => \button~input_o\,
	datac => \inst2|count\(0),
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|count~0_combout\);

-- Location: FF_X16_Y23_N7
\inst2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(0));

-- Location: LCCOMB_X16_Y23_N24
\inst2|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (\inst2|LessThan0~0_combout\ & (\button~input_o\ $ (!\inst2|latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button~input_o\,
	datac => \inst2|latch~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|count~1_combout\);

-- Location: LCCOMB_X16_Y23_N14
\inst2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (\inst2|count~1_combout\ & (\inst2|count\(0) $ (\inst2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datac => \inst2|count\(1),
	datad => \inst2|count~1_combout\,
	combout => \inst2|count~2_combout\);

-- Location: FF_X16_Y23_N15
\inst2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(1));

-- Location: LCCOMB_X16_Y23_N26
\inst2|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (\inst2|count~1_combout\ & (\inst2|count\(2) $ (((\inst2|count\(0) & \inst2|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count~1_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X16_Y23_N27
\inst2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(2));

-- Location: LCCOMB_X16_Y23_N30
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|count\(3) $ (((\inst2|count\(0) & (\inst2|count\(1) & \inst2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(3),
	combout => \inst2|Add0~0_combout\);

-- Location: LCCOMB_X16_Y23_N18
\inst2|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (\inst2|Add0~0_combout\ & (\inst2|LessThan0~0_combout\ & (\inst2|latch~q\ $ (!\button~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latch~q\,
	datab => \button~input_o\,
	datac => \inst2|Add0~0_combout\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|count~4_combout\);

-- Location: FF_X16_Y23_N19
\inst2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|count\(3));

-- Location: LCCOMB_X16_Y23_N28
\inst2|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|LessThan0~0_combout\ = ((!\inst2|count\(0) & (!\inst2|count\(1) & !\inst2|count\(2)))) # (!\inst2|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|count\(0),
	datab => \inst2|count\(1),
	datac => \inst2|count\(2),
	datad => \inst2|count\(3),
	combout => \inst2|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\inst2|OUTPUT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|OUTPUT~0_combout\ = (\inst2|latch~q\ & ((\inst2|OUTPUT~q\) # ((\button~input_o\ & !\inst2|LessThan0~0_combout\)))) # (!\inst2|latch~q\ & (\inst2|OUTPUT~q\ & ((\button~input_o\) # (\inst2|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|latch~q\,
	datab => \button~input_o\,
	datac => \inst2|OUTPUT~q\,
	datad => \inst2|LessThan0~0_combout\,
	combout => \inst2|OUTPUT~0_combout\);

-- Location: FF_X16_Y23_N1
\inst2|OUTPUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst2|OUTPUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|OUTPUT~q\);

-- Location: FF_X16_Y23_N13
\inst|buttonPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst2|OUTPUT~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|buttonPrev~q\);

-- Location: LCCOMB_X16_Y23_N12
\inst|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (\inst|buttonPrev~q\ & !\inst2|OUTPUT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|buttonPrev~q\,
	datad => \inst2|OUTPUT~q\,
	combout => \inst|process_0~0_combout\);

-- Location: FF_X16_Y23_N23
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|counter[0]~3_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X16_Y23_N4
\inst|counter[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[2]~1_combout\ = \inst|counter\(2) $ (((\inst|counter\(0) & (\inst|counter\(1) & \inst|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|process_0~0_combout\,
	combout => \inst|counter[2]~1_combout\);

-- Location: FF_X16_Y23_N5
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X16_Y23_N2
\inst|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~2_combout\ = (\inst|counter\(0) & ((\inst|counter\(2) & (\inst|counter\(3) $ (\inst|counter\(1)))) # (!\inst|counter\(2) & (\inst|counter\(3) & \inst|counter\(1))))) # (!\inst|counter\(0) & (((\inst|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(2),
	datac => \inst|counter\(3),
	datad => \inst|counter\(1),
	combout => \inst|counter~2_combout\);

-- Location: FF_X16_Y23_N3
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|counter~2_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X16_Y23_N8
\inst|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter~0_combout\ = (\inst|counter\(0) & (!\inst|counter\(1) & ((\inst|counter\(2)) # (!\inst|counter\(3))))) # (!\inst|counter\(0) & (((\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(3),
	datac => \inst|counter\(1),
	datad => \inst|counter\(2),
	combout => \inst|counter~0_combout\);

-- Location: FF_X16_Y23_N9
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|counter~0_combout\,
	ena => \inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X16_Y23_N16
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\inst|counter\(1) & (!\inst|counter\(3) & (\inst|counter\(0) $ (\inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(3),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y23_N0
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\inst|counter\(3) & (\inst|counter\(2) & (\inst|counter\(1) $ (\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y23_N6
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (!\inst|counter\(3) & (!\inst|counter\(2) & (\inst|counter\(1) & !\inst|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X16_Y23_N20
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\inst|counter\(3) & ((\inst|counter\(0) & (\inst|counter\(1) $ (!\inst|counter\(2)))) # (!\inst|counter\(0) & (!\inst|counter\(1) & \inst|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(3),
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X16_Y23_N10
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst|counter\(1) & (\inst|counter\(0) & ((!\inst|counter\(3))))) # (!\inst|counter\(1) & ((\inst|counter\(2) & ((!\inst|counter\(3)))) # (!\inst|counter\(2) & (\inst|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(1),
	datac => \inst|counter\(2),
	datad => \inst|counter\(3),
	combout => \inst3|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y23_N4
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (!\inst|counter\(3) & ((\inst|counter\(2) & (\inst|counter\(1) & \inst|counter\(0))) # (!\inst|counter\(2) & ((\inst|counter\(1)) # (\inst|counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y23_N10
\inst3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux6~0_combout\ = (\inst|counter\(2) & (!\inst|counter\(3) & ((!\inst|counter\(0)) # (!\inst|counter\(1))))) # (!\inst|counter\(2) & (\inst|counter\(3) $ ((\inst|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(3),
	datab => \inst|counter\(2),
	datac => \inst|counter\(1),
	datad => \inst|counter\(0),
	combout => \inst3|Mux6~0_combout\);

ww_en5 <= \en5~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(0) <= \led5[0]~output_o\;
END structure;


