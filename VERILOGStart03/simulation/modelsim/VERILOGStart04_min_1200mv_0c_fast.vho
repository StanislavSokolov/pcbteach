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

-- DATE "03/19/2024 00:02:41"

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

ENTITY 	VERILOGStart04 IS
    PORT (
	clk : IN std_logic;
	buttonWaiting : IN std_logic;
	buttonLeft : IN std_logic;
	buttonRight : IN std_logic;
	buttonSelection : IN std_logic;
	led1 : OUT std_logic_vector(3 DOWNTO 0);
	led5 : OUT std_logic_vector(7 DOWNTO 0);
	en : OUT std_logic_vector(3 DOWNTO 0)
	);
END VERILOGStart04;

-- Design Ports Information
-- buttonWaiting	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonLeft	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonRight	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonSelection	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[0]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart04 IS
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
SIGNAL ww_buttonWaiting : std_logic;
SIGNAL ww_buttonLeft : std_logic;
SIGNAL ww_buttonRight : std_logic;
SIGNAL ww_buttonSelection : std_logic;
SIGNAL ww_led1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led5 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_en : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buttonWaiting~input_o\ : std_logic;
SIGNAL \buttonLeft~input_o\ : std_logic;
SIGNAL \buttonRight~input_o\ : std_logic;
SIGNAL \buttonSelection~input_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5[7]~output_o\ : std_logic;
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \latch~feeder_combout\ : std_logic;
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
SIGNAL \LessThan2~0_combout\ : std_logic;
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
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \latch~q\ : std_logic;
SIGNAL \led1~0_combout\ : std_logic;
SIGNAL \led1[0]~reg0_q\ : std_logic;
SIGNAL \bufferForIndicator0[0]~feeder_combout\ : std_logic;
SIGNAL \led5[0]~reg0feeder_combout\ : std_logic;
SIGNAL \led5[0]~reg0_q\ : std_logic;
SIGNAL \led5[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led5[1]~reg0_q\ : std_logic;
SIGNAL \led5[2]~reg0feeder_combout\ : std_logic;
SIGNAL \led5[2]~reg0_q\ : std_logic;
SIGNAL \led5[3]~reg0feeder_combout\ : std_logic;
SIGNAL \led5[3]~reg0_q\ : std_logic;
SIGNAL \clkForIndication[0]~19_combout\ : std_logic;
SIGNAL \clkForIndication[0]~20\ : std_logic;
SIGNAL \clkForIndication[1]~21_combout\ : std_logic;
SIGNAL \clkForIndication[1]~22\ : std_logic;
SIGNAL \clkForIndication[2]~23_combout\ : std_logic;
SIGNAL \clkForIndication[2]~24\ : std_logic;
SIGNAL \clkForIndication[3]~25_combout\ : std_logic;
SIGNAL \clkForIndication[3]~26\ : std_logic;
SIGNAL \clkForIndication[4]~27_combout\ : std_logic;
SIGNAL \clkForIndication[4]~28\ : std_logic;
SIGNAL \clkForIndication[5]~29_combout\ : std_logic;
SIGNAL \clkForIndication[5]~30\ : std_logic;
SIGNAL \clkForIndication[6]~31_combout\ : std_logic;
SIGNAL \clkForIndication[6]~32\ : std_logic;
SIGNAL \clkForIndication[7]~33_combout\ : std_logic;
SIGNAL \clkForIndication[7]~34\ : std_logic;
SIGNAL \clkForIndication[8]~35_combout\ : std_logic;
SIGNAL \clkForIndication[8]~36\ : std_logic;
SIGNAL \clkForIndication[9]~37_combout\ : std_logic;
SIGNAL \clkForIndication[9]~38\ : std_logic;
SIGNAL \clkForIndication[10]~39_combout\ : std_logic;
SIGNAL \clkForIndication[10]~40\ : std_logic;
SIGNAL \clkForIndication[11]~41_combout\ : std_logic;
SIGNAL \clkForIndication[11]~42\ : std_logic;
SIGNAL \clkForIndication[12]~43_combout\ : std_logic;
SIGNAL \clkForIndication[12]~44\ : std_logic;
SIGNAL \clkForIndication[13]~45_combout\ : std_logic;
SIGNAL \clkForIndication[13]~46\ : std_logic;
SIGNAL \clkForIndication[14]~47_combout\ : std_logic;
SIGNAL \clkForIndication[14]~48\ : std_logic;
SIGNAL \clkForIndication[15]~49_combout\ : std_logic;
SIGNAL \clkForIndication[15]~50\ : std_logic;
SIGNAL \clkForIndication[16]~51_combout\ : std_logic;
SIGNAL \clkForIndication[16]~52\ : std_logic;
SIGNAL \clkForIndication[17]~53_combout\ : std_logic;
SIGNAL \clkForIndication[17]~54\ : std_logic;
SIGNAL \clkForIndication[18]~55_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \indicator[0]~0_combout\ : std_logic;
SIGNAL \indicator[1]~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \en[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \en[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \en[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \en[3]~reg0_q\ : std_logic;
SIGNAL indicator : std_logic_vector(1 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL clkForIndication : std_logic_vector(18 DOWNTO 0);
SIGNAL bufferForIndicator0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_en[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[0]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_buttonWaiting <= buttonWaiting;
ww_buttonLeft <= buttonLeft;
ww_buttonRight <= buttonRight;
ww_buttonSelection <= buttonSelection;
led1 <= ww_led1;
led5 <= ww_led5;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_en[3]~reg0_q\ <= NOT \en[3]~reg0_q\;
\ALT_INV_en[2]~reg0_q\ <= NOT \en[2]~reg0_q\;
\ALT_INV_en[1]~reg0_q\ <= NOT \en[1]~reg0_q\;
\ALT_INV_en[0]~reg0_q\ <= NOT \en[0]~reg0_q\;

-- Location: IOOBUF_X28_Y24_N9
\led1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\led1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\led1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\led1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\led5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\led5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\led5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\led5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\led5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\led5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\led5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\led5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[7]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\en[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[0]~reg0_q\,
	devoe => ww_devoe,
	o => \en[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\en[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[1]~reg0_q\,
	devoe => ww_devoe,
	o => \en[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\en[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[2]~reg0_q\,
	devoe => ww_devoe,
	o => \en[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\en[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[3]~reg0_q\,
	devoe => ww_devoe,
	o => \en[3]~output_o\);

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

-- Location: LCCOMB_X26_Y13_N2
\latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \latch~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \latch~feeder_combout\);

-- Location: LCCOMB_X25_Y14_N8
\counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~24_combout\ = counter(0) $ (VCC)
-- \counter[0]~25\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~24_combout\,
	cout => \counter[0]~25\);

-- Location: FF_X25_Y14_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~24_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X25_Y14_N10
\counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~26_combout\ = (counter(1) & (!\counter[0]~25\)) # (!counter(1) & ((\counter[0]~25\) # (GND)))
-- \counter[1]~27\ = CARRY((!\counter[0]~25\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~25\,
	combout => \counter[1]~26_combout\,
	cout => \counter[1]~27\);

-- Location: FF_X25_Y14_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~26_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X25_Y14_N12
\counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~28_combout\ = (counter(2) & (\counter[1]~27\ $ (GND))) # (!counter(2) & (!\counter[1]~27\ & VCC))
-- \counter[2]~29\ = CARRY((counter(2) & !\counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~27\,
	combout => \counter[2]~28_combout\,
	cout => \counter[2]~29\);

-- Location: FF_X25_Y14_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~28_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X25_Y14_N14
\counter[3]~30\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y14_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~30_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X25_Y14_N16
\counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~32_combout\ = (counter(4) & (\counter[3]~31\ $ (GND))) # (!counter(4) & (!\counter[3]~31\ & VCC))
-- \counter[4]~33\ = CARRY((counter(4) & !\counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~31\,
	combout => \counter[4]~32_combout\,
	cout => \counter[4]~33\);

-- Location: FF_X25_Y14_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~32_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X25_Y14_N18
\counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~34_combout\ = (counter(5) & (!\counter[4]~33\)) # (!counter(5) & ((\counter[4]~33\) # (GND)))
-- \counter[5]~35\ = CARRY((!\counter[4]~33\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~33\,
	combout => \counter[5]~34_combout\,
	cout => \counter[5]~35\);

-- Location: FF_X25_Y14_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~34_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X25_Y14_N20
\counter[6]~36\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y14_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~36_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X25_Y14_N22
\counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~38_combout\ = (counter(7) & (!\counter[6]~37\)) # (!counter(7) & ((\counter[6]~37\) # (GND)))
-- \counter[7]~39\ = CARRY((!\counter[6]~37\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~37\,
	combout => \counter[7]~38_combout\,
	cout => \counter[7]~39\);

-- Location: FF_X25_Y14_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~38_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X25_Y14_N24
\counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~40_combout\ = (counter(8) & (\counter[7]~39\ $ (GND))) # (!counter(8) & (!\counter[7]~39\ & VCC))
-- \counter[8]~41\ = CARRY((counter(8) & !\counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~39\,
	combout => \counter[8]~40_combout\,
	cout => \counter[8]~41\);

-- Location: FF_X25_Y14_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~40_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X25_Y14_N26
\counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~42_combout\ = (counter(9) & (!\counter[8]~41\)) # (!counter(9) & ((\counter[8]~41\) # (GND)))
-- \counter[9]~43\ = CARRY((!\counter[8]~41\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~41\,
	combout => \counter[9]~42_combout\,
	cout => \counter[9]~43\);

-- Location: FF_X25_Y14_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~42_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X25_Y14_N28
\counter[10]~44\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y14_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~44_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X25_Y14_N30
\counter[11]~46\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y14_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~46_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X25_Y13_N0
\counter[12]~48\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N1
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~48_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X25_Y13_N2
\counter[13]~50\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~50_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X25_Y13_N4
\counter[14]~52\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~52_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X25_Y13_N6
\counter[15]~54\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~54_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X25_Y13_N8
\counter[16]~56\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~56_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X25_Y13_N10
\counter[17]~58\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~58_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X24_Y13_N28
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!counter(15) & (!counter(16) & !counter(14)))) # (!counter(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(16),
	datac => counter(17),
	datad => counter(14),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X25_Y13_N12
\counter[18]~60\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~60_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X25_Y13_N14
\counter[19]~62\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~62_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X25_Y13_N16
\counter[20]~64\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~64_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X25_Y13_N18
\counter[21]~66\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~66_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X25_Y13_N20
\counter[22]~68\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~68_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X25_Y13_N22
\counter[23]~70\ : cycloneive_lcell_comb
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

-- Location: FF_X25_Y13_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~70_combout\,
	sclr => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X25_Y13_N24
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!counter(20)) # (!counter(19))) # (!counter(21))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(21),
	datac => counter(19),
	datad => counter(20),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X25_Y13_N30
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((\LessThan2~1_combout\) # (!counter(23))) # (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datac => counter(23),
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X25_Y14_N4
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!counter(9) & (!counter(8) & (!counter(7) & !counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(8),
	datac => counter(7),
	datad => counter(10),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X25_Y14_N0
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (!counter(2) & (!counter(4) & ((!counter(1)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(4),
	datac => counter(0),
	datad => counter(1),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X25_Y14_N2
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ((\LessThan2~3_combout\) # ((!counter(4) & !counter(3)))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => counter(3),
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X25_Y14_N6
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!counter(11) & (!counter(6) & (\LessThan2~5_combout\ & \LessThan2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(6),
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X25_Y13_N28
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (counter(16)) # ((counter(13)) # ((counter(12) & !\LessThan2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(16),
	datab => counter(12),
	datac => counter(13),
	datad => \LessThan2~6_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X25_Y13_N26
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (!\LessThan2~0_combout\ & (!\LessThan2~2_combout\ & ((counter(15)) # (\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => \LessThan2~0_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: FF_X26_Y13_N3
latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latch~feeder_combout\,
	ena => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latch~q\);

-- Location: LCCOMB_X26_Y13_N8
\led1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = (!\latch~q\) # (!\led1[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led1[0]~reg0_q\,
	datad => \latch~q\,
	combout => \led1~0_combout\);

-- Location: FF_X26_Y13_N9
\led1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led1~0_combout\,
	ena => \LessThan2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1[0]~reg0_q\);

-- Location: LCCOMB_X12_Y23_N16
\bufferForIndicator0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator0[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bufferForIndicator0[0]~feeder_combout\);

-- Location: FF_X12_Y23_N17
\bufferForIndicator0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bufferForIndicator0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator0(0));

-- Location: LCCOMB_X12_Y23_N28
\led5[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led5[0]~reg0feeder_combout\ = bufferForIndicator0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bufferForIndicator0(0),
	combout => \led5[0]~reg0feeder_combout\);

-- Location: FF_X12_Y23_N29
\led5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led5[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[0]~reg0_q\);

-- Location: LCCOMB_X12_Y23_N22
\led5[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led5[1]~reg0feeder_combout\ = bufferForIndicator0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bufferForIndicator0(0),
	combout => \led5[1]~reg0feeder_combout\);

-- Location: FF_X12_Y23_N23
\led5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led5[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[1]~reg0_q\);

-- Location: LCCOMB_X12_Y23_N20
\led5[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led5[2]~reg0feeder_combout\ = bufferForIndicator0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bufferForIndicator0(0),
	combout => \led5[2]~reg0feeder_combout\);

-- Location: FF_X12_Y23_N21
\led5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led5[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[2]~reg0_q\);

-- Location: LCCOMB_X12_Y23_N26
\led5[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led5[3]~reg0feeder_combout\ = bufferForIndicator0(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => bufferForIndicator0(0),
	combout => \led5[3]~reg0feeder_combout\);

-- Location: FF_X12_Y23_N27
\led5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led5[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[3]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N14
\clkForIndication[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[0]~19_combout\ = clkForIndication(0) $ (VCC)
-- \clkForIndication[0]~20\ = CARRY(clkForIndication(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(0),
	datad => VCC,
	combout => \clkForIndication[0]~19_combout\,
	cout => \clkForIndication[0]~20\);

-- Location: FF_X1_Y23_N15
\clkForIndication[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[0]~19_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(0));

-- Location: LCCOMB_X1_Y23_N16
\clkForIndication[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[1]~21_combout\ = (clkForIndication(1) & (!\clkForIndication[0]~20\)) # (!clkForIndication(1) & ((\clkForIndication[0]~20\) # (GND)))
-- \clkForIndication[1]~22\ = CARRY((!\clkForIndication[0]~20\) # (!clkForIndication(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(1),
	datad => VCC,
	cin => \clkForIndication[0]~20\,
	combout => \clkForIndication[1]~21_combout\,
	cout => \clkForIndication[1]~22\);

-- Location: FF_X1_Y23_N17
\clkForIndication[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[1]~21_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(1));

-- Location: LCCOMB_X1_Y23_N18
\clkForIndication[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[2]~23_combout\ = (clkForIndication(2) & (\clkForIndication[1]~22\ $ (GND))) # (!clkForIndication(2) & (!\clkForIndication[1]~22\ & VCC))
-- \clkForIndication[2]~24\ = CARRY((clkForIndication(2) & !\clkForIndication[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(2),
	datad => VCC,
	cin => \clkForIndication[1]~22\,
	combout => \clkForIndication[2]~23_combout\,
	cout => \clkForIndication[2]~24\);

-- Location: FF_X1_Y23_N19
\clkForIndication[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[2]~23_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(2));

-- Location: LCCOMB_X1_Y23_N20
\clkForIndication[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[3]~25_combout\ = (clkForIndication(3) & (!\clkForIndication[2]~24\)) # (!clkForIndication(3) & ((\clkForIndication[2]~24\) # (GND)))
-- \clkForIndication[3]~26\ = CARRY((!\clkForIndication[2]~24\) # (!clkForIndication(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(3),
	datad => VCC,
	cin => \clkForIndication[2]~24\,
	combout => \clkForIndication[3]~25_combout\,
	cout => \clkForIndication[3]~26\);

-- Location: FF_X1_Y23_N21
\clkForIndication[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[3]~25_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(3));

-- Location: LCCOMB_X1_Y23_N22
\clkForIndication[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[4]~27_combout\ = (clkForIndication(4) & (\clkForIndication[3]~26\ $ (GND))) # (!clkForIndication(4) & (!\clkForIndication[3]~26\ & VCC))
-- \clkForIndication[4]~28\ = CARRY((clkForIndication(4) & !\clkForIndication[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(4),
	datad => VCC,
	cin => \clkForIndication[3]~26\,
	combout => \clkForIndication[4]~27_combout\,
	cout => \clkForIndication[4]~28\);

-- Location: FF_X1_Y23_N23
\clkForIndication[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[4]~27_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(4));

-- Location: LCCOMB_X1_Y23_N24
\clkForIndication[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[5]~29_combout\ = (clkForIndication(5) & (!\clkForIndication[4]~28\)) # (!clkForIndication(5) & ((\clkForIndication[4]~28\) # (GND)))
-- \clkForIndication[5]~30\ = CARRY((!\clkForIndication[4]~28\) # (!clkForIndication(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(5),
	datad => VCC,
	cin => \clkForIndication[4]~28\,
	combout => \clkForIndication[5]~29_combout\,
	cout => \clkForIndication[5]~30\);

-- Location: FF_X1_Y23_N25
\clkForIndication[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[5]~29_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(5));

-- Location: LCCOMB_X1_Y23_N26
\clkForIndication[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[6]~31_combout\ = (clkForIndication(6) & (\clkForIndication[5]~30\ $ (GND))) # (!clkForIndication(6) & (!\clkForIndication[5]~30\ & VCC))
-- \clkForIndication[6]~32\ = CARRY((clkForIndication(6) & !\clkForIndication[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(6),
	datad => VCC,
	cin => \clkForIndication[5]~30\,
	combout => \clkForIndication[6]~31_combout\,
	cout => \clkForIndication[6]~32\);

-- Location: FF_X1_Y23_N27
\clkForIndication[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[6]~31_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(6));

-- Location: LCCOMB_X1_Y23_N28
\clkForIndication[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[7]~33_combout\ = (clkForIndication(7) & (!\clkForIndication[6]~32\)) # (!clkForIndication(7) & ((\clkForIndication[6]~32\) # (GND)))
-- \clkForIndication[7]~34\ = CARRY((!\clkForIndication[6]~32\) # (!clkForIndication(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(7),
	datad => VCC,
	cin => \clkForIndication[6]~32\,
	combout => \clkForIndication[7]~33_combout\,
	cout => \clkForIndication[7]~34\);

-- Location: FF_X1_Y23_N29
\clkForIndication[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[7]~33_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(7));

-- Location: LCCOMB_X1_Y23_N30
\clkForIndication[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[8]~35_combout\ = (clkForIndication(8) & (\clkForIndication[7]~34\ $ (GND))) # (!clkForIndication(8) & (!\clkForIndication[7]~34\ & VCC))
-- \clkForIndication[8]~36\ = CARRY((clkForIndication(8) & !\clkForIndication[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datad => VCC,
	cin => \clkForIndication[7]~34\,
	combout => \clkForIndication[8]~35_combout\,
	cout => \clkForIndication[8]~36\);

-- Location: FF_X1_Y23_N31
\clkForIndication[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[8]~35_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(8));

-- Location: LCCOMB_X1_Y22_N0
\clkForIndication[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[9]~37_combout\ = (clkForIndication(9) & (!\clkForIndication[8]~36\)) # (!clkForIndication(9) & ((\clkForIndication[8]~36\) # (GND)))
-- \clkForIndication[9]~38\ = CARRY((!\clkForIndication[8]~36\) # (!clkForIndication(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(9),
	datad => VCC,
	cin => \clkForIndication[8]~36\,
	combout => \clkForIndication[9]~37_combout\,
	cout => \clkForIndication[9]~38\);

-- Location: FF_X1_Y22_N1
\clkForIndication[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[9]~37_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(9));

-- Location: LCCOMB_X1_Y22_N2
\clkForIndication[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[10]~39_combout\ = (clkForIndication(10) & (\clkForIndication[9]~38\ $ (GND))) # (!clkForIndication(10) & (!\clkForIndication[9]~38\ & VCC))
-- \clkForIndication[10]~40\ = CARRY((clkForIndication(10) & !\clkForIndication[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(10),
	datad => VCC,
	cin => \clkForIndication[9]~38\,
	combout => \clkForIndication[10]~39_combout\,
	cout => \clkForIndication[10]~40\);

-- Location: FF_X1_Y22_N3
\clkForIndication[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[10]~39_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(10));

-- Location: LCCOMB_X1_Y22_N4
\clkForIndication[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[11]~41_combout\ = (clkForIndication(11) & (!\clkForIndication[10]~40\)) # (!clkForIndication(11) & ((\clkForIndication[10]~40\) # (GND)))
-- \clkForIndication[11]~42\ = CARRY((!\clkForIndication[10]~40\) # (!clkForIndication(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(11),
	datad => VCC,
	cin => \clkForIndication[10]~40\,
	combout => \clkForIndication[11]~41_combout\,
	cout => \clkForIndication[11]~42\);

-- Location: FF_X1_Y22_N5
\clkForIndication[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[11]~41_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(11));

-- Location: LCCOMB_X1_Y22_N6
\clkForIndication[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[12]~43_combout\ = (clkForIndication(12) & (\clkForIndication[11]~42\ $ (GND))) # (!clkForIndication(12) & (!\clkForIndication[11]~42\ & VCC))
-- \clkForIndication[12]~44\ = CARRY((clkForIndication(12) & !\clkForIndication[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(12),
	datad => VCC,
	cin => \clkForIndication[11]~42\,
	combout => \clkForIndication[12]~43_combout\,
	cout => \clkForIndication[12]~44\);

-- Location: FF_X1_Y22_N7
\clkForIndication[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[12]~43_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(12));

-- Location: LCCOMB_X1_Y22_N8
\clkForIndication[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[13]~45_combout\ = (clkForIndication(13) & (!\clkForIndication[12]~44\)) # (!clkForIndication(13) & ((\clkForIndication[12]~44\) # (GND)))
-- \clkForIndication[13]~46\ = CARRY((!\clkForIndication[12]~44\) # (!clkForIndication(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(13),
	datad => VCC,
	cin => \clkForIndication[12]~44\,
	combout => \clkForIndication[13]~45_combout\,
	cout => \clkForIndication[13]~46\);

-- Location: FF_X1_Y22_N9
\clkForIndication[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[13]~45_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(13));

-- Location: LCCOMB_X1_Y22_N10
\clkForIndication[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[14]~47_combout\ = (clkForIndication(14) & (\clkForIndication[13]~46\ $ (GND))) # (!clkForIndication(14) & (!\clkForIndication[13]~46\ & VCC))
-- \clkForIndication[14]~48\ = CARRY((clkForIndication(14) & !\clkForIndication[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(14),
	datad => VCC,
	cin => \clkForIndication[13]~46\,
	combout => \clkForIndication[14]~47_combout\,
	cout => \clkForIndication[14]~48\);

-- Location: FF_X1_Y22_N11
\clkForIndication[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[14]~47_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(14));

-- Location: LCCOMB_X1_Y22_N12
\clkForIndication[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[15]~49_combout\ = (clkForIndication(15) & (!\clkForIndication[14]~48\)) # (!clkForIndication(15) & ((\clkForIndication[14]~48\) # (GND)))
-- \clkForIndication[15]~50\ = CARRY((!\clkForIndication[14]~48\) # (!clkForIndication(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(15),
	datad => VCC,
	cin => \clkForIndication[14]~48\,
	combout => \clkForIndication[15]~49_combout\,
	cout => \clkForIndication[15]~50\);

-- Location: FF_X1_Y22_N13
\clkForIndication[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[15]~49_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(15));

-- Location: LCCOMB_X1_Y22_N14
\clkForIndication[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[16]~51_combout\ = (clkForIndication(16) & (\clkForIndication[15]~50\ $ (GND))) # (!clkForIndication(16) & (!\clkForIndication[15]~50\ & VCC))
-- \clkForIndication[16]~52\ = CARRY((clkForIndication(16) & !\clkForIndication[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(16),
	datad => VCC,
	cin => \clkForIndication[15]~50\,
	combout => \clkForIndication[16]~51_combout\,
	cout => \clkForIndication[16]~52\);

-- Location: FF_X1_Y22_N15
\clkForIndication[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[16]~51_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(16));

-- Location: LCCOMB_X1_Y22_N16
\clkForIndication[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[17]~53_combout\ = (clkForIndication(17) & (!\clkForIndication[16]~52\)) # (!clkForIndication(17) & ((\clkForIndication[16]~52\) # (GND)))
-- \clkForIndication[17]~54\ = CARRY((!\clkForIndication[16]~52\) # (!clkForIndication(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(17),
	datad => VCC,
	cin => \clkForIndication[16]~52\,
	combout => \clkForIndication[17]~53_combout\,
	cout => \clkForIndication[17]~54\);

-- Location: FF_X1_Y22_N17
\clkForIndication[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[17]~53_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(17));

-- Location: LCCOMB_X1_Y22_N18
\clkForIndication[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[18]~55_combout\ = \clkForIndication[17]~54\ $ (!clkForIndication(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clkForIndication(18),
	cin => \clkForIndication[17]~54\,
	combout => \clkForIndication[18]~55_combout\);

-- Location: FF_X1_Y22_N19
\clkForIndication[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[18]~55_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(18));

-- Location: LCCOMB_X1_Y22_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clkForIndication(18) & (((!clkForIndication(17)) # (!clkForIndication(16))) # (!clkForIndication(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(15),
	datab => clkForIndication(18),
	datac => clkForIndication(16),
	datad => clkForIndication(17),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y22_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!clkForIndication(18) & (((!clkForIndication(13) & !clkForIndication(12))) # (!clkForIndication(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(14),
	datab => clkForIndication(18),
	datac => clkForIndication(13),
	datad => clkForIndication(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y23_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!clkForIndication(6) & (!clkForIndication(4) & !clkForIndication(5)))) # (!clkForIndication(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(6),
	datab => clkForIndication(7),
	datac => clkForIndication(4),
	datad => clkForIndication(5),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y23_N12
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkForIndication(8) & (!clkForIndication(9) & (!clkForIndication(13) & !clkForIndication(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datab => clkForIndication(9),
	datac => clkForIndication(13),
	datad => clkForIndication(18),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y23_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~1_combout\ & (!clkForIndication(11) & (!clkForIndication(10) & \LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => clkForIndication(11),
	datac => clkForIndication(10),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y23_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y23_N2
\indicator[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[0]~0_combout\ = indicator(0) $ (((!\LessThan0~4_combout\ & (!\LessThan0~3_combout\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datab => \LessThan0~3_combout\,
	datac => indicator(0),
	datad => \LessThan0~0_combout\,
	combout => \indicator[0]~0_combout\);

-- Location: FF_X1_Y23_N3
\indicator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \indicator[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indicator(0));

-- Location: LCCOMB_X1_Y23_N0
\indicator[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[1]~1_combout\ = indicator(1) $ (((!\LessThan0~5_combout\ & indicator(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~5_combout\,
	datac => indicator(1),
	datad => indicator(0),
	combout => \indicator[1]~1_combout\);

-- Location: FF_X1_Y23_N1
\indicator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \indicator[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indicator(1));

-- Location: LCCOMB_X1_Y22_N24
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (indicator(1) & indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datac => indicator(0),
	combout => \Decoder0~0_combout\);

-- Location: FF_X1_Y22_N25
\en[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[0]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N30
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (indicator(1) & !indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datac => indicator(0),
	combout => \Decoder0~1_combout\);

-- Location: FF_X1_Y22_N31
\en[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[1]~reg0_q\);

-- Location: LCCOMB_X1_Y22_N20
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!indicator(1) & indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datac => indicator(0),
	combout => \Decoder0~2_combout\);

-- Location: FF_X1_Y22_N21
\en[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[2]~reg0_q\);

-- Location: LCCOMB_X1_Y23_N8
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!indicator(1) & !indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(1),
	datad => indicator(0),
	combout => \Decoder0~3_combout\);

-- Location: FF_X1_Y23_N9
\en[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[3]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N1
\buttonWaiting~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonWaiting,
	o => \buttonWaiting~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\buttonLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonLeft,
	o => \buttonLeft~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\buttonRight~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonRight,
	o => \buttonRight~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\buttonSelection~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonSelection,
	o => \buttonSelection~input_o\);

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5(7) <= \led5[7]~output_o\;

ww_en(0) <= \en[0]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(3) <= \en[3]~output_o\;
END structure;


