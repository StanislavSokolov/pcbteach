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

-- DATE "02/12/2024 16:35:10"

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

ENTITY 	Count10 IS
    PORT (
	C : IN std_logic;
	D0 : OUT std_logic;
	D1 : OUT std_logic;
	D2 : OUT std_logic;
	D3 : OUT std_logic
	);
END Count10;

-- Design Ports Information
-- D0	=>  Location: PIN_166,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_167,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_168,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3	=>  Location: PIN_169,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_173,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_C : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \b2v_inst3|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst3|inst3|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst3|inst3|inst20~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_32~combout\ : std_logic;
SIGNAL \b2v_inst2|inst3|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst2|inst|inst20~1_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_3~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|inst21~1_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_1~0_combout\ : std_logic;
SIGNAL \b2v_inst|inst3|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst|inst|inst20~1_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_27~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_14~0_combout\ : std_logic;
SIGNAL \b2v_inst2|inst3|inst20~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|inst20~combout\ : std_logic;
SIGNAL \b2v_inst|inst3|inst20~combout\ : std_logic;
SIGNAL \b2v_inst|inst3|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \b2v_inst1|inst3|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \b2v_inst2|inst3|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \b2v_inst3|inst3|ALT_INV_inst20~combout\ : std_logic;

BEGIN

ww_C <= C;
D0 <= ww_D0;
D1 <= ww_D1;
D2 <= ww_D2;
D3 <= ww_D3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\b2v_inst|inst3|ALT_INV_inst20~combout\ <= NOT \b2v_inst|inst3|inst20~combout\;
\b2v_inst1|inst3|ALT_INV_inst20~combout\ <= NOT \b2v_inst1|inst3|inst20~combout\;
\b2v_inst2|inst3|ALT_INV_inst20~combout\ <= NOT \b2v_inst2|inst3|inst20~combout\;
\b2v_inst3|inst3|ALT_INV_inst20~combout\ <= NOT \b2v_inst3|inst3|inst20~combout\;

-- Location: IOOBUF_X53_Y22_N2
\D0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst3|inst3|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X53_Y23_N23
\D1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst2|inst3|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X53_Y23_N16
\D2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst1|inst3|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\D3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst|inst3|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOIBUF_X53_Y26_N22
\C~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: LCCOMB_X52_Y26_N10
\b2v_inst3|inst|inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|inst|inst20~1_combout\ = (\C~input_o\ & ((\b2v_inst3|inst3|inst21~1_combout\))) # (!\C~input_o\ & (\b2v_inst3|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|inst|inst20~1_combout\,
	datab => \b2v_inst3|inst3|inst21~1_combout\,
	datad => \C~input_o\,
	combout => \b2v_inst3|inst|inst20~1_combout\);

-- Location: LCCOMB_X52_Y26_N22
\b2v_inst3|inst3|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|inst3|inst21~1_combout\ = (\C~input_o\ & ((\b2v_inst3|inst3|inst21~1_combout\))) # (!\C~input_o\ & (!\b2v_inst3|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|inst|inst20~1_combout\,
	datac => \b2v_inst3|inst3|inst21~1_combout\,
	datad => \C~input_o\,
	combout => \b2v_inst3|inst3|inst21~1_combout\);

-- Location: LCCOMB_X52_Y26_N12
\b2v_inst3|inst3|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst3|inst3|inst20~combout\ = (\b2v_inst3|inst3|inst21~1_combout\) # ((!\C~input_o\ & !\b2v_inst3|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C~input_o\,
	datac => \b2v_inst3|inst3|inst21~1_combout\,
	datad => \b2v_inst3|inst|inst20~1_combout\,
	combout => \b2v_inst3|inst3|inst20~combout\);

-- Location: LCCOMB_X52_Y26_N4
SYNTHESIZED_WIRE_32 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_32~combout\ = (\SYNTHESIZED_WIRE_27~combout\ & \C~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SYNTHESIZED_WIRE_27~combout\,
	datad => \C~input_o\,
	combout => \SYNTHESIZED_WIRE_32~combout\);

