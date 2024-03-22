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

-- DATE "03/22/2024 13:57:45"

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

ENTITY 	VERILOGStart05 IS
    PORT (
	led : OUT std_logic;
	clk : IN std_logic;
	sda : INOUT std_logic;
	tx : OUT std_logic;
	scl : OUT std_logic;
	led1 : OUT std_logic;
	indicator : OUT std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0);
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	key4 : IN std_logic;
	reset : IN std_logic;
	rx : IN std_logic
	);
END VERILOGStart05;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tx	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- scl	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- indicator[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[6]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[5]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[4]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[2]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[1]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- segment[0]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- key1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sda	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_tx : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_indicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_key4 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_rx : std_logic;
SIGNAL \inst8|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|counter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \key4~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \indicator[3]~output_o\ : std_logic;
SIGNAL \indicator[2]~output_o\ : std_logic;
SIGNAL \indicator[1]~output_o\ : std_logic;
SIGNAL \indicator[0]~output_o\ : std_logic;
SIGNAL \segment[6]~output_o\ : std_logic;
SIGNAL \segment[5]~output_o\ : std_logic;
SIGNAL \segment[4]~output_o\ : std_logic;
SIGNAL \segment[3]~output_o\ : std_logic;
SIGNAL \segment[2]~output_o\ : std_logic;
SIGNAL \segment[1]~output_o\ : std_logic;
SIGNAL \segment[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst1|count[0]~8_combout\ : std_logic;
SIGNAL \inst1|count[6]~20_combout\ : std_logic;
SIGNAL \inst1|count[0]~9\ : std_logic;
SIGNAL \inst1|count[1]~10_combout\ : std_logic;
SIGNAL \inst1|count[1]~11\ : std_logic;
SIGNAL \inst1|count[2]~12_combout\ : std_logic;
SIGNAL \inst1|count[2]~13\ : std_logic;
SIGNAL \inst1|count[3]~14_combout\ : std_logic;
SIGNAL \inst1|count[3]~15\ : std_logic;
SIGNAL \inst1|count[4]~16_combout\ : std_logic;
SIGNAL \inst1|count[4]~17\ : std_logic;
SIGNAL \inst1|count[5]~18_combout\ : std_logic;
SIGNAL \inst1|count[5]~19\ : std_logic;
SIGNAL \inst1|count[6]~21_combout\ : std_logic;
SIGNAL \inst1|count[6]~22\ : std_logic;
SIGNAL \inst1|count[7]~23_combout\ : std_logic;
SIGNAL \inst1|LessThan2~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C~59_combout\ : std_logic;
SIGNAL \inst1|Selector43~0_combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.ReadBitSending~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking5~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking6~q\ : std_logic;
SIGNAL \inst1|Selector35~2_combout\ : std_logic;
SIGNAL \inst1|Selector36~0_combout\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \inst1|Selector38~0_combout\ : std_logic;
SIGNAL \inst1|rw~q\ : std_logic;
SIGNAL \inst1|Selector4~3_combout\ : std_logic;
SIGNAL \inst8|counter[0]~17_combout\ : std_logic;
SIGNAL \inst8|counter[15]~48\ : std_logic;
SIGNAL \inst8|counter[16]~49_combout\ : std_logic;
SIGNAL \inst8|LessThan0~1_combout\ : std_logic;
SIGNAL \inst8|LessThan0~0_combout\ : std_logic;
SIGNAL \inst8|LessThan0~2_combout\ : std_logic;
SIGNAL \inst8|LessThan0~3_combout\ : std_logic;
SIGNAL \inst8|counter[0]~18\ : std_logic;
SIGNAL \inst8|counter[1]~19_combout\ : std_logic;
SIGNAL \inst8|counter[1]~20\ : std_logic;
SIGNAL \inst8|counter[2]~21_combout\ : std_logic;
SIGNAL \inst8|counter[2]~22\ : std_logic;
SIGNAL \inst8|counter[3]~23_combout\ : std_logic;
SIGNAL \inst8|counter[3]~24\ : std_logic;
SIGNAL \inst8|counter[4]~25_combout\ : std_logic;
SIGNAL \inst8|counter[4]~26\ : std_logic;
SIGNAL \inst8|counter[5]~27_combout\ : std_logic;
SIGNAL \inst8|counter[5]~28\ : std_logic;
SIGNAL \inst8|counter[6]~29_combout\ : std_logic;
SIGNAL \inst8|counter[6]~30\ : std_logic;
SIGNAL \inst8|counter[7]~31_combout\ : std_logic;
SIGNAL \inst8|counter[7]~32\ : std_logic;
SIGNAL \inst8|counter[8]~33_combout\ : std_logic;
SIGNAL \inst8|counter[8]~feeder_combout\ : std_logic;
SIGNAL \inst8|counter[8]~34\ : std_logic;
SIGNAL \inst8|counter[9]~35_combout\ : std_logic;
SIGNAL \inst8|counter[9]~36\ : std_logic;
SIGNAL \inst8|counter[10]~37_combout\ : std_logic;
SIGNAL \inst8|counter[10]~feeder_combout\ : std_logic;
SIGNAL \inst8|counter[10]~38\ : std_logic;
SIGNAL \inst8|counter[11]~39_combout\ : std_logic;
SIGNAL \inst8|counter[11]~40\ : std_logic;
SIGNAL \inst8|counter[12]~41_combout\ : std_logic;
SIGNAL \inst8|counter[12]~42\ : std_logic;
SIGNAL \inst8|counter[13]~43_combout\ : std_logic;
SIGNAL \inst8|counter[13]~44\ : std_logic;
SIGNAL \inst8|counter[14]~45_combout\ : std_logic;
SIGNAL \inst8|counter[14]~46\ : std_logic;
SIGNAL \inst8|counter[15]~47_combout\ : std_logic;
SIGNAL \inst8|clkOut~0_combout\ : std_logic;
SIGNAL \inst8|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst8|clkOut~q\ : std_logic;
SIGNAL \inst8|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \inst9|counter[0]~8_combout\ : std_logic;
SIGNAL \inst9|counter[0]~9\ : std_logic;
SIGNAL \inst9|counter[1]~10_combout\ : std_logic;
SIGNAL \inst9|counter[1]~11\ : std_logic;
SIGNAL \inst9|counter[2]~12_combout\ : std_logic;
SIGNAL \inst9|counter[2]~13\ : std_logic;
SIGNAL \inst9|counter[3]~14_combout\ : std_logic;
SIGNAL \inst9|counter[3]~15\ : std_logic;
SIGNAL \inst9|counter[4]~16_combout\ : std_logic;
SIGNAL \inst9|counter[4]~17\ : std_logic;
SIGNAL \inst9|counter[5]~18_combout\ : std_logic;
SIGNAL \inst9|counter[5]~19\ : std_logic;
SIGNAL \inst9|counter[6]~20_combout\ : std_logic;
SIGNAL \inst9|counter[6]~21\ : std_logic;
SIGNAL \inst9|counter[7]~22_combout\ : std_logic;
SIGNAL \inst9|LessThan0~0_combout\ : std_logic;
SIGNAL \inst9|LessThan0~1_combout\ : std_logic;
SIGNAL \inst9|clkOut~0_combout\ : std_logic;
SIGNAL \inst9|clkOut~q\ : std_logic;
SIGNAL \inst1|startPrev~0_combout\ : std_logic;
SIGNAL \inst1|startPrev~q\ : std_logic;
SIGNAL \inst1|Selector4~1_combout\ : std_logic;
SIGNAL \inst1|Selector4~2_combout\ : std_logic;
SIGNAL \inst1|Selector4~4_combout\ : std_logic;
SIGNAL \inst1|stateI2C.WriteBitPreparing~q\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.WriteBitSending~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking1~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking2~q\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C~60_combout\ : std_logic;
SIGNAL \inst1|stateI2C~61_combout\ : std_logic;
SIGNAL \inst1|Selector18~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.PointerBytePreparing~q\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.PointerByteSending~q\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking3~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking4~q\ : std_logic;
SIGNAL \inst1|Selector24~0_combout\ : std_logic;
SIGNAL \inst1|Selector24~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.PresetPointerStopping~q\ : std_logic;
SIGNAL \inst1|Selector6~2_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.Starting~q\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Selector2~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.DeviceAddressPreparing~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.DeviceAddressSending~q\ : std_logic;
SIGNAL \inst1|Selector20~0_combout\ : std_logic;
SIGNAL \inst1|Selector20~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.MSByteFromDeviceReading~q\ : std_logic;
SIGNAL \inst1|stateI2C.MSByteFromDevicePreparing~q\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking7~q\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking8~feeder_combout\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking8~q\ : std_logic;
SIGNAL \inst1|Selector22~0_combout\ : std_logic;
SIGNAL \inst1|Selector22~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.LSByteFromDeviceReading~q\ : std_logic;
SIGNAL \inst1|stateI2C.LSByteFromDevicePreparing~q\ : std_logic;
SIGNAL \inst1|Selector40~1_combout\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|bitPosition[2]~0_combout\ : std_logic;
SIGNAL \inst1|bitPosition[2]~1_combout\ : std_logic;
SIGNAL \inst1|Selector35~3_combout\ : std_logic;
SIGNAL \inst1|Selector37~0_combout\ : std_logic;
SIGNAL \inst1|Selector37~1_combout\ : std_logic;
SIGNAL \inst1|Selector37~2_combout\ : std_logic;
SIGNAL \inst1|Selector37~3_combout\ : std_logic;
SIGNAL \inst1|Selector37~4_combout\ : std_logic;
SIGNAL \inst1|Selector37~5_combout\ : std_logic;
SIGNAL \inst1|Selector37~6_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking9~q\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|stateI2C.AcknowledgeChecking10~q\ : std_logic;
SIGNAL \inst1|stateI2C.Updating~q\ : std_logic;
SIGNAL \inst1|Selector40~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~1_combout\ : std_logic;
SIGNAL \inst1|Selector0~2_combout\ : std_logic;
SIGNAL \inst1|stateI2C.Waiting~q\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|stateI2C.ReadBitPreparing~q\ : std_logic;
SIGNAL \inst1|Selector43~1_combout\ : std_logic;
SIGNAL \inst1|Selector41~0_combout\ : std_logic;
SIGNAL \inst1|Selector41~1_combout\ : std_logic;
SIGNAL \inst1|Selector43~2_combout\ : std_logic;
SIGNAL \inst1|Selector41~2_combout\ : std_logic;
SIGNAL \inst1|Selector40~2_combout\ : std_logic;
SIGNAL \inst1|Selector40~3_combout\ : std_logic;
SIGNAL \inst1|Selector40~4_combout\ : std_logic;
SIGNAL \inst1|Selector40~5_combout\ : std_logic;
SIGNAL \inst1|scl~reg0_q\ : std_logic;
SIGNAL \inst1|scl~en_q\ : std_logic;
SIGNAL \inst1|Selector44~0_combout\ : std_logic;
SIGNAL \inst1|Selector44~1_combout\ : std_logic;
SIGNAL \inst1|sda~1_combout\ : std_logic;
SIGNAL \inst1|sda~2_combout\ : std_logic;
SIGNAL \inst1|Selector43~7_combout\ : std_logic;
SIGNAL \inst1|Selector43~3_combout\ : std_logic;
SIGNAL \inst1|Selector43~4_combout\ : std_logic;
SIGNAL \inst1|Selector43~5_combout\ : std_logic;
SIGNAL \inst1|Selector43~6_combout\ : std_logic;
SIGNAL \inst1|Selector43~8_combout\ : std_logic;
SIGNAL \inst1|sda~reg0_q\ : std_logic;
SIGNAL \inst1|Selector45~0_combout\ : std_logic;
SIGNAL \inst1|sda~en_q\ : std_logic;
SIGNAL \inst1|ledError~0_combout\ : std_logic;
SIGNAL \inst1|ledError~1_combout\ : std_logic;
SIGNAL \inst1|ledError~q\ : std_logic;
SIGNAL \inst1|led~1_combout\ : std_logic;
SIGNAL \inst1|led~0_combout\ : std_logic;
SIGNAL \inst1|led~q\ : std_logic;
SIGNAL \inst10|counter[0]~1_combout\ : std_logic;
SIGNAL \inst10|counter~0_combout\ : std_logic;
SIGNAL \inst10|counter[1]~feeder_combout\ : std_logic;
SIGNAL \inst10|counter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[3]~6_combout\ : std_logic;
SIGNAL \inst1|lSByteFromDevice[5]~0_combout\ : std_logic;
SIGNAL \inst1|lSByteFromDevice[7]~3_combout\ : std_logic;
SIGNAL \inst1|data[2]~feeder_combout\ : std_logic;
SIGNAL \inst11|updatePrev~q\ : std_logic;
SIGNAL \inst11|always0~0_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[2]~4_combout\ : std_logic;
SIGNAL \inst1|lSByteFromDevice[6]~2_combout\ : std_logic;
SIGNAL \inst1|data[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[1]~2_combout\ : std_logic;
SIGNAL \inst1|lSByteFromDevice[5]~1_combout\ : std_logic;
SIGNAL \inst1|data[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[4]~0_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[1]~1_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[0]~10_combout\ : std_logic;
SIGNAL \inst1|data[3]~feeder_combout\ : std_logic;
SIGNAL \inst11|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[3]~7_combout\ : std_logic;
SIGNAL \inst1|data[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[2]~5_combout\ : std_logic;
SIGNAL \inst1|data[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[1]~3_combout\ : std_logic;
SIGNAL \inst1|data[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[4]~8_combout\ : std_logic;
SIGNAL \inst1|mSByteFromDevice[4]~9_combout\ : std_logic;
SIGNAL \inst1|data[7]~feeder_combout\ : std_logic;
SIGNAL \inst11|WideOr7~0_combout\ : std_logic;
SIGNAL \inst10|Mux5~0_combout\ : std_logic;
SIGNAL \inst11|WideOr8~0_combout\ : std_logic;
SIGNAL \inst11|WideOr1~0_combout\ : std_logic;
SIGNAL \inst10|Mux6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr9~0_combout\ : std_logic;
SIGNAL \inst11|WideOr2~0_combout\ : std_logic;
SIGNAL \inst10|Mux7~0_combout\ : std_logic;
SIGNAL \inst11|WideOr3~0_combout\ : std_logic;
SIGNAL \inst11|WideOr10~0_combout\ : std_logic;
SIGNAL \inst10|Mux8~0_combout\ : std_logic;
SIGNAL \inst11|WideOr11~0_combout\ : std_logic;
SIGNAL \inst11|WideOr4~0_combout\ : std_logic;
SIGNAL \inst10|Mux9~0_combout\ : std_logic;
SIGNAL \inst11|WideOr5~0_combout\ : std_logic;
SIGNAL \inst11|WideOr12~0_combout\ : std_logic;
SIGNAL \inst10|Mux10~0_combout\ : std_logic;
SIGNAL \inst11|WideOr6~0_combout\ : std_logic;
SIGNAL \inst11|WideOr13~0_combout\ : std_logic;
SIGNAL \inst10|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst11|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|counter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst10|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst1|lSByteFromDevice\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst9|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst10|segment\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst1|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|mSByteFromDevice\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst9|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Selector43~0_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_clk <= clk;
tx <= ww_tx;
scl <= ww_scl;
led1 <= ww_led1;
indicator <= ww_indicator;
segment <= ww_segment;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_key4 <= key4;
ww_reset <= reset;
ww_rx <= rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst8|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|clkOut~q\);

\inst10|counter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst10|counter\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst9|ALT_INV_LessThan0~1_combout\ <= NOT \inst9|LessThan0~1_combout\;
\inst1|ALT_INV_Selector43~0_combout\ <= NOT \inst1|Selector43~0_combout\;

-- Location: IOOBUF_X28_Y24_N2
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|scl~reg0_q\,
	oe => \inst1|scl~en_q\,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sda~reg0_q\,
	oe => \inst1|sda~en_q\,
	devoe => ww_devoe,
	o => \sda~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ledError~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\tx~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|led~q\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\indicator[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \indicator[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\indicator[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \indicator[2]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\indicator[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|indicator\(1),
	devoe => ww_devoe,
	o => \indicator[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\indicator[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|indicator\(0),
	devoe => ww_devoe,
	o => \indicator[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\segment[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(6),
	devoe => ww_devoe,
	o => \segment[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\segment[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(5),
	devoe => ww_devoe,
	o => \segment[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\segment[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(4),
	devoe => ww_devoe,
	o => \segment[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\segment[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(3),
	devoe => ww_devoe,
	o => \segment[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\segment[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(2),
	devoe => ww_devoe,
	o => \segment[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\segment[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(1),
	devoe => ww_devoe,
	o => \segment[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\segment[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|segment\(0),
	devoe => ww_devoe,
	o => \segment[0]~output_o\);

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

-- Location: LCCOMB_X22_Y11_N10
\inst1|count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[0]~8_combout\ = \inst1|count\(0) $ (VCC)
-- \inst1|count[0]~9\ = CARRY(\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(0),
	datad => VCC,
	combout => \inst1|count[0]~8_combout\,
	cout => \inst1|count[0]~9\);

-- Location: LCCOMB_X22_Y11_N4
\inst1|count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[6]~20_combout\ = (!\inst1|Selector43~0_combout\) # (!\inst1|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|count[6]~20_combout\);

-- Location: FF_X22_Y11_N11
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[0]~8_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X22_Y11_N12
\inst1|count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[1]~10_combout\ = (\inst1|count\(1) & (!\inst1|count[0]~9\)) # (!\inst1|count\(1) & ((\inst1|count[0]~9\) # (GND)))
-- \inst1|count[1]~11\ = CARRY((!\inst1|count[0]~9\) # (!\inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|count[0]~9\,
	combout => \inst1|count[1]~10_combout\,
	cout => \inst1|count[1]~11\);

-- Location: FF_X22_Y11_N13
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[1]~10_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X22_Y11_N14
\inst1|count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[2]~12_combout\ = (\inst1|count\(2) & (\inst1|count[1]~11\ $ (GND))) # (!\inst1|count\(2) & (!\inst1|count[1]~11\ & VCC))
-- \inst1|count[2]~13\ = CARRY((\inst1|count\(2) & !\inst1|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|count[1]~11\,
	combout => \inst1|count[2]~12_combout\,
	cout => \inst1|count[2]~13\);

-- Location: FF_X22_Y11_N15
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[2]~12_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X22_Y11_N16
\inst1|count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[3]~14_combout\ = (\inst1|count\(3) & (!\inst1|count[2]~13\)) # (!\inst1|count\(3) & ((\inst1|count[2]~13\) # (GND)))
-- \inst1|count[3]~15\ = CARRY((!\inst1|count[2]~13\) # (!\inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|count[2]~13\,
	combout => \inst1|count[3]~14_combout\,
	cout => \inst1|count[3]~15\);

-- Location: FF_X22_Y11_N17
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[3]~14_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X22_Y11_N18
\inst1|count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[4]~16_combout\ = (\inst1|count\(4) & (\inst1|count[3]~15\ $ (GND))) # (!\inst1|count\(4) & (!\inst1|count[3]~15\ & VCC))
-- \inst1|count[4]~17\ = CARRY((\inst1|count\(4) & !\inst1|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|count[3]~15\,
	combout => \inst1|count[4]~16_combout\,
	cout => \inst1|count[4]~17\);

-- Location: FF_X22_Y11_N19
\inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[4]~16_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(4));

-- Location: LCCOMB_X22_Y11_N20
\inst1|count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[5]~18_combout\ = (\inst1|count\(5) & (!\inst1|count[4]~17\)) # (!\inst1|count\(5) & ((\inst1|count[4]~17\) # (GND)))
-- \inst1|count[5]~19\ = CARRY((!\inst1|count[4]~17\) # (!\inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|count[4]~17\,
	combout => \inst1|count[5]~18_combout\,
	cout => \inst1|count[5]~19\);

-- Location: FF_X22_Y11_N21
\inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[5]~18_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(5));

-- Location: LCCOMB_X22_Y11_N22
\inst1|count[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[6]~21_combout\ = (\inst1|count\(6) & (\inst1|count[5]~19\ $ (GND))) # (!\inst1|count\(6) & (!\inst1|count[5]~19\ & VCC))
-- \inst1|count[6]~22\ = CARRY((\inst1|count\(6) & !\inst1|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(6),
	datad => VCC,
	cin => \inst1|count[5]~19\,
	combout => \inst1|count[6]~21_combout\,
	cout => \inst1|count[6]~22\);

-- Location: FF_X22_Y11_N23
\inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[6]~21_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(6));

-- Location: LCCOMB_X22_Y11_N24
\inst1|count[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|count[7]~23_combout\ = \inst1|count[6]~22\ $ (\inst1|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count\(7),
	cin => \inst1|count[6]~22\,
	combout => \inst1|count[7]~23_combout\);

-- Location: FF_X22_Y11_N25
\inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count[7]~23_combout\,
	sclr => \inst1|count[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(7));

-- Location: LCCOMB_X22_Y11_N6
\inst1|LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~0_combout\ = (\inst1|count\(4) & (\inst1|count\(3) & ((\inst1|count\(1)) # (\inst1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(4),
	datac => \inst1|count\(0),
	datad => \inst1|count\(3),
	combout => \inst1|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
\inst1|stateI2C~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stateI2C~59_combout\ = (\inst1|count\(6) & \inst1|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count\(6),
	datad => \inst1|count\(5),
	combout => \inst1|stateI2C~59_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~0_combout\ = (!\inst1|count\(7) & (((!\inst1|stateI2C~59_combout\) # (!\inst1|LessThan2~0_combout\)) # (!\inst1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|count\(7),
	datac => \inst1|LessThan2~0_combout\,
	datad => \inst1|stateI2C~59_combout\,
	combout => \inst1|Selector43~0_combout\);

-- Location: LCCOMB_X25_Y11_N10
\inst1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|Selector43~0_combout\ & (\inst1|stateI2C.ReadBitSending~q\)) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.ReadBitPreparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datac => \inst1|stateI2C.ReadBitSending~q\,
	datad => \inst1|stateI2C.ReadBitPreparing~q\,
	combout => \inst1|Selector7~0_combout\);

-- Location: FF_X25_Y11_N11
\inst1|stateI2C.ReadBitSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.ReadBitSending~q\);

-- Location: FF_X23_Y11_N21
\inst1|stateI2C.AcknowledgeChecking5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.ReadBitSending~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking5~q\);

-- Location: FF_X25_Y11_N15
\inst1|stateI2C.AcknowledgeChecking6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.AcknowledgeChecking5~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking6~q\);

-- Location: LCCOMB_X25_Y11_N14
\inst1|Selector35~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector35~2_combout\ = (\inst1|stateI2C.Waiting~q\ & (!\inst1|stateI2C.AcknowledgeChecking10~q\ & (!\inst1|stateI2C.AcknowledgeChecking6~q\ & \inst1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datac => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|Selector35~2_combout\);

-- Location: LCCOMB_X26_Y11_N26
\inst1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector36~0_combout\ = (\inst1|bitPosition\(0) $ (!\inst1|bitPosition\(1))) # (!\inst1|Selector35~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(0),
	datac => \inst1|bitPosition\(1),
	datad => \inst1|Selector35~2_combout\,
	combout => \inst1|Selector36~0_combout\);

-- Location: IOIBUF_X28_Y24_N8
\sda~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X24_Y11_N30
\inst1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector38~0_combout\ = (\inst1|stateI2C.PresetPointerStopping~q\ & (((\inst1|rw~q\) # (!\inst1|Selector43~0_combout\)))) # (!\inst1|stateI2C.PresetPointerStopping~q\ & (\inst1|stateI2C.Waiting~q\ & (\inst1|rw~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|stateI2C.PresetPointerStopping~q\,
	datac => \inst1|rw~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector38~0_combout\);

-- Location: FF_X24_Y11_N31
\inst1|rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector38~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|rw~q\);

-- Location: LCCOMB_X24_Y10_N22
\inst1|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~3_combout\ = (\inst1|stateI2C.DeviceAddressSending~q\ & ((\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.WriteBitPreparing~q\))) # (!\inst1|Selector43~0_combout\ & (!\inst1|rw~q\)))) # (!\inst1|stateI2C.DeviceAddressSending~q\ & 
-- (((\inst1|stateI2C.WriteBitPreparing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rw~q\,
	datab => \inst1|stateI2C.DeviceAddressSending~q\,
	datac => \inst1|stateI2C.WriteBitPreparing~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector4~3_combout\);

-- Location: LCCOMB_X25_Y20_N16
\inst8|counter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[0]~17_combout\ = \inst8|counter\(0) $ (VCC)
-- \inst8|counter[0]~18\ = CARRY(\inst8|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(0),
	datad => VCC,
	combout => \inst8|counter[0]~17_combout\,
	cout => \inst8|counter[0]~18\);

-- Location: LCCOMB_X25_Y19_N14
\inst8|counter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[15]~47_combout\ = (\inst8|counter\(15) & (!\inst8|counter[14]~46\)) # (!\inst8|counter\(15) & ((\inst8|counter[14]~46\) # (GND)))
-- \inst8|counter[15]~48\ = CARRY((!\inst8|counter[14]~46\) # (!\inst8|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(15),
	datad => VCC,
	cin => \inst8|counter[14]~46\,
	combout => \inst8|counter[15]~47_combout\,
	cout => \inst8|counter[15]~48\);

-- Location: LCCOMB_X25_Y19_N16
\inst8|counter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[16]~49_combout\ = \inst8|counter[15]~48\ $ (!\inst8|counter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter\(16),
	cin => \inst8|counter[15]~48\,
	combout => \inst8|counter[16]~49_combout\);

-- Location: FF_X25_Y19_N17
\inst8|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[16]~49_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(16));

-- Location: LCCOMB_X25_Y20_N12
\inst8|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~1_combout\ = (!\inst8|counter\(8) & (((!\inst8|counter\(5) & !\inst8|counter\(6))) # (!\inst8|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datab => \inst8|counter\(6),
	datac => \inst8|counter\(7),
	datad => \inst8|counter\(8),
	combout => \inst8|LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y19_N26
\inst8|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~0_combout\ = (!\inst8|counter\(14) & (!\inst8|counter\(12) & (!\inst8|counter\(11) & !\inst8|counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(14),
	datab => \inst8|counter\(12),
	datac => \inst8|counter\(11),
	datad => \inst8|counter\(13),
	combout => \inst8|LessThan0~0_combout\);

-- Location: LCCOMB_X25_Y20_N10
\inst8|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~2_combout\ = (\inst8|LessThan0~0_combout\ & ((\inst8|LessThan0~1_combout\) # ((!\inst8|counter\(9)) # (!\inst8|counter\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|LessThan0~1_combout\,
	datab => \inst8|counter\(10),
	datac => \inst8|counter\(9),
	datad => \inst8|LessThan0~0_combout\,
	combout => \inst8|LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y20_N4
\inst8|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|LessThan0~3_combout\ = (\inst8|counter\(15) & (\inst8|counter\(16) & !\inst8|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(15),
	datab => \inst8|counter\(16),
	datad => \inst8|LessThan0~2_combout\,
	combout => \inst8|LessThan0~3_combout\);

-- Location: FF_X25_Y20_N17
\inst8|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[0]~17_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(0));

-- Location: LCCOMB_X25_Y20_N18
\inst8|counter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[1]~19_combout\ = (\inst8|counter\(1) & (!\inst8|counter[0]~18\)) # (!\inst8|counter\(1) & ((\inst8|counter[0]~18\) # (GND)))
-- \inst8|counter[1]~20\ = CARRY((!\inst8|counter[0]~18\) # (!\inst8|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(1),
	datad => VCC,
	cin => \inst8|counter[0]~18\,
	combout => \inst8|counter[1]~19_combout\,
	cout => \inst8|counter[1]~20\);

-- Location: FF_X25_Y20_N19
\inst8|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[1]~19_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(1));

-- Location: LCCOMB_X25_Y20_N20
\inst8|counter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[2]~21_combout\ = (\inst8|counter\(2) & (\inst8|counter[1]~20\ $ (GND))) # (!\inst8|counter\(2) & (!\inst8|counter[1]~20\ & VCC))
-- \inst8|counter[2]~22\ = CARRY((\inst8|counter\(2) & !\inst8|counter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(2),
	datad => VCC,
	cin => \inst8|counter[1]~20\,
	combout => \inst8|counter[2]~21_combout\,
	cout => \inst8|counter[2]~22\);

-- Location: FF_X25_Y20_N21
\inst8|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[2]~21_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(2));

-- Location: LCCOMB_X25_Y20_N22
\inst8|counter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[3]~23_combout\ = (\inst8|counter\(3) & (!\inst8|counter[2]~22\)) # (!\inst8|counter\(3) & ((\inst8|counter[2]~22\) # (GND)))
-- \inst8|counter[3]~24\ = CARRY((!\inst8|counter[2]~22\) # (!\inst8|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(3),
	datad => VCC,
	cin => \inst8|counter[2]~22\,
	combout => \inst8|counter[3]~23_combout\,
	cout => \inst8|counter[3]~24\);

-- Location: FF_X25_Y20_N23
\inst8|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[3]~23_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(3));

-- Location: LCCOMB_X25_Y20_N24
\inst8|counter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[4]~25_combout\ = (\inst8|counter\(4) & (\inst8|counter[3]~24\ $ (GND))) # (!\inst8|counter\(4) & (!\inst8|counter[3]~24\ & VCC))
-- \inst8|counter[4]~26\ = CARRY((\inst8|counter\(4) & !\inst8|counter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(4),
	datad => VCC,
	cin => \inst8|counter[3]~24\,
	combout => \inst8|counter[4]~25_combout\,
	cout => \inst8|counter[4]~26\);

-- Location: FF_X25_Y20_N25
\inst8|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[4]~25_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(4));

-- Location: LCCOMB_X25_Y20_N26
\inst8|counter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[5]~27_combout\ = (\inst8|counter\(5) & (!\inst8|counter[4]~26\)) # (!\inst8|counter\(5) & ((\inst8|counter[4]~26\) # (GND)))
-- \inst8|counter[5]~28\ = CARRY((!\inst8|counter[4]~26\) # (!\inst8|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(5),
	datad => VCC,
	cin => \inst8|counter[4]~26\,
	combout => \inst8|counter[5]~27_combout\,
	cout => \inst8|counter[5]~28\);

-- Location: FF_X25_Y20_N27
\inst8|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[5]~27_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(5));

-- Location: LCCOMB_X25_Y20_N28
\inst8|counter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[6]~29_combout\ = (\inst8|counter\(6) & (\inst8|counter[5]~28\ $ (GND))) # (!\inst8|counter\(6) & (!\inst8|counter[5]~28\ & VCC))
-- \inst8|counter[6]~30\ = CARRY((\inst8|counter\(6) & !\inst8|counter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(6),
	datad => VCC,
	cin => \inst8|counter[5]~28\,
	combout => \inst8|counter[6]~29_combout\,
	cout => \inst8|counter[6]~30\);

-- Location: FF_X25_Y20_N29
\inst8|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[6]~29_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(6));

-- Location: LCCOMB_X25_Y20_N30
\inst8|counter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[7]~31_combout\ = (\inst8|counter\(7) & (!\inst8|counter[6]~30\)) # (!\inst8|counter\(7) & ((\inst8|counter[6]~30\) # (GND)))
-- \inst8|counter[7]~32\ = CARRY((!\inst8|counter[6]~30\) # (!\inst8|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(7),
	datad => VCC,
	cin => \inst8|counter[6]~30\,
	combout => \inst8|counter[7]~31_combout\,
	cout => \inst8|counter[7]~32\);

-- Location: FF_X25_Y20_N31
\inst8|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[7]~31_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(7));

-- Location: LCCOMB_X25_Y19_N0
\inst8|counter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~33_combout\ = (\inst8|counter\(8) & (\inst8|counter[7]~32\ $ (GND))) # (!\inst8|counter\(8) & (!\inst8|counter[7]~32\ & VCC))
-- \inst8|counter[8]~34\ = CARRY((\inst8|counter\(8) & !\inst8|counter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(8),
	datad => VCC,
	cin => \inst8|counter[7]~32\,
	combout => \inst8|counter[8]~33_combout\,
	cout => \inst8|counter[8]~34\);

-- Location: LCCOMB_X25_Y20_N6
\inst8|counter[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[8]~feeder_combout\ = \inst8|counter[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter[8]~33_combout\,
	combout => \inst8|counter[8]~feeder_combout\);

-- Location: FF_X25_Y20_N7
\inst8|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[8]~feeder_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(8));

-- Location: LCCOMB_X25_Y19_N2
\inst8|counter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[9]~35_combout\ = (\inst8|counter\(9) & (!\inst8|counter[8]~34\)) # (!\inst8|counter\(9) & ((\inst8|counter[8]~34\) # (GND)))
-- \inst8|counter[9]~36\ = CARRY((!\inst8|counter[8]~34\) # (!\inst8|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|counter\(9),
	datad => VCC,
	cin => \inst8|counter[8]~34\,
	combout => \inst8|counter[9]~35_combout\,
	cout => \inst8|counter[9]~36\);

-- Location: FF_X25_Y19_N3
\inst8|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[9]~35_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(9));

-- Location: LCCOMB_X25_Y19_N4
\inst8|counter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[10]~37_combout\ = (\inst8|counter\(10) & (\inst8|counter[9]~36\ $ (GND))) # (!\inst8|counter\(10) & (!\inst8|counter[9]~36\ & VCC))
-- \inst8|counter[10]~38\ = CARRY((\inst8|counter\(10) & !\inst8|counter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(10),
	datad => VCC,
	cin => \inst8|counter[9]~36\,
	combout => \inst8|counter[10]~37_combout\,
	cout => \inst8|counter[10]~38\);

-- Location: LCCOMB_X25_Y20_N14
\inst8|counter[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[10]~feeder_combout\ = \inst8|counter[10]~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|counter[10]~37_combout\,
	combout => \inst8|counter[10]~feeder_combout\);

-- Location: FF_X25_Y20_N15
\inst8|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[10]~feeder_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(10));

-- Location: LCCOMB_X25_Y19_N6
\inst8|counter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[11]~39_combout\ = (\inst8|counter\(11) & (!\inst8|counter[10]~38\)) # (!\inst8|counter\(11) & ((\inst8|counter[10]~38\) # (GND)))
-- \inst8|counter[11]~40\ = CARRY((!\inst8|counter[10]~38\) # (!\inst8|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(11),
	datad => VCC,
	cin => \inst8|counter[10]~38\,
	combout => \inst8|counter[11]~39_combout\,
	cout => \inst8|counter[11]~40\);

-- Location: FF_X25_Y19_N7
\inst8|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[11]~39_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(11));

-- Location: LCCOMB_X25_Y19_N8
\inst8|counter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[12]~41_combout\ = (\inst8|counter\(12) & (\inst8|counter[11]~40\ $ (GND))) # (!\inst8|counter\(12) & (!\inst8|counter[11]~40\ & VCC))
-- \inst8|counter[12]~42\ = CARRY((\inst8|counter\(12) & !\inst8|counter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(12),
	datad => VCC,
	cin => \inst8|counter[11]~40\,
	combout => \inst8|counter[12]~41_combout\,
	cout => \inst8|counter[12]~42\);

-- Location: FF_X25_Y19_N9
\inst8|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[12]~41_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(12));

-- Location: LCCOMB_X25_Y19_N10
\inst8|counter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[13]~43_combout\ = (\inst8|counter\(13) & (!\inst8|counter[12]~42\)) # (!\inst8|counter\(13) & ((\inst8|counter[12]~42\) # (GND)))
-- \inst8|counter[13]~44\ = CARRY((!\inst8|counter[12]~42\) # (!\inst8|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(13),
	datad => VCC,
	cin => \inst8|counter[12]~42\,
	combout => \inst8|counter[13]~43_combout\,
	cout => \inst8|counter[13]~44\);

-- Location: FF_X25_Y19_N11
\inst8|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[13]~43_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(13));

-- Location: LCCOMB_X25_Y19_N12
\inst8|counter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|counter[14]~45_combout\ = (\inst8|counter\(14) & (\inst8|counter[13]~44\ $ (GND))) # (!\inst8|counter\(14) & (!\inst8|counter[13]~44\ & VCC))
-- \inst8|counter[14]~46\ = CARRY((\inst8|counter\(14) & !\inst8|counter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(14),
	datad => VCC,
	cin => \inst8|counter[13]~44\,
	combout => \inst8|counter[14]~45_combout\,
	cout => \inst8|counter[14]~46\);

-- Location: FF_X25_Y19_N13
\inst8|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[14]~45_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(14));

-- Location: FF_X25_Y19_N15
\inst8|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|counter[15]~47_combout\,
	sclr => \inst8|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|counter\(15));

-- Location: LCCOMB_X25_Y20_N8
\inst8|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|clkOut~0_combout\ = \inst8|clkOut~q\ $ (((\inst8|counter\(15) & (\inst8|counter\(16) & !\inst8|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|counter\(15),
	datab => \inst8|clkOut~q\,
	datac => \inst8|counter\(16),
	datad => \inst8|LessThan0~2_combout\,
	combout => \inst8|clkOut~0_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst8|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|clkOut~feeder_combout\ = \inst8|clkOut~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clkOut~0_combout\,
	combout => \inst8|clkOut~feeder_combout\);

-- Location: FF_X25_Y20_N1
\inst8|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|clkOut~q\);

-- Location: CLKCTRL_G7
\inst8|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|clkOut~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y10_N0
\inst9|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[0]~8_combout\ = \inst9|counter\(0) $ (VCC)
-- \inst9|counter[0]~9\ = CARRY(\inst9|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(0),
	datad => VCC,
	combout => \inst9|counter[0]~8_combout\,
	cout => \inst9|counter[0]~9\);

-- Location: FF_X23_Y10_N1
\inst9|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[0]~8_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(0));

-- Location: LCCOMB_X23_Y10_N2
\inst9|counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[1]~10_combout\ = (\inst9|counter\(1) & (!\inst9|counter[0]~9\)) # (!\inst9|counter\(1) & ((\inst9|counter[0]~9\) # (GND)))
-- \inst9|counter[1]~11\ = CARRY((!\inst9|counter[0]~9\) # (!\inst9|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(1),
	datad => VCC,
	cin => \inst9|counter[0]~9\,
	combout => \inst9|counter[1]~10_combout\,
	cout => \inst9|counter[1]~11\);

-- Location: FF_X23_Y10_N3
\inst9|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[1]~10_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(1));

-- Location: LCCOMB_X23_Y10_N4
\inst9|counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[2]~12_combout\ = (\inst9|counter\(2) & (\inst9|counter[1]~11\ $ (GND))) # (!\inst9|counter\(2) & (!\inst9|counter[1]~11\ & VCC))
-- \inst9|counter[2]~13\ = CARRY((\inst9|counter\(2) & !\inst9|counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(2),
	datad => VCC,
	cin => \inst9|counter[1]~11\,
	combout => \inst9|counter[2]~12_combout\,
	cout => \inst9|counter[2]~13\);

-- Location: FF_X23_Y10_N5
\inst9|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[2]~12_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(2));

-- Location: LCCOMB_X23_Y10_N6
\inst9|counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[3]~14_combout\ = (\inst9|counter\(3) & (!\inst9|counter[2]~13\)) # (!\inst9|counter\(3) & ((\inst9|counter[2]~13\) # (GND)))
-- \inst9|counter[3]~15\ = CARRY((!\inst9|counter[2]~13\) # (!\inst9|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datad => VCC,
	cin => \inst9|counter[2]~13\,
	combout => \inst9|counter[3]~14_combout\,
	cout => \inst9|counter[3]~15\);

-- Location: FF_X23_Y10_N7
\inst9|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[3]~14_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(3));

-- Location: LCCOMB_X23_Y10_N8
\inst9|counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[4]~16_combout\ = (\inst9|counter\(4) & (\inst9|counter[3]~15\ $ (GND))) # (!\inst9|counter\(4) & (!\inst9|counter[3]~15\ & VCC))
-- \inst9|counter[4]~17\ = CARRY((\inst9|counter\(4) & !\inst9|counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(4),
	datad => VCC,
	cin => \inst9|counter[3]~15\,
	combout => \inst9|counter[4]~16_combout\,
	cout => \inst9|counter[4]~17\);

-- Location: FF_X23_Y10_N9
\inst9|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[4]~16_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(4));

-- Location: LCCOMB_X23_Y10_N10
\inst9|counter[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[5]~18_combout\ = (\inst9|counter\(5) & (!\inst9|counter[4]~17\)) # (!\inst9|counter\(5) & ((\inst9|counter[4]~17\) # (GND)))
-- \inst9|counter[5]~19\ = CARRY((!\inst9|counter[4]~17\) # (!\inst9|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(5),
	datad => VCC,
	cin => \inst9|counter[4]~17\,
	combout => \inst9|counter[5]~18_combout\,
	cout => \inst9|counter[5]~19\);

-- Location: FF_X23_Y10_N11
\inst9|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[5]~18_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(5));

-- Location: LCCOMB_X23_Y10_N12
\inst9|counter[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[6]~20_combout\ = (\inst9|counter\(6) & (\inst9|counter[5]~19\ $ (GND))) # (!\inst9|counter\(6) & (!\inst9|counter[5]~19\ & VCC))
-- \inst9|counter[6]~21\ = CARRY((\inst9|counter\(6) & !\inst9|counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(6),
	datad => VCC,
	cin => \inst9|counter[5]~19\,
	combout => \inst9|counter[6]~20_combout\,
	cout => \inst9|counter[6]~21\);

-- Location: FF_X23_Y10_N13
\inst9|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[6]~20_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(6));

-- Location: LCCOMB_X23_Y10_N14
\inst9|counter[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|counter[7]~22_combout\ = \inst9|counter\(7) $ (\inst9|counter[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst9|counter\(7),
	cin => \inst9|counter[6]~21\,
	combout => \inst9|counter[7]~22_combout\);

-- Location: FF_X23_Y10_N15
\inst9|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|counter[7]~22_combout\,
	sclr => \inst9|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|counter\(7));

-- Location: LCCOMB_X23_Y10_N30
\inst9|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~0_combout\ = (((!\inst9|counter\(2) & !\inst9|counter\(1))) # (!\inst9|counter\(4))) # (!\inst9|counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(3),
	datab => \inst9|counter\(2),
	datac => \inst9|counter\(4),
	datad => \inst9|counter\(1),
	combout => \inst9|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst9|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|LessThan0~1_combout\ = (((\inst9|LessThan0~0_combout\) # (!\inst9|counter\(5))) # (!\inst9|counter\(7))) # (!\inst9|counter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|counter\(6),
	datab => \inst9|counter\(7),
	datac => \inst9|LessThan0~0_combout\,
	datad => \inst9|counter\(5),
	combout => \inst9|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y10_N18
\inst9|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|clkOut~0_combout\ = \inst9|clkOut~q\ $ (!\inst9|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9|clkOut~q\,
	datad => \inst9|LessThan0~1_combout\,
	combout => \inst9|clkOut~0_combout\);

-- Location: FF_X23_Y10_N19
\inst9|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst9|clkOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|clkOut~q\);

-- Location: LCCOMB_X23_Y10_N20
\inst1|startPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|startPrev~0_combout\ = !\inst9|clkOut~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|clkOut~q\,
	combout => \inst1|startPrev~0_combout\);

-- Location: FF_X23_Y10_N21
\inst1|startPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|startPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|startPrev~q\);

-- Location: LCCOMB_X23_Y10_N28
\inst1|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~1_combout\ = (\inst1|startPrev~q\) # ((\inst1|stateI2C.Waiting~q\) # (\inst9|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|startPrev~q\,
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst9|clkOut~q\,
	combout => \inst1|Selector4~1_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst1|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~2_combout\ = (\inst1|Selector43~0_combout\ & (((!\inst1|Selector4~1_combout\)))) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.DeviceAddressSending~q\ & (\inst1|LessThan1~0_combout\)) # (!\inst1|stateI2C.DeviceAddressSending~q\ & 
-- ((!\inst1|Selector4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|stateI2C.DeviceAddressSending~q\,
	datac => \inst1|LessThan1~0_combout\,
	datad => \inst1|Selector4~1_combout\,
	combout => \inst1|Selector4~2_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst1|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~4_combout\ = (!\inst1|Selector4~0_combout\ & (\inst1|Selector4~3_combout\ & !\inst1|Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector4~0_combout\,
	datac => \inst1|Selector4~3_combout\,
	datad => \inst1|Selector4~2_combout\,
	combout => \inst1|Selector4~4_combout\);

-- Location: FF_X24_Y10_N31
\inst1|stateI2C.WriteBitPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.WriteBitPreparing~q\);

-- Location: LCCOMB_X25_Y11_N8
\inst1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|Selector43~0_combout\ & (\inst1|stateI2C.WriteBitSending~q\)) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.WriteBitPreparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datac => \inst1|stateI2C.WriteBitSending~q\,
	datad => \inst1|stateI2C.WriteBitPreparing~q\,
	combout => \inst1|Selector5~0_combout\);

-- Location: FF_X25_Y11_N9
\inst1|stateI2C.WriteBitSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.WriteBitSending~q\);

-- Location: FF_X23_Y11_N23
\inst1|stateI2C.AcknowledgeChecking1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.WriteBitSending~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking1~q\);

-- Location: FF_X23_Y11_N13
\inst1|stateI2C.AcknowledgeChecking2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.AcknowledgeChecking1~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking2~q\);

-- Location: LCCOMB_X23_Y11_N30
\inst1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = (\inst1|stateI2C.AcknowledgeChecking2~q\ & (((\inst1|LessThan1~0_combout\ & \inst1|stateI2C.PointerByteSending~q\)) # (!\sda~input_o\))) # (!\inst1|stateI2C.AcknowledgeChecking2~q\ & (\inst1|LessThan1~0_combout\ & 
-- (\inst1|stateI2C.PointerByteSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking2~q\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|stateI2C.PointerByteSending~q\,
	datad => \sda~input_o\,
	combout => \inst1|Selector18~0_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (!\inst1|count\(4) & (!\inst1|count\(2) & !\inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(4),
	datac => \inst1|count\(2),
	datad => \inst1|count\(3),
	combout => \inst1|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst1|stateI2C~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stateI2C~60_combout\ = (\inst1|count\(6) & (\inst1|count\(2) & (\inst1|count\(5) & \inst1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(6),
	datab => \inst1|count\(2),
	datac => \inst1|count\(5),
	datad => \inst1|LessThan2~0_combout\,
	combout => \inst1|stateI2C~60_combout\);

-- Location: LCCOMB_X24_Y10_N10
\inst1|stateI2C~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stateI2C~61_combout\ = (!\inst1|count\(7) & ((\inst1|LessThan0~0_combout\) # (!\inst1|stateI2C~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|count\(7),
	datad => \inst1|stateI2C~60_combout\,
	combout => \inst1|stateI2C~61_combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst1|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector18~1_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.PointerBytePreparing~q\ & \inst1|stateI2C~61_combout\)))) # (!\inst1|Selector43~0_combout\ & ((\inst1|Selector18~0_combout\) # ((\inst1|stateI2C.PointerBytePreparing~q\ & 
-- \inst1|stateI2C~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|Selector18~0_combout\,
	datac => \inst1|stateI2C.PointerBytePreparing~q\,
	datad => \inst1|stateI2C~61_combout\,
	combout => \inst1|Selector18~1_combout\);

-- Location: FF_X24_Y10_N25
\inst1|stateI2C.PointerBytePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.PointerBytePreparing~q\);

-- Location: LCCOMB_X25_Y11_N26
\inst1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.PointerByteSending~q\))) # (!\inst1|Selector43~0_combout\ & (\inst1|stateI2C.PointerBytePreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|stateI2C.PointerBytePreparing~q\,
	datac => \inst1|stateI2C.PointerByteSending~q\,
	combout => \inst1|Selector19~0_combout\);

-- Location: FF_X25_Y11_N27
\inst1|stateI2C.PointerByteSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.PointerByteSending~q\);

-- Location: LCCOMB_X24_Y11_N6
\inst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.AcknowledgeChecking3~q\)))) # (!\inst1|Selector43~0_combout\ & (!\inst1|LessThan1~0_combout\ & ((\inst1|stateI2C.PointerByteSending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|stateI2C.AcknowledgeChecking3~q\,
	datad => \inst1|stateI2C.PointerByteSending~q\,
	combout => \inst1|Selector10~0_combout\);

-- Location: FF_X24_Y11_N7
\inst1|stateI2C.AcknowledgeChecking3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking3~q\);

-- Location: FF_X23_Y11_N3
\inst1|stateI2C.AcknowledgeChecking4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.AcknowledgeChecking3~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking4~q\);

-- Location: LCCOMB_X23_Y11_N12
\inst1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector24~0_combout\ = (!\sda~input_o\ & \inst1|stateI2C.AcknowledgeChecking4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datad => \inst1|stateI2C.AcknowledgeChecking4~q\,
	combout => \inst1|Selector24~0_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst1|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector24~1_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.PresetPointerStopping~q\ & \inst1|stateI2C~61_combout\)))) # (!\inst1|Selector43~0_combout\ & ((\inst1|Selector24~0_combout\) # ((\inst1|stateI2C.PresetPointerStopping~q\ & 
-- \inst1|stateI2C~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|Selector24~0_combout\,
	datac => \inst1|stateI2C.PresetPointerStopping~q\,
	datad => \inst1|stateI2C~61_combout\,
	combout => \inst1|Selector24~1_combout\);

-- Location: FF_X24_Y10_N15
\inst1|stateI2C.PresetPointerStopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.PresetPointerStopping~q\);

-- Location: LCCOMB_X24_Y11_N2
\inst1|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~2_combout\ = (!\inst1|startPrev~q\ & (!\inst1|stateI2C.Waiting~q\ & !\inst9|clkOut~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|startPrev~q\,
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst9|clkOut~q\,
	combout => \inst1|Selector6~2_combout\);

-- Location: LCCOMB_X24_Y11_N14
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|Selector6~2_combout\) # ((\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.Starting~q\))) # (!\inst1|Selector43~0_combout\ & (\inst1|stateI2C.PresetPointerStopping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|stateI2C.PresetPointerStopping~q\,
	datac => \inst1|stateI2C.Starting~q\,
	datad => \inst1|Selector6~2_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X24_Y11_N15
\inst1|stateI2C.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.Starting~q\);

-- Location: LCCOMB_X25_Y11_N20
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|stateI2C.Starting~q\) # ((\inst1|stateI2C.DeviceAddressSending~q\ & \inst1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.DeviceAddressSending~q\,
	datab => \inst1|stateI2C.Starting~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: LCCOMB_X24_Y10_N20
\inst1|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~1_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.DeviceAddressPreparing~q\ & \inst1|stateI2C~61_combout\)))) # (!\inst1|Selector43~0_combout\ & ((\inst1|Selector2~0_combout\) # ((\inst1|stateI2C.DeviceAddressPreparing~q\ & 
-- \inst1|stateI2C~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|Selector2~0_combout\,
	datac => \inst1|stateI2C.DeviceAddressPreparing~q\,
	datad => \inst1|stateI2C~61_combout\,
	combout => \inst1|Selector2~1_combout\);

-- Location: FF_X24_Y10_N21
\inst1|stateI2C.DeviceAddressPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.DeviceAddressPreparing~q\);

-- Location: LCCOMB_X24_Y11_N16
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|Selector43~0_combout\ & (\inst1|stateI2C.DeviceAddressSending~q\)) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.DeviceAddressPreparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|stateI2C.DeviceAddressSending~q\,
	datac => \inst1|stateI2C.DeviceAddressPreparing~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X25_Y11_N1
\inst1|stateI2C.DeviceAddressSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.DeviceAddressSending~q\);

-- Location: LCCOMB_X25_Y11_N30
\inst1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector20~0_combout\ = (\sda~input_o\ & (\inst1|stateI2C.MSByteFromDevicePreparing~q\ & ((\inst1|LessThan1~0_combout\)))) # (!\sda~input_o\ & ((\inst1|stateI2C.AcknowledgeChecking6~q\) # ((\inst1|stateI2C.MSByteFromDevicePreparing~q\ & 
-- \inst1|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|stateI2C.MSByteFromDevicePreparing~q\,
	datac => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|Selector20~0_combout\);

-- Location: LCCOMB_X24_Y10_N8
\inst1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector20~1_combout\ = (\inst1|Selector43~0_combout\ & (\inst1|stateI2C.MSByteFromDeviceReading~q\)) # (!\inst1|Selector43~0_combout\ & ((\inst1|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datac => \inst1|stateI2C.MSByteFromDeviceReading~q\,
	datad => \inst1|Selector20~0_combout\,
	combout => \inst1|Selector20~1_combout\);

-- Location: FF_X24_Y10_N9
\inst1|stateI2C.MSByteFromDeviceReading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.MSByteFromDeviceReading~q\);

