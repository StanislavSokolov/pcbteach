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

-- DATE "03/31/2024 13:59:52"

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

ENTITY 	IPblock IS
    PORT (
	clk : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	led1 : OUT std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	buzz : OUT std_logic
	);
END IPblock;

-- Design Ports Information
-- led1	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led2	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led3	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- buzz	=>  Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- key1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF IPblock IS
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
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_buzz : std_logic;
SIGNAL \b2v_inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \b2v_inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst7|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst7|inst1|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst7|inst1|inst20~combout\ : std_logic;
SIGNAL \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst9|inst1|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst9|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst9|inst1|inst20~combout\ : std_logic;
SIGNAL \b2v_inst11|inst1|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst11|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst11|inst1|inst20~combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \b2v_inst14|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst14|inst1|inst21~1_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst14|inst1|inst20~combout\ : std_logic;
SIGNAL \b2v_inst6|input0Buf~q\ : std_logic;
SIGNAL \b2v_inst6|process_1~0_combout\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \b2v_inst15|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst15|inst1|inst21~1_combout\ : std_logic;
SIGNAL \b2v_inst15|inst1|inst20~combout\ : std_logic;
SIGNAL \b2v_inst6|input1Buf~q\ : std_logic;
SIGNAL \b2v_inst6|comb~0_combout\ : std_logic;
SIGNAL \b2v_inst6|output~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst20~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst1|inst21~1_combout\ : std_logic;
SIGNAL \buzz~0_combout\ : std_logic;
SIGNAL \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_key1 <= key1;
ww_key2 <= key2;
led1 <= ww_led1;
led2 <= ww_led2;
led3 <= ww_led3;
buzz <= ww_buzz;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

\b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \b2v_inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y9_N16
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst7|inst1|inst20~combout\,
	devoe => ww_devoe,
	o => ww_led1);

-- Location: IOOBUF_X34_Y9_N9
\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst9|inst1|inst20~combout\,
	devoe => ww_devoe,
	o => ww_led2);

-- Location: IOOBUF_X34_Y9_N2
\led3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \b2v_inst11|inst1|inst20~combout\,
	devoe => ww_devoe,
	o => ww_led3);

-- Location: IOOBUF_X30_Y24_N2
\buzz~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \buzz~0_combout\,
	devoe => ww_devoe,
	o => ww_buzz);

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

-- Location: PLL_1
\b2v_inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 120,
	c0_initial => 1,
	c0_low => 120,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 250,
	c1_initial => 1,
	c1_low => 250,
	c1_mode => "even",
	c1_ph => 0,
	c1_use_casc_in => "on",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c1",
	clk0_divide_by => 10000,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5914,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \b2v_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \b2v_inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \b2v_inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \b2v_inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y10_N0
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X29_Y10_N24
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X29_Y10_N1
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X29_Y10_N2
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X29_Y10_N3
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y10_N4
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X29_Y10_N5
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X29_Y10_N6
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X29_Y10_N7
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y10_N18
\b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X29_Y10_N9
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X29_Y10_N10
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X29_Y10_N11
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X29_Y10_N12
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X29_Y10_N13
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X29_Y10_N14
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X29_Y10_N15
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X29_Y10_N30
\b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X29_Y10_N16
\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X29_Y10_N28
\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datac => \b2v_inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	combout => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X30_Y10_N4
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X30_Y10_N26
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X30_Y10_N27
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X30_Y10_N6
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X30_Y10_N7
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X30_Y10_N8
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X30_Y10_N9
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X30_Y10_N10
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X30_Y10_N11
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X30_Y10_N12
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X30_Y10_N13
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X30_Y10_N14
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X30_Y10_N15
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X30_Y10_N16
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X30_Y10_N17
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X30_Y10_N18
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X30_Y10_N19
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X30_Y10_N0
\b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & !\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X30_Y10_N22
\b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X30_Y10_N20
\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \b2v_inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \b2v_inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	combout => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X31_Y10_N6
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X31_Y10_N26
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X31_Y10_N27
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X31_Y10_N8
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X31_Y10_N9
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X31_Y10_N10
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X31_Y10_N11
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X31_Y10_N12
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X31_Y10_N13
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X31_Y10_N14
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X31_Y10_N15
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X31_Y10_N16
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X31_Y10_N17
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X31_Y10_N18
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X31_Y10_N19
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X31_Y10_N20
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X31_Y10_N21
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X31_Y10_N30
\b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X31_Y10_N22
\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X31_Y10_N2
\b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X31_Y10_N4
\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \b2v_inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	datad => \b2v_inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: CLKCTRL_G7
\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y10_N18
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X33_Y10_N22
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X33_Y10_N24
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X33_Y10_N25
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X33_Y10_N26
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ = !\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X33_Y10_N2
\b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\) # (\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	datad => \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X33_Y10_N19
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y10_N20
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X33_Y10_N21
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X33_Y10_N23
\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \b2v_inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X33_Y10_N12
\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X33_Y10_N4
\b2v_inst7|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|inst|inst20~1_combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\b2v_inst7|inst1|inst21~1_combout\)) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- ((\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & (\b2v_inst7|inst1|inst21~1_combout\)) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & ((\b2v_inst7|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \b2v_inst7|inst1|inst21~1_combout\,
	datac => \b2v_inst7|inst|inst20~1_combout\,
	datad => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \b2v_inst7|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y10_N28
\b2v_inst7|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|inst1|inst21~1_combout\ = (\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\b2v_inst7|inst1|inst21~1_combout\)) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- ((\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & (\b2v_inst7|inst1|inst21~1_combout\)) # (!\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & ((!\b2v_inst7|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \b2v_inst7|inst1|inst21~1_combout\,
	datac => \b2v_inst7|inst|inst20~1_combout\,
	datad => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \b2v_inst7|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y10_N30
\b2v_inst7|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst7|inst1|inst20~combout\ = (\b2v_inst7|inst1|inst21~1_combout\) # ((!\b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (!\b2v_inst7|inst|inst20~1_combout\ & 
-- !\b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \b2v_inst7|inst1|inst21~1_combout\,
	datac => \b2v_inst7|inst|inst20~1_combout\,
	datad => \b2v_inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \b2v_inst7|inst1|inst20~combout\);

-- Location: LCCOMB_X33_Y9_N18
\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\ = !\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\);

-- Location: FF_X33_Y9_N31
\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	asdata => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y9_N28
\b2v_inst9|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|inst1|inst21~1_combout\ = (\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\b2v_inst9|inst1|inst21~1_combout\)) # (!\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- ((!\b2v_inst9|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|inst1|inst21~1_combout\,
	datac => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \b2v_inst9|inst|inst20~1_combout\,
	combout => \b2v_inst9|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y9_N0