-- Location: LCCOMB_X52_Y26_N8
\b2v_inst2|inst3|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|inst3|inst21~1_combout\ = (\SYNTHESIZED_WIRE_14~0_combout\ & (!\b2v_inst2|inst|inst20~1_combout\)) # (!\SYNTHESIZED_WIRE_14~0_combout\ & ((\b2v_inst2|inst3|inst21~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|inst|inst20~1_combout\,
	datab => \b2v_inst2|inst3|inst21~1_combout\,
	datac => \SYNTHESIZED_WIRE_14~0_combout\,
	combout => \b2v_inst2|inst3|inst21~1_combout\);

-- Location: LCCOMB_X52_Y26_N24
\b2v_inst2|inst|inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|inst|inst20~1_combout\ = (\SYNTHESIZED_WIRE_14~0_combout\ & (\b2v_inst2|inst|inst20~1_combout\)) # (!\SYNTHESIZED_WIRE_14~0_combout\ & (((\b2v_inst2|inst3|inst21~1_combout\) # (\SYNTHESIZED_WIRE_27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_14~0_combout\,
	datab => \b2v_inst2|inst|inst20~1_combout\,
	datac => \b2v_inst2|inst3|inst21~1_combout\,
	datad => \SYNTHESIZED_WIRE_27~combout\,
	combout => \b2v_inst2|inst|inst20~1_combout\);

