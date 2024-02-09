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

-- DATE "02/09/2024 21:41:16"

-- 
-- Device: Altera EP4CE10E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Count10 IS
    PORT (
	D0 : OUT std_logic;
	C : IN std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic
	);
END Count10;

-- Design Ports Information
-- D0	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Count10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \inst9|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst9|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst9|inst2|inst20~combout\ : std_logic;
SIGNAL \inst23~combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst3|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst3|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst2|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst2|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst4|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst21~1_combout\ : std_logic;
SIGNAL \inst4|inst2|inst20~combout\ : std_logic;
SIGNAL \inst3|inst2|inst20~combout\ : std_logic;
SIGNAL \inst2|inst2|inst20~combout\ : std_logic;
SIGNAL \inst2|inst2|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst3|inst2|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst4|inst2|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst9|inst2|ALT_INV_inst20~combout\ : std_logic;

BEGIN

D0 <= ww_D0;
ww_C <= C;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst2|inst2|ALT_INV_inst20~combout\ <= NOT \inst2|inst2|inst20~combout\;
\inst3|inst2|ALT_INV_inst20~combout\ <= NOT \inst3|inst2|inst20~combout\;
\inst4|inst2|ALT_INV_inst20~combout\ <= NOT \inst4|inst2|inst20~combout\;
\inst9|inst2|ALT_INV_inst20~combout\ <= NOT \inst9|inst2|inst20~combout\;

-- Location: IOOBUF_X0_Y6_N16
\D0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|inst2|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\D1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|inst2|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\D2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst2|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\D3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X1_Y11_N28
\inst9|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|inst20~1_combout\ = (\C~input_o\ & (\inst9|inst2|inst21~1_combout\)) # (!\C~input_o\ & ((\inst9|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|inst21~1_combout\,
	datac => \inst9|inst|inst20~1_combout\,
	datad => \C~input_o\,
	combout => \inst9|inst|inst20~1_combout\);

-- Location: LCCOMB_X1_Y11_N6
\inst9|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst21~1_combout\ = (\C~input_o\ & ((\inst9|inst2|inst21~1_combout\))) # (!\C~input_o\ & (!\inst9|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst|inst20~1_combout\,
	datac => \C~input_o\,
	datad => \inst9|inst2|inst21~1_combout\,
	combout => \inst9|inst2|inst21~1_combout\);

-- Location: LCCOMB_X1_Y11_N2
\inst9|inst2|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst2|inst20~combout\ = (\inst9|inst2|inst21~1_combout\) # ((!\C~input_o\ & !\inst9|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst2|inst21~1_combout\,
	datac => \C~input_o\,
	datad => \inst9|inst|inst20~1_combout\,
	combout => \inst9|inst2|inst20~combout\);

