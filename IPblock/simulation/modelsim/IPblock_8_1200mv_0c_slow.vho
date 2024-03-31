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

-- DATE "03/31/2024 13:53:10"

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
	led1 : OUT std_logic;
	clk : IN std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	buzz : OUT std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic
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
SIGNAL ww_led1 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_buzz : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL \inst|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst7|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst7|inst1|inst20~combout\ : std_logic;
SIGNAL \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\ : std_logic;
SIGNAL \inst9|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst9|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst9|inst1|inst20~combout\ : std_logic;
SIGNAL \inst11|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst11|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst11|inst1|inst20~combout\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \inst14|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst14|inst1|inst21~1_combout\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|inst1|inst20~combout\ : std_logic;
SIGNAL \inst6|input0Buf~q\ : std_logic;
SIGNAL \inst6|process_1~0_combout\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \inst15|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst15|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst15|inst1|inst20~combout\ : std_logic;
SIGNAL \inst6|input1Buf~q\ : std_logic;
SIGNAL \inst6|comb~0_combout\ : std_logic;
SIGNAL \inst6|output~combout\ : std_logic;
SIGNAL \inst1|inst|inst20~1_combout\ : std_logic;
SIGNAL \inst1|inst1|inst21~1_combout\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);

BEGIN

led1 <= ww_led1;
ww_clk <= clk;
led2 <= ww_led2;
led3 <= ww_led3;
buzz <= ww_buzz;
ww_key1 <= key1;
ww_key2 <= key2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|altpll_component|auto_generated|wire_pll1_clk\(0));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y9_N16
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|inst1|inst20~combout\,
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
	i => \inst9|inst1|inst20~combout\,
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
	i => \inst11|inst1|inst20~combout\,
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
	i => \inst12~0_combout\,
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
\inst|altpll_component|auto_generated|pll1\ : cycloneive_pll
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
	fbin => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G4
\inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y10_N0
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

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
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X29_Y10_N2
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X29_Y10_N3
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X29_Y10_N4
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X29_Y10_N5
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X29_Y10_N6
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X29_Y10_N7
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X29_Y10_N18
\inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X29_Y10_N8
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X29_Y10_N9
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X29_Y10_N10
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X29_Y10_N11
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X29_Y10_N12
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X29_Y10_N13
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X29_Y10_N14
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X29_Y10_N15
\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X29_Y10_N30
\inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datab => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X29_Y10_N16
\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X29_Y10_N28
\inst3|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ & 
-- \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datac => \inst3|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst3|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	combout => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X30_Y10_N4
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X30_Y10_N26
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X30_Y10_N27
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X30_Y10_N6
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X30_Y10_N7
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X30_Y10_N8
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X30_Y10_N9
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X30_Y10_N10
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X30_Y10_N11
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X30_Y10_N12
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X30_Y10_N13
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X30_Y10_N14
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X30_Y10_N15
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X30_Y10_N16
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X30_Y10_N17
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X30_Y10_N18
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X30_Y10_N19
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X30_Y10_N0
\inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & !\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	combout => \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X30_Y10_N22
\inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X30_Y10_N20
\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X30_Y10_N28
\inst4|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst4|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	combout => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: LCCOMB_X31_Y10_N6
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X31_Y10_N26
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\ = \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\);

-- Location: FF_X31_Y10_N27
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X31_Y10_N8
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X31_Y10_N9
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X31_Y10_N10
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X31_Y10_N11
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X31_Y10_N12
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X31_Y10_N13
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X31_Y10_N14
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X31_Y10_N15
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X31_Y10_N16
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ((\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X31_Y10_N17
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X31_Y10_N18
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X31_Y10_N19
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X31_Y10_N20
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\)) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ((\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\) # (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	cout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X31_Y10_N21
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	d => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X31_Y10_N30
\inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & !\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7),
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4),
	datad => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5),
	combout => \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X31_Y10_N22
\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\ = !\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\);

-- Location: LCCOMB_X31_Y10_N2
\inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & !\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X31_Y10_N4
\inst5|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = LCELL((\inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\) # ((\inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_comb_bita7~0_combout\,
	datad => \inst5|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: CLKCTRL_G7
\inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\);

