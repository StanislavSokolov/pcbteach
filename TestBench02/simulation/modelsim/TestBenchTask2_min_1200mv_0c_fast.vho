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

-- DATE "03/12/2024 10:49:41"

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

ENTITY 	TestBenchTask2 IS
    PORT (
	clk : IN std_logic;
	datain : IN std_logic_vector(7 DOWNTO 0);
	address : IN std_logic_vector(7 DOWNTO 0);
	w_r : IN std_logic;
	dataout : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TestBenchTask2;

-- Design Ports Information
-- dataout[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[3]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[4]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[5]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[6]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataout[7]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_r	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[4]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[5]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[2]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[3]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[5]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[6]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datain[7]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestBenchTask2 IS
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
SIGNAL ww_datain : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_address : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_w_r : std_logic;
SIGNAL ww_dataout : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataout[0]~output_o\ : std_logic;
SIGNAL \dataout[1]~output_o\ : std_logic;
SIGNAL \dataout[2]~output_o\ : std_logic;
SIGNAL \dataout[3]~output_o\ : std_logic;
SIGNAL \dataout[4]~output_o\ : std_logic;
SIGNAL \dataout[5]~output_o\ : std_logic;
SIGNAL \dataout[6]~output_o\ : std_logic;
SIGNAL \dataout[7]~output_o\ : std_logic;
SIGNAL \w_r~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \datain[0]~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[3]~input_o\ : std_logic;
SIGNAL \address[4]~input_o\ : std_logic;
SIGNAL \address[5]~input_o\ : std_logic;
SIGNAL \address[6]~input_o\ : std_logic;
SIGNAL \address[7]~input_o\ : std_logic;
SIGNAL \datain[1]~input_o\ : std_logic;
SIGNAL \datain[2]~input_o\ : std_logic;
SIGNAL \datain[3]~input_o\ : std_logic;
SIGNAL \datain[4]~input_o\ : std_logic;
SIGNAL \datain[5]~input_o\ : std_logic;
SIGNAL \datain[6]~input_o\ : std_logic;
SIGNAL \datain[7]~input_o\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \dataout[0]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[0]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dataout[1]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[1]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \dataout[2]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[2]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \dataout[3]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[3]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \dataout[4]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[4]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \dataout[5]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[5]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \dataout[6]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[6]~en_q\ : std_logic;
SIGNAL \memory_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \dataout[7]~enfeeder_combout\ : std_logic;
SIGNAL \dataout[7]~en_q\ : std_logic;
SIGNAL \ALT_INV_w_r~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_datain <= datain;
ww_address <= address;
ww_w_r <= w_r;
dataout <= ww_dataout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \datain[7]~input_o\ & 
\datain[6]~input_o\ & \datain[5]~input_o\ & \datain[4]~input_o\ & \datain[3]~input_o\ & \datain[2]~input_o\ & \datain[1]~input_o\ & \datain[0]~input_o\);

\memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\address[7]~input_o\ & \address[6]~input_o\ & \address[5]~input_o\ & \address[4]~input_o\ & \address[3]~input_o\ & \address[2]~input_o\ & \address[1]~input_o\ & \address[0]~input_o\);

\memory_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memory_rtl_0|auto_generated|ram_block1a1\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memory_rtl_0|auto_generated|ram_block1a2\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memory_rtl_0|auto_generated|ram_block1a3\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memory_rtl_0|auto_generated|ram_block1a4\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memory_rtl_0|auto_generated|ram_block1a5\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memory_rtl_0|auto_generated|ram_block1a6\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memory_rtl_0|auto_generated|ram_block1a7\ <= \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_w_r~input_o\ <= NOT \w_r~input_o\;

