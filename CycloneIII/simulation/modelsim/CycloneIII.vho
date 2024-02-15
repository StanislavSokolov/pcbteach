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

-- DATE "02/15/2024 15:57:22"

-- 
-- Device: Altera EP3C25Q240C8 Package PQFP240
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CycloneIII IS
    PORT (
	led_1 : OUT std_logic;
	mode_1 : IN std_logic;
	mode_2 : IN std_logic;
	led_2 : OUT std_logic;
	mode_3 : IN std_logic;
	led_3 : OUT std_logic;
	led_4 : OUT std_logic;
	led_5 : OUT std_logic
	);
END CycloneIII;

-- Design Ports Information
-- led_1	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_2	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_3	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_4	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_5	=>  Location: PIN_171,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_1	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_2	=>  Location: PIN_176,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_3	=>  Location: PIN_177,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CycloneIII IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led_1 : std_logic;
SIGNAL ww_mode_1 : std_logic;
SIGNAL ww_mode_2 : std_logic;
SIGNAL ww_led_2 : std_logic;
SIGNAL ww_mode_3 : std_logic;
SIGNAL ww_led_3 : std_logic;
SIGNAL ww_led_4 : std_logic;
SIGNAL ww_led_5 : std_logic;
SIGNAL \led_1~output_o\ : std_logic;
SIGNAL \led_2~output_o\ : std_logic;
SIGNAL \led_3~output_o\ : std_logic;
SIGNAL \led_4~output_o\ : std_logic;
SIGNAL \led_5~output_o\ : std_logic;
SIGNAL \mode_1~input_o\ : std_logic;
SIGNAL \mode_2~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \mode_3~input_o\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_mode_2~input_o\ : std_logic;
SIGNAL \ALT_INV_mode_1~input_o\ : std_logic;

BEGIN

led_1 <= ww_led_1;
ww_mode_1 <= mode_1;
ww_mode_2 <= mode_2;
led_2 <= ww_led_2;
ww_mode_3 <= mode_3;
led_3 <= ww_led_3;
led_4 <= ww_led_4;
led_5 <= ww_led_5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_mode_2~input_o\ <= NOT \mode_2~input_o\;
\ALT_INV_mode_1~input_o\ <= NOT \mode_1~input_o\;

-- Location: IOOBUF_X53_Y22_N2
\led_1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \led_1~output_o\);

-- Location: IOOBUF_X53_Y23_N23
\led_2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \led_2~output_o\);

-- Location: IOOBUF_X53_Y23_N16
\led_3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \led_3~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\led_4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mode_2~input_o\,
	devoe => ww_devoe,
	o => \led_4~output_o\);

-- Location: IOOBUF_X53_Y25_N2
\led_5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_mode_1~input_o\,
	devoe => ww_devoe,
	o => \led_5~output_o\);

-- Location: IOIBUF_X53_Y26_N22
\mode_1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_1,
	o => \mode_1~input_o\);

-- Location: IOIBUF_X53_Y30_N8
\mode_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_2,
	o => \mode_2~input_o\);

-- Location: LCCOMB_X52_Y27_N8
inst : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\mode_1~input_o\ & \mode_2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_1~input_o\,
	datad => \mode_2~input_o\,
	combout => \inst~combout\);

-- Location: IOIBUF_X53_Y30_N1
\mode_3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_3,
	o => \mode_3~input_o\);

-- Location: LCCOMB_X52_Y27_N18
inst1 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\mode_3~input_o\ & \mode_2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_3~input_o\,
	datad => \mode_2~input_o\,
	combout => \inst1~combout\);

-- Location: LCCOMB_X52_Y27_N28
\inst2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\mode_3~input_o\) # ((\mode_1~input_o\) # (\mode_2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_3~input_o\,
	datac => \mode_1~input_o\,
	datad => \mode_2~input_o\,
	combout => \inst2~0_combout\);

ww_led_1 <= \led_1~output_o\;

ww_led_2 <= \led_2~output_o\;

ww_led_3 <= \led_3~output_o\;

ww_led_4 <= \led_4~output_o\;

ww_led_5 <= \led_5~output_o\;
END structure;


