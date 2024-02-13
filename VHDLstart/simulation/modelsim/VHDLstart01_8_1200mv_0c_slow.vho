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

-- DATE "02/13/2024 15:18:14"

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

ENTITY 	VHDLstart01 IS
    PORT (
	clk : IN std_logic;
	button0 : IN std_logic;
	button1 : IN std_logic;
	button2 : IN std_logic;
	led0 : OUT std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	buzz : OUT std_logic
	);
END VHDLstart01;

-- Design Ports Information
-- led0	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led2	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led3	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- buzz	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- button0	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button1	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button2	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VHDLstart01 IS
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
SIGNAL ww_button0 : std_logic;
SIGNAL ww_button1 : std_logic;
SIGNAL ww_button2 : std_logic;
SIGNAL ww_led0 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_buzz : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led0~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \buzz~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_counter_0[0]~25_combout\ : std_logic;
SIGNAL \clk_counter_0[0]~26\ : std_logic;
SIGNAL \clk_counter_0[1]~27_combout\ : std_logic;
SIGNAL \clk_counter_0[1]~28\ : std_logic;
SIGNAL \clk_counter_0[2]~29_combout\ : std_logic;
SIGNAL \clk_counter_0[2]~30\ : std_logic;
SIGNAL \clk_counter_0[3]~31_combout\ : std_logic;
SIGNAL \clk_counter_0[3]~32\ : std_logic;
SIGNAL \clk_counter_0[4]~33_combout\ : std_logic;
SIGNAL \clk_counter_0[4]~34\ : std_logic;
SIGNAL \clk_counter_0[5]~35_combout\ : std_logic;
SIGNAL \clk_counter_0[5]~36\ : std_logic;
SIGNAL \clk_counter_0[6]~37_combout\ : std_logic;
SIGNAL \clk_counter_0[6]~38\ : std_logic;
SIGNAL \clk_counter_0[7]~39_combout\ : std_logic;
SIGNAL \clk_counter_0[7]~40\ : std_logic;
SIGNAL \clk_counter_0[8]~41_combout\ : std_logic;
SIGNAL \clk_counter_0[8]~42\ : std_logic;
SIGNAL \clk_counter_0[9]~43_combout\ : std_logic;
SIGNAL \clk_counter_0[9]~44\ : std_logic;
SIGNAL \clk_counter_0[10]~45_combout\ : std_logic;
SIGNAL \clk_counter_0[10]~46\ : std_logic;
SIGNAL \clk_counter_0[11]~47_combout\ : std_logic;
SIGNAL \clk_counter_0[11]~48\ : std_logic;
SIGNAL \clk_counter_0[12]~49_combout\ : std_logic;
SIGNAL \clk_counter_0[12]~50\ : std_logic;
SIGNAL \clk_counter_0[13]~51_combout\ : std_logic;
SIGNAL \clk_counter_0[13]~52\ : std_logic;
SIGNAL \clk_counter_0[14]~53_combout\ : std_logic;
SIGNAL \clk_counter_0[14]~54\ : std_logic;
SIGNAL \clk_counter_0[15]~55_combout\ : std_logic;
SIGNAL \clk_counter_0[15]~56\ : std_logic;
SIGNAL \clk_counter_0[16]~57_combout\ : std_logic;
SIGNAL \clk_counter_0[16]~58\ : std_logic;
SIGNAL \clk_counter_0[17]~59_combout\ : std_logic;
SIGNAL \clk_counter_0[17]~60\ : std_logic;
SIGNAL \clk_counter_0[18]~61_combout\ : std_logic;
SIGNAL \clk_counter_0[18]~62\ : std_logic;
SIGNAL \clk_counter_0[19]~63_combout\ : std_logic;
SIGNAL \clk_counter_0[19]~64\ : std_logic;
SIGNAL \clk_counter_0[20]~65_combout\ : std_logic;
SIGNAL \clk_counter_0[20]~66\ : std_logic;
SIGNAL \clk_counter_0[21]~67_combout\ : std_logic;
SIGNAL \clk_counter_0[21]~68\ : std_logic;
SIGNAL \clk_counter_0[22]~69_combout\ : std_logic;
SIGNAL \clk_counter_0[22]~70\ : std_logic;
SIGNAL \clk_counter_0[23]~71_combout\ : std_logic;
SIGNAL \clk_counter_0[23]~72\ : std_logic;
SIGNAL \clk_counter_0[24]~73_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \blinker_0~0_combout\ : std_logic;
SIGNAL \blinker_0~q\ : std_logic;
SIGNAL \clk_counter_1[0]~24_combout\ : std_logic;
SIGNAL \clk_counter_1[0]~25\ : std_logic;
SIGNAL \clk_counter_1[1]~26_combout\ : std_logic;
SIGNAL \clk_counter_1[1]~27\ : std_logic;
SIGNAL \clk_counter_1[2]~28_combout\ : std_logic;
SIGNAL \clk_counter_1[2]~29\ : std_logic;
SIGNAL \clk_counter_1[3]~30_combout\ : std_logic;
SIGNAL \clk_counter_1[3]~31\ : std_logic;
SIGNAL \clk_counter_1[4]~32_combout\ : std_logic;
SIGNAL \clk_counter_1[4]~33\ : std_logic;
SIGNAL \clk_counter_1[5]~34_combout\ : std_logic;
SIGNAL \clk_counter_1[5]~35\ : std_logic;
SIGNAL \clk_counter_1[6]~36_combout\ : std_logic;
SIGNAL \clk_counter_1[6]~37\ : std_logic;
SIGNAL \clk_counter_1[7]~38_combout\ : std_logic;
SIGNAL \clk_counter_1[7]~39\ : std_logic;
SIGNAL \clk_counter_1[8]~40_combout\ : std_logic;
SIGNAL \clk_counter_1[8]~41\ : std_logic;
SIGNAL \clk_counter_1[9]~42_combout\ : std_logic;
SIGNAL \clk_counter_1[9]~43\ : std_logic;
SIGNAL \clk_counter_1[10]~44_combout\ : std_logic;
SIGNAL \clk_counter_1[10]~45\ : std_logic;
SIGNAL \clk_counter_1[11]~46_combout\ : std_logic;
SIGNAL \clk_counter_1[11]~47\ : std_logic;
SIGNAL \clk_counter_1[12]~48_combout\ : std_logic;
SIGNAL \clk_counter_1[12]~49\ : std_logic;
SIGNAL \clk_counter_1[13]~50_combout\ : std_logic;
SIGNAL \clk_counter_1[13]~51\ : std_logic;
SIGNAL \clk_counter_1[14]~52_combout\ : std_logic;
SIGNAL \clk_counter_1[14]~53\ : std_logic;
SIGNAL \clk_counter_1[15]~54_combout\ : std_logic;
SIGNAL \clk_counter_1[15]~55\ : std_logic;
SIGNAL \clk_counter_1[16]~56_combout\ : std_logic;
SIGNAL \clk_counter_1[16]~57\ : std_logic;
SIGNAL \clk_counter_1[17]~58_combout\ : std_logic;
SIGNAL \clk_counter_1[17]~59\ : std_logic;
SIGNAL \clk_counter_1[18]~60_combout\ : std_logic;
SIGNAL \clk_counter_1[18]~61\ : std_logic;
SIGNAL \clk_counter_1[19]~62_combout\ : std_logic;
SIGNAL \clk_counter_1[19]~63\ : std_logic;
SIGNAL \clk_counter_1[20]~64_combout\ : std_logic;
SIGNAL \clk_counter_1[20]~65\ : std_logic;
SIGNAL \clk_counter_1[21]~66_combout\ : std_logic;
SIGNAL \clk_counter_1[21]~67\ : std_logic;
SIGNAL \clk_counter_1[22]~68_combout\ : std_logic;
SIGNAL \clk_counter_1[22]~69\ : std_logic;
SIGNAL \clk_counter_1[23]~70_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \blinker_1~0_combout\ : std_logic;
SIGNAL \blinker_1~q\ : std_logic;
SIGNAL \clk_counter_2[0]~23_combout\ : std_logic;
SIGNAL \clk_counter_2[0]~24\ : std_logic;
SIGNAL \clk_counter_2[1]~25_combout\ : std_logic;
SIGNAL \clk_counter_2[1]~26\ : std_logic;
SIGNAL \clk_counter_2[2]~27_combout\ : std_logic;
SIGNAL \clk_counter_2[2]~28\ : std_logic;
SIGNAL \clk_counter_2[3]~29_combout\ : std_logic;
SIGNAL \clk_counter_2[3]~30\ : std_logic;
SIGNAL \clk_counter_2[4]~31_combout\ : std_logic;
SIGNAL \clk_counter_2[4]~32\ : std_logic;
SIGNAL \clk_counter_2[5]~33_combout\ : std_logic;
SIGNAL \clk_counter_2[5]~34\ : std_logic;
SIGNAL \clk_counter_2[6]~35_combout\ : std_logic;
SIGNAL \clk_counter_2[6]~36\ : std_logic;
SIGNAL \clk_counter_2[7]~37_combout\ : std_logic;
SIGNAL \clk_counter_2[7]~38\ : std_logic;
SIGNAL \clk_counter_2[8]~39_combout\ : std_logic;
SIGNAL \clk_counter_2[8]~40\ : std_logic;
SIGNAL \clk_counter_2[9]~41_combout\ : std_logic;
SIGNAL \clk_counter_2[9]~42\ : std_logic;
SIGNAL \clk_counter_2[10]~43_combout\ : std_logic;
SIGNAL \clk_counter_2[10]~44\ : std_logic;
SIGNAL \clk_counter_2[11]~45_combout\ : std_logic;
SIGNAL \clk_counter_2[11]~46\ : std_logic;
SIGNAL \clk_counter_2[12]~47_combout\ : std_logic;
SIGNAL \clk_counter_2[12]~48\ : std_logic;
SIGNAL \clk_counter_2[13]~49_combout\ : std_logic;
SIGNAL \clk_counter_2[13]~50\ : std_logic;
SIGNAL \clk_counter_2[14]~51_combout\ : std_logic;
SIGNAL \clk_counter_2[14]~52\ : std_logic;
SIGNAL \clk_counter_2[15]~53_combout\ : std_logic;
SIGNAL \clk_counter_2[15]~54\ : std_logic;
SIGNAL \clk_counter_2[16]~55_combout\ : std_logic;
SIGNAL \clk_counter_2[16]~56\ : std_logic;
SIGNAL \clk_counter_2[17]~57_combout\ : std_logic;
SIGNAL \clk_counter_2[17]~58\ : std_logic;
SIGNAL \clk_counter_2[18]~59_combout\ : std_logic;
SIGNAL \clk_counter_2[18]~60\ : std_logic;
SIGNAL \clk_counter_2[19]~61_combout\ : std_logic;
SIGNAL \clk_counter_2[19]~62\ : std_logic;
SIGNAL \clk_counter_2[20]~63_combout\ : std_logic;
SIGNAL \clk_counter_2[20]~64\ : std_logic;
SIGNAL \clk_counter_2[21]~65_combout\ : std_logic;
SIGNAL \clk_counter_2[21]~66\ : std_logic;
SIGNAL \clk_counter_2[22]~67_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \blinker_2~0_combout\ : std_logic;
SIGNAL \blinker_2~q\ : std_logic;
SIGNAL \button0~input_o\ : std_logic;
SIGNAL \buttonPrev0~0_combout\ : std_logic;
SIGNAL \buttonPrev0~q\ : std_logic;
SIGNAL \blinker_3~0_combout\ : std_logic;
SIGNAL \blinker_3~q\ : std_logic;
SIGNAL \button2~input_o\ : std_logic;
SIGNAL \buttonPrev2~0_combout\ : std_logic;
SIGNAL \buttonPrev2~q\ : std_logic;
SIGNAL \button1~input_o\ : std_logic;
SIGNAL \buttonPrev1~0_combout\ : std_logic;
SIGNAL \buttonPrev1~q\ : std_logic;
SIGNAL \enBuzz~0_combout\ : std_logic;
SIGNAL \enBuzz~1_combout\ : std_logic;
SIGNAL \enBuzz~q\ : std_logic;
SIGNAL \clk_counter_buzz[0]~16_combout\ : std_logic;
SIGNAL \clk_counter_buzz[12]~41\ : std_logic;
SIGNAL \clk_counter_buzz[13]~42_combout\ : std_logic;
SIGNAL \clk_counter_buzz[13]~43\ : std_logic;
SIGNAL \clk_counter_buzz[14]~44_combout\ : std_logic;
SIGNAL \clk_counter_buzz[14]~45\ : std_logic;
SIGNAL \clk_counter_buzz[15]~47_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \clk_counter_buzz[15]~46_combout\ : std_logic;
SIGNAL \clk_counter_buzz[0]~17\ : std_logic;
SIGNAL \clk_counter_buzz[1]~18_combout\ : std_logic;
SIGNAL \clk_counter_buzz[1]~19\ : std_logic;
SIGNAL \clk_counter_buzz[2]~20_combout\ : std_logic;
SIGNAL \clk_counter_buzz[2]~21\ : std_logic;
SIGNAL \clk_counter_buzz[3]~22_combout\ : std_logic;
SIGNAL \clk_counter_buzz[3]~23\ : std_logic;
SIGNAL \clk_counter_buzz[4]~24_combout\ : std_logic;
SIGNAL \clk_counter_buzz[4]~25\ : std_logic;
SIGNAL \clk_counter_buzz[5]~26_combout\ : std_logic;
SIGNAL \clk_counter_buzz[5]~27\ : std_logic;
SIGNAL \clk_counter_buzz[6]~28_combout\ : std_logic;
SIGNAL \clk_counter_buzz[6]~29\ : std_logic;
SIGNAL \clk_counter_buzz[7]~30_combout\ : std_logic;
SIGNAL \clk_counter_buzz[7]~31\ : std_logic;
SIGNAL \clk_counter_buzz[8]~32_combout\ : std_logic;
SIGNAL \clk_counter_buzz[8]~33\ : std_logic;
SIGNAL \clk_counter_buzz[9]~34_combout\ : std_logic;
SIGNAL \clk_counter_buzz[9]~35\ : std_logic;
SIGNAL \clk_counter_buzz[10]~36_combout\ : std_logic;
SIGNAL \clk_counter_buzz[10]~37\ : std_logic;
SIGNAL \clk_counter_buzz[11]~38_combout\ : std_logic;
SIGNAL \clk_counter_buzz[11]~39\ : std_logic;
SIGNAL \clk_counter_buzz[12]~40_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \buzzer~0_combout\ : std_logic;
SIGNAL \buzzer~1_combout\ : std_logic;
SIGNAL \buzzer~q\ : std_logic;
SIGNAL clk_counter_buzz : std_logic_vector(15 DOWNTO 0);
SIGNAL clk_counter_2 : std_logic_vector(22 DOWNTO 0);
SIGNAL clk_counter_1 : std_logic_vector(23 DOWNTO 0);
SIGNAL clk_counter_0 : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_buzzer~q\ : std_logic;
SIGNAL \ALT_INV_blinker_3~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_button0 <= button0;
ww_button1 <= button1;
ww_button2 <= button2;
led0 <= ww_led0;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
buzz <= ww_buzz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
\ALT_INV_LessThan1~6_combout\ <= NOT \LessThan1~6_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_buzzer~q\ <= NOT \buzzer~q\;
\ALT_INV_blinker_3~q\ <= NOT \blinker_3~q\;