-- Location: LCCOMB_X33_Y10_N18
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X33_Y10_N22
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X33_Y10_N24
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ((\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X33_Y10_N25
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X33_Y10_N26
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ = !\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\);

-- Location: LCCOMB_X33_Y10_N2
\inst8|LPM_COUNTER_component|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\) # (\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	datad => \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\);

-- Location: FF_X33_Y10_N19
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y10_N20
\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ((\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X33_Y10_N21
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: FF_X33_Y10_N23
\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	d => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst8|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X33_Y10_N12
\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datab => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3),
	combout => \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X33_Y10_N4
\inst7|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst|inst20~1_combout\ = (\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\inst7|inst1|inst21~1_combout\)) # (!\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- ((\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & (\inst7|inst1|inst21~1_combout\)) # (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & ((\inst7|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst7|inst1|inst21~1_combout\,
	datac => \inst7|inst|inst20~1_combout\,
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst7|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y10_N28
\inst7|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst21~1_combout\ = (\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\inst7|inst1|inst21~1_combout\)) # (!\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & 
-- ((\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & (\inst7|inst1|inst21~1_combout\)) # (!\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\ & ((!\inst7|inst|inst20~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst7|inst1|inst21~1_combout\,
	datac => \inst7|inst|inst20~1_combout\,
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst7|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y10_N30
\inst7|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|inst1|inst20~combout\ = (\inst7|inst1|inst21~1_combout\) # ((!\inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (!\inst7|inst|inst20~1_combout\ & 
-- !\inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LPM_COUNTER_component|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst7|inst1|inst21~1_combout\,
	datac => \inst7|inst|inst20~1_combout\,
	datad => \inst8|LPM_COUNTER_component|auto_generated|counter_comb_bita3~0_combout\,
	combout => \inst7|inst1|inst20~combout\);

-- Location: LCCOMB_X33_Y9_N18
\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\ = !\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\);

-- Location: FF_X33_Y9_N31
\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~clkctrl_outclk\,
	asdata => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X33_Y9_N28
\inst9|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst21~1_combout\ = (\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst9|inst1|inst21~1_combout\)) # (!\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((!\inst9|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1|inst21~1_combout\,
	datac => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst9|inst|inst20~1_combout\,
	combout => \inst9|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y9_N0
\inst9|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst|inst20~1_combout\ = (\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\inst9|inst1|inst21~1_combout\))) # (!\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst9|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst20~1_combout\,
	datac => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst9|inst1|inst21~1_combout\,
	combout => \inst9|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y9_N30
\inst9|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|inst1|inst20~combout\ = (\inst9|inst1|inst21~1_combout\) # ((!\inst9|inst|inst20~1_combout\ & !\inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst|inst20~1_combout\,
	datac => \inst10|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst9|inst1|inst21~1_combout\,
	combout => \inst9|inst1|inst20~combout\);

-- Location: LCCOMB_X31_Y10_N0
\inst11|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst21~1_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\inst11|inst1|inst21~1_combout\)) # (!\inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((!\inst11|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst1|inst21~1_combout\,
	datac => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \inst11|inst|inst20~1_combout\,
	combout => \inst11|inst1|inst21~1_combout\);

-- Location: LCCOMB_X31_Y10_N24
\inst11|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst|inst20~1_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\inst11|inst1|inst21~1_combout\))) # (!\inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\inst11|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst20~1_combout\,
	datac => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	datad => \inst11|inst1|inst21~1_combout\,
	combout => \inst11|inst|inst20~1_combout\);

-- Location: LCCOMB_X31_Y10_N28
\inst11|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|inst1|inst20~combout\ = (\inst11|inst1|inst21~1_combout\) # ((!\inst11|inst|inst20~1_combout\ & !\inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst|inst20~1_combout\,
	datac => \inst11|inst1|inst21~1_combout\,
	datad => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \inst11|inst1|inst20~combout\);

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
\inst14|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst|inst20~1_combout\ = (\key1~input_o\ & ((\inst14|inst1|inst21~1_combout\))) # (!\key1~input_o\ & (\inst14|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst|inst20~1_combout\,
	datac => \key1~input_o\,
	datad => \inst14|inst1|inst21~1_combout\,
	combout => \inst14|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y12_N6