-- Location: FF_X25_Y11_N29
\inst1|stateI2C.MSByteFromDevicePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.MSByteFromDeviceReading~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.MSByteFromDevicePreparing~q\);

-- Location: LCCOMB_X24_Y11_N12
\inst1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.AcknowledgeChecking7~q\)))) # (!\inst1|Selector43~0_combout\ & (\inst1|stateI2C.MSByteFromDevicePreparing~q\ & (!\inst1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.MSByteFromDevicePreparing~q\,
	datab => \inst1|LessThan1~0_combout\,
	datac => \inst1|stateI2C.AcknowledgeChecking7~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector14~0_combout\);

-- Location: FF_X24_Y11_N13
\inst1|stateI2C.AcknowledgeChecking7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking7~q\);

-- Location: LCCOMB_X25_Y11_N4
\inst1|stateI2C.AcknowledgeChecking8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|stateI2C.AcknowledgeChecking8~feeder_combout\ = \inst1|stateI2C.AcknowledgeChecking7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|stateI2C.AcknowledgeChecking7~q\,
	combout => \inst1|stateI2C.AcknowledgeChecking8~feeder_combout\);

-- Location: FF_X25_Y11_N5
\inst1|stateI2C.AcknowledgeChecking8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|stateI2C.AcknowledgeChecking8~feeder_combout\,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking8~q\);

