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

-- DATE "03/13/2024 17:51:38"

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

ENTITY 	VERILOGStart IS
    PORT (
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	bzzz : OUT std_logic;
	clk : IN std_logic;
	key0 : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic
	);
END VERILOGStart;

-- Design Ports Information
-- led0	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led2	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led3	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- bzzz	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key0	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_bzzz : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_key0 : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \bzzz~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter0[0]~25_combout\ : std_logic;
SIGNAL \counter0[0]~26\ : std_logic;
SIGNAL \counter0[1]~27_combout\ : std_logic;
SIGNAL \counter0[1]~28\ : std_logic;
SIGNAL \counter0[2]~29_combout\ : std_logic;
SIGNAL \counter0[2]~30\ : std_logic;
SIGNAL \counter0[3]~31_combout\ : std_logic;
SIGNAL \counter0[3]~32\ : std_logic;
SIGNAL \counter0[4]~33_combout\ : std_logic;
SIGNAL \counter0[4]~34\ : std_logic;
SIGNAL \counter0[5]~35_combout\ : std_logic;
SIGNAL \counter0[5]~36\ : std_logic;
SIGNAL \counter0[6]~37_combout\ : std_logic;
SIGNAL \counter0[6]~38\ : std_logic;
SIGNAL \counter0[7]~39_combout\ : std_logic;
SIGNAL \counter0[7]~40\ : std_logic;
SIGNAL \counter0[8]~41_combout\ : std_logic;
SIGNAL \counter0[8]~42\ : std_logic;
SIGNAL \counter0[9]~43_combout\ : std_logic;
SIGNAL \counter0[9]~44\ : std_logic;
SIGNAL \counter0[10]~45_combout\ : std_logic;
SIGNAL \counter0[10]~46\ : std_logic;
SIGNAL \counter0[11]~47_combout\ : std_logic;
SIGNAL \counter0[11]~48\ : std_logic;
SIGNAL \counter0[12]~49_combout\ : std_logic;
SIGNAL \counter0[12]~50\ : std_logic;
SIGNAL \counter0[13]~51_combout\ : std_logic;
SIGNAL \counter0[13]~52\ : std_logic;
SIGNAL \counter0[14]~53_combout\ : std_logic;
SIGNAL \counter0[14]~54\ : std_logic;
SIGNAL \counter0[15]~55_combout\ : std_logic;
SIGNAL \counter0[15]~56\ : std_logic;
SIGNAL \counter0[16]~57_combout\ : std_logic;
SIGNAL \counter0[16]~58\ : std_logic;
SIGNAL \counter0[17]~59_combout\ : std_logic;
SIGNAL \counter0[17]~60\ : std_logic;
SIGNAL \counter0[18]~61_combout\ : std_logic;
SIGNAL \counter0[18]~62\ : std_logic;
SIGNAL \counter0[19]~63_combout\ : std_logic;
SIGNAL \counter0[19]~64\ : std_logic;
SIGNAL \counter0[20]~65_combout\ : std_logic;
SIGNAL \counter0[20]~66\ : std_logic;
SIGNAL \counter0[21]~67_combout\ : std_logic;
SIGNAL \counter0[21]~68\ : std_logic;
SIGNAL \counter0[22]~69_combout\ : std_logic;
SIGNAL \counter0[22]~70\ : std_logic;
SIGNAL \counter0[23]~71_combout\ : std_logic;
SIGNAL \counter0[23]~72\ : std_logic;
SIGNAL \counter0[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \led0~0_combout\ : std_logic;
SIGNAL \led0~reg0_q\ : std_logic;
SIGNAL \counter1[0]~25_combout\ : std_logic;
SIGNAL \counter1[0]~26\ : std_logic;
SIGNAL \counter1[1]~27_combout\ : std_logic;
SIGNAL \counter1[1]~28\ : std_logic;
SIGNAL \counter1[2]~29_combout\ : std_logic;
SIGNAL \counter1[2]~30\ : std_logic;
SIGNAL \counter1[3]~31_combout\ : std_logic;
SIGNAL \counter1[3]~32\ : std_logic;
SIGNAL \counter1[4]~33_combout\ : std_logic;
SIGNAL \counter1[4]~34\ : std_logic;
SIGNAL \counter1[5]~35_combout\ : std_logic;
SIGNAL \counter1[5]~36\ : std_logic;
SIGNAL \counter1[6]~37_combout\ : std_logic;
SIGNAL \counter1[6]~38\ : std_logic;
SIGNAL \counter1[7]~39_combout\ : std_logic;
SIGNAL \counter1[7]~40\ : std_logic;
SIGNAL \counter1[8]~41_combout\ : std_logic;
SIGNAL \counter1[8]~42\ : std_logic;
SIGNAL \counter1[9]~43_combout\ : std_logic;
SIGNAL \counter1[9]~44\ : std_logic;
SIGNAL \counter1[10]~45_combout\ : std_logic;
SIGNAL \counter1[10]~46\ : std_logic;
SIGNAL \counter1[11]~47_combout\ : std_logic;
SIGNAL \counter1[11]~48\ : std_logic;
SIGNAL \counter1[12]~49_combout\ : std_logic;
SIGNAL \counter1[12]~50\ : std_logic;
SIGNAL \counter1[13]~51_combout\ : std_logic;
SIGNAL \counter1[13]~52\ : std_logic;
SIGNAL \counter1[14]~53_combout\ : std_logic;
SIGNAL \counter1[14]~54\ : std_logic;
SIGNAL \counter1[15]~55_combout\ : std_logic;
SIGNAL \counter1[15]~56\ : std_logic;
SIGNAL \counter1[16]~57_combout\ : std_logic;
SIGNAL \counter1[16]~58\ : std_logic;
SIGNAL \counter1[17]~59_combout\ : std_logic;
SIGNAL \counter1[17]~60\ : std_logic;
SIGNAL \counter1[18]~61_combout\ : std_logic;
SIGNAL \counter1[18]~62\ : std_logic;
SIGNAL \counter1[19]~63_combout\ : std_logic;
SIGNAL \counter1[19]~64\ : std_logic;
SIGNAL \counter1[20]~65_combout\ : std_logic;
SIGNAL \counter1[20]~66\ : std_logic;
SIGNAL \counter1[21]~67_combout\ : std_logic;
SIGNAL \counter1[21]~68\ : std_logic;
SIGNAL \counter1[22]~69_combout\ : std_logic;
SIGNAL \counter1[22]~70\ : std_logic;
SIGNAL \counter1[23]~71_combout\ : std_logic;
SIGNAL \counter1[23]~72\ : std_logic;
SIGNAL \counter1[24]~73_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \led1~0_combout\ : std_logic;
SIGNAL \led1~reg0_q\ : std_logic;
SIGNAL \counter2[0]~25_combout\ : std_logic;
SIGNAL \counter2[0]~26\ : std_logic;
SIGNAL \counter2[1]~27_combout\ : std_logic;
SIGNAL \counter2[1]~28\ : std_logic;
SIGNAL \counter2[2]~29_combout\ : std_logic;
SIGNAL \counter2[2]~30\ : std_logic;
SIGNAL \counter2[3]~31_combout\ : std_logic;
SIGNAL \counter2[3]~32\ : std_logic;
SIGNAL \counter2[4]~33_combout\ : std_logic;
SIGNAL \counter2[4]~34\ : std_logic;
SIGNAL \counter2[5]~35_combout\ : std_logic;
SIGNAL \counter2[5]~36\ : std_logic;
SIGNAL \counter2[6]~37_combout\ : std_logic;
SIGNAL \counter2[6]~38\ : std_logic;
SIGNAL \counter2[7]~39_combout\ : std_logic;
SIGNAL \counter2[7]~40\ : std_logic;
SIGNAL \counter2[8]~41_combout\ : std_logic;
SIGNAL \counter2[8]~42\ : std_logic;
SIGNAL \counter2[9]~43_combout\ : std_logic;
SIGNAL \counter2[9]~44\ : std_logic;
SIGNAL \counter2[10]~45_combout\ : std_logic;
SIGNAL \counter2[10]~46\ : std_logic;
SIGNAL \counter2[11]~47_combout\ : std_logic;
SIGNAL \counter2[11]~48\ : std_logic;
SIGNAL \counter2[12]~49_combout\ : std_logic;
SIGNAL \counter2[12]~50\ : std_logic;
SIGNAL \counter2[13]~51_combout\ : std_logic;
SIGNAL \counter2[13]~52\ : std_logic;
SIGNAL \counter2[14]~53_combout\ : std_logic;
SIGNAL \counter2[14]~54\ : std_logic;
SIGNAL \counter2[15]~55_combout\ : std_logic;
SIGNAL \counter2[15]~56\ : std_logic;
SIGNAL \counter2[16]~57_combout\ : std_logic;
SIGNAL \counter2[16]~58\ : std_logic;
SIGNAL \counter2[17]~59_combout\ : std_logic;
SIGNAL \counter2[17]~60\ : std_logic;
SIGNAL \counter2[18]~61_combout\ : std_logic;
SIGNAL \counter2[18]~62\ : std_logic;
SIGNAL \counter2[19]~63_combout\ : std_logic;
SIGNAL \counter2[19]~64\ : std_logic;
SIGNAL \counter2[20]~65_combout\ : std_logic;
SIGNAL \counter2[20]~66\ : std_logic;
SIGNAL \counter2[21]~67_combout\ : std_logic;
SIGNAL \counter2[21]~68\ : std_logic;
SIGNAL \counter2[22]~69_combout\ : std_logic;
SIGNAL \counter2[22]~70\ : std_logic;
SIGNAL \counter2[23]~71_combout\ : std_logic;
SIGNAL \counter2[23]~72\ : std_logic;
SIGNAL \counter2[24]~73_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \led2~0_combout\ : std_logic;
SIGNAL \led2~reg0_q\ : std_logic;
SIGNAL \key0~input_o\ : std_logic;
SIGNAL \key0Prev~feeder_combout\ : std_logic;
SIGNAL \key0Prev~q\ : std_logic;
SIGNAL \led3~0_combout\ : std_logic;
SIGNAL \led3~reg0_q\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key1Prev~feeder_combout\ : std_logic;
SIGNAL \key1Prev~q\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \key2Prev~q\ : std_logic;
SIGNAL \onBzzz~0_combout\ : std_logic;
SIGNAL \onBzzz~1_combout\ : std_logic;
SIGNAL \onBzzz~q\ : std_logic;
SIGNAL \counter3[0]~25_combout\ : std_logic;
SIGNAL \counter3[0]~26\ : std_logic;
SIGNAL \counter3[1]~27_combout\ : std_logic;
SIGNAL \counter3[1]~28\ : std_logic;
SIGNAL \counter3[2]~29_combout\ : std_logic;
SIGNAL \counter3[2]~30\ : std_logic;
SIGNAL \counter3[3]~31_combout\ : std_logic;
SIGNAL \counter3[3]~32\ : std_logic;
SIGNAL \counter3[4]~33_combout\ : std_logic;
SIGNAL \counter3[4]~34\ : std_logic;
SIGNAL \counter3[5]~35_combout\ : std_logic;
SIGNAL \counter3[5]~36\ : std_logic;
SIGNAL \counter3[6]~37_combout\ : std_logic;
SIGNAL \counter3[6]~38\ : std_logic;
SIGNAL \counter3[7]~39_combout\ : std_logic;
SIGNAL \counter3[7]~40\ : std_logic;
SIGNAL \counter3[8]~41_combout\ : std_logic;
SIGNAL \counter3[8]~42\ : std_logic;
SIGNAL \counter3[9]~43_combout\ : std_logic;
SIGNAL \counter3[9]~44\ : std_logic;
SIGNAL \counter3[10]~45_combout\ : std_logic;
SIGNAL \counter3[10]~46\ : std_logic;
SIGNAL \counter3[11]~47_combout\ : std_logic;
SIGNAL \counter3[11]~48\ : std_logic;
SIGNAL \counter3[12]~49_combout\ : std_logic;
SIGNAL \counter3[12]~50\ : std_logic;
SIGNAL \counter3[13]~51_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \counter3[13]~52\ : std_logic;
SIGNAL \counter3[14]~53_combout\ : std_logic;
SIGNAL \counter3[14]~54\ : std_logic;
SIGNAL \counter3[15]~55_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \counter3[15]~56\ : std_logic;
SIGNAL \counter3[16]~57_combout\ : std_logic;
SIGNAL \counter3[16]~58\ : std_logic;
SIGNAL \counter3[17]~59_combout\ : std_logic;
SIGNAL \counter3[17]~60\ : std_logic;
SIGNAL \counter3[18]~61_combout\ : std_logic;
SIGNAL \counter3[18]~62\ : std_logic;
SIGNAL \counter3[19]~63_combout\ : std_logic;
SIGNAL \counter3[19]~64\ : std_logic;
SIGNAL \counter3[20]~65_combout\ : std_logic;
SIGNAL \counter3[20]~66\ : std_logic;
SIGNAL \counter3[21]~67_combout\ : std_logic;
SIGNAL \counter3[21]~68\ : std_logic;
SIGNAL \counter3[22]~69_combout\ : std_logic;
SIGNAL \counter3[22]~70\ : std_logic;
SIGNAL \counter3[23]~71_combout\ : std_logic;
SIGNAL \counter3[23]~72\ : std_logic;
SIGNAL \counter3[24]~73_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \bzzz~0_combout\ : std_logic;
SIGNAL \bzzz~reg0_q\ : std_logic;
SIGNAL counter3 : std_logic_vector(24 DOWNTO 0);
SIGNAL counter2 : std_logic_vector(24 DOWNTO 0);
SIGNAL counter1 : std_logic_vector(24 DOWNTO 0);
SIGNAL counter0 : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;

BEGIN

led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
bzzz <= ww_bzzz;
ww_clk <= clk;
ww_key0 <= key0;
ww_key1 <= key1;
ww_key2 <= key2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan1~7_combout\ <= NOT \LessThan1~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan3~8_combout\ <= NOT \LessThan3~8_combout\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;

-- Location: IOOBUF_X34_Y9_N9
\led0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led0~reg0_q\,
	devoe => ww_devoe,
	o => \led0~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1~reg0_q\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led2~reg0_q\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led3~reg0_q\,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\bzzz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bzzz~reg0_q\,
	devoe => ww_devoe,
	o => \bzzz~output_o\);

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