\inst14|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst1|inst21~1_combout\ = (\key1~input_o\ & (\inst14|inst1|inst21~1_combout\)) # (!\key1~input_o\ & ((!\inst14|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst1|inst21~1_combout\,
	datac => \key1~input_o\,
	datad => \inst14|inst|inst20~1_combout\,
	combout => \inst14|inst1|inst21~1_combout\);

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
\inst14|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|inst1|inst20~combout\ = (\inst14|inst1|inst21~1_combout\) # ((!\key1~input_o\ & !\inst14|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datac => \inst14|inst1|inst21~1_combout\,
	datad => \inst14|inst|inst20~1_combout\,
	combout => \inst14|inst1|inst20~combout\);

-- Location: FF_X33_Y12_N25
\inst6|input0Buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|inst1|inst20~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|input0Buf~q\);

-- Location: LCCOMB_X33_Y12_N24
\inst6|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|process_1~0_combout\ = (\inst6|input0Buf~q\) # ((!\inst14|inst1|inst21~1_combout\ & ((\key1~input_o\) # (\inst14|inst|inst20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datab => \inst14|inst1|inst21~1_combout\,
	datac => \inst6|input0Buf~q\,
	datad => \inst14|inst|inst20~1_combout\,
	combout => \inst6|process_1~0_combout\);

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
\inst15|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst|inst20~1_combout\ = (\key2~input_o\ & ((\inst15|inst1|inst21~1_combout\))) # (!\key2~input_o\ & (\inst15|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst|inst20~1_combout\,
	datac => \key2~input_o\,
	datad => \inst15|inst1|inst21~1_combout\,
	combout => \inst15|inst|inst20~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\inst15|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst1|inst21~1_combout\ = (\key2~input_o\ & (\inst15|inst1|inst21~1_combout\)) # (!\key2~input_o\ & ((!\inst15|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1|inst21~1_combout\,
	datac => \key2~input_o\,
	datad => \inst15|inst|inst20~1_combout\,
	combout => \inst15|inst1|inst21~1_combout\);

-- Location: LCCOMB_X33_Y12_N2
\inst15|inst1|inst20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst1|inst20~combout\ = (\inst15|inst1|inst21~1_combout\) # ((!\key2~input_o\ & !\inst15|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2~input_o\,
	datac => \inst15|inst1|inst21~1_combout\,
	datad => \inst15|inst|inst20~1_combout\,
	combout => \inst15|inst1|inst20~combout\);

-- Location: FF_X33_Y12_N9
\inst6|input1Buf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst15|inst1|inst20~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|input1Buf~q\);

-- Location: LCCOMB_X33_Y12_N8
\inst6|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|comb~0_combout\ = (\inst15|inst1|inst20~combout\ & (!\inst6|input1Buf~q\ & \inst6|process_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1|inst20~combout\,
	datac => \inst6|input1Buf~q\,
	datad => \inst6|process_1~0_combout\,
	combout => \inst6|comb~0_combout\);

-- Location: LCCOMB_X33_Y12_N16
\inst6|output\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|output~combout\ = (!\inst6|comb~0_combout\ & ((\inst6|output~combout\) # (!\inst6|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6|process_1~0_combout\,
	datac => \inst6|comb~0_combout\,
	datad => \inst6|output~combout\,
	combout => \inst6|output~combout\);

-- Location: LCCOMB_X29_Y10_N20
\inst1|inst|inst20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst|inst20~1_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((\inst1|inst1|inst21~1_combout\))) # (!\inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\inst1|inst|inst20~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst|inst20~1_combout\,
	datab => \inst1|inst1|inst21~1_combout\,
	datad => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \inst1|inst|inst20~1_combout\);

-- Location: LCCOMB_X29_Y10_N22
\inst1|inst1|inst21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst1|inst21~1_combout\ = (\inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & (\inst1|inst1|inst21~1_combout\)) # (!\inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\ & ((!\inst1|inst|inst20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst1|inst21~1_combout\,
	datac => \inst1|inst|inst20~1_combout\,
	datad => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \inst1|inst1|inst21~1_combout\);

-- Location: LCCOMB_X30_Y10_N2
\inst12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (\inst6|output~combout\ & ((\inst1|inst1|inst21~1_combout\) # ((!\inst1|inst|inst20~1_combout\ & !\inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|output~combout\,
	datab => \inst1|inst1|inst21~1_combout\,
	datac => \inst1|inst|inst20~1_combout\,
	datad => \inst3|LPM_COUNTER_component|auto_generated|cout_actual~combout\,
	combout => \inst12~0_combout\);
END structure;