-- Location: LCCOMB_X24_Y11_N28
\inst1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector22~0_combout\ = (\inst1|stateI2C.LSByteFromDevicePreparing~q\ & ((\inst1|bitPosition\(1)) # ((\inst1|bitPosition\(2)) # (\inst1|bitPosition\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(1),
	datab => \inst1|stateI2C.LSByteFromDevicePreparing~q\,
	datac => \inst1|bitPosition\(2),
	datad => \inst1|bitPosition\(0),
	combout => \inst1|Selector22~0_combout\);

-- Location: LCCOMB_X24_Y10_N18
\inst1|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector22~1_combout\ = (\inst1|Selector43~0_combout\ & (((\inst1|stateI2C.LSByteFromDeviceReading~q\)))) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.AcknowledgeChecking8~q\) # ((\inst1|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datab => \inst1|stateI2C.AcknowledgeChecking8~q\,
	datac => \inst1|stateI2C.LSByteFromDeviceReading~q\,
	datad => \inst1|Selector22~0_combout\,
	combout => \inst1|Selector22~1_combout\);

-- Location: FF_X24_Y10_N19
\inst1|stateI2C.LSByteFromDeviceReading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.LSByteFromDeviceReading~q\);

-- Location: FF_X25_Y11_N21
\inst1|stateI2C.LSByteFromDevicePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.LSByteFromDeviceReading~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.LSByteFromDevicePreparing~q\);