-- Location: IOOBUF_X34_Y9_N2
\dataout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	oe => \dataout[0]~en_q\,
	devoe => ww_devoe,
	o => \dataout[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\dataout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a1\,
	oe => \dataout[1]~en_q\,
	devoe => ww_devoe,
	o => \dataout[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\dataout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a2\,
	oe => \dataout[2]~en_q\,
	devoe => ww_devoe,
	o => \dataout[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\dataout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a3\,
	oe => \dataout[3]~en_q\,
	devoe => ww_devoe,
	o => \dataout[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\dataout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a4\,
	oe => \dataout[4]~en_q\,
	devoe => ww_devoe,
	o => \dataout[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\dataout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a5\,
	oe => \dataout[5]~en_q\,
	devoe => ww_devoe,
	o => \dataout[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\dataout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a6\,
	oe => \dataout[6]~en_q\,
	devoe => ww_devoe,
	o => \dataout[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\dataout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \memory_rtl_0|auto_generated|ram_block1a7\,
	oe => \dataout[7]~en_q\,
	devoe => ww_devoe,
	o => \dataout[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N8
\w_r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_r,
	o => \w_r~input_o\);

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

-- Location: IOIBUF_X34_Y3_N22
\datain[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(0),
	o => \datain[0]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\address[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(3),
	o => \address[3]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\address[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(4),
	o => \address[4]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\address[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(5),
	o => \address[5]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\address[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(6),
	o => \address[6]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\address[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(7),
	o => \address[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\datain[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(1),
	o => \datain[1]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\datain[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(2),
	o => \datain[2]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\datain[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(3),
	o => \datain[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\datain[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(4),
	o => \datain[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\datain[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(5),
	o => \datain[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\datain[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(6),
	o => \datain[6]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\datain[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datain(7),
	o => \datain[7]~input_o\);

-- Location: M9K_X15_Y2_N0
\memory_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:memory_rtl_0|altsyncram_0qd1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \ALT_INV_w_r~input_o\,
	portbre => VCC,
	clk0 => \clk~inputclkctrl_outclk\,
	clk1 => \clk~inputclkctrl_outclk\,
	ena0 => \ALT_INV_w_r~input_o\,
	ena1 => \w_r~input_o\,
	portadatain => \memory_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memory_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memory_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X22_Y1_N24
\dataout[0]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[0]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[0]~enfeeder_combout\);

-- Location: FF_X22_Y1_N25
\dataout[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[0]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[0]~en_q\);

-- Location: LCCOMB_X22_Y1_N18
\dataout[1]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[1]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[1]~enfeeder_combout\);

-- Location: FF_X22_Y1_N19
\dataout[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[1]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[1]~en_q\);

-- Location: LCCOMB_X22_Y1_N20
\dataout[2]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[2]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[2]~enfeeder_combout\);

-- Location: FF_X22_Y1_N21
\dataout[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[2]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[2]~en_q\);

-- Location: LCCOMB_X22_Y1_N14
\dataout[3]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[3]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[3]~enfeeder_combout\);

-- Location: FF_X22_Y1_N15
\dataout[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[3]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[3]~en_q\);

-- Location: LCCOMB_X22_Y1_N16
\dataout[4]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[4]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[4]~enfeeder_combout\);

-- Location: FF_X22_Y1_N17
\dataout[4]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[4]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[4]~en_q\);

-- Location: LCCOMB_X22_Y1_N26
\dataout[5]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[5]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[5]~enfeeder_combout\);

-- Location: FF_X22_Y1_N27
\dataout[5]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[5]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[5]~en_q\);

-- Location: LCCOMB_X22_Y1_N4
\dataout[6]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[6]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[6]~enfeeder_combout\);

-- Location: FF_X22_Y1_N5
\dataout[6]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[6]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[6]~en_q\);

-- Location: LCCOMB_X22_Y1_N30
\dataout[7]~enfeeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataout[7]~enfeeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \dataout[7]~enfeeder_combout\);

-- Location: FF_X22_Y1_N31
\dataout[7]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataout[7]~enfeeder_combout\,
	ena => \w_r~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataout[7]~en_q\);

ww_dataout(0) <= \dataout[0]~output_o\;

ww_dataout(1) <= \dataout[1]~output_o\;

ww_dataout(2) <= \dataout[2]~output_o\;

ww_dataout(3) <= \dataout[3]~output_o\;

ww_dataout(4) <= \dataout[4]~output_o\;

ww_dataout(5) <= \dataout[5]~output_o\;

ww_dataout(6) <= \dataout[6]~output_o\;

ww_dataout(7) <= \dataout[7]~output_o\;
END structure;