-- Location: LCCOMB_X52_Y26_N14
\SYNTHESIZED_WIRE_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_3~0_combout\ = (!\b2v_inst2|inst3|inst21~1_combout\ & (!\SYNTHESIZED_WIRE_32~combout\ & ((\b2v_inst2|inst|inst20~1_combout\) # (!\SYNTHESIZED_WIRE_14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|inst|inst20~1_combout\,
	datab => \b2v_inst2|inst3|inst21~1_combout\,
	datac => \SYNTHESIZED_WIRE_32~combout\,
	datad => \SYNTHESIZED_WIRE_14~0_combout\,
	combout => \SYNTHESIZED_WIRE_3~0_combout\);

-- Location: LCCOMB_X52_Y26_N16
\b2v_inst1|inst|inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst20~1_combout\ = (\SYNTHESIZED_WIRE_3~0_combout\ & (((\b2v_inst1|inst|inst20~1_combout\)))) # (!\SYNTHESIZED_WIRE_3~0_combout\ & ((\SYNTHESIZED_WIRE_27~combout\) # ((\b2v_inst1|inst3|inst21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_27~combout\,
	datab => \b2v_inst1|inst|inst20~1_combout\,
	datac => \SYNTHESIZED_WIRE_3~0_combout\,
	datad => \b2v_inst1|inst3|inst21~1_combout\,
	combout => \b2v_inst1|inst|inst20~1_combout\);

-- Location: LCCOMB_X52_Y26_N28
\b2v_inst1|inst3|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|inst21~1_combout\ = (\b2v_inst2|inst3|inst20~combout\ & (((\b2v_inst1|inst3|inst21~1_combout\)))) # (!\b2v_inst2|inst3|inst20~combout\ & ((\SYNTHESIZED_WIRE_32~combout\ & (\b2v_inst1|inst3|inst21~1_combout\)) # 
-- (!\SYNTHESIZED_WIRE_32~combout\ & ((!\b2v_inst1|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|inst3|inst20~combout\,
	datab => \SYNTHESIZED_WIRE_32~combout\,
	datac => \b2v_inst1|inst3|inst21~1_combout\,
	datad => \b2v_inst1|inst|inst20~1_combout\,
	combout => \b2v_inst1|inst3|inst21~1_combout\);

-- Location: LCCOMB_X52_Y26_N20
\SYNTHESIZED_WIRE_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_1~0_combout\ = (!\SYNTHESIZED_WIRE_32~combout\ & (!\b2v_inst1|inst3|inst21~1_combout\ & ((\b2v_inst2|inst3|inst20~combout\) # (\b2v_inst1|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|inst3|inst20~combout\,
	datab => \SYNTHESIZED_WIRE_32~combout\,
	datac => \b2v_inst1|inst3|inst21~1_combout\,
	datad => \b2v_inst1|inst|inst20~1_combout\,
	combout => \SYNTHESIZED_WIRE_1~0_combout\);

-- Location: LCCOMB_X52_Y26_N2
\b2v_inst|inst3|inst21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|inst3|inst21~1_combout\ = (\SYNTHESIZED_WIRE_1~0_combout\ & ((!\b2v_inst|inst|inst20~1_combout\))) # (!\SYNTHESIZED_WIRE_1~0_combout\ & (\b2v_inst|inst3|inst21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst3|inst21~1_combout\,
	datac => \b2v_inst|inst|inst20~1_combout\,
	datad => \SYNTHESIZED_WIRE_1~0_combout\,
	combout => \b2v_inst|inst3|inst21~1_combout\);

-- Location: LCCOMB_X52_Y26_N30
\b2v_inst|inst|inst20~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|inst|inst20~1_combout\ = (\SYNTHESIZED_WIRE_1~0_combout\ & (((\b2v_inst|inst|inst20~1_combout\)))) # (!\SYNTHESIZED_WIRE_1~0_combout\ & ((\b2v_inst|inst3|inst21~1_combout\) # ((\SYNTHESIZED_WIRE_27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|inst3|inst21~1_combout\,
	datab => \b2v_inst|inst|inst20~1_combout\,
	datac => \SYNTHESIZED_WIRE_27~combout\,
	datad => \SYNTHESIZED_WIRE_1~0_combout\,
	combout => \b2v_inst|inst|inst20~1_combout\);

-- Location: LCCOMB_X52_Y26_N0
SYNTHESIZED_WIRE_27 : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_27~combout\ = (\b2v_inst3|inst3|inst20~combout\ & ((\b2v_inst|inst3|inst21~1_combout\) # ((\SYNTHESIZED_WIRE_1~0_combout\ & !\b2v_inst|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|inst3|inst20~combout\,
	datab => \SYNTHESIZED_WIRE_1~0_combout\,
	datac => \b2v_inst|inst|inst20~1_combout\,
	datad => \b2v_inst|inst3|inst21~1_combout\,
	combout => \SYNTHESIZED_WIRE_27~combout\);

-- Location: LCCOMB_X52_Y26_N26
\SYNTHESIZED_WIRE_14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_14~0_combout\ = (!\b2v_inst3|inst3|inst21~1_combout\ & ((\C~input_o\ & ((!\SYNTHESIZED_WIRE_27~combout\))) # (!\C~input_o\ & (\b2v_inst3|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|inst|inst20~1_combout\,
	datab => \SYNTHESIZED_WIRE_27~combout\,
	datac => \b2v_inst3|inst3|inst21~1_combout\,
	datad => \C~input_o\,
	combout => \SYNTHESIZED_WIRE_14~0_combout\);

-- Location: LCCOMB_X52_Y26_N6
\b2v_inst2|inst3|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst2|inst3|inst20~combout\ = (\b2v_inst2|inst3|inst21~1_combout\) # ((\SYNTHESIZED_WIRE_14~0_combout\ & !\b2v_inst2|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_14~0_combout\,
	datac => \b2v_inst2|inst3|inst21~1_combout\,
	datad => \b2v_inst2|inst|inst20~1_combout\,
	combout => \b2v_inst2|inst3|inst20~combout\);

-- Location: LCCOMB_X52_Y26_N18
\b2v_inst1|inst3|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst3|inst20~combout\ = (\b2v_inst1|inst3|inst21~1_combout\) # ((\SYNTHESIZED_WIRE_3~0_combout\ & !\b2v_inst1|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst3|inst21~1_combout\,
	datab => \SYNTHESIZED_WIRE_3~0_combout\,
	datac => \b2v_inst1|inst|inst20~1_combout\,
	combout => \b2v_inst1|inst3|inst20~combout\);

-- Location: LCCOMB_X51_Y26_N24
\b2v_inst|inst3|inst20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2v_inst|inst3|inst20~combout\ = (\b2v_inst|inst3|inst21~1_combout\) # ((\SYNTHESIZED_WIRE_1~0_combout\ & !\b2v_inst|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SYNTHESIZED_WIRE_1~0_combout\,
	datac => \b2v_inst|inst|inst20~1_combout\,
	datad => \b2v_inst|inst3|inst21~1_combout\,
	combout => \b2v_inst|inst3|inst20~combout\);

ww_D0 <= \D0~output_o\;

ww_D1 <= \D1~output_o\;

ww_D2 <= \D2~output_o\;

ww_D3 <= \D3~output_o\;
END structure;


