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

-- DATE "03/12/2024 15:26:57"

-- 
-- Device: Altera EP3C25Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TestWithCLK IS
    PORT (
	clk : IN std_logic;
	led1 : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END TestWithCLK;

-- Design Ports Information
-- led1[0]	=>  Location: PIN_171,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[1]	=>  Location: PIN_169,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[2]	=>  Location: PIN_168,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[3]	=>  Location: PIN_167,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[4]	=>  Location: PIN_166,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TestWithCLK IS
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
SIGNAL ww_led1 : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ledBuf[0]~0_combout\ : std_logic;
SIGNAL \counter[0]~24_combout\ : std_logic;
SIGNAL \counter[0]~25\ : std_logic;
SIGNAL \counter[1]~26_combout\ : std_logic;
SIGNAL \counter[1]~27\ : std_logic;
SIGNAL \counter[2]~28_combout\ : std_logic;
SIGNAL \counter[2]~29\ : std_logic;
SIGNAL \counter[3]~30_combout\ : std_logic;
SIGNAL \counter[3]~31\ : std_logic;
SIGNAL \counter[4]~32_combout\ : std_logic;
SIGNAL \counter[4]~33\ : std_logic;
SIGNAL \counter[5]~34_combout\ : std_logic;
SIGNAL \counter[5]~35\ : std_logic;
SIGNAL \counter[6]~36_combout\ : std_logic;
SIGNAL \counter[6]~37\ : std_logic;
SIGNAL \counter[7]~38_combout\ : std_logic;
SIGNAL \counter[7]~39\ : std_logic;
SIGNAL \counter[8]~40_combout\ : std_logic;
SIGNAL \counter[8]~41\ : std_logic;
SIGNAL \counter[9]~42_combout\ : std_logic;
SIGNAL \counter[9]~43\ : std_logic;
SIGNAL \counter[10]~44_combout\ : std_logic;
SIGNAL \counter[10]~45\ : std_logic;
SIGNAL \counter[11]~46_combout\ : std_logic;
SIGNAL \counter[11]~47\ : std_logic;
SIGNAL \counter[12]~48_combout\ : std_logic;
SIGNAL \counter[12]~49\ : std_logic;
SIGNAL \counter[13]~50_combout\ : std_logic;
SIGNAL \counter[13]~51\ : std_logic;
SIGNAL \counter[14]~52_combout\ : std_logic;
SIGNAL \counter[14]~53\ : std_logic;
SIGNAL \counter[15]~54_combout\ : std_logic;
SIGNAL \counter[15]~55\ : std_logic;
SIGNAL \counter[16]~56_combout\ : std_logic;
SIGNAL \counter[16]~57\ : std_logic;
SIGNAL \counter[17]~58_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counter[17]~59\ : std_logic;
SIGNAL \counter[18]~60_combout\ : std_logic;
SIGNAL \counter[18]~61\ : std_logic;
SIGNAL \counter[19]~62_combout\ : std_logic;
SIGNAL \counter[19]~63\ : std_logic;
SIGNAL \counter[20]~64_combout\ : std_logic;
SIGNAL \counter[20]~65\ : std_logic;
SIGNAL \counter[21]~66_combout\ : std_logic;
SIGNAL \counter[21]~67\ : std_logic;
SIGNAL \counter[22]~68_combout\ : std_logic;
SIGNAL \counter[22]~69\ : std_logic;
SIGNAL \counter[23]~70_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \ledBuf[1]~1_combout\ : std_logic;
SIGNAL ledBuf : std_logic_vector(4 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL ALT_INV_ledBuf : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_clk <= clk;
led1 <= ww_led1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
ALT_INV_ledBuf(0) <= NOT ledBuf(0);

-- Location: IOOBUF_X53_Y25_N2
\led1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_ledBuf(0),
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\led1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledBuf(1),
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X53_Y23_N16
\led1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_ledBuf(0),
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X53_Y23_N23
\led1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ledBuf(1),
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\led1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_ledBuf(0),
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOIBUF_X0_Y16_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X40_Y23_N24
\ledBuf[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledBuf[0]~0_combout\ = !ledBuf(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ledBuf(0),
	combout => \ledBuf[0]~0_combout\);

-- Location: LCCOMB_X40_Y24_N8
\counter[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~24_combout\ = counter(0) $ (VCC)
-- \counter[0]~25\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~24_combout\,
	cout => \counter[0]~25\);

-- Location: FF_X40_Y24_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~24_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X40_Y24_N10
\counter[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[1]~26_combout\ = (counter(1) & (!\counter[0]~25\)) # (!counter(1) & ((\counter[0]~25\) # (GND)))
-- \counter[1]~27\ = CARRY((!\counter[0]~25\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~25\,
	combout => \counter[1]~26_combout\,
	cout => \counter[1]~27\);

-- Location: FF_X40_Y24_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~26_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X40_Y24_N12
\counter[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[2]~28_combout\ = (counter(2) & (\counter[1]~27\ $ (GND))) # (!counter(2) & (!\counter[1]~27\ & VCC))
-- \counter[2]~29\ = CARRY((counter(2) & !\counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~27\,
	combout => \counter[2]~28_combout\,
	cout => \counter[2]~29\);

-- Location: FF_X40_Y24_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~28_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X40_Y24_N14
\counter[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[3]~30_combout\ = (counter(3) & (!\counter[2]~29\)) # (!counter(3) & ((\counter[2]~29\) # (GND)))
-- \counter[3]~31\ = CARRY((!\counter[2]~29\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~29\,
	combout => \counter[3]~30_combout\,
	cout => \counter[3]~31\);

-- Location: FF_X40_Y24_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~30_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X40_Y24_N16
\counter[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[4]~32_combout\ = (counter(4) & (\counter[3]~31\ $ (GND))) # (!counter(4) & (!\counter[3]~31\ & VCC))
-- \counter[4]~33\ = CARRY((counter(4) & !\counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datad => VCC,
	cin => \counter[3]~31\,
	combout => \counter[4]~32_combout\,
	cout => \counter[4]~33\);

-- Location: FF_X40_Y24_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~32_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X40_Y24_N18
\counter[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[5]~34_combout\ = (counter(5) & (!\counter[4]~33\)) # (!counter(5) & ((\counter[4]~33\) # (GND)))
-- \counter[5]~35\ = CARRY((!\counter[4]~33\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~33\,
	combout => \counter[5]~34_combout\,
	cout => \counter[5]~35\);

-- Location: FF_X40_Y24_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~34_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X40_Y24_N20
\counter[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[6]~36_combout\ = (counter(6) & (\counter[5]~35\ $ (GND))) # (!counter(6) & (!\counter[5]~35\ & VCC))
-- \counter[6]~37\ = CARRY((counter(6) & !\counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~35\,
	combout => \counter[6]~36_combout\,
	cout => \counter[6]~37\);

-- Location: FF_X40_Y24_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~36_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X40_Y24_N22
\counter[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[7]~38_combout\ = (counter(7) & (!\counter[6]~37\)) # (!counter(7) & ((\counter[6]~37\) # (GND)))
-- \counter[7]~39\ = CARRY((!\counter[6]~37\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~37\,
	combout => \counter[7]~38_combout\,
	cout => \counter[7]~39\);

-- Location: FF_X40_Y24_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~38_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X40_Y24_N24
\counter[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[8]~40_combout\ = (counter(8) & (\counter[7]~39\ $ (GND))) # (!counter(8) & (!\counter[7]~39\ & VCC))
-- \counter[8]~41\ = CARRY((counter(8) & !\counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(8),
	datad => VCC,
	cin => \counter[7]~39\,
	combout => \counter[8]~40_combout\,
	cout => \counter[8]~41\);

-- Location: FF_X40_Y24_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~40_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X40_Y24_N26
\counter[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[9]~42_combout\ = (counter(9) & (!\counter[8]~41\)) # (!counter(9) & ((\counter[8]~41\) # (GND)))
-- \counter[9]~43\ = CARRY((!\counter[8]~41\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~41\,
	combout => \counter[9]~42_combout\,
	cout => \counter[9]~43\);

-- Location: FF_X40_Y24_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~42_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X40_Y24_N28
\counter[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[10]~44_combout\ = (counter(10) & (\counter[9]~43\ $ (GND))) # (!counter(10) & (!\counter[9]~43\ & VCC))
-- \counter[10]~45\ = CARRY((counter(10) & !\counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~43\,
	combout => \counter[10]~44_combout\,
	cout => \counter[10]~45\);

-- Location: FF_X40_Y24_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~44_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X40_Y24_N30
\counter[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[11]~46_combout\ = (counter(11) & (!\counter[10]~45\)) # (!counter(11) & ((\counter[10]~45\) # (GND)))
-- \counter[11]~47\ = CARRY((!\counter[10]~45\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~45\,
	combout => \counter[11]~46_combout\,
	cout => \counter[11]~47\);

-- Location: FF_X40_Y24_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~46_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X40_Y23_N0
\counter[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[12]~48_combout\ = (counter(12) & (\counter[11]~47\ $ (GND))) # (!counter(12) & (!\counter[11]~47\ & VCC))
-- \counter[12]~49\ = CARRY((counter(12) & !\counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~47\,
	combout => \counter[12]~48_combout\,
	cout => \counter[12]~49\);

-- Location: FF_X40_Y23_N1
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~48_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X40_Y23_N2
\counter[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[13]~50_combout\ = (counter(13) & (!\counter[12]~49\)) # (!counter(13) & ((\counter[12]~49\) # (GND)))
-- \counter[13]~51\ = CARRY((!\counter[12]~49\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~49\,
	combout => \counter[13]~50_combout\,
	cout => \counter[13]~51\);

-- Location: FF_X40_Y23_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~50_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X40_Y23_N4
\counter[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[14]~52_combout\ = (counter(14) & (\counter[13]~51\ $ (GND))) # (!counter(14) & (!\counter[13]~51\ & VCC))
-- \counter[14]~53\ = CARRY((counter(14) & !\counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~51\,
	combout => \counter[14]~52_combout\,
	cout => \counter[14]~53\);

-- Location: FF_X40_Y23_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~52_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X40_Y23_N6
\counter[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[15]~54_combout\ = (counter(15) & (!\counter[14]~53\)) # (!counter(15) & ((\counter[14]~53\) # (GND)))
-- \counter[15]~55\ = CARRY((!\counter[14]~53\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~53\,
	combout => \counter[15]~54_combout\,
	cout => \counter[15]~55\);

-- Location: FF_X40_Y23_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~54_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X40_Y23_N8
\counter[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[16]~56_combout\ = (counter(16) & (\counter[15]~55\ $ (GND))) # (!counter(16) & (!\counter[15]~55\ & VCC))
-- \counter[16]~57\ = CARRY((counter(16) & !\counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~55\,
	combout => \counter[16]~56_combout\,
	cout => \counter[16]~57\);

-- Location: FF_X40_Y23_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~56_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X40_Y23_N10
\counter[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[17]~58_combout\ = (counter(17) & (!\counter[16]~57\)) # (!counter(17) & ((\counter[16]~57\) # (GND)))
-- \counter[17]~59\ = CARRY((!\counter[16]~57\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~57\,
	combout => \counter[17]~58_combout\,
	cout => \counter[17]~59\);

-- Location: FF_X40_Y23_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~58_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X41_Y23_N18
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!counter(16) & (!counter(15) & !counter(14)))) # (!counter(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(15),
	datac => counter(14),
	datad => counter(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y23_N12
\counter[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[18]~60_combout\ = (counter(18) & (\counter[17]~59\ $ (GND))) # (!counter(18) & (!\counter[17]~59\ & VCC))
-- \counter[18]~61\ = CARRY((counter(18) & !\counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~59\,
	combout => \counter[18]~60_combout\,
	cout => \counter[18]~61\);

-- Location: FF_X40_Y23_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~60_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X40_Y23_N14
\counter[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[19]~62_combout\ = (counter(19) & (!\counter[18]~61\)) # (!counter(19) & ((\counter[18]~61\) # (GND)))
-- \counter[19]~63\ = CARRY((!\counter[18]~61\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~61\,
	combout => \counter[19]~62_combout\,
	cout => \counter[19]~63\);

-- Location: FF_X40_Y23_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~62_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X40_Y23_N16
\counter[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[20]~64_combout\ = (counter(20) & (\counter[19]~63\ $ (GND))) # (!counter(20) & (!\counter[19]~63\ & VCC))
-- \counter[20]~65\ = CARRY((counter(20) & !\counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~63\,
	combout => \counter[20]~64_combout\,
	cout => \counter[20]~65\);

-- Location: FF_X40_Y23_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~64_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X40_Y23_N18
\counter[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[21]~66_combout\ = (counter(21) & (!\counter[20]~65\)) # (!counter(21) & ((\counter[20]~65\) # (GND)))
-- \counter[21]~67\ = CARRY((!\counter[20]~65\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~65\,
	combout => \counter[21]~66_combout\,
	cout => \counter[21]~67\);

-- Location: FF_X40_Y23_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~66_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X40_Y23_N20
\counter[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[22]~68_combout\ = (counter(22) & (\counter[21]~67\ $ (GND))) # (!counter(22) & (!\counter[21]~67\ & VCC))
-- \counter[22]~69\ = CARRY((counter(22) & !\counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~67\,
	combout => \counter[22]~68_combout\,
	cout => \counter[22]~69\);

-- Location: FF_X40_Y23_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~68_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X40_Y23_N22
\counter[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[23]~70_combout\ = counter(23) $ (\counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	cin => \counter[22]~69\,
	combout => \counter[23]~70_combout\);

-- Location: FF_X40_Y23_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~70_combout\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X40_Y23_N30
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter(21)) # (!counter(19))) # (!counter(20))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(20),
	datac => counter(19),
	datad => counter(21),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y23_N12
\LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ((\LessThan0~1_combout\) # (!counter(22))) # (!counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	datab => counter(22),
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X40_Y24_N4
\LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!counter(7) & (!counter(10) & (!counter(9) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(10),
	datac => counter(9),
	datad => counter(8),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X40_Y24_N0
\LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!counter(4) & (!counter(2) & ((!counter(0)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(4),
	datac => counter(0),
	datad => counter(2),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X40_Y24_N6
\LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ((\LessThan0~3_combout\) # ((!counter(4) & !counter(3)))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => counter(3),
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y24_N2
\LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!counter(11) & (!counter(6) & (\LessThan0~5_combout\ & \LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(6),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X40_Y23_N28
\LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (counter(16)) # ((counter(13)) # ((counter(12) & !\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(12),
	datac => counter(13),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X40_Y23_N26
\LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (!\LessThan0~0_combout\ & (!\LessThan0~2_combout\ & ((counter(15)) # (\LessThan0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~7_combout\,
	combout => \LessThan0~8_combout\);

-- Location: FF_X40_Y23_N25
\ledBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ledBuf[0]~0_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledBuf(0));

-- Location: LCCOMB_X41_Y23_N0
\ledBuf[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ledBuf[1]~1_combout\ = !ledBuf(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => ledBuf(1),
	combout => \ledBuf[1]~1_combout\);

-- Location: FF_X41_Y23_N1
\ledBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ledBuf[1]~1_combout\,
	ena => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ledBuf(1));

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;
END structure;