-- Location: LCCOMB_X33_Y15_N8
\counter0[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[0]~25_combout\ = counter0(0) $ (VCC)
-- \counter0[0]~26\ = CARRY(counter0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter0(0),
	datad => VCC,
	combout => \counter0[0]~25_combout\,
	cout => \counter0[0]~26\);

-- Location: FF_X33_Y15_N9
\counter0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[0]~25_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(0));

-- Location: LCCOMB_X33_Y15_N10
\counter0[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[1]~27_combout\ = (counter0(1) & (!\counter0[0]~26\)) # (!counter0(1) & ((\counter0[0]~26\) # (GND)))
-- \counter0[1]~28\ = CARRY((!\counter0[0]~26\) # (!counter0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(1),
	datad => VCC,
	cin => \counter0[0]~26\,
	combout => \counter0[1]~27_combout\,
	cout => \counter0[1]~28\);

-- Location: FF_X33_Y15_N11
\counter0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[1]~27_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(1));

-- Location: LCCOMB_X33_Y15_N12
\counter0[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[2]~29_combout\ = (counter0(2) & (\counter0[1]~28\ $ (GND))) # (!counter0(2) & (!\counter0[1]~28\ & VCC))
-- \counter0[2]~30\ = CARRY((counter0(2) & !\counter0[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(2),
	datad => VCC,
	cin => \counter0[1]~28\,
	combout => \counter0[2]~29_combout\,
	cout => \counter0[2]~30\);

-- Location: FF_X33_Y15_N13
\counter0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[2]~29_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(2));

-- Location: LCCOMB_X33_Y15_N14
\counter0[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[3]~31_combout\ = (counter0(3) & (!\counter0[2]~30\)) # (!counter0(3) & ((\counter0[2]~30\) # (GND)))
-- \counter0[3]~32\ = CARRY((!\counter0[2]~30\) # (!counter0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(3),
	datad => VCC,
	cin => \counter0[2]~30\,
	combout => \counter0[3]~31_combout\,
	cout => \counter0[3]~32\);

-- Location: FF_X33_Y15_N15
\counter0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[3]~31_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(3));

-- Location: LCCOMB_X33_Y15_N16
\counter0[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[4]~33_combout\ = (counter0(4) & (\counter0[3]~32\ $ (GND))) # (!counter0(4) & (!\counter0[3]~32\ & VCC))
-- \counter0[4]~34\ = CARRY((counter0(4) & !\counter0[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(4),
	datad => VCC,
	cin => \counter0[3]~32\,
	combout => \counter0[4]~33_combout\,
	cout => \counter0[4]~34\);

-- Location: FF_X33_Y15_N17
\counter0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[4]~33_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(4));

-- Location: LCCOMB_X33_Y15_N18
\counter0[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[5]~35_combout\ = (counter0(5) & (!\counter0[4]~34\)) # (!counter0(5) & ((\counter0[4]~34\) # (GND)))
-- \counter0[5]~36\ = CARRY((!\counter0[4]~34\) # (!counter0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(5),
	datad => VCC,
	cin => \counter0[4]~34\,
	combout => \counter0[5]~35_combout\,
	cout => \counter0[5]~36\);

-- Location: FF_X33_Y15_N19
\counter0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[5]~35_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(5));

-- Location: LCCOMB_X33_Y15_N20
\counter0[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[6]~37_combout\ = (counter0(6) & (\counter0[5]~36\ $ (GND))) # (!counter0(6) & (!\counter0[5]~36\ & VCC))
-- \counter0[6]~38\ = CARRY((counter0(6) & !\counter0[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(6),
	datad => VCC,
	cin => \counter0[5]~36\,
	combout => \counter0[6]~37_combout\,
	cout => \counter0[6]~38\);

-- Location: FF_X33_Y15_N21
\counter0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[6]~37_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(6));

-- Location: LCCOMB_X33_Y15_N22
\counter0[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[7]~39_combout\ = (counter0(7) & (!\counter0[6]~38\)) # (!counter0(7) & ((\counter0[6]~38\) # (GND)))
-- \counter0[7]~40\ = CARRY((!\counter0[6]~38\) # (!counter0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(7),
	datad => VCC,
	cin => \counter0[6]~38\,
	combout => \counter0[7]~39_combout\,
	cout => \counter0[7]~40\);

-- Location: FF_X33_Y15_N23
\counter0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[7]~39_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(7));

-- Location: LCCOMB_X33_Y15_N24
\counter0[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[8]~41_combout\ = (counter0(8) & (\counter0[7]~40\ $ (GND))) # (!counter0(8) & (!\counter0[7]~40\ & VCC))
-- \counter0[8]~42\ = CARRY((counter0(8) & !\counter0[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(8),
	datad => VCC,
	cin => \counter0[7]~40\,
	combout => \counter0[8]~41_combout\,
	cout => \counter0[8]~42\);

-- Location: FF_X33_Y15_N25
\counter0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[8]~41_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(8));

-- Location: LCCOMB_X33_Y15_N26
\counter0[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[9]~43_combout\ = (counter0(9) & (!\counter0[8]~42\)) # (!counter0(9) & ((\counter0[8]~42\) # (GND)))
-- \counter0[9]~44\ = CARRY((!\counter0[8]~42\) # (!counter0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(9),
	datad => VCC,
	cin => \counter0[8]~42\,
	combout => \counter0[9]~43_combout\,
	cout => \counter0[9]~44\);

-- Location: FF_X33_Y15_N27
\counter0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[9]~43_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(9));

-- Location: LCCOMB_X33_Y15_N28
\counter0[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[10]~45_combout\ = (counter0(10) & (\counter0[9]~44\ $ (GND))) # (!counter0(10) & (!\counter0[9]~44\ & VCC))
-- \counter0[10]~46\ = CARRY((counter0(10) & !\counter0[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(10),
	datad => VCC,
	cin => \counter0[9]~44\,
	combout => \counter0[10]~45_combout\,
	cout => \counter0[10]~46\);

-- Location: FF_X33_Y15_N29
\counter0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[10]~45_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(10));

-- Location: LCCOMB_X33_Y15_N30
\counter0[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[11]~47_combout\ = (counter0(11) & (!\counter0[10]~46\)) # (!counter0(11) & ((\counter0[10]~46\) # (GND)))
-- \counter0[11]~48\ = CARRY((!\counter0[10]~46\) # (!counter0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(11),
	datad => VCC,
	cin => \counter0[10]~46\,
	combout => \counter0[11]~47_combout\,
	cout => \counter0[11]~48\);

-- Location: FF_X33_Y15_N31
\counter0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[11]~47_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(11));

-- Location: LCCOMB_X33_Y14_N0
\counter0[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[12]~49_combout\ = (counter0(12) & (\counter0[11]~48\ $ (GND))) # (!counter0(12) & (!\counter0[11]~48\ & VCC))
-- \counter0[12]~50\ = CARRY((counter0(12) & !\counter0[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(12),
	datad => VCC,
	cin => \counter0[11]~48\,
	combout => \counter0[12]~49_combout\,
	cout => \counter0[12]~50\);

-- Location: FF_X33_Y14_N1
\counter0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[12]~49_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(12));

-- Location: LCCOMB_X33_Y14_N2
\counter0[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[13]~51_combout\ = (counter0(13) & (!\counter0[12]~50\)) # (!counter0(13) & ((\counter0[12]~50\) # (GND)))
-- \counter0[13]~52\ = CARRY((!\counter0[12]~50\) # (!counter0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(13),
	datad => VCC,
	cin => \counter0[12]~50\,
	combout => \counter0[13]~51_combout\,
	cout => \counter0[13]~52\);

-- Location: FF_X33_Y14_N3
\counter0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[13]~51_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(13));

-- Location: LCCOMB_X33_Y14_N4
\counter0[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[14]~53_combout\ = (counter0(14) & (\counter0[13]~52\ $ (GND))) # (!counter0(14) & (!\counter0[13]~52\ & VCC))
-- \counter0[14]~54\ = CARRY((counter0(14) & !\counter0[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(14),
	datad => VCC,
	cin => \counter0[13]~52\,
	combout => \counter0[14]~53_combout\,
	cout => \counter0[14]~54\);

-- Location: FF_X33_Y14_N5
\counter0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[14]~53_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(14));

-- Location: LCCOMB_X33_Y14_N6
\counter0[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[15]~55_combout\ = (counter0(15) & (!\counter0[14]~54\)) # (!counter0(15) & ((\counter0[14]~54\) # (GND)))
-- \counter0[15]~56\ = CARRY((!\counter0[14]~54\) # (!counter0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(15),
	datad => VCC,
	cin => \counter0[14]~54\,
	combout => \counter0[15]~55_combout\,
	cout => \counter0[15]~56\);

-- Location: FF_X33_Y14_N7
\counter0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[15]~55_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(15));

-- Location: LCCOMB_X33_Y14_N8
\counter0[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[16]~57_combout\ = (counter0(16) & (\counter0[15]~56\ $ (GND))) # (!counter0(16) & (!\counter0[15]~56\ & VCC))
-- \counter0[16]~58\ = CARRY((counter0(16) & !\counter0[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(16),
	datad => VCC,
	cin => \counter0[15]~56\,
	combout => \counter0[16]~57_combout\,
	cout => \counter0[16]~58\);

-- Location: FF_X33_Y14_N9
\counter0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[16]~57_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(16));

-- Location: LCCOMB_X33_Y14_N10
\counter0[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[17]~59_combout\ = (counter0(17) & (!\counter0[16]~58\)) # (!counter0(17) & ((\counter0[16]~58\) # (GND)))
-- \counter0[17]~60\ = CARRY((!\counter0[16]~58\) # (!counter0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(17),
	datad => VCC,
	cin => \counter0[16]~58\,
	combout => \counter0[17]~59_combout\,
	cout => \counter0[17]~60\);

-- Location: FF_X33_Y14_N11
\counter0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[17]~59_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(17));

-- Location: LCCOMB_X33_Y14_N12
\counter0[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[18]~61_combout\ = (counter0(18) & (\counter0[17]~60\ $ (GND))) # (!counter0(18) & (!\counter0[17]~60\ & VCC))
-- \counter0[18]~62\ = CARRY((counter0(18) & !\counter0[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(18),
	datad => VCC,
	cin => \counter0[17]~60\,
	combout => \counter0[18]~61_combout\,
	cout => \counter0[18]~62\);

-- Location: FF_X33_Y14_N13
\counter0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[18]~61_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(18));

-- Location: LCCOMB_X33_Y14_N14
\counter0[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[19]~63_combout\ = (counter0(19) & (!\counter0[18]~62\)) # (!counter0(19) & ((\counter0[18]~62\) # (GND)))
-- \counter0[19]~64\ = CARRY((!\counter0[18]~62\) # (!counter0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(19),
	datad => VCC,
	cin => \counter0[18]~62\,
	combout => \counter0[19]~63_combout\,
	cout => \counter0[19]~64\);

-- Location: FF_X33_Y14_N15
\counter0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[19]~63_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(19));

-- Location: LCCOMB_X33_Y14_N16
\counter0[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[20]~65_combout\ = (counter0(20) & (\counter0[19]~64\ $ (GND))) # (!counter0(20) & (!\counter0[19]~64\ & VCC))
-- \counter0[20]~66\ = CARRY((counter0(20) & !\counter0[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(20),
	datad => VCC,
	cin => \counter0[19]~64\,
	combout => \counter0[20]~65_combout\,
	cout => \counter0[20]~66\);

-- Location: FF_X33_Y14_N17
\counter0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[20]~65_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(20));

-- Location: LCCOMB_X33_Y14_N18
\counter0[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[21]~67_combout\ = (counter0(21) & (!\counter0[20]~66\)) # (!counter0(21) & ((\counter0[20]~66\) # (GND)))
-- \counter0[21]~68\ = CARRY((!\counter0[20]~66\) # (!counter0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(21),
	datad => VCC,
	cin => \counter0[20]~66\,
	combout => \counter0[21]~67_combout\,
	cout => \counter0[21]~68\);

-- Location: FF_X33_Y14_N19
\counter0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[21]~67_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(21));

-- Location: LCCOMB_X33_Y14_N20
\counter0[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[22]~69_combout\ = (counter0(22) & (\counter0[21]~68\ $ (GND))) # (!counter0(22) & (!\counter0[21]~68\ & VCC))
-- \counter0[22]~70\ = CARRY((counter0(22) & !\counter0[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter0(22),
	datad => VCC,
	cin => \counter0[21]~68\,
	combout => \counter0[22]~69_combout\,
	cout => \counter0[22]~70\);

-- Location: FF_X33_Y14_N21
\counter0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[22]~69_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(22));

-- Location: LCCOMB_X33_Y14_N22
\counter0[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[23]~71_combout\ = (counter0(23) & (!\counter0[22]~70\)) # (!counter0(23) & ((\counter0[22]~70\) # (GND)))
-- \counter0[23]~72\ = CARRY((!\counter0[22]~70\) # (!counter0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter0(23),
	datad => VCC,
	cin => \counter0[22]~70\,
	combout => \counter0[23]~71_combout\,
	cout => \counter0[23]~72\);

-- Location: FF_X33_Y14_N23
\counter0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[23]~71_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(23));

-- Location: LCCOMB_X33_Y14_N24
\counter0[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter0[24]~73_combout\ = \counter0[23]~72\ $ (!counter0(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter0(24),
	cin => \counter0[23]~72\,
	combout => \counter0[24]~73_combout\);

-- Location: FF_X33_Y14_N25
\counter0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter0[24]~73_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter0(24));

-- Location: LCCOMB_X33_Y14_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!counter0(17) & !counter0(16))) # (!counter0(18))) # (!counter0(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(17),
	datab => counter0(16),
	datac => counter0(19),
	datad => counter0(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y14_N30
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!counter0(20))) # (!counter0(21))) # (!counter0(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(22),
	datab => counter0(21),
	datac => counter0(20),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y15_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!counter0(7) & (!counter0(6) & (!counter0(9) & !counter0(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(7),
	datab => counter0(6),
	datac => counter0(9),
	datad => counter0(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y15_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!counter0(13)) # (!counter0(11))) # (!counter0(12))) # (!counter0(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(14),
	datab => counter0(12),
	datac => counter0(11),
	datad => counter0(13),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y14_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter0(17) & (!counter0(23) & !counter0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(17),
	datac => counter0(23),
	datad => counter0(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y15_N0
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !counter0(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => counter0(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y15_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~3_combout\) # ((!counter0(23) & \LessThan0~5_combout\))) # (!counter0(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter0(23),
	datab => counter0(24),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y15_N4
\led0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led0~0_combout\ = \led0~reg0_q\ $ (!\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led0~reg0_q\,
	datad => \LessThan0~6_combout\,
	combout => \led0~0_combout\);

-- Location: FF_X32_Y15_N5
\led0~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led0~reg0_q\);

-- Location: LCCOMB_X29_Y14_N8
\counter1[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[0]~25_combout\ = counter1(0) $ (VCC)
-- \counter1[0]~26\ = CARRY(counter1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter1(0),
	datad => VCC,
	combout => \counter1[0]~25_combout\,
	cout => \counter1[0]~26\);

-- Location: FF_X29_Y14_N9
\counter1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[0]~25_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(0));

-- Location: LCCOMB_X29_Y14_N10
\counter1[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[1]~27_combout\ = (counter1(1) & (!\counter1[0]~26\)) # (!counter1(1) & ((\counter1[0]~26\) # (GND)))
-- \counter1[1]~28\ = CARRY((!\counter1[0]~26\) # (!counter1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(1),
	datad => VCC,
	cin => \counter1[0]~26\,
	combout => \counter1[1]~27_combout\,
	cout => \counter1[1]~28\);

-- Location: FF_X29_Y14_N11
\counter1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[1]~27_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(1));

-- Location: LCCOMB_X29_Y14_N12
\counter1[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[2]~29_combout\ = (counter1(2) & (\counter1[1]~28\ $ (GND))) # (!counter1(2) & (!\counter1[1]~28\ & VCC))
-- \counter1[2]~30\ = CARRY((counter1(2) & !\counter1[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(2),
	datad => VCC,
	cin => \counter1[1]~28\,
	combout => \counter1[2]~29_combout\,
	cout => \counter1[2]~30\);

-- Location: FF_X29_Y14_N13
\counter1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[2]~29_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(2));

-- Location: LCCOMB_X29_Y14_N14
\counter1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[3]~31_combout\ = (counter1(3) & (!\counter1[2]~30\)) # (!counter1(3) & ((\counter1[2]~30\) # (GND)))
-- \counter1[3]~32\ = CARRY((!\counter1[2]~30\) # (!counter1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(3),
	datad => VCC,
	cin => \counter1[2]~30\,
	combout => \counter1[3]~31_combout\,
	cout => \counter1[3]~32\);

-- Location: FF_X29_Y14_N15
\counter1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[3]~31_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(3));

-- Location: LCCOMB_X29_Y14_N16
\counter1[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[4]~33_combout\ = (counter1(4) & (\counter1[3]~32\ $ (GND))) # (!counter1(4) & (!\counter1[3]~32\ & VCC))
-- \counter1[4]~34\ = CARRY((counter1(4) & !\counter1[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(4),
	datad => VCC,
	cin => \counter1[3]~32\,
	combout => \counter1[4]~33_combout\,
	cout => \counter1[4]~34\);

-- Location: FF_X29_Y14_N17
\counter1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[4]~33_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(4));

-- Location: LCCOMB_X29_Y14_N18
\counter1[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[5]~35_combout\ = (counter1(5) & (!\counter1[4]~34\)) # (!counter1(5) & ((\counter1[4]~34\) # (GND)))
-- \counter1[5]~36\ = CARRY((!\counter1[4]~34\) # (!counter1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(5),
	datad => VCC,
	cin => \counter1[4]~34\,
	combout => \counter1[5]~35_combout\,
	cout => \counter1[5]~36\);

-- Location: FF_X29_Y14_N19
\counter1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[5]~35_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(5));

-- Location: LCCOMB_X29_Y14_N20
\counter1[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[6]~37_combout\ = (counter1(6) & (\counter1[5]~36\ $ (GND))) # (!counter1(6) & (!\counter1[5]~36\ & VCC))
-- \counter1[6]~38\ = CARRY((counter1(6) & !\counter1[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(6),
	datad => VCC,
	cin => \counter1[5]~36\,
	combout => \counter1[6]~37_combout\,
	cout => \counter1[6]~38\);

-- Location: FF_X29_Y14_N21
\counter1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[6]~37_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(6));

-- Location: LCCOMB_X29_Y14_N22
\counter1[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[7]~39_combout\ = (counter1(7) & (!\counter1[6]~38\)) # (!counter1(7) & ((\counter1[6]~38\) # (GND)))
-- \counter1[7]~40\ = CARRY((!\counter1[6]~38\) # (!counter1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(7),
	datad => VCC,
	cin => \counter1[6]~38\,
	combout => \counter1[7]~39_combout\,
	cout => \counter1[7]~40\);

-- Location: FF_X29_Y14_N23
\counter1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[7]~39_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(7));

-- Location: LCCOMB_X29_Y14_N24
\counter1[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[8]~41_combout\ = (counter1(8) & (\counter1[7]~40\ $ (GND))) # (!counter1(8) & (!\counter1[7]~40\ & VCC))
-- \counter1[8]~42\ = CARRY((counter1(8) & !\counter1[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(8),
	datad => VCC,
	cin => \counter1[7]~40\,
	combout => \counter1[8]~41_combout\,
	cout => \counter1[8]~42\);

-- Location: FF_X29_Y14_N25
\counter1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[8]~41_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(8));

-- Location: LCCOMB_X29_Y14_N26
\counter1[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[9]~43_combout\ = (counter1(9) & (!\counter1[8]~42\)) # (!counter1(9) & ((\counter1[8]~42\) # (GND)))
-- \counter1[9]~44\ = CARRY((!\counter1[8]~42\) # (!counter1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(9),
	datad => VCC,
	cin => \counter1[8]~42\,
	combout => \counter1[9]~43_combout\,
	cout => \counter1[9]~44\);

-- Location: FF_X29_Y14_N27
\counter1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[9]~43_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(9));

-- Location: LCCOMB_X29_Y14_N28
\counter1[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[10]~45_combout\ = (counter1(10) & (\counter1[9]~44\ $ (GND))) # (!counter1(10) & (!\counter1[9]~44\ & VCC))
-- \counter1[10]~46\ = CARRY((counter1(10) & !\counter1[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(10),
	datad => VCC,
	cin => \counter1[9]~44\,
	combout => \counter1[10]~45_combout\,
	cout => \counter1[10]~46\);

-- Location: FF_X29_Y14_N29
\counter1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[10]~45_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(10));

-- Location: LCCOMB_X29_Y14_N30
\counter1[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[11]~47_combout\ = (counter1(11) & (!\counter1[10]~46\)) # (!counter1(11) & ((\counter1[10]~46\) # (GND)))
-- \counter1[11]~48\ = CARRY((!\counter1[10]~46\) # (!counter1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datad => VCC,
	cin => \counter1[10]~46\,
	combout => \counter1[11]~47_combout\,
	cout => \counter1[11]~48\);

-- Location: FF_X29_Y14_N31
\counter1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[11]~47_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(11));

-- Location: LCCOMB_X29_Y13_N0
\counter1[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[12]~49_combout\ = (counter1(12) & (\counter1[11]~48\ $ (GND))) # (!counter1(12) & (!\counter1[11]~48\ & VCC))
-- \counter1[12]~50\ = CARRY((counter1(12) & !\counter1[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(12),
	datad => VCC,
	cin => \counter1[11]~48\,
	combout => \counter1[12]~49_combout\,
	cout => \counter1[12]~50\);

-- Location: FF_X29_Y13_N1
\counter1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[12]~49_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(12));

-- Location: LCCOMB_X29_Y13_N2
\counter1[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[13]~51_combout\ = (counter1(13) & (!\counter1[12]~50\)) # (!counter1(13) & ((\counter1[12]~50\) # (GND)))
-- \counter1[13]~52\ = CARRY((!\counter1[12]~50\) # (!counter1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(13),
	datad => VCC,
	cin => \counter1[12]~50\,
	combout => \counter1[13]~51_combout\,
	cout => \counter1[13]~52\);

-- Location: FF_X29_Y13_N3
\counter1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[13]~51_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(13));

-- Location: LCCOMB_X29_Y13_N4
\counter1[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[14]~53_combout\ = (counter1(14) & (\counter1[13]~52\ $ (GND))) # (!counter1(14) & (!\counter1[13]~52\ & VCC))
-- \counter1[14]~54\ = CARRY((counter1(14) & !\counter1[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(14),
	datad => VCC,
	cin => \counter1[13]~52\,
	combout => \counter1[14]~53_combout\,
	cout => \counter1[14]~54\);

-- Location: FF_X29_Y13_N5
\counter1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[14]~53_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(14));

-- Location: LCCOMB_X29_Y13_N6
\counter1[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[15]~55_combout\ = (counter1(15) & (!\counter1[14]~54\)) # (!counter1(15) & ((\counter1[14]~54\) # (GND)))
-- \counter1[15]~56\ = CARRY((!\counter1[14]~54\) # (!counter1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(15),
	datad => VCC,
	cin => \counter1[14]~54\,
	combout => \counter1[15]~55_combout\,
	cout => \counter1[15]~56\);

-- Location: FF_X29_Y13_N7
\counter1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[15]~55_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(15));

-- Location: LCCOMB_X29_Y13_N8
\counter1[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[16]~57_combout\ = (counter1(16) & (\counter1[15]~56\ $ (GND))) # (!counter1(16) & (!\counter1[15]~56\ & VCC))
-- \counter1[16]~58\ = CARRY((counter1(16) & !\counter1[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(16),
	datad => VCC,
	cin => \counter1[15]~56\,
	combout => \counter1[16]~57_combout\,
	cout => \counter1[16]~58\);

-- Location: FF_X29_Y13_N9
\counter1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[16]~57_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(16));

-- Location: LCCOMB_X29_Y13_N10
\counter1[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[17]~59_combout\ = (counter1(17) & (!\counter1[16]~58\)) # (!counter1(17) & ((\counter1[16]~58\) # (GND)))
-- \counter1[17]~60\ = CARRY((!\counter1[16]~58\) # (!counter1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(17),
	datad => VCC,
	cin => \counter1[16]~58\,
	combout => \counter1[17]~59_combout\,
	cout => \counter1[17]~60\);

-- Location: FF_X29_Y13_N11
\counter1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[17]~59_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(17));

-- Location: LCCOMB_X29_Y13_N12
\counter1[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[18]~61_combout\ = (counter1(18) & (\counter1[17]~60\ $ (GND))) # (!counter1(18) & (!\counter1[17]~60\ & VCC))
-- \counter1[18]~62\ = CARRY((counter1(18) & !\counter1[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(18),
	datad => VCC,
	cin => \counter1[17]~60\,
	combout => \counter1[18]~61_combout\,
	cout => \counter1[18]~62\);

-- Location: FF_X29_Y13_N13
\counter1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[18]~61_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(18));

-- Location: LCCOMB_X29_Y13_N14
\counter1[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[19]~63_combout\ = (counter1(19) & (!\counter1[18]~62\)) # (!counter1(19) & ((\counter1[18]~62\) # (GND)))
-- \counter1[19]~64\ = CARRY((!\counter1[18]~62\) # (!counter1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(19),
	datad => VCC,
	cin => \counter1[18]~62\,
	combout => \counter1[19]~63_combout\,
	cout => \counter1[19]~64\);

-- Location: FF_X29_Y13_N15
\counter1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[19]~63_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(19));

-- Location: LCCOMB_X29_Y13_N16
\counter1[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[20]~65_combout\ = (counter1(20) & (\counter1[19]~64\ $ (GND))) # (!counter1(20) & (!\counter1[19]~64\ & VCC))
-- \counter1[20]~66\ = CARRY((counter1(20) & !\counter1[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(20),
	datad => VCC,
	cin => \counter1[19]~64\,
	combout => \counter1[20]~65_combout\,
	cout => \counter1[20]~66\);

-- Location: FF_X29_Y13_N17
\counter1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[20]~65_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(20));

-- Location: LCCOMB_X29_Y13_N18
\counter1[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[21]~67_combout\ = (counter1(21) & (!\counter1[20]~66\)) # (!counter1(21) & ((\counter1[20]~66\) # (GND)))
-- \counter1[21]~68\ = CARRY((!\counter1[20]~66\) # (!counter1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(21),
	datad => VCC,
	cin => \counter1[20]~66\,
	combout => \counter1[21]~67_combout\,
	cout => \counter1[21]~68\);

-- Location: FF_X29_Y13_N19
\counter1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[21]~67_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(21));

-- Location: LCCOMB_X29_Y13_N20
\counter1[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[22]~69_combout\ = (counter1(22) & (\counter1[21]~68\ $ (GND))) # (!counter1(22) & (!\counter1[21]~68\ & VCC))
-- \counter1[22]~70\ = CARRY((counter1(22) & !\counter1[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter1(22),
	datad => VCC,
	cin => \counter1[21]~68\,
	combout => \counter1[22]~69_combout\,
	cout => \counter1[22]~70\);

-- Location: FF_X29_Y13_N21
\counter1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[22]~69_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(22));

-- Location: LCCOMB_X29_Y13_N22
\counter1[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[23]~71_combout\ = (counter1(23) & (!\counter1[22]~70\)) # (!counter1(23) & ((\counter1[22]~70\) # (GND)))
-- \counter1[23]~72\ = CARRY((!\counter1[22]~70\) # (!counter1(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter1(23),
	datad => VCC,
	cin => \counter1[22]~70\,
	combout => \counter1[23]~71_combout\,
	cout => \counter1[23]~72\);

-- Location: FF_X29_Y13_N23
\counter1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[23]~71_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(23));

-- Location: LCCOMB_X29_Y13_N24
\counter1[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter1[24]~73_combout\ = \counter1[23]~72\ $ (!counter1(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter1(24),
	cin => \counter1[23]~72\,
	combout => \counter1[24]~73_combout\);

-- Location: FF_X29_Y13_N25
\counter1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter1[24]~73_combout\,
	sclr => \ALT_INV_LessThan1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter1(24));

-- Location: LCCOMB_X29_Y14_N6
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!counter1(7) & (!counter1(5) & (!counter1(6) & !counter1(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(7),
	datab => counter1(5),
	datac => counter1(6),
	datad => counter1(8),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X29_Y14_N0
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!counter1(12)) # (!counter1(13))) # (!counter1(10))) # (!counter1(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(11),
	datab => counter1(10),
	datac => counter1(13),
	datad => counter1(12),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X29_Y14_N4
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~3_combout\) # ((\LessThan1~4_combout\ & !counter1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datac => counter1(9),
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X30_Y13_N12
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (!counter1(22) & (!counter1(14) & !counter1(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter1(22),
	datac => counter1(14),
	datad => counter1(16),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X29_Y13_N30
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!counter1(15) & !counter1(16))) # (!counter1(17))) # (!counter1(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(15),
	datab => counter1(16),
	datac => counter1(18),
	datad => counter1(17),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y13_N28
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((!counter1(20)) # (!counter1(19))) # (!counter1(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter1(21),
	datac => counter1(19),
	datad => counter1(20),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y13_N26
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = ((!counter1(22) & ((\LessThan1~0_combout\) # (\LessThan1~1_combout\)))) # (!counter1(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(23),
	datab => counter1(22),
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y14_N2
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (!counter1(24) & ((\LessThan1~2_combout\) # ((\LessThan1~5_combout\ & \LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter1(24),
	datab => \LessThan1~5_combout\,
	datac => \LessThan1~6_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X30_Y14_N24
\led1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = \led1~reg0_q\ $ (!\LessThan1~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \led1~reg0_q\,
	datad => \LessThan1~7_combout\,
	combout => \led1~0_combout\);

-- Location: FF_X30_Y14_N25
\led1~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1~reg0_q\);

-- Location: LCCOMB_X31_Y9_N8
\counter2[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[0]~25_combout\ = counter2(0) $ (VCC)
-- \counter2[0]~26\ = CARRY(counter2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(0),
	datad => VCC,
	combout => \counter2[0]~25_combout\,
	cout => \counter2[0]~26\);

-- Location: FF_X31_Y9_N9
\counter2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[0]~25_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(0));

-- Location: LCCOMB_X31_Y9_N10
\counter2[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[1]~27_combout\ = (counter2(1) & (!\counter2[0]~26\)) # (!counter2(1) & ((\counter2[0]~26\) # (GND)))
-- \counter2[1]~28\ = CARRY((!\counter2[0]~26\) # (!counter2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(1),
	datad => VCC,
	cin => \counter2[0]~26\,
	combout => \counter2[1]~27_combout\,
	cout => \counter2[1]~28\);

-- Location: FF_X31_Y9_N11
\counter2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[1]~27_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(1));

-- Location: LCCOMB_X31_Y9_N12
\counter2[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[2]~29_combout\ = (counter2(2) & (\counter2[1]~28\ $ (GND))) # (!counter2(2) & (!\counter2[1]~28\ & VCC))
-- \counter2[2]~30\ = CARRY((counter2(2) & !\counter2[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(2),
	datad => VCC,
	cin => \counter2[1]~28\,
	combout => \counter2[2]~29_combout\,
	cout => \counter2[2]~30\);

-- Location: FF_X31_Y9_N13
\counter2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[2]~29_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(2));

-- Location: LCCOMB_X31_Y9_N14
\counter2[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[3]~31_combout\ = (counter2(3) & (!\counter2[2]~30\)) # (!counter2(3) & ((\counter2[2]~30\) # (GND)))
-- \counter2[3]~32\ = CARRY((!\counter2[2]~30\) # (!counter2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(3),
	datad => VCC,
	cin => \counter2[2]~30\,
	combout => \counter2[3]~31_combout\,
	cout => \counter2[3]~32\);

-- Location: FF_X31_Y9_N15
\counter2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[3]~31_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(3));

-- Location: LCCOMB_X31_Y9_N16
\counter2[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[4]~33_combout\ = (counter2(4) & (\counter2[3]~32\ $ (GND))) # (!counter2(4) & (!\counter2[3]~32\ & VCC))
-- \counter2[4]~34\ = CARRY((counter2(4) & !\counter2[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(4),
	datad => VCC,
	cin => \counter2[3]~32\,
	combout => \counter2[4]~33_combout\,
	cout => \counter2[4]~34\);

-- Location: FF_X31_Y9_N17
\counter2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[4]~33_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(4));

-- Location: LCCOMB_X31_Y9_N18
\counter2[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[5]~35_combout\ = (counter2(5) & (!\counter2[4]~34\)) # (!counter2(5) & ((\counter2[4]~34\) # (GND)))
-- \counter2[5]~36\ = CARRY((!\counter2[4]~34\) # (!counter2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(5),
	datad => VCC,
	cin => \counter2[4]~34\,
	combout => \counter2[5]~35_combout\,
	cout => \counter2[5]~36\);

-- Location: FF_X31_Y9_N19
\counter2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[5]~35_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(5));

-- Location: LCCOMB_X31_Y9_N20
\counter2[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[6]~37_combout\ = (counter2(6) & (\counter2[5]~36\ $ (GND))) # (!counter2(6) & (!\counter2[5]~36\ & VCC))
-- \counter2[6]~38\ = CARRY((counter2(6) & !\counter2[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(6),
	datad => VCC,
	cin => \counter2[5]~36\,
	combout => \counter2[6]~37_combout\,
	cout => \counter2[6]~38\);

-- Location: FF_X31_Y9_N21
\counter2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[6]~37_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(6));

-- Location: LCCOMB_X31_Y9_N22
\counter2[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[7]~39_combout\ = (counter2(7) & (!\counter2[6]~38\)) # (!counter2(7) & ((\counter2[6]~38\) # (GND)))
-- \counter2[7]~40\ = CARRY((!\counter2[6]~38\) # (!counter2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(7),
	datad => VCC,
	cin => \counter2[6]~38\,
	combout => \counter2[7]~39_combout\,
	cout => \counter2[7]~40\);

-- Location: FF_X31_Y9_N23
\counter2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[7]~39_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(7));

-- Location: LCCOMB_X31_Y9_N24
\counter2[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[8]~41_combout\ = (counter2(8) & (\counter2[7]~40\ $ (GND))) # (!counter2(8) & (!\counter2[7]~40\ & VCC))
-- \counter2[8]~42\ = CARRY((counter2(8) & !\counter2[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(8),
	datad => VCC,
	cin => \counter2[7]~40\,
	combout => \counter2[8]~41_combout\,
	cout => \counter2[8]~42\);

-- Location: FF_X31_Y9_N25
\counter2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[8]~41_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(8));

-- Location: LCCOMB_X31_Y9_N26
\counter2[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[9]~43_combout\ = (counter2(9) & (!\counter2[8]~42\)) # (!counter2(9) & ((\counter2[8]~42\) # (GND)))
-- \counter2[9]~44\ = CARRY((!\counter2[8]~42\) # (!counter2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(9),
	datad => VCC,
	cin => \counter2[8]~42\,
	combout => \counter2[9]~43_combout\,
	cout => \counter2[9]~44\);

-- Location: FF_X31_Y9_N27
\counter2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[9]~43_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(9));

-- Location: LCCOMB_X31_Y9_N28
\counter2[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[10]~45_combout\ = (counter2(10) & (\counter2[9]~44\ $ (GND))) # (!counter2(10) & (!\counter2[9]~44\ & VCC))
-- \counter2[10]~46\ = CARRY((counter2(10) & !\counter2[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(10),
	datad => VCC,
	cin => \counter2[9]~44\,
	combout => \counter2[10]~45_combout\,
	cout => \counter2[10]~46\);

-- Location: FF_X31_Y9_N29
\counter2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[10]~45_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(10));

-- Location: LCCOMB_X31_Y9_N30
\counter2[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[11]~47_combout\ = (counter2(11) & (!\counter2[10]~46\)) # (!counter2(11) & ((\counter2[10]~46\) # (GND)))
-- \counter2[11]~48\ = CARRY((!\counter2[10]~46\) # (!counter2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(11),
	datad => VCC,
	cin => \counter2[10]~46\,
	combout => \counter2[11]~47_combout\,
	cout => \counter2[11]~48\);

-- Location: FF_X31_Y9_N31
\counter2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[11]~47_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(11));

-- Location: LCCOMB_X31_Y8_N0
\counter2[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[12]~49_combout\ = (counter2(12) & (\counter2[11]~48\ $ (GND))) # (!counter2(12) & (!\counter2[11]~48\ & VCC))
-- \counter2[12]~50\ = CARRY((counter2(12) & !\counter2[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(12),
	datad => VCC,
	cin => \counter2[11]~48\,
	combout => \counter2[12]~49_combout\,
	cout => \counter2[12]~50\);

-- Location: FF_X31_Y8_N1
\counter2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[12]~49_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(12));

-- Location: LCCOMB_X31_Y8_N2
\counter2[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[13]~51_combout\ = (counter2(13) & (!\counter2[12]~50\)) # (!counter2(13) & ((\counter2[12]~50\) # (GND)))
-- \counter2[13]~52\ = CARRY((!\counter2[12]~50\) # (!counter2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(13),
	datad => VCC,
	cin => \counter2[12]~50\,
	combout => \counter2[13]~51_combout\,
	cout => \counter2[13]~52\);

-- Location: FF_X31_Y8_N3
\counter2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[13]~51_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(13));

-- Location: LCCOMB_X31_Y8_N4
\counter2[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[14]~53_combout\ = (counter2(14) & (\counter2[13]~52\ $ (GND))) # (!counter2(14) & (!\counter2[13]~52\ & VCC))
-- \counter2[14]~54\ = CARRY((counter2(14) & !\counter2[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(14),
	datad => VCC,
	cin => \counter2[13]~52\,
	combout => \counter2[14]~53_combout\,
	cout => \counter2[14]~54\);

-- Location: FF_X31_Y8_N5
\counter2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[14]~53_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(14));

-- Location: LCCOMB_X31_Y8_N6
\counter2[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[15]~55_combout\ = (counter2(15) & (!\counter2[14]~54\)) # (!counter2(15) & ((\counter2[14]~54\) # (GND)))
-- \counter2[15]~56\ = CARRY((!\counter2[14]~54\) # (!counter2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datad => VCC,
	cin => \counter2[14]~54\,
	combout => \counter2[15]~55_combout\,
	cout => \counter2[15]~56\);

-- Location: FF_X31_Y8_N7
\counter2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[15]~55_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(15));

-- Location: LCCOMB_X31_Y8_N8
\counter2[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[16]~57_combout\ = (counter2(16) & (\counter2[15]~56\ $ (GND))) # (!counter2(16) & (!\counter2[15]~56\ & VCC))
-- \counter2[16]~58\ = CARRY((counter2(16) & !\counter2[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(16),
	datad => VCC,
	cin => \counter2[15]~56\,
	combout => \counter2[16]~57_combout\,
	cout => \counter2[16]~58\);

-- Location: FF_X31_Y8_N9
\counter2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[16]~57_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(16));

-- Location: LCCOMB_X31_Y8_N10
\counter2[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[17]~59_combout\ = (counter2(17) & (!\counter2[16]~58\)) # (!counter2(17) & ((\counter2[16]~58\) # (GND)))
-- \counter2[17]~60\ = CARRY((!\counter2[16]~58\) # (!counter2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(17),
	datad => VCC,
	cin => \counter2[16]~58\,
	combout => \counter2[17]~59_combout\,
	cout => \counter2[17]~60\);

-- Location: FF_X31_Y8_N11
\counter2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[17]~59_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(17));

-- Location: LCCOMB_X31_Y8_N12
\counter2[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[18]~61_combout\ = (counter2(18) & (\counter2[17]~60\ $ (GND))) # (!counter2(18) & (!\counter2[17]~60\ & VCC))
-- \counter2[18]~62\ = CARRY((counter2(18) & !\counter2[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(18),
	datad => VCC,
	cin => \counter2[17]~60\,
	combout => \counter2[18]~61_combout\,
	cout => \counter2[18]~62\);

-- Location: FF_X31_Y8_N13
\counter2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[18]~61_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(18));

-- Location: LCCOMB_X31_Y8_N14
\counter2[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[19]~63_combout\ = (counter2(19) & (!\counter2[18]~62\)) # (!counter2(19) & ((\counter2[18]~62\) # (GND)))
-- \counter2[19]~64\ = CARRY((!\counter2[18]~62\) # (!counter2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(19),
	datad => VCC,
	cin => \counter2[18]~62\,
	combout => \counter2[19]~63_combout\,
	cout => \counter2[19]~64\);

-- Location: FF_X31_Y8_N15
\counter2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[19]~63_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(19));

-- Location: LCCOMB_X31_Y8_N16
\counter2[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[20]~65_combout\ = (counter2(20) & (\counter2[19]~64\ $ (GND))) # (!counter2(20) & (!\counter2[19]~64\ & VCC))
-- \counter2[20]~66\ = CARRY((counter2(20) & !\counter2[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(20),
	datad => VCC,
	cin => \counter2[19]~64\,
	combout => \counter2[20]~65_combout\,
	cout => \counter2[20]~66\);

-- Location: FF_X31_Y8_N17
\counter2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[20]~65_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(20));

-- Location: LCCOMB_X31_Y8_N18
\counter2[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[21]~67_combout\ = (counter2(21) & (!\counter2[20]~66\)) # (!counter2(21) & ((\counter2[20]~66\) # (GND)))
-- \counter2[21]~68\ = CARRY((!\counter2[20]~66\) # (!counter2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter2(21),
	datad => VCC,
	cin => \counter2[20]~66\,
	combout => \counter2[21]~67_combout\,
	cout => \counter2[21]~68\);

-- Location: FF_X31_Y8_N19
\counter2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[21]~67_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(21));

-- Location: LCCOMB_X31_Y8_N20
\counter2[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[22]~69_combout\ = (counter2(22) & (\counter2[21]~68\ $ (GND))) # (!counter2(22) & (!\counter2[21]~68\ & VCC))
-- \counter2[22]~70\ = CARRY((counter2(22) & !\counter2[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(22),
	datad => VCC,
	cin => \counter2[21]~68\,
	combout => \counter2[22]~69_combout\,
	cout => \counter2[22]~70\);

-- Location: FF_X31_Y8_N21
\counter2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[22]~69_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(22));

-- Location: LCCOMB_X31_Y8_N22
\counter2[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[23]~71_combout\ = (counter2(23) & (!\counter2[22]~70\)) # (!counter2(23) & ((\counter2[22]~70\) # (GND)))
-- \counter2[23]~72\ = CARRY((!\counter2[22]~70\) # (!counter2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter2(23),
	datad => VCC,
	cin => \counter2[22]~70\,
	combout => \counter2[23]~71_combout\,
	cout => \counter2[23]~72\);

-- Location: FF_X31_Y8_N23
\counter2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[23]~71_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(23));

-- Location: LCCOMB_X31_Y8_N24
\counter2[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter2[24]~73_combout\ = \counter2[23]~72\ $ (!counter2(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter2(24),
	cin => \counter2[23]~72\,
	combout => \counter2[24]~73_combout\);

-- Location: FF_X31_Y8_N25
\counter2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2[24]~73_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter2(24));

-- Location: LCCOMB_X31_Y8_N30
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (((!counter2(15) & !counter2(14))) # (!counter2(17))) # (!counter2(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(15),
	datab => counter2(14),
	datac => counter2(16),
	datad => counter2(17),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X31_Y8_N28
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((!counter2(20)) # (!counter2(19))) # (!counter2(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(18),
	datac => counter2(19),
	datad => counter2(20),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X31_Y8_N26
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((!counter2(21) & ((\LessThan2~4_combout\) # (\LessThan2~5_combout\)))) # (!counter2(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(22),
	datab => counter2(21),
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X31_Y9_N4
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!counter2(12)) # (!counter2(11))) # (!counter2(10))) # (!counter2(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(9),
	datab => counter2(10),
	datac => counter2(11),
	datad => counter2(12),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X31_Y9_N2
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!counter2(7) & (!counter2(4) & (!counter2(5) & !counter2(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(7),
	datab => counter2(4),
	datac => counter2(5),
	datad => counter2(6),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X30_Y8_N0
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!counter2(21) & (!counter2(15) & !counter2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter2(21),
	datac => counter2(15),
	datad => counter2(13),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X31_Y9_N0
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~1_combout\) # ((!counter2(8) & \LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(8),
	datab => \LessThan2~1_combout\,
	datac => \LessThan2~2_combout\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X31_Y9_N6
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (!counter2(24) & (!counter2(23) & ((\LessThan2~6_combout\) # (\LessThan2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter2(24),
	datab => counter2(23),
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X32_Y9_N0
\led2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led2~0_combout\ = \LessThan2~7_combout\ $ (!\led2~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~7_combout\,
	datac => \led2~reg0_q\,
	combout => \led2~0_combout\);

-- Location: FF_X32_Y9_N1
\led2~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led2~reg0_q\);

-- Location: IOIBUF_X34_Y12_N22
\key0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key0,
	o => \key0~input_o\);

-- Location: LCCOMB_X33_Y9_N2
\key0Prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key0Prev~feeder_combout\ = \key0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key0~input_o\,
	combout => \key0Prev~feeder_combout\);

-- Location: FF_X33_Y9_N3
key0Prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key0Prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key0Prev~q\);

-- Location: LCCOMB_X33_Y9_N24
\led3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led3~0_combout\ = \led3~reg0_q\ $ (((\key0~input_o\ & !\key0Prev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key0~input_o\,
	datac => \led3~reg0_q\,
	datad => \key0Prev~q\,
	combout => \led3~0_combout\);

-- Location: FF_X33_Y9_N25
\led3~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led3~reg0_q\);

-- Location: IOIBUF_X34_Y12_N15
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: LCCOMB_X31_Y20_N6
\key1Prev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key1Prev~feeder_combout\ = \key1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1~input_o\,
	combout => \key1Prev~feeder_combout\);

-- Location: FF_X31_Y20_N7
key1Prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key1Prev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key1Prev~q\);

-- Location: IOIBUF_X34_Y12_N8
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: FF_X31_Y20_N1
key2Prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \key2~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key2Prev~q\);

-- Location: LCCOMB_X31_Y20_N0
\onBzzz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \onBzzz~0_combout\ = (\key2Prev~q\) # (!\key2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2~input_o\,
	datac => \key2Prev~q\,
	combout => \onBzzz~0_combout\);

-- Location: LCCOMB_X31_Y20_N2
\onBzzz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \onBzzz~1_combout\ = (\onBzzz~0_combout\ & ((\onBzzz~q\) # ((!\key1Prev~q\ & \key1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1Prev~q\,
	datab => \onBzzz~0_combout\,
	datac => \onBzzz~q\,
	datad => \key1~input_o\,
	combout => \onBzzz~1_combout\);

-- Location: FF_X31_Y20_N3
onBzzz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \onBzzz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \onBzzz~q\);

-- Location: LCCOMB_X32_Y20_N8
\counter3[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[0]~25_combout\ = counter3(0) $ (VCC)
-- \counter3[0]~26\ = CARRY(counter3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter3(0),
	datad => VCC,
	combout => \counter3[0]~25_combout\,
	cout => \counter3[0]~26\);

-- Location: FF_X32_Y20_N9
\counter3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[0]~25_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(0));

-- Location: LCCOMB_X32_Y20_N10
\counter3[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[1]~27_combout\ = (counter3(1) & (!\counter3[0]~26\)) # (!counter3(1) & ((\counter3[0]~26\) # (GND)))
-- \counter3[1]~28\ = CARRY((!\counter3[0]~26\) # (!counter3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(1),
	datad => VCC,
	cin => \counter3[0]~26\,
	combout => \counter3[1]~27_combout\,
	cout => \counter3[1]~28\);

-- Location: FF_X32_Y20_N11
\counter3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[1]~27_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(1));

-- Location: LCCOMB_X32_Y20_N12
\counter3[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[2]~29_combout\ = (counter3(2) & (\counter3[1]~28\ $ (GND))) # (!counter3(2) & (!\counter3[1]~28\ & VCC))
-- \counter3[2]~30\ = CARRY((counter3(2) & !\counter3[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(2),
	datad => VCC,
	cin => \counter3[1]~28\,
	combout => \counter3[2]~29_combout\,
	cout => \counter3[2]~30\);

-- Location: FF_X32_Y20_N13
\counter3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[2]~29_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(2));

-- Location: LCCOMB_X32_Y20_N14
\counter3[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[3]~31_combout\ = (counter3(3) & (!\counter3[2]~30\)) # (!counter3(3) & ((\counter3[2]~30\) # (GND)))
-- \counter3[3]~32\ = CARRY((!\counter3[2]~30\) # (!counter3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(3),
	datad => VCC,
	cin => \counter3[2]~30\,
	combout => \counter3[3]~31_combout\,
	cout => \counter3[3]~32\);

-- Location: FF_X32_Y20_N15
\counter3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[3]~31_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(3));

-- Location: LCCOMB_X32_Y20_N16
\counter3[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[4]~33_combout\ = (counter3(4) & (\counter3[3]~32\ $ (GND))) # (!counter3(4) & (!\counter3[3]~32\ & VCC))
-- \counter3[4]~34\ = CARRY((counter3(4) & !\counter3[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(4),
	datad => VCC,
	cin => \counter3[3]~32\,
	combout => \counter3[4]~33_combout\,
	cout => \counter3[4]~34\);

-- Location: FF_X32_Y20_N17
\counter3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[4]~33_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(4));

-- Location: LCCOMB_X32_Y20_N18
\counter3[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[5]~35_combout\ = (counter3(5) & (!\counter3[4]~34\)) # (!counter3(5) & ((\counter3[4]~34\) # (GND)))
-- \counter3[5]~36\ = CARRY((!\counter3[4]~34\) # (!counter3(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(5),
	datad => VCC,
	cin => \counter3[4]~34\,
	combout => \counter3[5]~35_combout\,
	cout => \counter3[5]~36\);

-- Location: FF_X32_Y20_N19
\counter3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[5]~35_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(5));

-- Location: LCCOMB_X32_Y20_N20
\counter3[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[6]~37_combout\ = (counter3(6) & (\counter3[5]~36\ $ (GND))) # (!counter3(6) & (!\counter3[5]~36\ & VCC))
-- \counter3[6]~38\ = CARRY((counter3(6) & !\counter3[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(6),
	datad => VCC,
	cin => \counter3[5]~36\,
	combout => \counter3[6]~37_combout\,
	cout => \counter3[6]~38\);

-- Location: FF_X32_Y20_N21
\counter3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[6]~37_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(6));

-- Location: LCCOMB_X32_Y20_N22
\counter3[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[7]~39_combout\ = (counter3(7) & (!\counter3[6]~38\)) # (!counter3(7) & ((\counter3[6]~38\) # (GND)))
-- \counter3[7]~40\ = CARRY((!\counter3[6]~38\) # (!counter3(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(7),
	datad => VCC,
	cin => \counter3[6]~38\,
	combout => \counter3[7]~39_combout\,
	cout => \counter3[7]~40\);

-- Location: FF_X32_Y20_N23
\counter3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[7]~39_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(7));

-- Location: LCCOMB_X32_Y20_N24
\counter3[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[8]~41_combout\ = (counter3(8) & (\counter3[7]~40\ $ (GND))) # (!counter3(8) & (!\counter3[7]~40\ & VCC))
-- \counter3[8]~42\ = CARRY((counter3(8) & !\counter3[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(8),
	datad => VCC,
	cin => \counter3[7]~40\,
	combout => \counter3[8]~41_combout\,
	cout => \counter3[8]~42\);

-- Location: FF_X32_Y20_N25
\counter3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[8]~41_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(8));

-- Location: LCCOMB_X32_Y20_N26
\counter3[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[9]~43_combout\ = (counter3(9) & (!\counter3[8]~42\)) # (!counter3(9) & ((\counter3[8]~42\) # (GND)))
-- \counter3[9]~44\ = CARRY((!\counter3[8]~42\) # (!counter3(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(9),
	datad => VCC,
	cin => \counter3[8]~42\,
	combout => \counter3[9]~43_combout\,
	cout => \counter3[9]~44\);

-- Location: FF_X32_Y20_N27
\counter3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[9]~43_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(9));

-- Location: LCCOMB_X32_Y20_N28
\counter3[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[10]~45_combout\ = (counter3(10) & (\counter3[9]~44\ $ (GND))) # (!counter3(10) & (!\counter3[9]~44\ & VCC))
-- \counter3[10]~46\ = CARRY((counter3(10) & !\counter3[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(10),
	datad => VCC,
	cin => \counter3[9]~44\,
	combout => \counter3[10]~45_combout\,
	cout => \counter3[10]~46\);

-- Location: FF_X32_Y20_N29
\counter3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[10]~45_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(10));

-- Location: LCCOMB_X32_Y20_N30
\counter3[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[11]~47_combout\ = (counter3(11) & (!\counter3[10]~46\)) # (!counter3(11) & ((\counter3[10]~46\) # (GND)))
-- \counter3[11]~48\ = CARRY((!\counter3[10]~46\) # (!counter3(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(11),
	datad => VCC,
	cin => \counter3[10]~46\,
	combout => \counter3[11]~47_combout\,
	cout => \counter3[11]~48\);

-- Location: FF_X32_Y20_N31
\counter3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[11]~47_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(11));

-- Location: LCCOMB_X32_Y19_N0
\counter3[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[12]~49_combout\ = (counter3(12) & (\counter3[11]~48\ $ (GND))) # (!counter3(12) & (!\counter3[11]~48\ & VCC))
-- \counter3[12]~50\ = CARRY((counter3(12) & !\counter3[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(12),
	datad => VCC,
	cin => \counter3[11]~48\,
	combout => \counter3[12]~49_combout\,
	cout => \counter3[12]~50\);

-- Location: FF_X32_Y19_N1
\counter3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[12]~49_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(12));

-- Location: LCCOMB_X32_Y19_N2
\counter3[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[13]~51_combout\ = (counter3(13) & (!\counter3[12]~50\)) # (!counter3(13) & ((\counter3[12]~50\) # (GND)))
-- \counter3[13]~52\ = CARRY((!\counter3[12]~50\) # (!counter3(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(13),
	datad => VCC,
	cin => \counter3[12]~50\,
	combout => \counter3[13]~51_combout\,
	cout => \counter3[13]~52\);

-- Location: FF_X32_Y19_N3
\counter3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[13]~51_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(13));

-- Location: LCCOMB_X32_Y20_N0
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!counter3(13) & (((!counter3(12)) # (!counter3(10))) # (!counter3(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(11),
	datab => counter3(10),
	datac => counter3(13),
	datad => counter3(12),
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X32_Y19_N4
\counter3[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[14]~53_combout\ = (counter3(14) & (\counter3[13]~52\ $ (GND))) # (!counter3(14) & (!\counter3[13]~52\ & VCC))
-- \counter3[14]~54\ = CARRY((counter3(14) & !\counter3[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(14),
	datad => VCC,
	cin => \counter3[13]~52\,
	combout => \counter3[14]~53_combout\,
	cout => \counter3[14]~54\);

-- Location: FF_X32_Y19_N5
\counter3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[14]~53_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(14));

-- Location: LCCOMB_X32_Y19_N6
\counter3[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[15]~55_combout\ = (counter3(15) & (!\counter3[14]~54\)) # (!counter3(15) & ((\counter3[14]~54\) # (GND)))
-- \counter3[15]~56\ = CARRY((!\counter3[14]~54\) # (!counter3(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(15),
	datad => VCC,
	cin => \counter3[14]~54\,
	combout => \counter3[15]~55_combout\,
	cout => \counter3[15]~56\);

-- Location: FF_X32_Y19_N7
\counter3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[15]~55_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(15));

-- Location: LCCOMB_X33_Y19_N0
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (!counter3(14)) # (!counter3(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter3(15),
	datac => counter3(14),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X32_Y20_N2
\LessThan3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~6_combout\ = (((!counter3(8)) # (!counter3(6))) # (!counter3(5))) # (!counter3(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(7),
	datab => counter3(5),
	datac => counter3(6),
	datad => counter3(8),
	combout => \LessThan3~6_combout\);

-- Location: LCCOMB_X33_Y20_N4
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_combout\ = ((!counter3(1) & (!counter3(2) & !counter3(3)))) # (!counter3(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(1),
	datab => counter3(2),
	datac => counter3(4),
	datad => counter3(3),
	combout => \LessThan3~5_combout\);

-- Location: LCCOMB_X32_Y20_N4
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_combout\ = (!counter3(9) & (!counter3(13) & ((\LessThan3~6_combout\) # (\LessThan3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(9),
	datab => \LessThan3~6_combout\,
	datac => counter3(13),
	datad => \LessThan3~5_combout\,
	combout => \LessThan3~7_combout\);

-- Location: LCCOMB_X32_Y19_N8
\counter3[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[16]~57_combout\ = (counter3(16) & (\counter3[15]~56\ $ (GND))) # (!counter3(16) & (!\counter3[15]~56\ & VCC))
-- \counter3[16]~58\ = CARRY((counter3(16) & !\counter3[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(16),
	datad => VCC,
	cin => \counter3[15]~56\,
	combout => \counter3[16]~57_combout\,
	cout => \counter3[16]~58\);

-- Location: FF_X32_Y19_N9
\counter3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[16]~57_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(16));

-- Location: LCCOMB_X32_Y19_N10
\counter3[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[17]~59_combout\ = (counter3(17) & (!\counter3[16]~58\)) # (!counter3(17) & ((\counter3[16]~58\) # (GND)))
-- \counter3[17]~60\ = CARRY((!\counter3[16]~58\) # (!counter3(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(17),
	datad => VCC,
	cin => \counter3[16]~58\,
	combout => \counter3[17]~59_combout\,
	cout => \counter3[17]~60\);

-- Location: FF_X32_Y19_N11
\counter3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[17]~59_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(17));

-- Location: LCCOMB_X32_Y19_N12
\counter3[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[18]~61_combout\ = (counter3(18) & (\counter3[17]~60\ $ (GND))) # (!counter3(18) & (!\counter3[17]~60\ & VCC))
-- \counter3[18]~62\ = CARRY((counter3(18) & !\counter3[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter3(18),
	datad => VCC,
	cin => \counter3[17]~60\,
	combout => \counter3[18]~61_combout\,
	cout => \counter3[18]~62\);

-- Location: FF_X32_Y19_N13
\counter3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[18]~61_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(18));

-- Location: LCCOMB_X32_Y19_N14
\counter3[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[19]~63_combout\ = (counter3(19) & (!\counter3[18]~62\)) # (!counter3(19) & ((\counter3[18]~62\) # (GND)))
-- \counter3[19]~64\ = CARRY((!\counter3[18]~62\) # (!counter3(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(19),
	datad => VCC,
	cin => \counter3[18]~62\,
	combout => \counter3[19]~63_combout\,
	cout => \counter3[19]~64\);

-- Location: FF_X32_Y19_N15
\counter3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[19]~63_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(19));

-- Location: LCCOMB_X32_Y19_N16
\counter3[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[20]~65_combout\ = (counter3(20) & (\counter3[19]~64\ $ (GND))) # (!counter3(20) & (!\counter3[19]~64\ & VCC))
-- \counter3[20]~66\ = CARRY((counter3(20) & !\counter3[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(20),
	datad => VCC,
	cin => \counter3[19]~64\,
	combout => \counter3[20]~65_combout\,
	cout => \counter3[20]~66\);

-- Location: FF_X32_Y19_N17
\counter3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[20]~65_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(20));

-- Location: LCCOMB_X32_Y19_N18
\counter3[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[21]~67_combout\ = (counter3(21) & (!\counter3[20]~66\)) # (!counter3(21) & ((\counter3[20]~66\) # (GND)))
-- \counter3[21]~68\ = CARRY((!\counter3[20]~66\) # (!counter3(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(21),
	datad => VCC,
	cin => \counter3[20]~66\,
	combout => \counter3[21]~67_combout\,
	cout => \counter3[21]~68\);

-- Location: FF_X32_Y19_N19
\counter3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[21]~67_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(21));

-- Location: LCCOMB_X32_Y19_N20
\counter3[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[22]~69_combout\ = (counter3(22) & (\counter3[21]~68\ $ (GND))) # (!counter3(22) & (!\counter3[21]~68\ & VCC))
-- \counter3[22]~70\ = CARRY((counter3(22) & !\counter3[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(22),
	datad => VCC,
	cin => \counter3[21]~68\,
	combout => \counter3[22]~69_combout\,
	cout => \counter3[22]~70\);

-- Location: FF_X32_Y19_N21
\counter3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[22]~69_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(22));

-- Location: LCCOMB_X32_Y19_N22
\counter3[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[23]~71_combout\ = (counter3(23) & (!\counter3[22]~70\)) # (!counter3(23) & ((\counter3[22]~70\) # (GND)))
-- \counter3[23]~72\ = CARRY((!\counter3[22]~70\) # (!counter3(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter3(23),
	datad => VCC,
	cin => \counter3[22]~70\,
	combout => \counter3[23]~71_combout\,
	cout => \counter3[23]~72\);

-- Location: FF_X32_Y19_N23
\counter3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[23]~71_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(23));

-- Location: LCCOMB_X32_Y19_N24
\counter3[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter3[24]~73_combout\ = \counter3[23]~72\ $ (!counter3(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter3(24),
	cin => \counter3[23]~72\,
	combout => \counter3[24]~73_combout\);

-- Location: FF_X32_Y19_N25
\counter3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter3[24]~73_combout\,
	sclr => \ALT_INV_LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter3(24));

-- Location: LCCOMB_X32_Y19_N30
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!counter3(18) & (!counter3(19) & (!counter3(16) & !counter3(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(18),
	datab => counter3(19),
	datac => counter3(16),
	datad => counter3(17),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X32_Y19_N28
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!counter3(22) & (!counter3(20) & (!counter3(23) & !counter3(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter3(22),
	datab => counter3(20),
	datac => counter3(23),
	datad => counter3(21),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X32_Y19_N26
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!counter3(24) & (\LessThan3~0_combout\ & \LessThan3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter3(24),
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X32_Y20_N6
\LessThan3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~8_combout\ = (\LessThan3~2_combout\ & ((\LessThan3~4_combout\) # ((\LessThan3~3_combout\) # (\LessThan3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~4_combout\,
	datab => \LessThan3~3_combout\,
	datac => \LessThan3~7_combout\,
	datad => \LessThan3~2_combout\,
	combout => \LessThan3~8_combout\);

-- Location: LCCOMB_X31_Y20_N4
\bzzz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bzzz~0_combout\ = (\bzzz~reg0_q\ & ((\LessThan3~8_combout\))) # (!\bzzz~reg0_q\ & (\onBzzz~q\ & !\LessThan3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \onBzzz~q\,
	datac => \bzzz~reg0_q\,
	datad => \LessThan3~8_combout\,
	combout => \bzzz~0_combout\);

-- Location: FF_X31_Y20_N5
\bzzz~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bzzz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bzzz~reg0_q\);

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_bzzz <= \bzzz~output_o\;
END structure;