\b2v_inst9|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|inst|inst20~1_combout\ = (\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\b2v_inst9|inst1|inst21~1_combout\))) # (!\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\b2v_inst9|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|inst|inst20~1_combout\,
	datac => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \b2v_inst9|inst1|inst21~1_combout\,
	combout => \b2v_inst9|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y9_N30
\b2v_inst9|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst9|inst1|inst20~combout\ = (\b2v_inst9|inst1|inst21~1_combout\) # ((!\b2v_inst9|inst|inst20~1_combout\ & !\b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst9|inst|inst20~1_combout\,
	datac => \b2v_inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \b2v_inst9|inst1|inst21~1_combout\,
	combout => \b2v_inst9|inst1|inst20~combout\);

-- Location: LCCOMB_X31_Y10_N0
\b2v_inst11|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|inst1|inst21~1_combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst11|inst1|inst21~1_combout\)) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & 
-- ((!\b2v_inst11|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|inst1|inst21~1_combout\,
	datac => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst11|inst|inst20~1_combout\,
	combout => \b2v_inst11|inst1|inst21~1_combout\);

-- Location: LCCOMB_X31_Y10_N24
\b2v_inst11|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|inst|inst20~1_combout\ = (\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst11|inst1|inst21~1_combout\))) # (!\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & 
-- (\b2v_inst11|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|inst|inst20~1_combout\,
	datac => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \b2v_inst11|inst1|inst21~1_combout\,
	combout => \b2v_inst11|inst|inst20~1_combout\);

-- Location: LCCOMB_X31_Y10_N28
\b2v_inst11|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst11|inst1|inst20~combout\ = (\b2v_inst11|inst1|inst21~1_combout\) # ((!\b2v_inst11|inst|inst20~1_combout\ & !\b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst11|inst|inst20~1_combout\,
	datac => \b2v_inst11|inst1|inst21~1_combout\,
	datad => \b2v_inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst11|inst1|inst20~combout\);

-- Location: IOIBUF_X34_Y12_N22
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: LCCOMB_X33_Y12_N28
\b2v_inst14|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|inst|inst20~1_combout\ = (\key1~input_o\ & ((\b2v_inst14|inst1|inst21~1_combout\))) # (!\key1~input_o\ & (\b2v_inst14|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|inst|inst20~1_combout\,
	datac => \key1~input_o\,
	datad => \b2v_inst14|inst1|inst21~1_combout\,
	combout => \b2v_inst14|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y12_N6
\b2v_inst14|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|inst1|inst21~1_combout\ = (\key1~input_o\ & (\b2v_inst14|inst1|inst21~1_combout\)) # (!\key1~input_o\ & ((!\b2v_inst14|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst14|inst1|inst21~1_combout\,
	datac => \key1~input_o\,
	datad => \b2v_inst14|inst|inst20~1_combout\,
	combout => \b2v_inst14|inst1|inst21~1_combout\);

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