-- Location: LCCOMB_X1_Y11_N22
inst23 : cycloneive_lcell_comb
-- Equation(s):
-- \inst23~combout\ = (\inst19~combout\ & \C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst19~combout\,
	datad => \C~input_o\,
	combout => \inst23~combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (!\inst23~combout\ & (!\inst4|inst2|inst21~1_combout\ & ((\inst4|inst|inst20~1_combout\) # (!\inst22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23~combout\,
	datab => \inst4|inst|inst20~1_combout\,
	datac => \inst22~0_combout\,
	datad => \inst4|inst2|inst21~1_combout\,
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X1_Y11_N24
\inst3|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst|inst20~1_combout\ = (\inst21~0_combout\ & (((\inst3|inst|inst20~1_combout\)))) # (!\inst21~0_combout\ & ((\inst19~combout\) # ((\inst3|inst2|inst21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~combout\,
	datab => \inst3|inst|inst20~1_combout\,
	datac => \inst21~0_combout\,
	datad => \inst3|inst2|inst21~1_combout\,
	combout => \inst3|inst|inst20~1_combout\);

-- Location: LCCOMB_X1_Y11_N18
\inst3|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst21~1_combout\ = (\inst4|inst2|inst20~combout\ & (\inst3|inst2|inst21~1_combout\)) # (!\inst4|inst2|inst20~combout\ & ((\inst23~combout\ & (\inst3|inst2|inst21~1_combout\)) # (!\inst23~combout\ & ((!\inst3|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst21~1_combout\,
	datab => \inst4|inst2|inst20~combout\,
	datac => \inst23~combout\,
	datad => \inst3|inst|inst20~1_combout\,
	combout => \inst3|inst2|inst21~1_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (!\inst3|inst2|inst21~1_combout\ & (!\inst23~combout\ & ((\inst4|inst2|inst20~combout\) # (\inst3|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst2|inst21~1_combout\,
	datab => \inst4|inst2|inst20~combout\,
	datac => \inst23~combout\,
	datad => \inst3|inst|inst20~1_combout\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X1_Y11_N14
\inst2|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst21~1_combout\ = (\inst20~0_combout\ & ((!\inst2|inst|inst20~1_combout\))) # (!\inst20~0_combout\ & (\inst2|inst2|inst21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst21~1_combout\,
	datab => \inst2|inst|inst20~1_combout\,
	datad => \inst20~0_combout\,
	combout => \inst2|inst2|inst21~1_combout\);

-- Location: LCCOMB_X1_Y11_N26
\inst2|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst|inst20~1_combout\ = (\inst20~0_combout\ & (((\inst2|inst|inst20~1_combout\)))) # (!\inst20~0_combout\ & ((\inst2|inst2|inst21~1_combout\) # ((\inst19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2|inst21~1_combout\,
	datab => \inst2|inst|inst20~1_combout\,
	datac => \inst19~combout\,
	datad => \inst20~0_combout\,
	combout => \inst2|inst|inst20~1_combout\);

-- Location: LCCOMB_X1_Y11_N30
inst19 : cycloneive_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\inst9|inst2|inst20~combout\ & ((\inst2|inst2|inst21~1_combout\) # ((\inst20~0_combout\ & !\inst2|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20~0_combout\,
	datab => \inst9|inst2|inst20~combout\,
	datac => \inst2|inst|inst20~1_combout\,
	datad => \inst2|inst2|inst21~1_combout\,
	combout => \inst19~combout\);

-- Location: LCCOMB_X1_Y11_N0
\inst22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (!\inst9|inst2|inst21~1_combout\ & ((\C~input_o\ & (!\inst19~combout\)) # (!\C~input_o\ & ((\inst9|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~combout\,
	datab => \inst9|inst2|inst21~1_combout\,
	datac => \inst9|inst|inst20~1_combout\,
	datad => \C~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\inst4|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst|inst20~1_combout\ = (\inst22~0_combout\ & (\inst4|inst|inst20~1_combout\)) # (!\inst22~0_combout\ & (((\inst4|inst2|inst21~1_combout\) # (\inst19~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst|inst20~1_combout\,
	datab => \inst4|inst2|inst21~1_combout\,
	datac => \inst22~0_combout\,
	datad => \inst19~combout\,
	combout => \inst4|inst|inst20~1_combout\);

-- Location: LCCOMB_X1_Y11_N12
\inst4|inst2|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst21~1_combout\ = (\inst22~0_combout\ & ((!\inst4|inst|inst20~1_combout\))) # (!\inst22~0_combout\ & (\inst4|inst2|inst21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst21~1_combout\,
	datab => \inst4|inst|inst20~1_combout\,
	datac => \inst22~0_combout\,
	combout => \inst4|inst2|inst21~1_combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst4|inst2|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|inst2|inst20~combout\ = (\inst4|inst2|inst21~1_combout\) # ((\inst22~0_combout\ & !\inst4|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inst2|inst21~1_combout\,
	datac => \inst22~0_combout\,
	datad => \inst4|inst|inst20~1_combout\,
	combout => \inst4|inst2|inst20~combout\);

-- Location: LCCOMB_X1_Y7_N16
\inst3|inst2|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|inst2|inst20~combout\ = (\inst3|inst2|inst21~1_combout\) # ((!\inst3|inst|inst20~1_combout\ & \inst21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|inst20~1_combout\,
	datac => \inst3|inst2|inst21~1_combout\,
	datad => \inst21~0_combout\,
	combout => \inst3|inst2|inst20~combout\);

-- Location: LCCOMB_X1_Y11_N4
\inst2|inst2|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|inst2|inst20~combout\ = (\inst2|inst2|inst21~1_combout\) # ((!\inst2|inst|inst20~1_combout\ & \inst20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst|inst20~1_combout\,
	datab => \inst2|inst2|inst21~1_combout\,
	datad => \inst20~0_combout\,
	combout => \inst2|inst2|inst20~combout\);

ww_D0 <= \D0~output_o\;

ww_D1 <= \D1~output_o\;

ww_D2 <= \D2~output_o\;

ww_D3 <= \D3~output_o\;
END structure;