-- Location: IOOBUF_X34_Y9_N9
\led0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \blinker_0~q\,
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
	i => \blinker_1~q\,
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
	i => \blinker_2~q\,
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
	i => \ALT_INV_blinker_3~q\,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\buzz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_buzzer~q\,
	devoe => ww_devoe,
	o => \buzz~output_o\);

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

-- Location: LCCOMB_X29_Y10_N8
\clk_counter_0[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[0]~25_combout\ = clk_counter_0(0) $ (VCC)
-- \clk_counter_0[0]~26\ = CARRY(clk_counter_0(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(0),
	datad => VCC,
	combout => \clk_counter_0[0]~25_combout\,
	cout => \clk_counter_0[0]~26\);

-- Location: FF_X29_Y10_N9
\clk_counter_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[0]~25_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(0));

-- Location: LCCOMB_X29_Y10_N10
\clk_counter_0[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[1]~27_combout\ = (clk_counter_0(1) & (!\clk_counter_0[0]~26\)) # (!clk_counter_0(1) & ((\clk_counter_0[0]~26\) # (GND)))
-- \clk_counter_0[1]~28\ = CARRY((!\clk_counter_0[0]~26\) # (!clk_counter_0(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(1),
	datad => VCC,
	cin => \clk_counter_0[0]~26\,
	combout => \clk_counter_0[1]~27_combout\,
	cout => \clk_counter_0[1]~28\);

-- Location: FF_X29_Y10_N11
\clk_counter_0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[1]~27_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(1));

-- Location: LCCOMB_X29_Y10_N12
\clk_counter_0[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[2]~29_combout\ = (clk_counter_0(2) & (\clk_counter_0[1]~28\ $ (GND))) # (!clk_counter_0(2) & (!\clk_counter_0[1]~28\ & VCC))
-- \clk_counter_0[2]~30\ = CARRY((clk_counter_0(2) & !\clk_counter_0[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(2),
	datad => VCC,
	cin => \clk_counter_0[1]~28\,
	combout => \clk_counter_0[2]~29_combout\,
	cout => \clk_counter_0[2]~30\);

-- Location: FF_X29_Y10_N13
\clk_counter_0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[2]~29_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(2));

-- Location: LCCOMB_X29_Y10_N14
\clk_counter_0[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[3]~31_combout\ = (clk_counter_0(3) & (!\clk_counter_0[2]~30\)) # (!clk_counter_0(3) & ((\clk_counter_0[2]~30\) # (GND)))
-- \clk_counter_0[3]~32\ = CARRY((!\clk_counter_0[2]~30\) # (!clk_counter_0(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(3),
	datad => VCC,
	cin => \clk_counter_0[2]~30\,
	combout => \clk_counter_0[3]~31_combout\,
	cout => \clk_counter_0[3]~32\);

-- Location: FF_X29_Y10_N15
\clk_counter_0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[3]~31_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(3));

-- Location: LCCOMB_X29_Y10_N16
\clk_counter_0[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[4]~33_combout\ = (clk_counter_0(4) & (\clk_counter_0[3]~32\ $ (GND))) # (!clk_counter_0(4) & (!\clk_counter_0[3]~32\ & VCC))
-- \clk_counter_0[4]~34\ = CARRY((clk_counter_0(4) & !\clk_counter_0[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(4),
	datad => VCC,
	cin => \clk_counter_0[3]~32\,
	combout => \clk_counter_0[4]~33_combout\,
	cout => \clk_counter_0[4]~34\);

-- Location: FF_X29_Y10_N17
\clk_counter_0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[4]~33_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(4));

-- Location: LCCOMB_X29_Y10_N18
\clk_counter_0[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[5]~35_combout\ = (clk_counter_0(5) & (!\clk_counter_0[4]~34\)) # (!clk_counter_0(5) & ((\clk_counter_0[4]~34\) # (GND)))
-- \clk_counter_0[5]~36\ = CARRY((!\clk_counter_0[4]~34\) # (!clk_counter_0(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(5),
	datad => VCC,
	cin => \clk_counter_0[4]~34\,
	combout => \clk_counter_0[5]~35_combout\,
	cout => \clk_counter_0[5]~36\);

-- Location: FF_X29_Y10_N19
\clk_counter_0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[5]~35_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(5));

-- Location: LCCOMB_X29_Y10_N20
\clk_counter_0[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[6]~37_combout\ = (clk_counter_0(6) & (\clk_counter_0[5]~36\ $ (GND))) # (!clk_counter_0(6) & (!\clk_counter_0[5]~36\ & VCC))
-- \clk_counter_0[6]~38\ = CARRY((clk_counter_0(6) & !\clk_counter_0[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(6),
	datad => VCC,
	cin => \clk_counter_0[5]~36\,
	combout => \clk_counter_0[6]~37_combout\,
	cout => \clk_counter_0[6]~38\);

-- Location: FF_X29_Y10_N21
\clk_counter_0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[6]~37_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(6));

-- Location: LCCOMB_X29_Y10_N22
\clk_counter_0[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[7]~39_combout\ = (clk_counter_0(7) & (!\clk_counter_0[6]~38\)) # (!clk_counter_0(7) & ((\clk_counter_0[6]~38\) # (GND)))
-- \clk_counter_0[7]~40\ = CARRY((!\clk_counter_0[6]~38\) # (!clk_counter_0(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(7),
	datad => VCC,
	cin => \clk_counter_0[6]~38\,
	combout => \clk_counter_0[7]~39_combout\,
	cout => \clk_counter_0[7]~40\);

-- Location: FF_X29_Y10_N23
\clk_counter_0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[7]~39_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(7));

-- Location: LCCOMB_X29_Y10_N24
\clk_counter_0[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[8]~41_combout\ = (clk_counter_0(8) & (\clk_counter_0[7]~40\ $ (GND))) # (!clk_counter_0(8) & (!\clk_counter_0[7]~40\ & VCC))
-- \clk_counter_0[8]~42\ = CARRY((clk_counter_0(8) & !\clk_counter_0[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(8),
	datad => VCC,
	cin => \clk_counter_0[7]~40\,
	combout => \clk_counter_0[8]~41_combout\,
	cout => \clk_counter_0[8]~42\);

-- Location: FF_X29_Y10_N25
\clk_counter_0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[8]~41_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(8));

-- Location: LCCOMB_X29_Y10_N26
\clk_counter_0[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[9]~43_combout\ = (clk_counter_0(9) & (!\clk_counter_0[8]~42\)) # (!clk_counter_0(9) & ((\clk_counter_0[8]~42\) # (GND)))
-- \clk_counter_0[9]~44\ = CARRY((!\clk_counter_0[8]~42\) # (!clk_counter_0(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(9),
	datad => VCC,
	cin => \clk_counter_0[8]~42\,
	combout => \clk_counter_0[9]~43_combout\,
	cout => \clk_counter_0[9]~44\);

-- Location: FF_X29_Y10_N27
\clk_counter_0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[9]~43_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(9));

-- Location: LCCOMB_X29_Y10_N28
\clk_counter_0[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[10]~45_combout\ = (clk_counter_0(10) & (\clk_counter_0[9]~44\ $ (GND))) # (!clk_counter_0(10) & (!\clk_counter_0[9]~44\ & VCC))
-- \clk_counter_0[10]~46\ = CARRY((clk_counter_0(10) & !\clk_counter_0[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(10),
	datad => VCC,
	cin => \clk_counter_0[9]~44\,
	combout => \clk_counter_0[10]~45_combout\,
	cout => \clk_counter_0[10]~46\);

-- Location: FF_X29_Y10_N29
\clk_counter_0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[10]~45_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(10));

-- Location: LCCOMB_X29_Y10_N30
\clk_counter_0[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[11]~47_combout\ = (clk_counter_0(11) & (!\clk_counter_0[10]~46\)) # (!clk_counter_0(11) & ((\clk_counter_0[10]~46\) # (GND)))
-- \clk_counter_0[11]~48\ = CARRY((!\clk_counter_0[10]~46\) # (!clk_counter_0(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(11),
	datad => VCC,
	cin => \clk_counter_0[10]~46\,
	combout => \clk_counter_0[11]~47_combout\,
	cout => \clk_counter_0[11]~48\);

-- Location: FF_X29_Y10_N31
\clk_counter_0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[11]~47_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(11));

-- Location: LCCOMB_X29_Y9_N0
\clk_counter_0[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[12]~49_combout\ = (clk_counter_0(12) & (\clk_counter_0[11]~48\ $ (GND))) # (!clk_counter_0(12) & (!\clk_counter_0[11]~48\ & VCC))
-- \clk_counter_0[12]~50\ = CARRY((clk_counter_0(12) & !\clk_counter_0[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(12),
	datad => VCC,
	cin => \clk_counter_0[11]~48\,
	combout => \clk_counter_0[12]~49_combout\,
	cout => \clk_counter_0[12]~50\);

-- Location: FF_X29_Y9_N1
\clk_counter_0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[12]~49_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(12));

-- Location: LCCOMB_X29_Y9_N2
\clk_counter_0[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[13]~51_combout\ = (clk_counter_0(13) & (!\clk_counter_0[12]~50\)) # (!clk_counter_0(13) & ((\clk_counter_0[12]~50\) # (GND)))
-- \clk_counter_0[13]~52\ = CARRY((!\clk_counter_0[12]~50\) # (!clk_counter_0(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(13),
	datad => VCC,
	cin => \clk_counter_0[12]~50\,
	combout => \clk_counter_0[13]~51_combout\,
	cout => \clk_counter_0[13]~52\);

-- Location: FF_X29_Y9_N3
\clk_counter_0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[13]~51_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(13));

-- Location: LCCOMB_X29_Y9_N4
\clk_counter_0[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[14]~53_combout\ = (clk_counter_0(14) & (\clk_counter_0[13]~52\ $ (GND))) # (!clk_counter_0(14) & (!\clk_counter_0[13]~52\ & VCC))
-- \clk_counter_0[14]~54\ = CARRY((clk_counter_0(14) & !\clk_counter_0[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(14),
	datad => VCC,
	cin => \clk_counter_0[13]~52\,
	combout => \clk_counter_0[14]~53_combout\,
	cout => \clk_counter_0[14]~54\);

-- Location: FF_X29_Y9_N5
\clk_counter_0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[14]~53_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(14));

-- Location: LCCOMB_X29_Y9_N6
\clk_counter_0[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[15]~55_combout\ = (clk_counter_0(15) & (!\clk_counter_0[14]~54\)) # (!clk_counter_0(15) & ((\clk_counter_0[14]~54\) # (GND)))
-- \clk_counter_0[15]~56\ = CARRY((!\clk_counter_0[14]~54\) # (!clk_counter_0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(15),
	datad => VCC,
	cin => \clk_counter_0[14]~54\,
	combout => \clk_counter_0[15]~55_combout\,
	cout => \clk_counter_0[15]~56\);

-- Location: FF_X29_Y9_N7
\clk_counter_0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[15]~55_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(15));

-- Location: LCCOMB_X29_Y9_N8
\clk_counter_0[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[16]~57_combout\ = (clk_counter_0(16) & (\clk_counter_0[15]~56\ $ (GND))) # (!clk_counter_0(16) & (!\clk_counter_0[15]~56\ & VCC))
-- \clk_counter_0[16]~58\ = CARRY((clk_counter_0(16) & !\clk_counter_0[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(16),
	datad => VCC,
	cin => \clk_counter_0[15]~56\,
	combout => \clk_counter_0[16]~57_combout\,
	cout => \clk_counter_0[16]~58\);

-- Location: FF_X29_Y9_N9
\clk_counter_0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[16]~57_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(16));

-- Location: LCCOMB_X29_Y9_N10
\clk_counter_0[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[17]~59_combout\ = (clk_counter_0(17) & (!\clk_counter_0[16]~58\)) # (!clk_counter_0(17) & ((\clk_counter_0[16]~58\) # (GND)))
-- \clk_counter_0[17]~60\ = CARRY((!\clk_counter_0[16]~58\) # (!clk_counter_0(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(17),
	datad => VCC,
	cin => \clk_counter_0[16]~58\,
	combout => \clk_counter_0[17]~59_combout\,
	cout => \clk_counter_0[17]~60\);

-- Location: FF_X29_Y9_N11
\clk_counter_0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[17]~59_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(17));

-- Location: LCCOMB_X29_Y9_N12
\clk_counter_0[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[18]~61_combout\ = (clk_counter_0(18) & (\clk_counter_0[17]~60\ $ (GND))) # (!clk_counter_0(18) & (!\clk_counter_0[17]~60\ & VCC))
-- \clk_counter_0[18]~62\ = CARRY((clk_counter_0(18) & !\clk_counter_0[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(18),
	datad => VCC,
	cin => \clk_counter_0[17]~60\,
	combout => \clk_counter_0[18]~61_combout\,
	cout => \clk_counter_0[18]~62\);

-- Location: FF_X29_Y9_N13
\clk_counter_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[18]~61_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(18));

-- Location: LCCOMB_X29_Y9_N14
\clk_counter_0[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[19]~63_combout\ = (clk_counter_0(19) & (!\clk_counter_0[18]~62\)) # (!clk_counter_0(19) & ((\clk_counter_0[18]~62\) # (GND)))
-- \clk_counter_0[19]~64\ = CARRY((!\clk_counter_0[18]~62\) # (!clk_counter_0(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(19),
	datad => VCC,
	cin => \clk_counter_0[18]~62\,
	combout => \clk_counter_0[19]~63_combout\,
	cout => \clk_counter_0[19]~64\);

-- Location: FF_X29_Y9_N15
\clk_counter_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[19]~63_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(19));

-- Location: LCCOMB_X29_Y9_N16
\clk_counter_0[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[20]~65_combout\ = (clk_counter_0(20) & (\clk_counter_0[19]~64\ $ (GND))) # (!clk_counter_0(20) & (!\clk_counter_0[19]~64\ & VCC))
-- \clk_counter_0[20]~66\ = CARRY((clk_counter_0(20) & !\clk_counter_0[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(20),
	datad => VCC,
	cin => \clk_counter_0[19]~64\,
	combout => \clk_counter_0[20]~65_combout\,
	cout => \clk_counter_0[20]~66\);

-- Location: FF_X29_Y9_N17
\clk_counter_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[20]~65_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(20));

-- Location: LCCOMB_X29_Y9_N18
\clk_counter_0[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[21]~67_combout\ = (clk_counter_0(21) & (!\clk_counter_0[20]~66\)) # (!clk_counter_0(21) & ((\clk_counter_0[20]~66\) # (GND)))
-- \clk_counter_0[21]~68\ = CARRY((!\clk_counter_0[20]~66\) # (!clk_counter_0(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(21),
	datad => VCC,
	cin => \clk_counter_0[20]~66\,
	combout => \clk_counter_0[21]~67_combout\,
	cout => \clk_counter_0[21]~68\);

-- Location: FF_X29_Y9_N19
\clk_counter_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[21]~67_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(21));

-- Location: LCCOMB_X29_Y9_N20
\clk_counter_0[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[22]~69_combout\ = (clk_counter_0(22) & (\clk_counter_0[21]~68\ $ (GND))) # (!clk_counter_0(22) & (!\clk_counter_0[21]~68\ & VCC))
-- \clk_counter_0[22]~70\ = CARRY((clk_counter_0(22) & !\clk_counter_0[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(22),
	datad => VCC,
	cin => \clk_counter_0[21]~68\,
	combout => \clk_counter_0[22]~69_combout\,
	cout => \clk_counter_0[22]~70\);

-- Location: FF_X29_Y9_N21
\clk_counter_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[22]~69_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(22));

-- Location: LCCOMB_X29_Y9_N22
\clk_counter_0[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[23]~71_combout\ = (clk_counter_0(23) & (!\clk_counter_0[22]~70\)) # (!clk_counter_0(23) & ((\clk_counter_0[22]~70\) # (GND)))
-- \clk_counter_0[23]~72\ = CARRY((!\clk_counter_0[22]~70\) # (!clk_counter_0(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_0(23),
	datad => VCC,
	cin => \clk_counter_0[22]~70\,
	combout => \clk_counter_0[23]~71_combout\,
	cout => \clk_counter_0[23]~72\);

-- Location: FF_X29_Y9_N23
\clk_counter_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[23]~71_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(23));

-- Location: LCCOMB_X29_Y9_N24
\clk_counter_0[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_0[24]~73_combout\ = \clk_counter_0[23]~72\ $ (!clk_counter_0(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clk_counter_0(24),
	cin => \clk_counter_0[23]~72\,
	combout => \clk_counter_0[24]~73_combout\);

-- Location: FF_X29_Y9_N25
\clk_counter_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_0[24]~73_combout\,
	sclr => \ALT_INV_LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_0(24));

-- Location: LCCOMB_X29_Y9_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (((!clk_counter_0(17) & !clk_counter_0(16))) # (!clk_counter_0(18))) # (!clk_counter_0(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(17),
	datab => clk_counter_0(16),
	datac => clk_counter_0(19),
	datad => clk_counter_0(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y9_N30
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (((\LessThan0~4_combout\) # (!clk_counter_0(20))) # (!clk_counter_0(21))) # (!clk_counter_0(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(22),
	datab => clk_counter_0(21),
	datac => clk_counter_0(20),
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y10_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clk_counter_0(7) & (!clk_counter_0(6) & (!clk_counter_0(9) & !clk_counter_0(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(7),
	datab => clk_counter_0(6),
	datac => clk_counter_0(9),
	datad => clk_counter_0(8),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X29_Y10_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (((!clk_counter_0(14)) # (!clk_counter_0(13))) # (!clk_counter_0(12))) # (!clk_counter_0(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(11),
	datab => clk_counter_0(12),
	datac => clk_counter_0(13),
	datad => clk_counter_0(14),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X29_Y9_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!clk_counter_0(17) & (!clk_counter_0(23) & !clk_counter_0(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(17),
	datac => clk_counter_0(23),
	datad => clk_counter_0(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X29_Y10_N0
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\ & ((\LessThan0~1_combout\) # ((\LessThan0~2_combout\ & !clk_counter_0(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => clk_counter_0(10),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X29_Y10_N2
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ((\LessThan0~3_combout\) # ((!clk_counter_0(23) & \LessThan0~5_combout\))) # (!clk_counter_0(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_0(23),
	datab => clk_counter_0(24),
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y10_N24
\blinker_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker_0~0_combout\ = \blinker_0~q\ $ (!\LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinker_0~q\,
	datad => \LessThan0~6_combout\,
	combout => \blinker_0~0_combout\);

-- Location: FF_X30_Y10_N25
blinker_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blinker_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker_0~q\);

-- Location: LCCOMB_X31_Y10_N8
\clk_counter_1[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[0]~24_combout\ = clk_counter_1(0) $ (VCC)
-- \clk_counter_1[0]~25\ = CARRY(clk_counter_1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(0),
	datad => VCC,
	combout => \clk_counter_1[0]~24_combout\,
	cout => \clk_counter_1[0]~25\);

-- Location: FF_X31_Y10_N9
\clk_counter_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[0]~24_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(0));

-- Location: LCCOMB_X31_Y10_N10
\clk_counter_1[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[1]~26_combout\ = (clk_counter_1(1) & (!\clk_counter_1[0]~25\)) # (!clk_counter_1(1) & ((\clk_counter_1[0]~25\) # (GND)))
-- \clk_counter_1[1]~27\ = CARRY((!\clk_counter_1[0]~25\) # (!clk_counter_1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(1),
	datad => VCC,
	cin => \clk_counter_1[0]~25\,
	combout => \clk_counter_1[1]~26_combout\,
	cout => \clk_counter_1[1]~27\);

-- Location: FF_X31_Y10_N11
\clk_counter_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[1]~26_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(1));

-- Location: LCCOMB_X31_Y10_N12
\clk_counter_1[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[2]~28_combout\ = (clk_counter_1(2) & (\clk_counter_1[1]~27\ $ (GND))) # (!clk_counter_1(2) & (!\clk_counter_1[1]~27\ & VCC))
-- \clk_counter_1[2]~29\ = CARRY((clk_counter_1(2) & !\clk_counter_1[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(2),
	datad => VCC,
	cin => \clk_counter_1[1]~27\,
	combout => \clk_counter_1[2]~28_combout\,
	cout => \clk_counter_1[2]~29\);

-- Location: FF_X31_Y10_N13
\clk_counter_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[2]~28_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(2));

-- Location: LCCOMB_X31_Y10_N14
\clk_counter_1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[3]~30_combout\ = (clk_counter_1(3) & (!\clk_counter_1[2]~29\)) # (!clk_counter_1(3) & ((\clk_counter_1[2]~29\) # (GND)))
-- \clk_counter_1[3]~31\ = CARRY((!\clk_counter_1[2]~29\) # (!clk_counter_1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(3),
	datad => VCC,
	cin => \clk_counter_1[2]~29\,
	combout => \clk_counter_1[3]~30_combout\,
	cout => \clk_counter_1[3]~31\);

-- Location: FF_X31_Y10_N15
\clk_counter_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[3]~30_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(3));

-- Location: LCCOMB_X31_Y10_N16
\clk_counter_1[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[4]~32_combout\ = (clk_counter_1(4) & (\clk_counter_1[3]~31\ $ (GND))) # (!clk_counter_1(4) & (!\clk_counter_1[3]~31\ & VCC))
-- \clk_counter_1[4]~33\ = CARRY((clk_counter_1(4) & !\clk_counter_1[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(4),
	datad => VCC,
	cin => \clk_counter_1[3]~31\,
	combout => \clk_counter_1[4]~32_combout\,
	cout => \clk_counter_1[4]~33\);

-- Location: FF_X31_Y10_N17
\clk_counter_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[4]~32_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(4));

-- Location: LCCOMB_X31_Y10_N18
\clk_counter_1[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[5]~34_combout\ = (clk_counter_1(5) & (!\clk_counter_1[4]~33\)) # (!clk_counter_1(5) & ((\clk_counter_1[4]~33\) # (GND)))
-- \clk_counter_1[5]~35\ = CARRY((!\clk_counter_1[4]~33\) # (!clk_counter_1(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(5),
	datad => VCC,
	cin => \clk_counter_1[4]~33\,
	combout => \clk_counter_1[5]~34_combout\,
	cout => \clk_counter_1[5]~35\);

-- Location: FF_X31_Y10_N19
\clk_counter_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[5]~34_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(5));

-- Location: LCCOMB_X31_Y10_N20
\clk_counter_1[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[6]~36_combout\ = (clk_counter_1(6) & (\clk_counter_1[5]~35\ $ (GND))) # (!clk_counter_1(6) & (!\clk_counter_1[5]~35\ & VCC))
-- \clk_counter_1[6]~37\ = CARRY((clk_counter_1(6) & !\clk_counter_1[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(6),
	datad => VCC,
	cin => \clk_counter_1[5]~35\,
	combout => \clk_counter_1[6]~36_combout\,
	cout => \clk_counter_1[6]~37\);

-- Location: FF_X31_Y10_N21
\clk_counter_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[6]~36_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(6));

-- Location: LCCOMB_X31_Y10_N22
\clk_counter_1[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[7]~38_combout\ = (clk_counter_1(7) & (!\clk_counter_1[6]~37\)) # (!clk_counter_1(7) & ((\clk_counter_1[6]~37\) # (GND)))
-- \clk_counter_1[7]~39\ = CARRY((!\clk_counter_1[6]~37\) # (!clk_counter_1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(7),
	datad => VCC,
	cin => \clk_counter_1[6]~37\,
	combout => \clk_counter_1[7]~38_combout\,
	cout => \clk_counter_1[7]~39\);

-- Location: FF_X31_Y10_N23
\clk_counter_1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[7]~38_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(7));

-- Location: LCCOMB_X31_Y10_N24
\clk_counter_1[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[8]~40_combout\ = (clk_counter_1(8) & (\clk_counter_1[7]~39\ $ (GND))) # (!clk_counter_1(8) & (!\clk_counter_1[7]~39\ & VCC))
-- \clk_counter_1[8]~41\ = CARRY((clk_counter_1(8) & !\clk_counter_1[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(8),
	datad => VCC,
	cin => \clk_counter_1[7]~39\,
	combout => \clk_counter_1[8]~40_combout\,
	cout => \clk_counter_1[8]~41\);

-- Location: FF_X31_Y10_N25
\clk_counter_1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[8]~40_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(8));

-- Location: LCCOMB_X31_Y10_N26
\clk_counter_1[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[9]~42_combout\ = (clk_counter_1(9) & (!\clk_counter_1[8]~41\)) # (!clk_counter_1(9) & ((\clk_counter_1[8]~41\) # (GND)))
-- \clk_counter_1[9]~43\ = CARRY((!\clk_counter_1[8]~41\) # (!clk_counter_1(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(9),
	datad => VCC,
	cin => \clk_counter_1[8]~41\,
	combout => \clk_counter_1[9]~42_combout\,
	cout => \clk_counter_1[9]~43\);

-- Location: FF_X31_Y10_N27
\clk_counter_1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[9]~42_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(9));

-- Location: LCCOMB_X31_Y10_N28
\clk_counter_1[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[10]~44_combout\ = (clk_counter_1(10) & (\clk_counter_1[9]~43\ $ (GND))) # (!clk_counter_1(10) & (!\clk_counter_1[9]~43\ & VCC))
-- \clk_counter_1[10]~45\ = CARRY((clk_counter_1(10) & !\clk_counter_1[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(10),
	datad => VCC,
	cin => \clk_counter_1[9]~43\,
	combout => \clk_counter_1[10]~44_combout\,
	cout => \clk_counter_1[10]~45\);

-- Location: FF_X31_Y10_N29
\clk_counter_1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[10]~44_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(10));

-- Location: LCCOMB_X31_Y10_N30
\clk_counter_1[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[11]~46_combout\ = (clk_counter_1(11) & (!\clk_counter_1[10]~45\)) # (!clk_counter_1(11) & ((\clk_counter_1[10]~45\) # (GND)))
-- \clk_counter_1[11]~47\ = CARRY((!\clk_counter_1[10]~45\) # (!clk_counter_1(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(11),
	datad => VCC,
	cin => \clk_counter_1[10]~45\,
	combout => \clk_counter_1[11]~46_combout\,
	cout => \clk_counter_1[11]~47\);

-- Location: FF_X31_Y10_N31
\clk_counter_1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[11]~46_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(11));

-- Location: LCCOMB_X31_Y9_N0
\clk_counter_1[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[12]~48_combout\ = (clk_counter_1(12) & (\clk_counter_1[11]~47\ $ (GND))) # (!clk_counter_1(12) & (!\clk_counter_1[11]~47\ & VCC))
-- \clk_counter_1[12]~49\ = CARRY((clk_counter_1(12) & !\clk_counter_1[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(12),
	datad => VCC,
	cin => \clk_counter_1[11]~47\,
	combout => \clk_counter_1[12]~48_combout\,
	cout => \clk_counter_1[12]~49\);

-- Location: FF_X31_Y9_N1
\clk_counter_1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[12]~48_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(12));

-- Location: LCCOMB_X31_Y9_N2
\clk_counter_1[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[13]~50_combout\ = (clk_counter_1(13) & (!\clk_counter_1[12]~49\)) # (!clk_counter_1(13) & ((\clk_counter_1[12]~49\) # (GND)))
-- \clk_counter_1[13]~51\ = CARRY((!\clk_counter_1[12]~49\) # (!clk_counter_1(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(13),
	datad => VCC,
	cin => \clk_counter_1[12]~49\,
	combout => \clk_counter_1[13]~50_combout\,
	cout => \clk_counter_1[13]~51\);

-- Location: FF_X31_Y9_N3
\clk_counter_1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[13]~50_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(13));

-- Location: LCCOMB_X31_Y9_N4
\clk_counter_1[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[14]~52_combout\ = (clk_counter_1(14) & (\clk_counter_1[13]~51\ $ (GND))) # (!clk_counter_1(14) & (!\clk_counter_1[13]~51\ & VCC))
-- \clk_counter_1[14]~53\ = CARRY((clk_counter_1(14) & !\clk_counter_1[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(14),
	datad => VCC,
	cin => \clk_counter_1[13]~51\,
	combout => \clk_counter_1[14]~52_combout\,
	cout => \clk_counter_1[14]~53\);

-- Location: FF_X31_Y9_N5
\clk_counter_1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[14]~52_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(14));

-- Location: LCCOMB_X31_Y9_N6
\clk_counter_1[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[15]~54_combout\ = (clk_counter_1(15) & (!\clk_counter_1[14]~53\)) # (!clk_counter_1(15) & ((\clk_counter_1[14]~53\) # (GND)))
-- \clk_counter_1[15]~55\ = CARRY((!\clk_counter_1[14]~53\) # (!clk_counter_1(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(15),
	datad => VCC,
	cin => \clk_counter_1[14]~53\,
	combout => \clk_counter_1[15]~54_combout\,
	cout => \clk_counter_1[15]~55\);

-- Location: FF_X31_Y9_N7
\clk_counter_1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[15]~54_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(15));

-- Location: LCCOMB_X31_Y9_N8
\clk_counter_1[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[16]~56_combout\ = (clk_counter_1(16) & (\clk_counter_1[15]~55\ $ (GND))) # (!clk_counter_1(16) & (!\clk_counter_1[15]~55\ & VCC))
-- \clk_counter_1[16]~57\ = CARRY((clk_counter_1(16) & !\clk_counter_1[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(16),
	datad => VCC,
	cin => \clk_counter_1[15]~55\,
	combout => \clk_counter_1[16]~56_combout\,
	cout => \clk_counter_1[16]~57\);

-- Location: FF_X31_Y9_N9
\clk_counter_1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[16]~56_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(16));

-- Location: LCCOMB_X31_Y9_N10
\clk_counter_1[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[17]~58_combout\ = (clk_counter_1(17) & (!\clk_counter_1[16]~57\)) # (!clk_counter_1(17) & ((\clk_counter_1[16]~57\) # (GND)))
-- \clk_counter_1[17]~59\ = CARRY((!\clk_counter_1[16]~57\) # (!clk_counter_1(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(17),
	datad => VCC,
	cin => \clk_counter_1[16]~57\,
	combout => \clk_counter_1[17]~58_combout\,
	cout => \clk_counter_1[17]~59\);

-- Location: FF_X31_Y9_N11
\clk_counter_1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[17]~58_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(17));

-- Location: LCCOMB_X31_Y9_N12
\clk_counter_1[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[18]~60_combout\ = (clk_counter_1(18) & (\clk_counter_1[17]~59\ $ (GND))) # (!clk_counter_1(18) & (!\clk_counter_1[17]~59\ & VCC))
-- \clk_counter_1[18]~61\ = CARRY((clk_counter_1(18) & !\clk_counter_1[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(18),
	datad => VCC,
	cin => \clk_counter_1[17]~59\,
	combout => \clk_counter_1[18]~60_combout\,
	cout => \clk_counter_1[18]~61\);

-- Location: FF_X31_Y9_N13
\clk_counter_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[18]~60_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(18));

-- Location: LCCOMB_X31_Y9_N14
\clk_counter_1[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[19]~62_combout\ = (clk_counter_1(19) & (!\clk_counter_1[18]~61\)) # (!clk_counter_1(19) & ((\clk_counter_1[18]~61\) # (GND)))
-- \clk_counter_1[19]~63\ = CARRY((!\clk_counter_1[18]~61\) # (!clk_counter_1(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(19),
	datad => VCC,
	cin => \clk_counter_1[18]~61\,
	combout => \clk_counter_1[19]~62_combout\,
	cout => \clk_counter_1[19]~63\);

-- Location: FF_X31_Y9_N15
\clk_counter_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[19]~62_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(19));

-- Location: LCCOMB_X31_Y9_N16
\clk_counter_1[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[20]~64_combout\ = (clk_counter_1(20) & (\clk_counter_1[19]~63\ $ (GND))) # (!clk_counter_1(20) & (!\clk_counter_1[19]~63\ & VCC))
-- \clk_counter_1[20]~65\ = CARRY((clk_counter_1(20) & !\clk_counter_1[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(20),
	datad => VCC,
	cin => \clk_counter_1[19]~63\,
	combout => \clk_counter_1[20]~64_combout\,
	cout => \clk_counter_1[20]~65\);

-- Location: FF_X31_Y9_N17
\clk_counter_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[20]~64_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(20));

-- Location: LCCOMB_X31_Y9_N18
\clk_counter_1[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[21]~66_combout\ = (clk_counter_1(21) & (!\clk_counter_1[20]~65\)) # (!clk_counter_1(21) & ((\clk_counter_1[20]~65\) # (GND)))
-- \clk_counter_1[21]~67\ = CARRY((!\clk_counter_1[20]~65\) # (!clk_counter_1(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(21),
	datad => VCC,
	cin => \clk_counter_1[20]~65\,
	combout => \clk_counter_1[21]~66_combout\,
	cout => \clk_counter_1[21]~67\);

-- Location: FF_X31_Y9_N19
\clk_counter_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[21]~66_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(21));

-- Location: LCCOMB_X31_Y9_N20
\clk_counter_1[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[22]~68_combout\ = (clk_counter_1(22) & (\clk_counter_1[21]~67\ $ (GND))) # (!clk_counter_1(22) & (!\clk_counter_1[21]~67\ & VCC))
-- \clk_counter_1[22]~69\ = CARRY((clk_counter_1(22) & !\clk_counter_1[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(22),
	datad => VCC,
	cin => \clk_counter_1[21]~67\,
	combout => \clk_counter_1[22]~68_combout\,
	cout => \clk_counter_1[22]~69\);

-- Location: FF_X31_Y9_N21
\clk_counter_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[22]~68_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(22));

-- Location: LCCOMB_X31_Y9_N22
\clk_counter_1[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_1[23]~70_combout\ = clk_counter_1(23) $ (\clk_counter_1[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(23),
	cin => \clk_counter_1[22]~69\,
	combout => \clk_counter_1[23]~70_combout\);

-- Location: FF_X31_Y9_N23
\clk_counter_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_1[23]~70_combout\,
	sclr => \ALT_INV_LessThan1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_1(23));

-- Location: LCCOMB_X31_Y9_N28
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!clk_counter_1(16) & !clk_counter_1(15))) # (!clk_counter_1(18))) # (!clk_counter_1(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(17),
	datab => clk_counter_1(16),
	datac => clk_counter_1(15),
	datad => clk_counter_1(18),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X31_Y9_N30
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (((\LessThan1~4_combout\) # (!clk_counter_1(19))) # (!clk_counter_1(20))) # (!clk_counter_1(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(21),
	datab => clk_counter_1(20),
	datac => clk_counter_1(19),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X31_Y10_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!clk_counter_1(7) & (!clk_counter_1(8) & (!clk_counter_1(5) & !clk_counter_1(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(7),
	datab => clk_counter_1(8),
	datac => clk_counter_1(5),
	datad => clk_counter_1(6),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y10_N4
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!clk_counter_1(12)) # (!clk_counter_1(13))) # (!clk_counter_1(10))) # (!clk_counter_1(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(11),
	datab => clk_counter_1(10),
	datac => clk_counter_1(13),
	datad => clk_counter_1(12),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X31_Y9_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!clk_counter_1(16) & (!clk_counter_1(14) & !clk_counter_1(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_1(16),
	datac => clk_counter_1(14),
	datad => clk_counter_1(22),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X31_Y10_N0
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\ & ((\LessThan1~1_combout\) # ((!clk_counter_1(9) & \LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(9),
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y10_N6
\LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = ((\LessThan1~3_combout\) # ((!clk_counter_1(22) & \LessThan1~5_combout\))) # (!clk_counter_1(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_1(22),
	datab => clk_counter_1(23),
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y9_N24
\blinker_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker_1~0_combout\ = \blinker_1~q\ $ (!\LessThan1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinker_1~q\,
	datad => \LessThan1~6_combout\,
	combout => \blinker_1~0_combout\);

-- Location: FF_X31_Y9_N25
blinker_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blinker_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker_1~q\);

-- Location: LCCOMB_X19_Y10_N10
\clk_counter_2[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[0]~23_combout\ = clk_counter_2(0) $ (VCC)
-- \clk_counter_2[0]~24\ = CARRY(clk_counter_2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(0),
	datad => VCC,
	combout => \clk_counter_2[0]~23_combout\,
	cout => \clk_counter_2[0]~24\);

-- Location: FF_X19_Y10_N11
\clk_counter_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[0]~23_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(0));

-- Location: LCCOMB_X19_Y10_N12
\clk_counter_2[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[1]~25_combout\ = (clk_counter_2(1) & (!\clk_counter_2[0]~24\)) # (!clk_counter_2(1) & ((\clk_counter_2[0]~24\) # (GND)))
-- \clk_counter_2[1]~26\ = CARRY((!\clk_counter_2[0]~24\) # (!clk_counter_2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(1),
	datad => VCC,
	cin => \clk_counter_2[0]~24\,
	combout => \clk_counter_2[1]~25_combout\,
	cout => \clk_counter_2[1]~26\);

-- Location: FF_X19_Y10_N13
\clk_counter_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[1]~25_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(1));

-- Location: LCCOMB_X19_Y10_N14
\clk_counter_2[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[2]~27_combout\ = (clk_counter_2(2) & (\clk_counter_2[1]~26\ $ (GND))) # (!clk_counter_2(2) & (!\clk_counter_2[1]~26\ & VCC))
-- \clk_counter_2[2]~28\ = CARRY((clk_counter_2(2) & !\clk_counter_2[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(2),
	datad => VCC,
	cin => \clk_counter_2[1]~26\,
	combout => \clk_counter_2[2]~27_combout\,
	cout => \clk_counter_2[2]~28\);

-- Location: FF_X19_Y10_N15
\clk_counter_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[2]~27_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(2));

-- Location: LCCOMB_X19_Y10_N16
\clk_counter_2[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[3]~29_combout\ = (clk_counter_2(3) & (!\clk_counter_2[2]~28\)) # (!clk_counter_2(3) & ((\clk_counter_2[2]~28\) # (GND)))
-- \clk_counter_2[3]~30\ = CARRY((!\clk_counter_2[2]~28\) # (!clk_counter_2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(3),
	datad => VCC,
	cin => \clk_counter_2[2]~28\,
	combout => \clk_counter_2[3]~29_combout\,
	cout => \clk_counter_2[3]~30\);

-- Location: FF_X19_Y10_N17
\clk_counter_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[3]~29_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(3));

-- Location: LCCOMB_X19_Y10_N18
\clk_counter_2[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[4]~31_combout\ = (clk_counter_2(4) & (\clk_counter_2[3]~30\ $ (GND))) # (!clk_counter_2(4) & (!\clk_counter_2[3]~30\ & VCC))
-- \clk_counter_2[4]~32\ = CARRY((clk_counter_2(4) & !\clk_counter_2[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(4),
	datad => VCC,
	cin => \clk_counter_2[3]~30\,
	combout => \clk_counter_2[4]~31_combout\,
	cout => \clk_counter_2[4]~32\);

-- Location: FF_X19_Y10_N19
\clk_counter_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[4]~31_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(4));

-- Location: LCCOMB_X19_Y10_N20
\clk_counter_2[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[5]~33_combout\ = (clk_counter_2(5) & (!\clk_counter_2[4]~32\)) # (!clk_counter_2(5) & ((\clk_counter_2[4]~32\) # (GND)))
-- \clk_counter_2[5]~34\ = CARRY((!\clk_counter_2[4]~32\) # (!clk_counter_2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(5),
	datad => VCC,
	cin => \clk_counter_2[4]~32\,
	combout => \clk_counter_2[5]~33_combout\,
	cout => \clk_counter_2[5]~34\);

-- Location: FF_X19_Y10_N21
\clk_counter_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[5]~33_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(5));

-- Location: LCCOMB_X19_Y10_N22
\clk_counter_2[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[6]~35_combout\ = (clk_counter_2(6) & (\clk_counter_2[5]~34\ $ (GND))) # (!clk_counter_2(6) & (!\clk_counter_2[5]~34\ & VCC))
-- \clk_counter_2[6]~36\ = CARRY((clk_counter_2(6) & !\clk_counter_2[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(6),
	datad => VCC,
	cin => \clk_counter_2[5]~34\,
	combout => \clk_counter_2[6]~35_combout\,
	cout => \clk_counter_2[6]~36\);

-- Location: FF_X19_Y10_N23
\clk_counter_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[6]~35_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(6));

-- Location: LCCOMB_X19_Y10_N24
\clk_counter_2[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[7]~37_combout\ = (clk_counter_2(7) & (!\clk_counter_2[6]~36\)) # (!clk_counter_2(7) & ((\clk_counter_2[6]~36\) # (GND)))
-- \clk_counter_2[7]~38\ = CARRY((!\clk_counter_2[6]~36\) # (!clk_counter_2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(7),
	datad => VCC,
	cin => \clk_counter_2[6]~36\,
	combout => \clk_counter_2[7]~37_combout\,
	cout => \clk_counter_2[7]~38\);

-- Location: FF_X19_Y10_N25
\clk_counter_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[7]~37_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(7));

-- Location: LCCOMB_X19_Y10_N26
\clk_counter_2[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[8]~39_combout\ = (clk_counter_2(8) & (\clk_counter_2[7]~38\ $ (GND))) # (!clk_counter_2(8) & (!\clk_counter_2[7]~38\ & VCC))
-- \clk_counter_2[8]~40\ = CARRY((clk_counter_2(8) & !\clk_counter_2[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(8),
	datad => VCC,
	cin => \clk_counter_2[7]~38\,
	combout => \clk_counter_2[8]~39_combout\,
	cout => \clk_counter_2[8]~40\);

-- Location: FF_X19_Y10_N27
\clk_counter_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[8]~39_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(8));

-- Location: LCCOMB_X19_Y10_N28
\clk_counter_2[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[9]~41_combout\ = (clk_counter_2(9) & (!\clk_counter_2[8]~40\)) # (!clk_counter_2(9) & ((\clk_counter_2[8]~40\) # (GND)))
-- \clk_counter_2[9]~42\ = CARRY((!\clk_counter_2[8]~40\) # (!clk_counter_2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(9),
	datad => VCC,
	cin => \clk_counter_2[8]~40\,
	combout => \clk_counter_2[9]~41_combout\,
	cout => \clk_counter_2[9]~42\);

-- Location: FF_X19_Y10_N29
\clk_counter_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[9]~41_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(9));

-- Location: LCCOMB_X19_Y10_N30
\clk_counter_2[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[10]~43_combout\ = (clk_counter_2(10) & (\clk_counter_2[9]~42\ $ (GND))) # (!clk_counter_2(10) & (!\clk_counter_2[9]~42\ & VCC))
-- \clk_counter_2[10]~44\ = CARRY((clk_counter_2(10) & !\clk_counter_2[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(10),
	datad => VCC,
	cin => \clk_counter_2[9]~42\,
	combout => \clk_counter_2[10]~43_combout\,
	cout => \clk_counter_2[10]~44\);

-- Location: FF_X19_Y10_N31
\clk_counter_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[10]~43_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(10));

-- Location: LCCOMB_X19_Y9_N0
\clk_counter_2[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[11]~45_combout\ = (clk_counter_2(11) & (!\clk_counter_2[10]~44\)) # (!clk_counter_2(11) & ((\clk_counter_2[10]~44\) # (GND)))
-- \clk_counter_2[11]~46\ = CARRY((!\clk_counter_2[10]~44\) # (!clk_counter_2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(11),
	datad => VCC,
	cin => \clk_counter_2[10]~44\,
	combout => \clk_counter_2[11]~45_combout\,
	cout => \clk_counter_2[11]~46\);

-- Location: FF_X19_Y9_N1
\clk_counter_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[11]~45_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(11));

-- Location: LCCOMB_X19_Y9_N2
\clk_counter_2[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[12]~47_combout\ = (clk_counter_2(12) & (\clk_counter_2[11]~46\ $ (GND))) # (!clk_counter_2(12) & (!\clk_counter_2[11]~46\ & VCC))
-- \clk_counter_2[12]~48\ = CARRY((clk_counter_2(12) & !\clk_counter_2[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(12),
	datad => VCC,
	cin => \clk_counter_2[11]~46\,
	combout => \clk_counter_2[12]~47_combout\,
	cout => \clk_counter_2[12]~48\);

-- Location: FF_X19_Y9_N3
\clk_counter_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[12]~47_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(12));

-- Location: LCCOMB_X19_Y9_N4
\clk_counter_2[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[13]~49_combout\ = (clk_counter_2(13) & (!\clk_counter_2[12]~48\)) # (!clk_counter_2(13) & ((\clk_counter_2[12]~48\) # (GND)))
-- \clk_counter_2[13]~50\ = CARRY((!\clk_counter_2[12]~48\) # (!clk_counter_2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(13),
	datad => VCC,
	cin => \clk_counter_2[12]~48\,
	combout => \clk_counter_2[13]~49_combout\,
	cout => \clk_counter_2[13]~50\);

-- Location: FF_X19_Y9_N5
\clk_counter_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[13]~49_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(13));

-- Location: LCCOMB_X19_Y9_N6
\clk_counter_2[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[14]~51_combout\ = (clk_counter_2(14) & (\clk_counter_2[13]~50\ $ (GND))) # (!clk_counter_2(14) & (!\clk_counter_2[13]~50\ & VCC))
-- \clk_counter_2[14]~52\ = CARRY((clk_counter_2(14) & !\clk_counter_2[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(14),
	datad => VCC,
	cin => \clk_counter_2[13]~50\,
	combout => \clk_counter_2[14]~51_combout\,
	cout => \clk_counter_2[14]~52\);

-- Location: FF_X19_Y9_N7
\clk_counter_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[14]~51_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(14));

-- Location: LCCOMB_X19_Y9_N8
\clk_counter_2[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[15]~53_combout\ = (clk_counter_2(15) & (!\clk_counter_2[14]~52\)) # (!clk_counter_2(15) & ((\clk_counter_2[14]~52\) # (GND)))
-- \clk_counter_2[15]~54\ = CARRY((!\clk_counter_2[14]~52\) # (!clk_counter_2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(15),
	datad => VCC,
	cin => \clk_counter_2[14]~52\,
	combout => \clk_counter_2[15]~53_combout\,
	cout => \clk_counter_2[15]~54\);

-- Location: FF_X19_Y9_N9
\clk_counter_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[15]~53_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(15));

-- Location: LCCOMB_X19_Y9_N10
\clk_counter_2[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[16]~55_combout\ = (clk_counter_2(16) & (\clk_counter_2[15]~54\ $ (GND))) # (!clk_counter_2(16) & (!\clk_counter_2[15]~54\ & VCC))
-- \clk_counter_2[16]~56\ = CARRY((clk_counter_2(16) & !\clk_counter_2[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(16),
	datad => VCC,
	cin => \clk_counter_2[15]~54\,
	combout => \clk_counter_2[16]~55_combout\,
	cout => \clk_counter_2[16]~56\);

-- Location: FF_X19_Y9_N11
\clk_counter_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[16]~55_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(16));

-- Location: LCCOMB_X19_Y9_N12
\clk_counter_2[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[17]~57_combout\ = (clk_counter_2(17) & (!\clk_counter_2[16]~56\)) # (!clk_counter_2(17) & ((\clk_counter_2[16]~56\) # (GND)))
-- \clk_counter_2[17]~58\ = CARRY((!\clk_counter_2[16]~56\) # (!clk_counter_2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(17),
	datad => VCC,
	cin => \clk_counter_2[16]~56\,
	combout => \clk_counter_2[17]~57_combout\,
	cout => \clk_counter_2[17]~58\);

-- Location: FF_X19_Y9_N13
\clk_counter_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[17]~57_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(17));

-- Location: LCCOMB_X19_Y9_N14
\clk_counter_2[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[18]~59_combout\ = (clk_counter_2(18) & (\clk_counter_2[17]~58\ $ (GND))) # (!clk_counter_2(18) & (!\clk_counter_2[17]~58\ & VCC))
-- \clk_counter_2[18]~60\ = CARRY((clk_counter_2(18) & !\clk_counter_2[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(18),
	datad => VCC,
	cin => \clk_counter_2[17]~58\,
	combout => \clk_counter_2[18]~59_combout\,
	cout => \clk_counter_2[18]~60\);

-- Location: FF_X19_Y9_N15
\clk_counter_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[18]~59_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(18));

-- Location: LCCOMB_X19_Y9_N16
\clk_counter_2[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[19]~61_combout\ = (clk_counter_2(19) & (!\clk_counter_2[18]~60\)) # (!clk_counter_2(19) & ((\clk_counter_2[18]~60\) # (GND)))
-- \clk_counter_2[19]~62\ = CARRY((!\clk_counter_2[18]~60\) # (!clk_counter_2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(19),
	datad => VCC,
	cin => \clk_counter_2[18]~60\,
	combout => \clk_counter_2[19]~61_combout\,
	cout => \clk_counter_2[19]~62\);

-- Location: FF_X19_Y9_N17
\clk_counter_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[19]~61_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(19));

-- Location: LCCOMB_X19_Y9_N18
\clk_counter_2[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[20]~63_combout\ = (clk_counter_2(20) & (\clk_counter_2[19]~62\ $ (GND))) # (!clk_counter_2(20) & (!\clk_counter_2[19]~62\ & VCC))
-- \clk_counter_2[20]~64\ = CARRY((clk_counter_2(20) & !\clk_counter_2[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(20),
	datad => VCC,
	cin => \clk_counter_2[19]~62\,
	combout => \clk_counter_2[20]~63_combout\,
	cout => \clk_counter_2[20]~64\);

-- Location: FF_X19_Y9_N19
\clk_counter_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[20]~63_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(20));

-- Location: LCCOMB_X19_Y9_N20
\clk_counter_2[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[21]~65_combout\ = (clk_counter_2(21) & (!\clk_counter_2[20]~64\)) # (!clk_counter_2(21) & ((\clk_counter_2[20]~64\) # (GND)))
-- \clk_counter_2[21]~66\ = CARRY((!\clk_counter_2[20]~64\) # (!clk_counter_2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(21),
	datad => VCC,
	cin => \clk_counter_2[20]~64\,
	combout => \clk_counter_2[21]~65_combout\,
	cout => \clk_counter_2[21]~66\);

-- Location: FF_X19_Y9_N21
\clk_counter_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[21]~65_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(21));

-- Location: LCCOMB_X19_Y9_N22
\clk_counter_2[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_2[22]~67_combout\ = clk_counter_2(22) $ (!\clk_counter_2[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(22),
	cin => \clk_counter_2[21]~66\,
	combout => \clk_counter_2[22]~67_combout\);

-- Location: FF_X19_Y9_N23
\clk_counter_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_2[22]~67_combout\,
	sclr => \ALT_INV_LessThan2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_2(22));

-- Location: LCCOMB_X18_Y9_N0
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (((!clk_counter_2(14) & !clk_counter_2(15))) # (!clk_counter_2(16))) # (!clk_counter_2(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(14),
	datab => clk_counter_2(15),
	datac => clk_counter_2(17),
	datad => clk_counter_2(16),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X18_Y9_N6
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (((\LessThan2~4_combout\) # (!clk_counter_2(18))) # (!clk_counter_2(20))) # (!clk_counter_2(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(19),
	datab => clk_counter_2(20),
	datac => clk_counter_2(18),
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X19_Y9_N24
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!clk_counter_2(21) & (!clk_counter_2(13) & !clk_counter_2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_2(21),
	datac => clk_counter_2(13),
	datad => clk_counter_2(15),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (((!clk_counter_2(9)) # (!clk_counter_2(12))) # (!clk_counter_2(11))) # (!clk_counter_2(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(10),
	datab => clk_counter_2(11),
	datac => clk_counter_2(12),
	datad => clk_counter_2(9),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X19_Y10_N6
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!clk_counter_2(6) & (!clk_counter_2(4) & (!clk_counter_2(7) & !clk_counter_2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(6),
	datab => clk_counter_2(4),
	datac => clk_counter_2(7),
	datad => clk_counter_2(5),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X19_Y9_N28
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (\LessThan2~0_combout\ & ((\LessThan2~1_combout\) # ((!clk_counter_2(8) & \LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => clk_counter_2(8),
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X19_Y9_N30
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((\LessThan2~3_combout\) # ((!clk_counter_2(21) & \LessThan2~5_combout\))) # (!clk_counter_2(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_2(22),
	datab => clk_counter_2(21),
	datac => \LessThan2~5_combout\,
	datad => \LessThan2~3_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X19_Y10_N8
\blinker_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker_2~0_combout\ = \blinker_2~q\ $ (!\LessThan2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \blinker_2~q\,
	datad => \LessThan2~6_combout\,
	combout => \blinker_2~0_combout\);

-- Location: FF_X19_Y10_N9
blinker_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blinker_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker_2~q\);

-- Location: IOIBUF_X34_Y12_N22
\button0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button0,
	o => \button0~input_o\);

-- Location: LCCOMB_X33_Y10_N2
\buttonPrev0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonPrev0~0_combout\ = !\button0~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button0~input_o\,
	combout => \buttonPrev0~0_combout\);

-- Location: FF_X33_Y10_N3
buttonPrev0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonPrev0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonPrev0~q\);

-- Location: LCCOMB_X33_Y10_N12
\blinker_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \blinker_3~0_combout\ = \blinker_3~q\ $ (((!\button0~input_o\ & !\buttonPrev0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button0~input_o\,
	datac => \blinker_3~q\,
	datad => \buttonPrev0~q\,
	combout => \blinker_3~0_combout\);

-- Location: FF_X33_Y10_N13
blinker_3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \blinker_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \blinker_3~q\);

-- Location: IOIBUF_X34_Y12_N8
\button2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button2,
	o => \button2~input_o\);

-- Location: LCCOMB_X33_Y9_N28
\buttonPrev2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonPrev2~0_combout\ = !\button2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button2~input_o\,
	combout => \buttonPrev2~0_combout\);

-- Location: FF_X33_Y9_N29
buttonPrev2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonPrev2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonPrev2~q\);

-- Location: IOIBUF_X34_Y12_N15
\button1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button1,
	o => \button1~input_o\);

-- Location: LCCOMB_X33_Y9_N20
\buttonPrev1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonPrev1~0_combout\ = !\button1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button1~input_o\,
	combout => \buttonPrev1~0_combout\);

-- Location: FF_X33_Y9_N21
buttonPrev1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonPrev1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonPrev1~q\);

-- Location: LCCOMB_X33_Y9_N10
\enBuzz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enBuzz~0_combout\ = (\enBuzz~q\) # ((!\button1~input_o\ & !\buttonPrev1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button1~input_o\,
	datac => \enBuzz~q\,
	datad => \buttonPrev1~q\,
	combout => \enBuzz~0_combout\);

-- Location: LCCOMB_X33_Y9_N26
\enBuzz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enBuzz~1_combout\ = (\enBuzz~0_combout\ & ((\buttonPrev2~q\) # (\button2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonPrev2~q\,
	datac => \button2~input_o\,
	datad => \enBuzz~0_combout\,
	combout => \enBuzz~1_combout\);

-- Location: FF_X33_Y9_N27
enBuzz : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enBuzz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enBuzz~q\);

-- Location: LCCOMB_X32_Y9_N0
\clk_counter_buzz[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[0]~16_combout\ = clk_counter_buzz(0) $ (VCC)
-- \clk_counter_buzz[0]~17\ = CARRY(clk_counter_buzz(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(0),
	datad => VCC,
	combout => \clk_counter_buzz[0]~16_combout\,
	cout => \clk_counter_buzz[0]~17\);

-- Location: LCCOMB_X32_Y9_N24
\clk_counter_buzz[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[12]~40_combout\ = (clk_counter_buzz(12) & (\clk_counter_buzz[11]~39\ $ (GND))) # (!clk_counter_buzz(12) & (!\clk_counter_buzz[11]~39\ & VCC))
-- \clk_counter_buzz[12]~41\ = CARRY((clk_counter_buzz(12) & !\clk_counter_buzz[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(12),
	datad => VCC,
	cin => \clk_counter_buzz[11]~39\,
	combout => \clk_counter_buzz[12]~40_combout\,
	cout => \clk_counter_buzz[12]~41\);

-- Location: LCCOMB_X32_Y9_N26
\clk_counter_buzz[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[13]~42_combout\ = (clk_counter_buzz(13) & (!\clk_counter_buzz[12]~41\)) # (!clk_counter_buzz(13) & ((\clk_counter_buzz[12]~41\) # (GND)))
-- \clk_counter_buzz[13]~43\ = CARRY((!\clk_counter_buzz[12]~41\) # (!clk_counter_buzz(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(13),
	datad => VCC,
	cin => \clk_counter_buzz[12]~41\,
	combout => \clk_counter_buzz[13]~42_combout\,
	cout => \clk_counter_buzz[13]~43\);

-- Location: FF_X32_Y9_N27
\clk_counter_buzz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[13]~42_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(13));

-- Location: LCCOMB_X32_Y9_N28
\clk_counter_buzz[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[14]~44_combout\ = (clk_counter_buzz(14) & (\clk_counter_buzz[13]~43\ $ (GND))) # (!clk_counter_buzz(14) & (!\clk_counter_buzz[13]~43\ & VCC))
-- \clk_counter_buzz[14]~45\ = CARRY((clk_counter_buzz(14) & !\clk_counter_buzz[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(14),
	datad => VCC,
	cin => \clk_counter_buzz[13]~43\,
	combout => \clk_counter_buzz[14]~44_combout\,
	cout => \clk_counter_buzz[14]~45\);

-- Location: FF_X32_Y9_N29
\clk_counter_buzz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[14]~44_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(14));

-- Location: LCCOMB_X32_Y9_N30
\clk_counter_buzz[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[15]~47_combout\ = clk_counter_buzz(15) $ (\clk_counter_buzz[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(15),
	cin => \clk_counter_buzz[14]~45\,
	combout => \clk_counter_buzz[15]~47_combout\);

-- Location: FF_X32_Y9_N31
\clk_counter_buzz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[15]~47_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(15));

-- Location: LCCOMB_X33_Y9_N0
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!clk_counter_buzz(14)) # (!clk_counter_buzz(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(15),
	datad => clk_counter_buzz(14),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X33_Y9_N4
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ((!clk_counter_buzz(1) & (!clk_counter_buzz(3) & !clk_counter_buzz(2)))) # (!clk_counter_buzz(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(1),
	datab => clk_counter_buzz(3),
	datac => clk_counter_buzz(2),
	datad => clk_counter_buzz(4),
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X33_Y9_N6
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (((!clk_counter_buzz(5)) # (!clk_counter_buzz(8))) # (!clk_counter_buzz(6))) # (!clk_counter_buzz(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(7),
	datab => clk_counter_buzz(6),
	datac => clk_counter_buzz(8),
	datad => clk_counter_buzz(5),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X33_Y9_N24
\LessThan3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~4_combout\ = (!clk_counter_buzz(13) & (!clk_counter_buzz(9) & ((\LessThan3~2_combout\) # (\LessThan3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(13),
	datab => clk_counter_buzz(9),
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	combout => \LessThan3~4_combout\);

-- Location: LCCOMB_X33_Y9_N18
\clk_counter_buzz[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[15]~46_combout\ = ((!\LessThan3~0_combout\ & (!\LessThan3~1_combout\ & !\LessThan3~4_combout\))) # (!\enBuzz~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enBuzz~q\,
	datab => \LessThan3~0_combout\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~4_combout\,
	combout => \clk_counter_buzz[15]~46_combout\);

-- Location: FF_X32_Y9_N1
\clk_counter_buzz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[0]~16_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(0));

-- Location: LCCOMB_X32_Y9_N2
\clk_counter_buzz[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[1]~18_combout\ = (clk_counter_buzz(1) & (!\clk_counter_buzz[0]~17\)) # (!clk_counter_buzz(1) & ((\clk_counter_buzz[0]~17\) # (GND)))
-- \clk_counter_buzz[1]~19\ = CARRY((!\clk_counter_buzz[0]~17\) # (!clk_counter_buzz(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(1),
	datad => VCC,
	cin => \clk_counter_buzz[0]~17\,
	combout => \clk_counter_buzz[1]~18_combout\,
	cout => \clk_counter_buzz[1]~19\);

-- Location: FF_X32_Y9_N3
\clk_counter_buzz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[1]~18_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(1));

-- Location: LCCOMB_X32_Y9_N4
\clk_counter_buzz[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[2]~20_combout\ = (clk_counter_buzz(2) & (\clk_counter_buzz[1]~19\ $ (GND))) # (!clk_counter_buzz(2) & (!\clk_counter_buzz[1]~19\ & VCC))
-- \clk_counter_buzz[2]~21\ = CARRY((clk_counter_buzz(2) & !\clk_counter_buzz[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(2),
	datad => VCC,
	cin => \clk_counter_buzz[1]~19\,
	combout => \clk_counter_buzz[2]~20_combout\,
	cout => \clk_counter_buzz[2]~21\);

-- Location: FF_X32_Y9_N5
\clk_counter_buzz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[2]~20_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(2));

-- Location: LCCOMB_X32_Y9_N6
\clk_counter_buzz[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[3]~22_combout\ = (clk_counter_buzz(3) & (!\clk_counter_buzz[2]~21\)) # (!clk_counter_buzz(3) & ((\clk_counter_buzz[2]~21\) # (GND)))
-- \clk_counter_buzz[3]~23\ = CARRY((!\clk_counter_buzz[2]~21\) # (!clk_counter_buzz(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(3),
	datad => VCC,
	cin => \clk_counter_buzz[2]~21\,
	combout => \clk_counter_buzz[3]~22_combout\,
	cout => \clk_counter_buzz[3]~23\);

-- Location: FF_X32_Y9_N7
\clk_counter_buzz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[3]~22_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(3));

-- Location: LCCOMB_X32_Y9_N8
\clk_counter_buzz[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[4]~24_combout\ = (clk_counter_buzz(4) & (\clk_counter_buzz[3]~23\ $ (GND))) # (!clk_counter_buzz(4) & (!\clk_counter_buzz[3]~23\ & VCC))
-- \clk_counter_buzz[4]~25\ = CARRY((clk_counter_buzz(4) & !\clk_counter_buzz[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(4),
	datad => VCC,
	cin => \clk_counter_buzz[3]~23\,
	combout => \clk_counter_buzz[4]~24_combout\,
	cout => \clk_counter_buzz[4]~25\);

-- Location: FF_X32_Y9_N9
\clk_counter_buzz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[4]~24_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(4));

-- Location: LCCOMB_X32_Y9_N10
\clk_counter_buzz[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[5]~26_combout\ = (clk_counter_buzz(5) & (!\clk_counter_buzz[4]~25\)) # (!clk_counter_buzz(5) & ((\clk_counter_buzz[4]~25\) # (GND)))
-- \clk_counter_buzz[5]~27\ = CARRY((!\clk_counter_buzz[4]~25\) # (!clk_counter_buzz(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(5),
	datad => VCC,
	cin => \clk_counter_buzz[4]~25\,
	combout => \clk_counter_buzz[5]~26_combout\,
	cout => \clk_counter_buzz[5]~27\);

-- Location: FF_X32_Y9_N11
\clk_counter_buzz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[5]~26_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(5));

-- Location: LCCOMB_X32_Y9_N12
\clk_counter_buzz[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[6]~28_combout\ = (clk_counter_buzz(6) & (\clk_counter_buzz[5]~27\ $ (GND))) # (!clk_counter_buzz(6) & (!\clk_counter_buzz[5]~27\ & VCC))
-- \clk_counter_buzz[6]~29\ = CARRY((clk_counter_buzz(6) & !\clk_counter_buzz[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(6),
	datad => VCC,
	cin => \clk_counter_buzz[5]~27\,
	combout => \clk_counter_buzz[6]~28_combout\,
	cout => \clk_counter_buzz[6]~29\);

-- Location: FF_X32_Y9_N13
\clk_counter_buzz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[6]~28_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(6));

-- Location: LCCOMB_X32_Y9_N14
\clk_counter_buzz[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[7]~30_combout\ = (clk_counter_buzz(7) & (!\clk_counter_buzz[6]~29\)) # (!clk_counter_buzz(7) & ((\clk_counter_buzz[6]~29\) # (GND)))
-- \clk_counter_buzz[7]~31\ = CARRY((!\clk_counter_buzz[6]~29\) # (!clk_counter_buzz(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(7),
	datad => VCC,
	cin => \clk_counter_buzz[6]~29\,
	combout => \clk_counter_buzz[7]~30_combout\,
	cout => \clk_counter_buzz[7]~31\);

-- Location: FF_X32_Y9_N15
\clk_counter_buzz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[7]~30_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(7));

-- Location: LCCOMB_X32_Y9_N16
\clk_counter_buzz[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[8]~32_combout\ = (clk_counter_buzz(8) & (\clk_counter_buzz[7]~31\ $ (GND))) # (!clk_counter_buzz(8) & (!\clk_counter_buzz[7]~31\ & VCC))
-- \clk_counter_buzz[8]~33\ = CARRY((clk_counter_buzz(8) & !\clk_counter_buzz[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(8),
	datad => VCC,
	cin => \clk_counter_buzz[7]~31\,
	combout => \clk_counter_buzz[8]~32_combout\,
	cout => \clk_counter_buzz[8]~33\);

-- Location: FF_X32_Y9_N17
\clk_counter_buzz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[8]~32_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(8));

-- Location: LCCOMB_X32_Y9_N18
\clk_counter_buzz[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[9]~34_combout\ = (clk_counter_buzz(9) & (!\clk_counter_buzz[8]~33\)) # (!clk_counter_buzz(9) & ((\clk_counter_buzz[8]~33\) # (GND)))
-- \clk_counter_buzz[9]~35\ = CARRY((!\clk_counter_buzz[8]~33\) # (!clk_counter_buzz(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(9),
	datad => VCC,
	cin => \clk_counter_buzz[8]~33\,
	combout => \clk_counter_buzz[9]~34_combout\,
	cout => \clk_counter_buzz[9]~35\);

-- Location: FF_X32_Y9_N19
\clk_counter_buzz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[9]~34_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(9));

-- Location: LCCOMB_X32_Y9_N20
\clk_counter_buzz[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[10]~36_combout\ = (clk_counter_buzz(10) & (\clk_counter_buzz[9]~35\ $ (GND))) # (!clk_counter_buzz(10) & (!\clk_counter_buzz[9]~35\ & VCC))
-- \clk_counter_buzz[10]~37\ = CARRY((clk_counter_buzz(10) & !\clk_counter_buzz[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clk_counter_buzz(10),
	datad => VCC,
	cin => \clk_counter_buzz[9]~35\,
	combout => \clk_counter_buzz[10]~36_combout\,
	cout => \clk_counter_buzz[10]~37\);

-- Location: FF_X32_Y9_N21
\clk_counter_buzz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[10]~36_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(10));

-- Location: LCCOMB_X32_Y9_N22
\clk_counter_buzz[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_counter_buzz[11]~38_combout\ = (clk_counter_buzz(11) & (!\clk_counter_buzz[10]~37\)) # (!clk_counter_buzz(11) & ((\clk_counter_buzz[10]~37\) # (GND)))
-- \clk_counter_buzz[11]~39\ = CARRY((!\clk_counter_buzz[10]~37\) # (!clk_counter_buzz(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(11),
	datad => VCC,
	cin => \clk_counter_buzz[10]~37\,
	combout => \clk_counter_buzz[11]~38_combout\,
	cout => \clk_counter_buzz[11]~39\);

-- Location: FF_X32_Y9_N23
\clk_counter_buzz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[11]~38_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(11));

-- Location: FF_X32_Y9_N25
\clk_counter_buzz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_counter_buzz[12]~40_combout\,
	sclr => \clk_counter_buzz[15]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_counter_buzz(12));

-- Location: LCCOMB_X33_Y9_N22
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!clk_counter_buzz(13) & (((!clk_counter_buzz(10)) # (!clk_counter_buzz(11))) # (!clk_counter_buzz(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clk_counter_buzz(12),
	datab => clk_counter_buzz(11),
	datac => clk_counter_buzz(13),
	datad => clk_counter_buzz(10),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X33_Y9_N2
\buzzer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer~0_combout\ = \buzzer~q\ $ (((!\LessThan3~1_combout\ & (!\LessThan3~0_combout\ & !\LessThan3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \LessThan3~0_combout\,
	datac => \buzzer~q\,
	datad => \LessThan3~4_combout\,
	combout => \buzzer~0_combout\);

-- Location: LCCOMB_X33_Y9_N8
\buzzer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzzer~1_combout\ = (\enBuzz~q\ & \buzzer~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enBuzz~q\,
	datad => \buzzer~0_combout\,
	combout => \buzzer~1_combout\);

-- Location: FF_X33_Y9_N9
buzzer : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buzzer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buzzer~q\);

ww_led0 <= \led0~output_o\;

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_buzz <= \buzz~output_o\;
END structure;