-- Location: LCCOMB_X33_Y12_N18
\b2v_inst14|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst14|inst1|inst20~combout\ = (\b2v_inst14|inst1|inst21~1_combout\) # ((!\key1~input_o\ & !\b2v_inst14|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datac => \b2v_inst14|inst1|inst21~1_combout\,
	datad => \b2v_inst14|inst|inst20~1_combout\,
	combout => \b2v_inst14|inst1|inst20~combout\);

-- Location: FF_X33_Y12_N25
\b2v_inst6|input0Buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b2v_inst14|inst1|inst20~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|input0Buf~q\);

-- Location: LCCOMB_X33_Y12_N24
\b2v_inst6|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|process_1~0_combout\ = (\b2v_inst6|input0Buf~q\) # ((!\b2v_inst14|inst1|inst21~1_combout\ & ((\key1~input_o\) # (\b2v_inst14|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datab => \b2v_inst14|inst1|inst21~1_combout\,
	datac => \b2v_inst6|input0Buf~q\,
	datad => \b2v_inst14|inst|inst20~1_combout\,
	combout => \b2v_inst6|process_1~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: LCCOMB_X33_Y12_N10
\b2v_inst15|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|inst|inst20~1_combout\ = (\key2~input_o\ & ((\b2v_inst15|inst1|inst21~1_combout\))) # (!\key2~input_o\ & (\b2v_inst15|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst15|inst|inst20~1_combout\,
	datac => \key2~input_o\,
	datad => \b2v_inst15|inst1|inst21~1_combout\,
	combout => \b2v_inst15|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\b2v_inst15|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|inst1|inst21~1_combout\ = (\key2~input_o\ & (\b2v_inst15|inst1|inst21~1_combout\)) # (!\key2~input_o\ & ((!\b2v_inst15|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|inst1|inst21~1_combout\,
	datac => \key2~input_o\,
	datad => \b2v_inst15|inst|inst20~1_combout\,
	combout => \b2v_inst15|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y12_N2
\b2v_inst15|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst15|inst1|inst20~combout\ = (\b2v_inst15|inst1|inst21~1_combout\) # ((!\key2~input_o\ & !\b2v_inst15|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2~input_o\,
	datac => \b2v_inst15|inst1|inst21~1_combout\,
	datad => \b2v_inst15|inst|inst20~1_combout\,
	combout => \b2v_inst15|inst1|inst20~combout\);

-- Location: FF_X33_Y12_N9
\b2v_inst6|input1Buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b2v_inst15|inst1|inst20~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2v_inst6|input1Buf~q\);

-- Location: LCCOMB_X33_Y12_N8
\b2v_inst6|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|comb~0_combout\ = (\b2v_inst15|inst1|inst20~combout\ & (!\b2v_inst6|input1Buf~q\ & \b2v_inst6|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst15|inst1|inst20~combout\,
	datac => \b2v_inst6|input1Buf~q\,
	datad => \b2v_inst6|process_1~0_combout\,
	combout => \b2v_inst6|comb~0_combout\);

-- Location: LCCOMB_X33_Y12_N16
\b2v_inst6|output\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst6|output~combout\ = (!\b2v_inst6|comb~0_combout\ & ((\b2v_inst6|output~combout\) # (!\b2v_inst6|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst6|process_1~0_combout\,
	datac => \b2v_inst6|comb~0_combout\,
	datad => \b2v_inst6|output~combout\,
	combout => \b2v_inst6|output~combout\);

-- Location: LCCOMB_X29_Y10_N20
\b2v_inst1|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst20~1_combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\b2v_inst1|inst1|inst21~1_combout\))) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & 
-- (\b2v_inst1|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst20~1_combout\,
	datab => \b2v_inst1|inst1|inst21~1_combout\,
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst1|inst|inst20~1_combout\);

-- Location: LCCOMB_X29_Y10_N22
\b2v_inst1|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst1|inst21~1_combout\ = (\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\b2v_inst1|inst1|inst21~1_combout\)) # (!\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & 
-- ((!\b2v_inst1|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst1|inst21~1_combout\,
	datac => \b2v_inst1|inst|inst20~1_combout\,
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \b2v_inst1|inst1|inst21~1_combout\);

-- Location: LCCOMB_X30_Y10_N2
\buzz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buzz~0_combout\ = (\b2v_inst6|output~combout\ & ((\b2v_inst1|inst1|inst21~1_combout\) # ((!\b2v_inst1|inst|inst20~1_combout\ & !\b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst6|output~combout\,
	datab => \b2v_inst1|inst1|inst21~1_combout\,
	datac => \b2v_inst1|inst|inst20~1_combout\,
	datad => \b2v_inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \buzz~0_combout\);
END structure;