-- Location: LCCOMB_X25_Y11_N18
\inst1|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~1_combout\ = (!\inst1|stateI2C.LSByteFromDevicePreparing~q\ & (!\inst1|stateI2C.PointerByteSending~q\ & !\inst1|stateI2C.MSByteFromDevicePreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|stateI2C.LSByteFromDevicePreparing~q\,
	datac => \inst1|stateI2C.PointerByteSending~q\,
	datad => \inst1|stateI2C.MSByteFromDevicePreparing~q\,
	combout => \inst1|Selector40~1_combout\);

-- Location: LCCOMB_X25_Y11_N0
\inst1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (!\inst1|stateI2C.AcknowledgeChecking10~q\ & (!\inst1|stateI2C.DeviceAddressSending~q\ & \inst1|Selector40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datac => \inst1|stateI2C.DeviceAddressSending~q\,
	datad => \inst1|Selector40~1_combout\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X25_Y11_N6
\inst1|bitPosition[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bitPosition[2]~0_combout\ = (\inst1|stateI2C.AcknowledgeChecking6~q\ & (((\sda~input_o\)))) # (!\inst1|stateI2C.AcknowledgeChecking6~q\ & (\inst1|stateI2C.Waiting~q\ & ((\inst1|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \sda~input_o\,
	datac => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datad => \inst1|WideOr2~0_combout\,
	combout => \inst1|bitPosition[2]~0_combout\);

-- Location: LCCOMB_X26_Y11_N14
\inst1|bitPosition[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|bitPosition[2]~1_combout\ = (!\inst1|bitPosition[2]~0_combout\ & (((\inst1|WideOr2~0_combout\ & !\inst1|stateI2C.AcknowledgeChecking6~q\)) # (!\inst1|Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|WideOr2~0_combout\,
	datab => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datac => \inst1|bitPosition[2]~0_combout\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|bitPosition[2]~1_combout\);

-- Location: FF_X26_Y11_N27
\inst1|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector36~0_combout\,
	ena => \inst1|bitPosition[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bitPosition\(1));

-- Location: LCCOMB_X26_Y11_N18
\inst1|Selector35~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector35~3_combout\ = (\inst1|bitPosition\(2) $ (((!\inst1|bitPosition\(0) & !\inst1|bitPosition\(1))))) # (!\inst1|Selector35~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(0),
	datab => \inst1|bitPosition\(1),
	datac => \inst1|bitPosition\(2),
	datad => \inst1|Selector35~2_combout\,
	combout => \inst1|Selector35~3_combout\);

-- Location: FF_X26_Y11_N19
\inst1|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector35~3_combout\,
	ena => \inst1|bitPosition[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bitPosition\(2));

-- Location: LCCOMB_X26_Y11_N28
\inst1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~0_combout\ = (\inst1|stateI2C.PointerByteSending~q\ & (!\inst1|bitPosition\(0) & ((\inst1|bitPosition\(2)) # (\inst1|bitPosition\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(2),
	datab => \inst1|bitPosition\(1),
	datac => \inst1|stateI2C.PointerByteSending~q\,
	datad => \inst1|bitPosition\(0),
	combout => \inst1|Selector37~0_combout\);

-- Location: LCCOMB_X26_Y11_N30
\inst1|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~1_combout\ = (!\inst1|Selector43~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|stateI2C.AcknowledgeChecking6~q\ & !\sda~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datab => \inst1|Selector37~0_combout\,
	datac => \sda~input_o\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector37~1_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst1|Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~2_combout\ = (!\inst1|stateI2C.DeviceAddressSending~q\ & (!\inst1|stateI2C.MSByteFromDevicePreparing~q\ & !\inst1|stateI2C.LSByteFromDevicePreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.DeviceAddressSending~q\,
	datac => \inst1|stateI2C.MSByteFromDevicePreparing~q\,
	datad => \inst1|stateI2C.LSByteFromDevicePreparing~q\,
	combout => \inst1|Selector37~2_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst1|Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~3_combout\ = (!\inst1|Selector37~2_combout\ & (\inst1|bitPosition\(0) $ (((\inst1|stateI2C~60_combout\) # (\inst1|count\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(0),
	datab => \inst1|Selector37~2_combout\,
	datac => \inst1|stateI2C~60_combout\,
	datad => \inst1|count\(7),
	combout => \inst1|Selector37~3_combout\);

-- Location: LCCOMB_X25_Y11_N16
\inst1|Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~4_combout\ = (!\inst1|count\(7) & (!\inst1|stateI2C~60_combout\ & ((\inst1|stateI2C.AcknowledgeChecking10~q\) # (\inst1|stateI2C.PointerByteSending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(7),
	datab => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datac => \inst1|stateI2C.PointerByteSending~q\,
	datad => \inst1|stateI2C~60_combout\,
	combout => \inst1|Selector37~4_combout\);

-- Location: LCCOMB_X25_Y11_N2
\inst1|Selector37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~5_combout\ = (\inst1|stateI2C.AcknowledgeChecking6~q\) # ((\inst1|Selector37~4_combout\) # ((\inst1|stateI2C.Waiting~q\ & \inst1|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|WideOr2~0_combout\,
	datac => \inst1|stateI2C.AcknowledgeChecking6~q\,
	datad => \inst1|Selector37~4_combout\,
	combout => \inst1|Selector37~5_combout\);

-- Location: LCCOMB_X26_Y11_N4
\inst1|Selector37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~6_combout\ = (\inst1|Selector37~1_combout\) # ((\inst1|Selector37~3_combout\) # ((\inst1|bitPosition\(0) & \inst1|Selector37~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector37~1_combout\,
	datab => \inst1|Selector37~3_combout\,
	datac => \inst1|bitPosition\(0),
	datad => \inst1|Selector37~5_combout\,
	combout => \inst1|Selector37~6_combout\);

-- Location: FF_X26_Y11_N5
\inst1|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector37~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|bitPosition\(0));

-- Location: LCCOMB_X26_Y11_N24
\inst1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = (\inst1|bitPosition\(0)) # ((\inst1|bitPosition\(1)) # (\inst1|bitPosition\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|bitPosition\(0),
	datac => \inst1|bitPosition\(1),
	datad => \inst1|bitPosition\(2),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|stateI2C.AcknowledgeChecking9~q\ & (!\inst1|count\(7) & ((\inst1|LessThan0~0_combout\) # (!\inst1|stateI2C~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking9~q\,
	datab => \inst1|count\(7),
	datac => \inst1|stateI2C~60_combout\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|Selector16~0_combout\);

-- Location: LCCOMB_X24_Y10_N28
\inst1|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector16~1_combout\ = (\inst1|Selector16~0_combout\) # ((!\inst1|LessThan1~0_combout\ & (\inst1|stateI2C.LSByteFromDevicePreparing~q\ & !\inst1|Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LessThan1~0_combout\,
	datab => \inst1|stateI2C.LSByteFromDevicePreparing~q\,
	datac => \inst1|Selector16~0_combout\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector16~1_combout\);

-- Location: FF_X24_Y10_N29
\inst1|stateI2C.AcknowledgeChecking9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking9~q\);

-- Location: LCCOMB_X25_Y11_N24
\inst1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (\inst1|Selector43~0_combout\ & (\inst1|stateI2C.AcknowledgeChecking10~q\)) # (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.AcknowledgeChecking9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~0_combout\,
	datac => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datad => \inst1|stateI2C.AcknowledgeChecking9~q\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X25_Y11_N25
\inst1|stateI2C.AcknowledgeChecking10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.AcknowledgeChecking10~q\);

-- Location: FF_X23_Y11_N7
\inst1|stateI2C.Updating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.AcknowledgeChecking10~q\,
	sload => VCC,
	ena => \inst1|ALT_INV_Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.Updating~q\);

-- Location: LCCOMB_X23_Y11_N20
\inst1|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~0_combout\ = (!\inst1|stateI2C.AcknowledgeChecking2~q\ & (!\inst1|stateI2C.AcknowledgeChecking4~q\ & !\inst1|stateI2C.AcknowledgeChecking6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking2~q\,
	datab => \inst1|stateI2C.AcknowledgeChecking4~q\,
	datad => \inst1|stateI2C.AcknowledgeChecking6~q\,
	combout => \inst1|Selector40~0_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (!\inst1|Selector40~0_combout\ & ((\inst1|Selector43~0_combout\ & ((!\inst1|stateI2C.Waiting~q\))) # (!\inst1|Selector43~0_combout\ & (\sda~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|Selector40~0_combout\,
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: LCCOMB_X24_Y11_N24
\inst1|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~1_combout\ = (!\inst1|stateI2C.Waiting~q\ & ((\inst1|startPrev~q\) # (\inst9|clkOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|startPrev~q\,
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst9|clkOut~q\,
	combout => \inst1|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst1|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~2_combout\ = (!\inst1|Selector0~0_combout\ & (!\inst1|Selector0~1_combout\ & ((\inst1|Selector43~0_combout\) # (!\inst1|stateI2C.Updating~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Updating~q\,
	datab => \inst1|Selector43~0_combout\,
	datac => \inst1|Selector0~0_combout\,
	datad => \inst1|Selector0~1_combout\,
	combout => \inst1|Selector0~2_combout\);

-- Location: FF_X24_Y11_N9
\inst1|stateI2C.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.Waiting~q\);

-- Location: LCCOMB_X24_Y10_N2
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|stateI2C.Waiting~q\ & (!\inst1|stateI2C.DeviceAddressSending~q\ & !\inst1|Selector43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|stateI2C.DeviceAddressSending~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector4~0_combout\);

-- Location: LCCOMB_X24_Y10_N4
\inst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|stateI2C.DeviceAddressSending~q\ & ((\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.ReadBitPreparing~q\))) # (!\inst1|Selector43~0_combout\ & (\inst1|rw~q\)))) # (!\inst1|stateI2C.DeviceAddressSending~q\ & 
-- (((\inst1|stateI2C.ReadBitPreparing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|rw~q\,
	datab => \inst1|stateI2C.DeviceAddressSending~q\,
	datac => \inst1|stateI2C.ReadBitPreparing~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X24_Y10_N26
\inst1|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (!\inst1|Selector4~0_combout\ & (\inst1|Selector6~0_combout\ & !\inst1|Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector4~0_combout\,
	datac => \inst1|Selector6~0_combout\,
	datad => \inst1|Selector4~2_combout\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X24_Y10_N27
\inst1|stateI2C.ReadBitPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|stateI2C.ReadBitPreparing~q\);

-- Location: LCCOMB_X24_Y10_N0
\inst1|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~1_combout\ = (!\inst1|stateI2C.ReadBitPreparing~q\ & (!\inst1|stateI2C.AcknowledgeChecking9~q\ & (!\inst1|stateI2C.PresetPointerStopping~q\ & !\inst1|stateI2C.DeviceAddressPreparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.ReadBitPreparing~q\,
	datab => \inst1|stateI2C.AcknowledgeChecking9~q\,
	datac => \inst1|stateI2C.PresetPointerStopping~q\,
	datad => \inst1|stateI2C.DeviceAddressPreparing~q\,
	combout => \inst1|Selector43~1_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst1|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector41~0_combout\ = (!\inst1|stateI2C.AcknowledgeChecking1~q\ & (!\inst1|stateI2C.AcknowledgeChecking5~q\ & (!\inst1|stateI2C.AcknowledgeChecking7~q\ & !\inst1|stateI2C.AcknowledgeChecking3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking1~q\,
	datab => \inst1|stateI2C.AcknowledgeChecking5~q\,
	datac => \inst1|stateI2C.AcknowledgeChecking7~q\,
	datad => \inst1|stateI2C.AcknowledgeChecking3~q\,
	combout => \inst1|Selector41~0_combout\);

-- Location: LCCOMB_X24_Y10_N12
\inst1|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector41~1_combout\ = (!\inst1|stateI2C.MSByteFromDeviceReading~q\ & !\inst1|stateI2C.LSByteFromDeviceReading~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|stateI2C.MSByteFromDeviceReading~q\,
	datad => \inst1|stateI2C.LSByteFromDeviceReading~q\,
	combout => \inst1|Selector41~1_combout\);

-- Location: LCCOMB_X24_Y10_N6
\inst1|Selector43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~2_combout\ = (!\inst1|stateI2C.WriteBitPreparing~q\ & !\inst1|stateI2C.PointerBytePreparing~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|stateI2C.WriteBitPreparing~q\,
	datad => \inst1|stateI2C.PointerBytePreparing~q\,
	combout => \inst1|Selector43~2_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst1|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector41~2_combout\ = (((!\inst1|Selector43~2_combout\) # (!\inst1|Selector41~1_combout\)) # (!\inst1|Selector41~0_combout\)) # (!\inst1|Selector43~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector43~1_combout\,
	datab => \inst1|Selector41~0_combout\,
	datac => \inst1|Selector41~1_combout\,
	datad => \inst1|Selector43~2_combout\,
	combout => \inst1|Selector41~2_combout\);

-- Location: LCCOMB_X25_Y11_N22
\inst1|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~2_combout\ = (\inst1|stateI2C.ReadBitSending~q\) # ((\inst1|stateI2C.AcknowledgeChecking8~q\) # ((\inst1|stateI2C.WriteBitSending~q\) # (\inst1|stateI2C.Starting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.ReadBitSending~q\,
	datab => \inst1|stateI2C.AcknowledgeChecking8~q\,
	datac => \inst1|stateI2C.WriteBitSending~q\,
	datad => \inst1|stateI2C.Starting~q\,
	combout => \inst1|Selector40~2_combout\);

-- Location: LCCOMB_X23_Y11_N24
\inst1|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~3_combout\ = (\inst1|stateI2C.AcknowledgeChecking10~q\) # (((\inst1|Selector40~2_combout\) # (!\inst1|Selector40~1_combout\)) # (!\inst1|Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datab => \inst1|Selector40~0_combout\,
	datac => \inst1|Selector40~1_combout\,
	datad => \inst1|Selector40~2_combout\,
	combout => \inst1|Selector40~3_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst1|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~4_combout\ = (\inst1|stateI2C~60_combout\ & (((\inst1|Selector41~2_combout\) # (\inst1|Selector40~3_combout\)))) # (!\inst1|stateI2C~60_combout\ & (\inst1|count\(7) & ((\inst1|Selector41~2_combout\) # (\inst1|Selector40~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C~60_combout\,
	datab => \inst1|count\(7),
	datac => \inst1|Selector41~2_combout\,
	datad => \inst1|Selector40~3_combout\,
	combout => \inst1|Selector40~4_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst1|Selector40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~5_combout\ = ((\inst1|Selector40~4_combout\) # ((\inst1|stateI2C.DeviceAddressSending~q\ & !\inst1|Selector43~0_combout\))) # (!\inst1|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.DeviceAddressSending~q\,
	datab => \inst1|Selector43~0_combout\,
	datac => \inst1|stateI2C.Waiting~q\,
	datad => \inst1|Selector40~4_combout\,
	combout => \inst1|Selector40~5_combout\);

-- Location: FF_X23_Y11_N27
\inst1|scl~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector41~2_combout\,
	ena => \inst1|Selector40~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|scl~reg0_q\);

-- Location: FF_X23_Y11_N5
\inst1|scl~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|stateI2C.Waiting~q\,
	sload => VCC,
	ena => \inst1|Selector40~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|scl~en_q\);

-- Location: LCCOMB_X24_Y11_N22
\inst1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector44~0_combout\ = (\inst1|bitPosition\(1) & (\inst1|stateI2C.DeviceAddressPreparing~q\ & (\inst1|bitPosition\(0) $ (\inst1|bitPosition\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(0),
	datab => \inst1|bitPosition\(2),
	datac => \inst1|bitPosition\(1),
	datad => \inst1|stateI2C.DeviceAddressPreparing~q\,
	combout => \inst1|Selector44~0_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst1|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector44~1_combout\ = (\inst1|Selector44~0_combout\) # ((\inst1|stateI2C.PresetPointerStopping~q\) # ((\inst1|stateI2C.ReadBitPreparing~q\) # (\inst1|stateI2C.AcknowledgeChecking9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector44~0_combout\,
	datab => \inst1|stateI2C.PresetPointerStopping~q\,
	datac => \inst1|stateI2C.ReadBitPreparing~q\,
	datad => \inst1|stateI2C.AcknowledgeChecking9~q\,
	combout => \inst1|Selector44~1_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst1|sda~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sda~1_combout\ = (\inst1|count\(4) & ((\inst1|count\(1)) # ((\inst1|count\(2)) # (\inst1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|count\(2),
	datac => \inst1|count\(0),
	datad => \inst1|count\(4),
	combout => \inst1|sda~1_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst1|sda~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|sda~2_combout\ = (!\inst1|count\(6) & (!\inst1|count\(5) & ((!\inst1|sda~1_combout\) # (!\inst1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(6),
	datab => \inst1|count\(3),
	datac => \inst1|count\(5),
	datad => \inst1|sda~1_combout\,
	combout => \inst1|sda~2_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst1|Selector43~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~7_combout\ = (!\inst1|sda~2_combout\ & (\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.Starting~q\) # (\inst1|stateI2C.Updating~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sda~2_combout\,
	datab => \inst1|stateI2C.Starting~q\,
	datac => \inst1|stateI2C.Updating~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector43~7_combout\);

-- Location: LCCOMB_X25_Y11_N12
\inst1|Selector43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~3_combout\ = (!\inst1|LessThan1~0_combout\ & ((\inst1|stateI2C.MSByteFromDevicePreparing~q\) # (\inst1|stateI2C.PointerByteSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|stateI2C.MSByteFromDevicePreparing~q\,
	datac => \inst1|stateI2C.PointerByteSending~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|Selector43~3_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst1|Selector43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~4_combout\ = (!\inst1|Selector43~0_combout\ & ((\inst1|stateI2C.ReadBitSending~q\) # ((\inst1|stateI2C.WriteBitSending~q\) # (\inst1|Selector43~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.ReadBitSending~q\,
	datab => \inst1|stateI2C.WriteBitSending~q\,
	datac => \inst1|Selector43~3_combout\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|Selector43~4_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst1|Selector43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~5_combout\ = (\inst1|count\(2) & (!\inst1|LessThan2~0_combout\ & ((!\inst1|Selector43~2_combout\) # (!\inst1|Selector43~1_combout\)))) # (!\inst1|count\(2) & (((!\inst1|Selector43~2_combout\) # (!\inst1|Selector43~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(2),
	datab => \inst1|LessThan2~0_combout\,
	datac => \inst1|Selector43~1_combout\,
	datad => \inst1|Selector43~2_combout\,
	combout => \inst1|Selector43~5_combout\);

-- Location: LCCOMB_X23_Y11_N14
\inst1|Selector43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~6_combout\ = (\inst1|stateI2C~59_combout\ & (!\inst1|LessThan0~0_combout\ & (!\inst1|count\(7) & \inst1|Selector43~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C~59_combout\,
	datab => \inst1|LessThan0~0_combout\,
	datac => \inst1|count\(7),
	datad => \inst1|Selector43~5_combout\,
	combout => \inst1|Selector43~6_combout\);

-- Location: LCCOMB_X24_Y11_N18
\inst1|Selector43~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~8_combout\ = ((\inst1|Selector43~7_combout\) # ((\inst1|Selector43~4_combout\) # (\inst1|Selector43~6_combout\))) # (!\inst1|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|Selector43~7_combout\,
	datac => \inst1|Selector43~4_combout\,
	datad => \inst1|Selector43~6_combout\,
	combout => \inst1|Selector43~8_combout\);

-- Location: FF_X24_Y11_N21
\inst1|sda~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector44~1_combout\,
	ena => \inst1|Selector43~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sda~reg0_q\);

-- Location: LCCOMB_X24_Y11_N10
\inst1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~0_combout\ = (\inst1|stateI2C.Waiting~q\ & (!\inst1|stateI2C.WriteBitSending~q\ & (!\inst1|stateI2C.ReadBitSending~q\ & !\inst1|stateI2C.PointerByteSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.Waiting~q\,
	datab => \inst1|stateI2C.WriteBitSending~q\,
	datac => \inst1|stateI2C.ReadBitSending~q\,
	datad => \inst1|stateI2C.PointerByteSending~q\,
	combout => \inst1|Selector45~0_combout\);

-- Location: FF_X24_Y11_N11
\inst1|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|Selector45~0_combout\,
	ena => \inst1|Selector43~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sda~en_q\);

-- Location: LCCOMB_X23_Y11_N22
\inst1|ledError~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ledError~0_combout\ = (!\inst1|stateI2C.AcknowledgeChecking2~q\ & !\inst1|stateI2C.AcknowledgeChecking4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking2~q\,
	datad => \inst1|stateI2C.AcknowledgeChecking4~q\,
	combout => \inst1|ledError~0_combout\);

-- Location: LCCOMB_X26_Y11_N12
\inst1|ledError~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ledError~1_combout\ = \inst1|ledError~q\ $ (((!\inst1|ledError~0_combout\ & (\sda~input_o\ & !\inst1|Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ledError~0_combout\,
	datab => \sda~input_o\,
	datac => \inst1|ledError~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|ledError~1_combout\);

-- Location: FF_X26_Y11_N13
\inst1|ledError\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|ledError~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|ledError~q\);

-- Location: LCCOMB_X23_Y14_N20
\inst1|led~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|led~1_combout\ = !\inst1|led~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|led~q\,
	combout => \inst1|led~1_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst1|led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|led~0_combout\ = (\inst1|stateI2C.AcknowledgeChecking10~q\ & !\inst1|Selector43~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.AcknowledgeChecking10~q\,
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|led~0_combout\);

-- Location: FF_X23_Y14_N21
\inst1|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|led~1_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|led~q\);

-- Location: LCCOMB_X21_Y19_N24
\inst10|counter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter[0]~1_combout\ = !\inst10|counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|counter\(0),
	combout => \inst10|counter[0]~1_combout\);

-- Location: FF_X21_Y19_N25
\inst10|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst10|counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(0));

-- Location: LCCOMB_X23_Y19_N16
\inst10|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter~0_combout\ = \inst10|counter\(1) $ (\inst10|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter\(1),
	datad => \inst10|counter\(0),
	combout => \inst10|counter~0_combout\);

-- Location: LCCOMB_X23_Y19_N18
\inst10|counter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|counter[1]~feeder_combout\ = \inst10|counter~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|counter~0_combout\,
	combout => \inst10|counter[1]~feeder_combout\);

-- Location: FF_X23_Y19_N19
\inst10|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|clkOut~clkctrl_outclk\,
	d => \inst10|counter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|counter\(1));

-- Location: CLKCTRL_G5
\inst10|counter[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst10|counter[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst10|counter[1]~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y19_N14
\inst10|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|indicator\(1))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((!\inst10|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|indicator\(1),
	datac => \inst10|counter\(0),
	datad => \inst10|counter[1]~clkctrl_outclk\,
	combout => \inst10|indicator\(1));

-- Location: LCCOMB_X21_Y19_N16
\inst10|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|indicator\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|indicator\(0))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|indicator\(0),
	datac => \inst10|counter\(0),
	datad => \inst10|counter[1]~clkctrl_outclk\,
	combout => \inst10|indicator\(0));

-- Location: LCCOMB_X24_Y14_N18
\inst1|mSByteFromDevice[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[3]~6_combout\ = (\inst1|bitPosition\(1) & \inst1|bitPosition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|bitPosition\(1),
	datad => \inst1|bitPosition\(0),
	combout => \inst1|mSByteFromDevice[3]~6_combout\);

-- Location: LCCOMB_X23_Y14_N2
\inst1|lSByteFromDevice[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lSByteFromDevice[5]~0_combout\ = (\inst1|stateI2C.LSByteFromDeviceReading~q\ & (\inst1|bitPosition\(2) & !\inst1|Selector43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|stateI2C.LSByteFromDeviceReading~q\,
	datac => \inst1|bitPosition\(2),
	datad => \inst1|Selector43~0_combout\,
	combout => \inst1|lSByteFromDevice[5]~0_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst1|lSByteFromDevice[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lSByteFromDevice[7]~3_combout\ = (\inst1|mSByteFromDevice[3]~6_combout\ & ((\inst1|lSByteFromDevice[5]~0_combout\ & (\sda~input_o\)) # (!\inst1|lSByteFromDevice[5]~0_combout\ & ((\inst1|lSByteFromDevice\(7)))))) # 
-- (!\inst1|mSByteFromDevice[3]~6_combout\ & (((\inst1|lSByteFromDevice\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[3]~6_combout\,
	datac => \inst1|lSByteFromDevice\(7),
	datad => \inst1|lSByteFromDevice[5]~0_combout\,
	combout => \inst1|lSByteFromDevice[7]~3_combout\);

-- Location: FF_X23_Y14_N29
\inst1|lSByteFromDevice[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lSByteFromDevice[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lSByteFromDevice\(7));

-- Location: LCCOMB_X23_Y14_N8
\inst1|data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[2]~feeder_combout\ = \inst1|lSByteFromDevice\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lSByteFromDevice\(7),
	combout => \inst1|data[2]~feeder_combout\);

-- Location: FF_X23_Y14_N9
\inst1|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[2]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(2));

-- Location: FF_X22_Y19_N27
\inst11|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst8|clkOut~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|updatePrev~q\);

-- Location: LCCOMB_X22_Y19_N26
\inst11|always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|always0~0_combout\ = (\inst8|clkOut~q\ & !\inst11|updatePrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|clkOut~q\,
	datac => \inst11|updatePrev~q\,
	combout => \inst11|always0~0_combout\);

-- Location: FF_X22_Y19_N21
\inst11|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(2),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(2));

-- Location: LCCOMB_X24_Y14_N0
\inst1|mSByteFromDevice[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[2]~4_combout\ = (\inst1|bitPosition\(1) & !\inst1|bitPosition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|bitPosition\(1),
	datad => \inst1|bitPosition\(0),
	combout => \inst1|mSByteFromDevice[2]~4_combout\);

-- Location: LCCOMB_X23_Y14_N10
\inst1|lSByteFromDevice[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lSByteFromDevice[6]~2_combout\ = (\inst1|mSByteFromDevice[2]~4_combout\ & ((\inst1|lSByteFromDevice[5]~0_combout\ & (\sda~input_o\)) # (!\inst1|lSByteFromDevice[5]~0_combout\ & ((\inst1|lSByteFromDevice\(6)))))) # 
-- (!\inst1|mSByteFromDevice[2]~4_combout\ & (((\inst1|lSByteFromDevice\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[2]~4_combout\,
	datac => \inst1|lSByteFromDevice\(6),
	datad => \inst1|lSByteFromDevice[5]~0_combout\,
	combout => \inst1|lSByteFromDevice[6]~2_combout\);

-- Location: FF_X23_Y14_N11
\inst1|lSByteFromDevice[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lSByteFromDevice[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lSByteFromDevice\(6));

-- Location: LCCOMB_X23_Y14_N14
\inst1|data[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[1]~feeder_combout\ = \inst1|lSByteFromDevice\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lSByteFromDevice\(6),
	combout => \inst1|data[1]~feeder_combout\);

-- Location: FF_X23_Y14_N15
\inst1|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[1]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(1));

-- Location: FF_X22_Y19_N3
\inst11|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(1),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(1));

-- Location: LCCOMB_X24_Y14_N10
\inst1|mSByteFromDevice[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[1]~2_combout\ = (!\inst1|bitPosition\(1) & \inst1|bitPosition\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|bitPosition\(1),
	datad => \inst1|bitPosition\(0),
	combout => \inst1|mSByteFromDevice[1]~2_combout\);

-- Location: LCCOMB_X23_Y14_N24
\inst1|lSByteFromDevice[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|lSByteFromDevice[5]~1_combout\ = (\inst1|mSByteFromDevice[1]~2_combout\ & ((\inst1|lSByteFromDevice[5]~0_combout\ & (\sda~input_o\)) # (!\inst1|lSByteFromDevice[5]~0_combout\ & ((\inst1|lSByteFromDevice\(5)))))) # 
-- (!\inst1|mSByteFromDevice[1]~2_combout\ & (((\inst1|lSByteFromDevice\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[1]~2_combout\,
	datac => \inst1|lSByteFromDevice\(5),
	datad => \inst1|lSByteFromDevice[5]~0_combout\,
	combout => \inst1|lSByteFromDevice[5]~1_combout\);

-- Location: FF_X23_Y14_N25
\inst1|lSByteFromDevice[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|lSByteFromDevice[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|lSByteFromDevice\(5));

-- Location: LCCOMB_X23_Y14_N0
\inst1|data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[0]~feeder_combout\ = \inst1|lSByteFromDevice\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|lSByteFromDevice\(5),
	combout => \inst1|data[0]~feeder_combout\);

-- Location: FF_X23_Y14_N1
\inst1|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[0]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(0));

-- Location: FF_X22_Y19_N9
\inst11|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(0),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(0));

-- Location: LCCOMB_X26_Y11_N16
\inst1|mSByteFromDevice[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[4]~0_combout\ = (!\inst1|bitPosition\(0) & !\inst1|bitPosition\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(0),
	datad => \inst1|bitPosition\(1),
	combout => \inst1|mSByteFromDevice[4]~0_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst1|mSByteFromDevice[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[1]~1_combout\ = (!\inst1|bitPosition\(2) & (!\inst1|Selector43~0_combout\ & \inst1|stateI2C.MSByteFromDeviceReading~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(2),
	datac => \inst1|Selector43~0_combout\,
	datad => \inst1|stateI2C.MSByteFromDeviceReading~q\,
	combout => \inst1|mSByteFromDevice[1]~1_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst1|mSByteFromDevice[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[0]~10_combout\ = (\inst1|mSByteFromDevice[4]~0_combout\ & ((\inst1|mSByteFromDevice[1]~1_combout\ & (\sda~input_o\)) # (!\inst1|mSByteFromDevice[1]~1_combout\ & ((\inst1|mSByteFromDevice\(0)))))) # 
-- (!\inst1|mSByteFromDevice[4]~0_combout\ & (((\inst1|mSByteFromDevice\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[4]~0_combout\,
	datac => \inst1|mSByteFromDevice\(0),
	datad => \inst1|mSByteFromDevice[1]~1_combout\,
	combout => \inst1|mSByteFromDevice[0]~10_combout\);

-- Location: FF_X24_Y14_N31
\inst1|mSByteFromDevice[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|mSByteFromDevice[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mSByteFromDevice\(0));

-- Location: LCCOMB_X23_Y14_N26
\inst1|data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[3]~feeder_combout\ = \inst1|mSByteFromDevice\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mSByteFromDevice\(0),
	combout => \inst1|data[3]~feeder_combout\);

-- Location: FF_X23_Y14_N27
\inst1|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[3]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(3));

-- Location: FF_X22_Y19_N19
\inst11|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(3),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(3));

-- Location: LCCOMB_X22_Y19_N8
\inst11|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr0~0_combout\ = (\inst11|dataBuf\(0) & ((\inst11|dataBuf\(3)) # (\inst11|dataBuf\(2) $ (\inst11|dataBuf\(1))))) # (!\inst11|dataBuf\(0) & ((\inst11|dataBuf\(1)) # (\inst11|dataBuf\(2) $ (\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst1|mSByteFromDevice[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[3]~7_combout\ = (\inst1|mSByteFromDevice[3]~6_combout\ & ((\inst1|mSByteFromDevice[1]~1_combout\ & (\sda~input_o\)) # (!\inst1|mSByteFromDevice[1]~1_combout\ & ((\inst1|mSByteFromDevice\(3)))))) # 
-- (!\inst1|mSByteFromDevice[3]~6_combout\ & (((\inst1|mSByteFromDevice\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[3]~6_combout\,
	datac => \inst1|mSByteFromDevice\(3),
	datad => \inst1|mSByteFromDevice[1]~1_combout\,
	combout => \inst1|mSByteFromDevice[3]~7_combout\);

-- Location: FF_X24_Y14_N25
\inst1|mSByteFromDevice[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|mSByteFromDevice[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mSByteFromDevice\(3));

-- Location: LCCOMB_X23_Y14_N30
\inst1|data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[6]~feeder_combout\ = \inst1|mSByteFromDevice\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mSByteFromDevice\(3),
	combout => \inst1|data[6]~feeder_combout\);

-- Location: FF_X23_Y14_N31
\inst1|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[6]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(6));

-- Location: FF_X22_Y19_N13
\inst11|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(6),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(6));

-- Location: LCCOMB_X24_Y14_N22
\inst1|mSByteFromDevice[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[2]~5_combout\ = (\inst1|mSByteFromDevice[2]~4_combout\ & ((\inst1|mSByteFromDevice[1]~1_combout\ & (\sda~input_o\)) # (!\inst1|mSByteFromDevice[1]~1_combout\ & ((\inst1|mSByteFromDevice\(2)))))) # 
-- (!\inst1|mSByteFromDevice[2]~4_combout\ & (((\inst1|mSByteFromDevice\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[2]~4_combout\,
	datac => \inst1|mSByteFromDevice\(2),
	datad => \inst1|mSByteFromDevice[1]~1_combout\,
	combout => \inst1|mSByteFromDevice[2]~5_combout\);

-- Location: FF_X24_Y14_N23
\inst1|mSByteFromDevice[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|mSByteFromDevice[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mSByteFromDevice\(2));

-- Location: LCCOMB_X23_Y14_N16
\inst1|data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[5]~feeder_combout\ = \inst1|mSByteFromDevice\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mSByteFromDevice\(2),
	combout => \inst1|data[5]~feeder_combout\);

-- Location: FF_X23_Y14_N17
\inst1|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[5]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(5));

-- Location: FF_X22_Y19_N31
\inst11|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(5),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(5));

-- Location: LCCOMB_X24_Y14_N12
\inst1|mSByteFromDevice[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[1]~3_combout\ = (\inst1|mSByteFromDevice[1]~2_combout\ & ((\inst1|mSByteFromDevice[1]~1_combout\ & (\sda~input_o\)) # (!\inst1|mSByteFromDevice[1]~1_combout\ & ((\inst1|mSByteFromDevice\(1)))))) # 
-- (!\inst1|mSByteFromDevice[1]~2_combout\ & (((\inst1|mSByteFromDevice\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sda~input_o\,
	datab => \inst1|mSByteFromDevice[1]~2_combout\,
	datac => \inst1|mSByteFromDevice\(1),
	datad => \inst1|mSByteFromDevice[1]~1_combout\,
	combout => \inst1|mSByteFromDevice[1]~3_combout\);

-- Location: FF_X24_Y14_N13
\inst1|mSByteFromDevice[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|mSByteFromDevice[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mSByteFromDevice\(1));

-- Location: LCCOMB_X23_Y14_N18
\inst1|data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[4]~feeder_combout\ = \inst1|mSByteFromDevice\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mSByteFromDevice\(1),
	combout => \inst1|data[4]~feeder_combout\);

-- Location: FF_X23_Y14_N19
\inst1|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[4]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(4));

-- Location: FF_X22_Y19_N25
\inst11|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(4),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(4));

-- Location: LCCOMB_X26_Y11_N6
\inst1|mSByteFromDevice[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[4]~8_combout\ = (\inst1|bitPosition\(2) & (\inst1|mSByteFromDevice[4]~0_combout\ & (!\inst1|Selector43~0_combout\ & \inst1|stateI2C.MSByteFromDeviceReading~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|bitPosition\(2),
	datab => \inst1|mSByteFromDevice[4]~0_combout\,
	datac => \inst1|Selector43~0_combout\,
	datad => \inst1|stateI2C.MSByteFromDeviceReading~q\,
	combout => \inst1|mSByteFromDevice[4]~8_combout\);

-- Location: LCCOMB_X26_Y11_N22
\inst1|mSByteFromDevice[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mSByteFromDevice[4]~9_combout\ = (\inst1|mSByteFromDevice[4]~8_combout\ & (\sda~input_o\)) # (!\inst1|mSByteFromDevice[4]~8_combout\ & ((\inst1|mSByteFromDevice\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sda~input_o\,
	datac => \inst1|mSByteFromDevice\(4),
	datad => \inst1|mSByteFromDevice[4]~8_combout\,
	combout => \inst1|mSByteFromDevice[4]~9_combout\);

-- Location: FF_X26_Y11_N23
\inst1|mSByteFromDevice[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|mSByteFromDevice[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mSByteFromDevice\(4));

-- Location: LCCOMB_X22_Y11_N0
\inst1|data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|data[7]~feeder_combout\ = \inst1|mSByteFromDevice\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mSByteFromDevice\(4),
	combout => \inst1|data[7]~feeder_combout\);

-- Location: FF_X22_Y11_N1
\inst1|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|data[7]~feeder_combout\,
	ena => \inst1|led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|data\(7));

-- Location: FF_X22_Y19_N23
\inst11|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst1|data\(7),
	sload => VCC,
	ena => \inst11|always0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|dataBuf\(7));

-- Location: LCCOMB_X22_Y19_N24
\inst11|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr7~0_combout\ = (\inst11|dataBuf\(4) & ((\inst11|dataBuf\(7)) # (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(5))))) # (!\inst11|dataBuf\(4) & ((\inst11|dataBuf\(5)) # (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(6),
	datab => \inst11|dataBuf\(5),
	datac => \inst11|dataBuf\(4),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr7~0_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst10|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux5~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr7~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr0~0_combout\,
	datad => \inst11|WideOr7~0_combout\,
	combout => \inst10|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst10|segment[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(6) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(6))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((!\inst10|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(6),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux5~0_combout\,
	combout => \inst10|segment\(6));

-- Location: LCCOMB_X21_Y19_N8
\inst11|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr8~0_combout\ = (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & ((\inst11|dataBuf\(4)) # (!\inst11|dataBuf\(6))))) # (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(4) & (\inst11|dataBuf\(6) $ (!\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(7),
	combout => \inst11|WideOr8~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst11|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr1~0_combout\ = (\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & ((\inst11|dataBuf\(0)) # (!\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(0) & (\inst11|dataBuf\(2) $ (!\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(1),
	datab => \inst11|dataBuf\(0),
	datac => \inst11|dataBuf\(2),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr1~0_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst10|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux6~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr8~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr8~0_combout\,
	datad => \inst11|WideOr1~0_combout\,
	combout => \inst10|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y19_N12
\inst10|segment[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(5) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(5))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(5),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux6~0_combout\,
	combout => \inst10|segment\(5));

-- Location: LCCOMB_X21_Y19_N30
\inst11|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr9~0_combout\ = (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & ((\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(5) & ((\inst11|dataBuf\(6) & (!\inst11|dataBuf\(7))) # (!\inst11|dataBuf\(6) & ((\inst11|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(7),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(4),
	combout => \inst11|WideOr9~0_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst11|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr2~0_combout\ = (\inst11|dataBuf\(1) & (((\inst11|dataBuf\(0) & !\inst11|dataBuf\(3))))) # (!\inst11|dataBuf\(1) & ((\inst11|dataBuf\(2) & ((!\inst11|dataBuf\(3)))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr2~0_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst10|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux7~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr9~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr9~0_combout\,
	datad => \inst11|WideOr2~0_combout\,
	combout => \inst10|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst10|segment[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(4) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(4))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(4),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux7~0_combout\,
	combout => \inst10|segment\(4));

-- Location: LCCOMB_X22_Y19_N20
\inst11|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr3~0_combout\ = (\inst11|dataBuf\(1) & ((\inst11|dataBuf\(2) & ((\inst11|dataBuf\(0)))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(3) & !\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(1) & (!\inst11|dataBuf\(3) & (\inst11|dataBuf\(2) $ 
-- (\inst11|dataBuf\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(3),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(2),
	datad => \inst11|dataBuf\(0),
	combout => \inst11|WideOr3~0_combout\);

-- Location: LCCOMB_X22_Y19_N22
\inst11|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr10~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(6) & (\inst11|dataBuf\(4))) # (!\inst11|dataBuf\(6) & (!\inst11|dataBuf\(4) & \inst11|dataBuf\(7))))) # (!\inst11|dataBuf\(5) & (!\inst11|dataBuf\(7) & (\inst11|dataBuf\(6) $ 
-- (\inst11|dataBuf\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(6),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(7),
	datad => \inst11|dataBuf\(5),
	combout => \inst11|WideOr10~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\inst10|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux8~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr10~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst11|WideOr3~0_combout\,
	datac => \inst11|WideOr10~0_combout\,
	datad => \inst10|counter\(0),
	combout => \inst10|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst10|segment[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(3) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(3))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datab => \inst10|segment\(3),
	datad => \inst10|Mux8~0_combout\,
	combout => \inst10|segment\(3));

-- Location: LCCOMB_X22_Y19_N0
\inst11|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr11~0_combout\ = (\inst11|dataBuf\(7) & (\inst11|dataBuf\(6) & ((\inst11|dataBuf\(5)) # (!\inst11|dataBuf\(4))))) # (!\inst11|dataBuf\(7) & (\inst11|dataBuf\(5) & (!\inst11|dataBuf\(4) & !\inst11|dataBuf\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(7),
	datad => \inst11|dataBuf\(6),
	combout => \inst11|WideOr11~0_combout\);

-- Location: LCCOMB_X22_Y19_N6
\inst11|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr4~0_combout\ = (\inst11|dataBuf\(2) & (\inst11|dataBuf\(3) & ((\inst11|dataBuf\(1)) # (!\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(1) & (!\inst11|dataBuf\(0) & !\inst11|dataBuf\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(0),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr4~0_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst10|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux9~0_combout\ = (\inst10|counter\(0) & (\inst11|WideOr11~0_combout\)) # (!\inst10|counter\(0) & ((\inst11|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr11~0_combout\,
	datad => \inst11|WideOr4~0_combout\,
	combout => \inst10|Mux9~0_combout\);

-- Location: LCCOMB_X21_Y19_N4
\inst10|segment[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(2) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(2))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|segment\(2),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux9~0_combout\,
	combout => \inst10|segment\(2));

-- Location: LCCOMB_X22_Y19_N14
\inst11|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr5~0_combout\ = (\inst11|dataBuf\(1) & ((\inst11|dataBuf\(0) & ((\inst11|dataBuf\(3)))) # (!\inst11|dataBuf\(0) & (\inst11|dataBuf\(2))))) # (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(2) & (\inst11|dataBuf\(0) $ (\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(0),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(2),
	datad => \inst11|dataBuf\(3),
	combout => \inst11|WideOr5~0_combout\);

-- Location: LCCOMB_X22_Y19_N28
\inst11|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr12~0_combout\ = (\inst11|dataBuf\(5) & ((\inst11|dataBuf\(4) & (\inst11|dataBuf\(7))) # (!\inst11|dataBuf\(4) & ((\inst11|dataBuf\(6)))))) # (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(6) & (\inst11|dataBuf\(4) $ (\inst11|dataBuf\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(5),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(7),
	datad => \inst11|dataBuf\(6),
	combout => \inst11|WideOr12~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst10|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux10~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr12~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|counter\(0),
	datac => \inst11|WideOr5~0_combout\,
	datad => \inst11|WideOr12~0_combout\,
	combout => \inst10|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst10|segment[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(1) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(1))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|segment\(1),
	datac => \inst10|counter[1]~clkctrl_outclk\,
	datad => \inst10|Mux10~0_combout\,
	combout => \inst10|segment\(1));

-- Location: LCCOMB_X22_Y19_N18
\inst11|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr6~0_combout\ = (\inst11|dataBuf\(2) & (!\inst11|dataBuf\(1) & (\inst11|dataBuf\(3) $ (!\inst11|dataBuf\(0))))) # (!\inst11|dataBuf\(2) & (\inst11|dataBuf\(0) & (\inst11|dataBuf\(1) $ (!\inst11|dataBuf\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(2),
	datab => \inst11|dataBuf\(1),
	datac => \inst11|dataBuf\(3),
	datad => \inst11|dataBuf\(0),
	combout => \inst11|WideOr6~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\inst11|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|WideOr13~0_combout\ = (\inst11|dataBuf\(7) & (\inst11|dataBuf\(4) & (\inst11|dataBuf\(6) $ (\inst11|dataBuf\(5))))) # (!\inst11|dataBuf\(7) & (!\inst11|dataBuf\(5) & (\inst11|dataBuf\(4) $ (\inst11|dataBuf\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|dataBuf\(7),
	datab => \inst11|dataBuf\(4),
	datac => \inst11|dataBuf\(6),
	datad => \inst11|dataBuf\(5),
	combout => \inst11|WideOr13~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\inst10|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Mux0~0_combout\ = (\inst10|counter\(0) & ((\inst11|WideOr13~0_combout\))) # (!\inst10|counter\(0) & (\inst11|WideOr6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|WideOr6~0_combout\,
	datac => \inst11|WideOr13~0_combout\,
	datad => \inst10|counter\(0),
	combout => \inst10|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y19_N30
\inst10|segment[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segment\(0) = (GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & (\inst10|segment\(0))) # (!GLOBAL(\inst10|counter[1]~clkctrl_outclk\) & ((\inst10|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|counter[1]~clkctrl_outclk\,
	datab => \inst10|segment\(0),
	datad => \inst10|Mux0~0_combout\,
	combout => \inst10|segment\(0));

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

-- Location: IOIBUF_X34_Y12_N8
\key3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\key4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key4,
	o => \key4~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\rx~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx,
	o => \rx~input_o\);

ww_led <= \led~output_o\;

ww_tx <= \tx~output_o\;

ww_scl <= \scl~output_o\;

ww_led1 <= \led1~output_o\;

ww_indicator(3) <= \indicator[3]~output_o\;

ww_indicator(2) <= \indicator[2]~output_o\;

ww_indicator(1) <= \indicator[1]~output_o\;

ww_indicator(0) <= \indicator[0]~output_o\;

ww_segment(6) <= \segment[6]~output_o\;

ww_segment(5) <= \segment[5]~output_o\;

ww_segment(4) <= \segment[4]~output_o\;

ww_segment(3) <= \segment[3]~output_o\;

ww_segment(2) <= \segment[2]~output_o\;

ww_segment(1) <= \segment[1]~output_o\;

ww_segment(0) <= \segment[0]~output_o\;

sda <= \sda~output_o\;
END structure;


