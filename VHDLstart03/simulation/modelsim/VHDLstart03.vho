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

-- DATE "02/28/2024 16:45:16"

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

ENTITY 	VHDLstart03 IS
    PORT (
	led : OUT std_logic;
	clk : IN std_logic;
	tx : OUT std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	key4 : IN std_logic;
	reset : IN std_logic;
	sda : OUT std_logic;
	scl : OUT std_logic;
	led1 : OUT std_logic;
	indicator : OUT std_logic_vector(3 DOWNTO 0);
	segment : OUT std_logic_vector(6 DOWNTO 0);
	rx : IN std_logic
	);
END VHDLstart03;

-- Design Ports Information
-- led	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- tx	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- sda	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- scl	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- rx	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key4	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key3	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key2	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- key1	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VHDLstart03 IS
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
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_key4 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_scl : std_logic;
SIGNAL ww_led1 : std_logic;
SIGNAL ww_indicator : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_rx : std_logic;
SIGNAL \inst|clkOutBuf~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter[1]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx~input_o\ : std_logic;
SIGNAL \sda~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \tx~output_o\ : std_logic;
SIGNAL \scl~output_o\ : std_logic;
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
SIGNAL \inst10|count[0]~8_combout\ : std_logic;
SIGNAL \inst10|count[4]~17\ : std_logic;
SIGNAL \inst10|count[5]~18_combout\ : std_logic;
SIGNAL \inst10|count[2]~28_combout\ : std_logic;
SIGNAL \inst10|count[5]~19\ : std_logic;
SIGNAL \inst10|count[6]~20_combout\ : std_logic;
SIGNAL \inst10|count[6]~21\ : std_logic;
SIGNAL \inst10|count[7]~22_combout\ : std_logic;
SIGNAL \inst10|Selector41~0_combout\ : std_logic;
SIGNAL \inst10|LessThan0~0_combout\ : std_logic;
SIGNAL \inst10|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|clkCounter[0]~17_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|clkCounter[0]~18\ : std_logic;
SIGNAL \inst|clkCounter[1]~19_combout\ : std_logic;
SIGNAL \inst|clkCounter[1]~20\ : std_logic;
SIGNAL \inst|clkCounter[2]~21_combout\ : std_logic;
SIGNAL \inst|clkCounter[2]~22\ : std_logic;
SIGNAL \inst|clkCounter[3]~23_combout\ : std_logic;
SIGNAL \inst|clkCounter[3]~24\ : std_logic;
SIGNAL \inst|clkCounter[4]~25_combout\ : std_logic;
SIGNAL \inst|clkCounter[4]~26\ : std_logic;
SIGNAL \inst|clkCounter[5]~27_combout\ : std_logic;
SIGNAL \inst|clkCounter[5]~28\ : std_logic;
SIGNAL \inst|clkCounter[6]~29_combout\ : std_logic;
SIGNAL \inst|clkCounter[6]~30\ : std_logic;
SIGNAL \inst|clkCounter[7]~31_combout\ : std_logic;
SIGNAL \inst|clkCounter[7]~32\ : std_logic;
SIGNAL \inst|clkCounter[8]~33_combout\ : std_logic;
SIGNAL \inst|clkCounter[8]~feeder_combout\ : std_logic;
SIGNAL \inst|clkCounter[8]~34\ : std_logic;
SIGNAL \inst|clkCounter[9]~35_combout\ : std_logic;
SIGNAL \inst|clkCounter[9]~feeder_combout\ : std_logic;
SIGNAL \inst|clkCounter[9]~36\ : std_logic;
SIGNAL \inst|clkCounter[10]~37_combout\ : std_logic;
SIGNAL \inst|clkCounter[10]~38\ : std_logic;
SIGNAL \inst|clkCounter[11]~39_combout\ : std_logic;
SIGNAL \inst|clkCounter[11]~40\ : std_logic;
SIGNAL \inst|clkCounter[12]~41_combout\ : std_logic;
SIGNAL \inst|clkCounter[12]~42\ : std_logic;
SIGNAL \inst|clkCounter[13]~43_combout\ : std_logic;
SIGNAL \inst|clkCounter[13]~44\ : std_logic;
SIGNAL \inst|clkCounter[14]~45_combout\ : std_logic;
SIGNAL \inst|clkCounter[14]~46\ : std_logic;
SIGNAL \inst|clkCounter[15]~47_combout\ : std_logic;
SIGNAL \inst|clkCounter[15]~48\ : std_logic;
SIGNAL \inst|clkCounter[16]~49_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~0_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~feeder_combout\ : std_logic;
SIGNAL \inst|clkOutBuf~q\ : std_logic;
SIGNAL \inst|clkOutBuf~clkctrl_outclk\ : std_logic;
SIGNAL \inst11|clkCounter[0]~9_combout\ : std_logic;
SIGNAL \inst11|clkCounter[0]~10\ : std_logic;
SIGNAL \inst11|clkCounter[1]~11_combout\ : std_logic;
SIGNAL \inst11|clkCounter[1]~12\ : std_logic;
SIGNAL \inst11|clkCounter[2]~13_combout\ : std_logic;
SIGNAL \inst11|clkCounter[2]~14\ : std_logic;
SIGNAL \inst11|clkCounter[3]~15_combout\ : std_logic;
SIGNAL \inst11|clkCounter[3]~16\ : std_logic;
SIGNAL \inst11|clkCounter[4]~17_combout\ : std_logic;
SIGNAL \inst11|clkCounter[4]~18\ : std_logic;
SIGNAL \inst11|clkCounter[5]~19_combout\ : std_logic;
SIGNAL \inst11|clkCounter[5]~20\ : std_logic;
SIGNAL \inst11|clkCounter[6]~21_combout\ : std_logic;
SIGNAL \inst11|clkCounter[6]~22\ : std_logic;
SIGNAL \inst11|clkCounter[7]~23_combout\ : std_logic;
SIGNAL \inst11|clkCounter[7]~24\ : std_logic;
SIGNAL \inst11|clkCounter[8]~25_combout\ : std_logic;
SIGNAL \inst11|LessThan0~0_combout\ : std_logic;
SIGNAL \inst11|LessThan0~1_combout\ : std_logic;
SIGNAL \inst11|clkOutBuf~0_combout\ : std_logic;
SIGNAL \inst11|clkOutBuf~q\ : std_logic;
SIGNAL \inst10|startPrev~0_combout\ : std_logic;
SIGNAL \inst10|startPrev~q\ : std_logic;
SIGNAL \inst10|LessThan4~0_combout\ : std_logic;
SIGNAL \inst10|LessThan4~1_combout\ : std_logic;
SIGNAL \inst10|bitPosition[2]~6_combout\ : std_logic;
SIGNAL \inst10|bitPosition[2]~7_combout\ : std_logic;
SIGNAL \inst10|Selector37~0_combout\ : std_logic;
SIGNAL \inst10|bitPosition[2]~9_combout\ : std_logic;
SIGNAL \inst10|Selector39~0_combout\ : std_logic;
SIGNAL \inst10|rw~q\ : std_logic;
SIGNAL \inst10|bitPosition[2]~5_combout\ : std_logic;
SIGNAL \inst10|Selector6~4_combout\ : std_logic;
SIGNAL \inst10|Selector6~5_combout\ : std_logic;
SIGNAL \inst10|Selector19~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.PointerByteSending~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking1~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking2~q\ : std_logic;
SIGNAL \inst10|stateI2C~54_combout\ : std_logic;
SIGNAL \inst10|Selector0~2_combout\ : std_logic;
SIGNAL \inst10|Selector18~0_combout\ : std_logic;
SIGNAL \inst10|Selector18~1_combout\ : std_logic;
SIGNAL \inst10|stateI2C.PointerBytePreparing~q\ : std_logic;
SIGNAL \inst10|LessThan1~1_combout\ : std_logic;
SIGNAL \inst10|count[2]~26_combout\ : std_logic;
SIGNAL \inst10|Selector6~2_combout\ : std_logic;
SIGNAL \inst10|count[2]~25_combout\ : std_logic;
SIGNAL \inst10|count[2]~29_combout\ : std_logic;
SIGNAL \inst10|Selector6~7_combout\ : std_logic;
SIGNAL \inst10|Selector6~6_combout\ : std_logic;
SIGNAL \inst10|stateI2C.ReadBitPreparing~q\ : std_logic;
SIGNAL \inst10|Selector7~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.ReadBitSending~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking5~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking6~feeder_combout\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking6~q\ : std_logic;
SIGNAL \inst10|Selector20~0_combout\ : std_logic;
SIGNAL \inst10|Selector20~1_combout\ : std_logic;
SIGNAL \inst10|stateI2C.MSByteFromDeviceReading~q\ : std_logic;
SIGNAL \inst10|stateI2C.MSByteFromDevicePreparing~feeder_combout\ : std_logic;
SIGNAL \inst10|stateI2C.MSByteFromDevicePreparing~q\ : std_logic;
SIGNAL \inst10|Selector14~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking7~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking8~feeder_combout\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking8~q\ : std_logic;
SIGNAL \inst10|Selector22~0_combout\ : std_logic;
SIGNAL \inst10|Selector22~1_combout\ : std_logic;
SIGNAL \inst10|stateI2C.LSByteFromDeviceReading~q\ : std_logic;
SIGNAL \inst10|stateI2C.LSByteFromDevicePreparing~feeder_combout\ : std_logic;
SIGNAL \inst10|stateI2C.LSByteFromDevicePreparing~q\ : std_logic;
SIGNAL \inst10|Selector43~0_combout\ : std_logic;
SIGNAL \inst10|WideOr2~0_combout\ : std_logic;
SIGNAL \inst10|bitPosition[2]~8_combout\ : std_logic;
SIGNAL \inst10|Selector41~2_combout\ : std_logic;
SIGNAL \inst10|Selector16~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking9~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking10~q\ : std_logic;
SIGNAL \inst10|bitPosition[2]~4_combout\ : std_logic;
SIGNAL \inst10|Selector38~0_combout\ : std_logic;
SIGNAL \inst10|Selector36~0_combout\ : std_logic;
SIGNAL \inst10|Selector2~0_combout\ : std_logic;
SIGNAL \inst10|Selector2~1_combout\ : std_logic;
SIGNAL \inst10|stateI2C.DeviceAddressPreparing~q\ : std_logic;
SIGNAL \inst10|Selector3~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.DeviceAddressSending~q\ : std_logic;
SIGNAL \inst10|Selector4~2_combout\ : std_logic;
SIGNAL \inst10|Selector4~3_combout\ : std_logic;
SIGNAL \inst10|Selector4~5_combout\ : std_logic;
SIGNAL \inst10|Selector4~4_combout\ : std_logic;
SIGNAL \inst10|stateI2C.WriteBitPreparing~q\ : std_logic;
SIGNAL \inst10|Selector5~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.WriteBitSending~q\ : std_logic;
SIGNAL \inst10|Selector43~1_combout\ : std_logic;
SIGNAL \inst10|Selector41~6_combout\ : std_logic;
SIGNAL \inst10|Selector41~1_combout\ : std_logic;
SIGNAL \inst10|Selector41~5_combout\ : std_logic;
SIGNAL \inst10|Selector41~3_combout\ : std_logic;
SIGNAL \inst10|Selector41~4_combout\ : std_logic;
SIGNAL \inst10|Selector41~7_combout\ : std_logic;
SIGNAL \inst10|sda~en_q\ : std_logic;
SIGNAL \inst10|ledBuf~3_combout\ : std_logic;
SIGNAL \inst10|Selector25~2_combout\ : std_logic;
SIGNAL \inst10|stateI2C.Updating~q\ : std_logic;
SIGNAL \inst10|Selector10~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking3~q\ : std_logic;
SIGNAL \inst10|stateI2C.AcknowledgeChecking4~q\ : std_logic;
SIGNAL \inst10|Selector40~0_combout\ : std_logic;
SIGNAL \inst10|sda~1_combout\ : std_logic;
SIGNAL \inst10|Selector0~4_combout\ : std_logic;
SIGNAL \inst10|Selector0~3_combout\ : std_logic;
SIGNAL \inst10|Selector0~5_combout\ : std_logic;
SIGNAL \inst10|Selector0~6_combout\ : std_logic;
SIGNAL \inst10|stateI2C.Waiting~q\ : std_logic;
SIGNAL \inst10|Selector6~3_combout\ : std_logic;
SIGNAL \inst10|Selector1~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.Starting~q\ : std_logic;
SIGNAL \inst10|count[2]~24_combout\ : std_logic;
SIGNAL \inst10|count[2]~27_combout\ : std_logic;
SIGNAL \inst10|count[0]~9\ : std_logic;
SIGNAL \inst10|count[1]~10_combout\ : std_logic;
SIGNAL \inst10|count[1]~11\ : std_logic;
SIGNAL \inst10|count[2]~12_combout\ : std_logic;
SIGNAL \inst10|count[2]~13\ : std_logic;
SIGNAL \inst10|count[3]~14_combout\ : std_logic;
SIGNAL \inst10|count[3]~15\ : std_logic;
SIGNAL \inst10|count[4]~16_combout\ : std_logic;
SIGNAL \inst10|LessThan1~0_combout\ : std_logic;
SIGNAL \inst10|scl~0_combout\ : std_logic;
SIGNAL \inst10|Selector24~0_combout\ : std_logic;
SIGNAL \inst10|stateI2C.PresetPointerStopping~q\ : std_logic;
SIGNAL \inst10|Selector42~0_combout\ : std_logic;
SIGNAL \inst10|Selector42~1_combout\ : std_logic;
SIGNAL \inst10|sda~reg0_q\ : std_logic;
SIGNAL \inst10|Selector40~2_combout\ : std_logic;
SIGNAL \inst10|Selector40~3_combout\ : std_logic;
SIGNAL \inst10|Selector40~1_combout\ : std_logic;
SIGNAL \inst10|Selector40~4_combout\ : std_logic;
SIGNAL \inst10|error~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst13|latch~q\ : std_logic;
SIGNAL \inst13|count~1_combout\ : std_logic;
SIGNAL \inst13|count~2_combout\ : std_logic;
SIGNAL \inst13|output~0_combout\ : std_logic;
SIGNAL \inst13|output~2_combout\ : std_logic;
SIGNAL \inst13|count~0_combout\ : std_logic;
SIGNAL \inst13|output~1_combout\ : std_logic;
SIGNAL \inst13|output~q\ : std_logic;
SIGNAL \inst14|resetPrev~0_combout\ : std_logic;
SIGNAL \inst14|resetPrev~q\ : std_logic;
SIGNAL \inst14|countUpdate[0]~0_combout\ : std_logic;
SIGNAL \inst14|process_0~0_combout\ : std_logic;
SIGNAL \inst14|countUpdate[1]~1_combout\ : std_logic;
SIGNAL \inst14|countUpdate[1]~2_combout\ : std_logic;
SIGNAL \inst14|countUpdate[2]~3_combout\ : std_logic;
SIGNAL \inst14|updateBuf~2_combout\ : std_logic;
SIGNAL \inst14|updateBuf~3_combout\ : std_logic;
SIGNAL \inst14|updateBuf~q\ : std_logic;
SIGNAL \inst15|updatePrev~0_combout\ : std_logic;
SIGNAL \inst15|updatePrev~q\ : std_logic;
SIGNAL \inst15|dataBuf[7]~0_combout\ : std_logic;
SIGNAL \inst15|count[0]~14_combout\ : std_logic;
SIGNAL \inst15|count[10]~35\ : std_logic;
SIGNAL \inst15|count[11]~36_combout\ : std_logic;
SIGNAL \inst15|count[1]~13_combout\ : std_logic;
SIGNAL \inst15|LessThan0~2_combout\ : std_logic;
SIGNAL \inst15|LessThan0~1_combout\ : std_logic;
SIGNAL \inst15|count[1]~38_combout\ : std_logic;
SIGNAL \inst15|count[0]~15\ : std_logic;
SIGNAL \inst15|count[1]~16_combout\ : std_logic;
SIGNAL \inst15|count[1]~17\ : std_logic;
SIGNAL \inst15|count[2]~18_combout\ : std_logic;
SIGNAL \inst15|count[2]~19\ : std_logic;
SIGNAL \inst15|count[3]~20_combout\ : std_logic;
SIGNAL \inst15|count[3]~21\ : std_logic;
SIGNAL \inst15|count[4]~22_combout\ : std_logic;
SIGNAL \inst15|count[4]~23\ : std_logic;
SIGNAL \inst15|count[5]~24_combout\ : std_logic;
SIGNAL \inst15|count[5]~25\ : std_logic;
SIGNAL \inst15|count[6]~26_combout\ : std_logic;
SIGNAL \inst15|count[6]~27\ : std_logic;
SIGNAL \inst15|count[7]~28_combout\ : std_logic;
SIGNAL \inst15|count[7]~29\ : std_logic;
SIGNAL \inst15|count[8]~30_combout\ : std_logic;
SIGNAL \inst15|count[8]~31\ : std_logic;
SIGNAL \inst15|count[9]~32_combout\ : std_logic;
SIGNAL \inst15|count[9]~33\ : std_logic;
SIGNAL \inst15|count[10]~34_combout\ : std_logic;
SIGNAL \inst15|count[11]~37\ : std_logic;
SIGNAL \inst15|count[12]~39_combout\ : std_logic;
SIGNAL \inst15|LessThan0~0_combout\ : std_logic;
SIGNAL \inst15|LessThan0~3_combout\ : std_logic;
SIGNAL \inst15|Selector1~1_combout\ : std_logic;
SIGNAL \inst15|stateUART.Starting~q\ : std_logic;
SIGNAL \inst15|Selector2~0_combout\ : std_logic;
SIGNAL \inst15|Selector2~1_combout\ : std_logic;
SIGNAL \inst15|stateUART.ReceivingData~q\ : std_logic;
SIGNAL \inst15|Selector0~0_combout\ : std_logic;
SIGNAL \inst15|bitPosition[0]~2_combout\ : std_logic;
SIGNAL \inst15|bitPosition[1]~1_combout\ : std_logic;
SIGNAL \inst15|bitPosition[2]~0_combout\ : std_logic;
SIGNAL \inst15|Selector0~1_combout\ : std_logic;
SIGNAL \inst15|Selector3~0_combout\ : std_logic;
SIGNAL \inst15|stateUART.Stopping~q\ : std_logic;
SIGNAL \inst15|Selector0~2_combout\ : std_logic;
SIGNAL \inst15|stateUART.Waiting~q\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \inst7|latch~feeder_combout\ : std_logic;
SIGNAL \inst7|latch~q\ : std_logic;
SIGNAL \inst7|count~1_combout\ : std_logic;
SIGNAL \inst7|count~2_combout\ : std_logic;
SIGNAL \inst7|output~0_combout\ : std_logic;
SIGNAL \inst7|output~2_combout\ : std_logic;
SIGNAL \inst7|count~0_combout\ : std_logic;
SIGNAL \inst7|output~1_combout\ : std_logic;
SIGNAL \inst7|output~q\ : std_logic;
SIGNAL \inst14|key1Prev~0_combout\ : std_logic;
SIGNAL \inst14|key1Prev~q\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \inst8|latch~feeder_combout\ : std_logic;
SIGNAL \inst8|latch~q\ : std_logic;
SIGNAL \inst8|count~1_combout\ : std_logic;
SIGNAL \inst8|count~2_combout\ : std_logic;
SIGNAL \inst8|output~0_combout\ : std_logic;
SIGNAL \inst8|output~2_combout\ : std_logic;
SIGNAL \inst8|count~0_combout\ : std_logic;
SIGNAL \inst8|output~1_combout\ : std_logic;
SIGNAL \inst8|output~q\ : std_logic;
SIGNAL \inst14|key2Prev~0_combout\ : std_logic;
SIGNAL \inst14|key2Prev~q\ : std_logic;
SIGNAL \inst14|dataBuf0[2]~0_combout\ : std_logic;
SIGNAL \inst14|dataBuf0~4_combout\ : std_logic;
SIGNAL \inst14|process_1~1_combout\ : std_logic;
SIGNAL \inst14|dataBuf0[1]~3_combout\ : std_logic;
SIGNAL \inst14|dataBuf0[2]~1_combout\ : std_logic;
SIGNAL \inst14|dataBuf0[2]~2_combout\ : std_logic;
SIGNAL \inst14|dataBuf[2]~feeder_combout\ : std_logic;
SIGNAL \inst14|dataBuf0[3]~5_combout\ : std_logic;
SIGNAL \inst14|dataBuf0[3]~6_combout\ : std_logic;
SIGNAL \inst14|dataBuf[3]~feeder_combout\ : std_logic;
SIGNAL \inst15|dataBuf[1]~feeder_combout\ : std_logic;
SIGNAL \inst15|Mux0~2_combout\ : std_logic;
SIGNAL \inst15|Mux0~3_combout\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \inst9|latch~feeder_combout\ : std_logic;
SIGNAL \inst9|latch~q\ : std_logic;
SIGNAL \inst9|count~1_combout\ : std_logic;
SIGNAL \inst9|count~2_combout\ : std_logic;
SIGNAL \inst9|output~2_combout\ : std_logic;
SIGNAL \inst9|count~0_combout\ : std_logic;
SIGNAL \inst9|output~0_combout\ : std_logic;
SIGNAL \inst9|output~1_combout\ : std_logic;
SIGNAL \inst9|output~q\ : std_logic;
SIGNAL \inst14|key3Prev~0_combout\ : std_logic;
SIGNAL \inst14|key3Prev~q\ : std_logic;
SIGNAL \key4~input_o\ : std_logic;
SIGNAL \inst12|latch~feeder_combout\ : std_logic;
SIGNAL \inst12|latch~q\ : std_logic;
SIGNAL \inst12|count~1_combout\ : std_logic;
SIGNAL \inst12|count~2_combout\ : std_logic;
SIGNAL \inst12|output~0_combout\ : std_logic;
SIGNAL \inst12|output~2_combout\ : std_logic;
SIGNAL \inst12|count~0_combout\ : std_logic;
SIGNAL \inst12|output~1_combout\ : std_logic;
SIGNAL \inst12|output~q\ : std_logic;
SIGNAL \inst14|key4Prev~0_combout\ : std_logic;
SIGNAL \inst14|key4Prev~q\ : std_logic;
SIGNAL \inst14|dataBuf1[1]~0_combout\ : std_logic;
SIGNAL \inst14|dataBuf1~4_combout\ : std_logic;
SIGNAL \inst14|process_1~0_combout\ : std_logic;
SIGNAL \inst14|dataBuf1[1]~3_combout\ : std_logic;
SIGNAL \inst14|dataBuf1[2]~1_combout\ : std_logic;
SIGNAL \inst14|dataBuf1[2]~2_combout\ : std_logic;
SIGNAL \inst14|dataBuf1[3]~5_combout\ : std_logic;
SIGNAL \inst14|dataBuf1[3]~6_combout\ : std_logic;
SIGNAL \inst14|dataBuf[5]~feeder_combout\ : std_logic;
SIGNAL \inst15|dataBuf[5]~feeder_combout\ : std_logic;
SIGNAL \inst15|Mux0~0_combout\ : std_logic;
SIGNAL \inst15|Mux0~1_combout\ : std_logic;
SIGNAL \inst15|Selector17~0_combout\ : std_logic;
SIGNAL \inst15|Selector17~1_combout\ : std_logic;
SIGNAL \inst15|Selector17~2_combout\ : std_logic;
SIGNAL \inst15|tx~q\ : std_logic;
SIGNAL \inst10|Selector34~0_combout\ : std_logic;
SIGNAL \inst10|Selector34~1_combout\ : std_logic;
SIGNAL \inst10|Selector34~3_combout\ : std_logic;
SIGNAL \inst10|Selector34~2_combout\ : std_logic;
SIGNAL \inst10|Selector34~4_combout\ : std_logic;
SIGNAL \inst10|Selector34~5_combout\ : std_logic;
SIGNAL \inst10|Selector34~6_combout\ : std_logic;
SIGNAL \inst10|scl~q\ : std_logic;
SIGNAL \inst10|ledBuf~2_combout\ : std_logic;
SIGNAL \inst10|ledBuf~q\ : std_logic;
SIGNAL \inst2|clkCounter[0]~1_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~0_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|clkCounter[1]~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst2|indicator\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|clkCounter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|countUpdate\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst8|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst14|dataBuf1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst11|clkCounter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst14|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|dataBuf\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|dataBuf0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|clkCounter\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst9|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst10|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst15|bitPosition\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst15|ALT_INV_count[1]~13_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_dataBuf[7]~0_combout\ : std_logic;
SIGNAL \inst15|ALT_INV_tx~q\ : std_logic;
SIGNAL \inst10|ALT_INV_error~q\ : std_logic;
SIGNAL \inst11|ALT_INV_LessThan0~1_combout\ : std_logic;

BEGIN

led <= ww_led;
ww_clk <= clk;
tx <= ww_tx;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
ww_key4 <= key4;
ww_reset <= reset;
sda <= ww_sda;
scl <= ww_scl;
led1 <= ww_led1;
indicator <= ww_indicator;
segment <= ww_segment;
ww_rx <= rx;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|clkOutBuf~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|clkOutBuf~q\);

\inst2|clkCounter[1]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|clkCounter\(1));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst15|ALT_INV_count[1]~13_combout\ <= NOT \inst15|count[1]~13_combout\;
\inst15|ALT_INV_dataBuf[7]~0_combout\ <= NOT \inst15|dataBuf[7]~0_combout\;
\inst15|ALT_INV_tx~q\ <= NOT \inst15|tx~q\;
\inst10|ALT_INV_error~q\ <= NOT \inst10|error~q\;
\inst11|ALT_INV_LessThan0~1_combout\ <= NOT \inst11|LessThan0~1_combout\;

-- Location: IOOBUF_X0_Y18_N16
\sda~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|sda~reg0_q\,
	oe => \inst10|sda~en_q\,
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
	i => \inst10|ALT_INV_error~q\,
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
	i => \inst15|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => \tx~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\scl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|scl~q\,
	devoe => ww_devoe,
	o => \scl~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ledBuf~q\,
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
	i => \inst2|indicator\(1),
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
	i => \inst2|indicator\(0),
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: LCCOMB_X11_Y13_N10
\inst10|count[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[0]~8_combout\ = \inst10|count\(0) $ (VCC)
-- \inst10|count[0]~9\ = CARRY(\inst10|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(0),
	datad => VCC,
	combout => \inst10|count[0]~8_combout\,
	cout => \inst10|count[0]~9\);

-- Location: LCCOMB_X11_Y13_N18
\inst10|count[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[4]~16_combout\ = (\inst10|count\(4) & (\inst10|count[3]~15\ $ (GND))) # (!\inst10|count\(4) & (!\inst10|count[3]~15\ & VCC))
-- \inst10|count[4]~17\ = CARRY((\inst10|count\(4) & !\inst10|count[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(4),
	datad => VCC,
	cin => \inst10|count[3]~15\,
	combout => \inst10|count[4]~16_combout\,
	cout => \inst10|count[4]~17\);

-- Location: LCCOMB_X11_Y13_N20
\inst10|count[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[5]~18_combout\ = (\inst10|count\(5) & (!\inst10|count[4]~17\)) # (!\inst10|count\(5) & ((\inst10|count[4]~17\) # (GND)))
-- \inst10|count[5]~19\ = CARRY((!\inst10|count[4]~17\) # (!\inst10|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(5),
	datad => VCC,
	cin => \inst10|count[4]~17\,
	combout => \inst10|count[5]~18_combout\,
	cout => \inst10|count[5]~19\);

-- Location: LCCOMB_X11_Y13_N26
\inst10|count[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~28_combout\ = (\inst10|LessThan0~1_combout\) # (!\inst10|stateI2C.Starting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.Starting~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|count[2]~28_combout\);

-- Location: FF_X11_Y13_N21
\inst10|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[5]~18_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(5));

-- Location: LCCOMB_X11_Y13_N22
\inst10|count[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[6]~20_combout\ = (\inst10|count\(6) & (\inst10|count[5]~19\ $ (GND))) # (!\inst10|count\(6) & (!\inst10|count[5]~19\ & VCC))
-- \inst10|count[6]~21\ = CARRY((\inst10|count\(6) & !\inst10|count[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datad => VCC,
	cin => \inst10|count[5]~19\,
	combout => \inst10|count[6]~20_combout\,
	cout => \inst10|count[6]~21\);

-- Location: FF_X11_Y13_N23
\inst10|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[6]~20_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(6));

-- Location: LCCOMB_X11_Y13_N24
\inst10|count[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[7]~22_combout\ = \inst10|count\(7) $ (\inst10|count[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(7),
	cin => \inst10|count[6]~21\,
	combout => \inst10|count[7]~22_combout\);

-- Location: FF_X11_Y13_N25
\inst10|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[7]~22_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(7));

-- Location: LCCOMB_X12_Y13_N30
\inst10|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~0_combout\ = (\inst10|count\(6) & \inst10|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(6),
	datad => \inst10|count\(5),
	combout => \inst10|Selector41~0_combout\);

-- Location: LCCOMB_X11_Y13_N8
\inst10|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~0_combout\ = (\inst10|count\(3) & (\inst10|count\(4) & ((\inst10|count\(0)) # (\inst10|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(0),
	datab => \inst10|count\(3),
	datac => \inst10|count\(1),
	datad => \inst10|count\(4),
	combout => \inst10|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y13_N20
\inst10|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~1_combout\ = (\inst10|count\(7)) # ((\inst10|count\(2) & (\inst10|Selector41~0_combout\ & \inst10|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(2),
	datab => \inst10|count\(7),
	datac => \inst10|Selector41~0_combout\,
	datad => \inst10|LessThan0~0_combout\,
	combout => \inst10|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y13_N16
\inst|clkCounter[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[0]~17_combout\ = \inst|clkCounter\(0) $ (VCC)
-- \inst|clkCounter[0]~18\ = CARRY(\inst|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(0),
	datad => VCC,
	combout => \inst|clkCounter[0]~17_combout\,
	cout => \inst|clkCounter[0]~18\);

-- Location: LCCOMB_X33_Y13_N14
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (!\inst|clkCounter\(8) & (((!\inst|clkCounter\(5) & !\inst|clkCounter\(6))) # (!\inst|clkCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(5),
	datab => \inst|clkCounter\(6),
	datac => \inst|clkCounter\(7),
	datad => \inst|clkCounter\(8),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N26
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (!\inst|clkCounter\(14) & (!\inst|clkCounter\(13) & (!\inst|clkCounter\(12) & !\inst|clkCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(14),
	datab => \inst|clkCounter\(13),
	datac => \inst|clkCounter\(12),
	datad => \inst|clkCounter\(11),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|LessThan0~0_combout\ & (((\inst|LessThan0~1_combout\) # (!\inst|clkCounter\(9))) # (!\inst|clkCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(10),
	datab => \inst|clkCounter\(9),
	datac => \inst|LessThan0~1_combout\,
	datad => \inst|LessThan0~0_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y13_N0
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|clkCounter\(16) & (\inst|clkCounter\(15) & !\inst|LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(16),
	datac => \inst|clkCounter\(15),
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: FF_X33_Y13_N17
\inst|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[0]~17_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(0));

-- Location: LCCOMB_X33_Y13_N18
\inst|clkCounter[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[1]~19_combout\ = (\inst|clkCounter\(1) & (!\inst|clkCounter[0]~18\)) # (!\inst|clkCounter\(1) & ((\inst|clkCounter[0]~18\) # (GND)))
-- \inst|clkCounter[1]~20\ = CARRY((!\inst|clkCounter[0]~18\) # (!\inst|clkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(1),
	datad => VCC,
	cin => \inst|clkCounter[0]~18\,
	combout => \inst|clkCounter[1]~19_combout\,
	cout => \inst|clkCounter[1]~20\);

-- Location: FF_X33_Y13_N19
\inst|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[1]~19_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(1));

-- Location: LCCOMB_X33_Y13_N20
\inst|clkCounter[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[2]~21_combout\ = (\inst|clkCounter\(2) & (\inst|clkCounter[1]~20\ $ (GND))) # (!\inst|clkCounter\(2) & (!\inst|clkCounter[1]~20\ & VCC))
-- \inst|clkCounter[2]~22\ = CARRY((\inst|clkCounter\(2) & !\inst|clkCounter[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(2),
	datad => VCC,
	cin => \inst|clkCounter[1]~20\,
	combout => \inst|clkCounter[2]~21_combout\,
	cout => \inst|clkCounter[2]~22\);

-- Location: FF_X33_Y13_N21
\inst|clkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[2]~21_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(2));

-- Location: LCCOMB_X33_Y13_N22
\inst|clkCounter[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[3]~23_combout\ = (\inst|clkCounter\(3) & (!\inst|clkCounter[2]~22\)) # (!\inst|clkCounter\(3) & ((\inst|clkCounter[2]~22\) # (GND)))
-- \inst|clkCounter[3]~24\ = CARRY((!\inst|clkCounter[2]~22\) # (!\inst|clkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(3),
	datad => VCC,
	cin => \inst|clkCounter[2]~22\,
	combout => \inst|clkCounter[3]~23_combout\,
	cout => \inst|clkCounter[3]~24\);

-- Location: FF_X33_Y13_N23
\inst|clkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[3]~23_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(3));

-- Location: LCCOMB_X33_Y13_N24
\inst|clkCounter[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[4]~25_combout\ = (\inst|clkCounter\(4) & (\inst|clkCounter[3]~24\ $ (GND))) # (!\inst|clkCounter\(4) & (!\inst|clkCounter[3]~24\ & VCC))
-- \inst|clkCounter[4]~26\ = CARRY((\inst|clkCounter\(4) & !\inst|clkCounter[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(4),
	datad => VCC,
	cin => \inst|clkCounter[3]~24\,
	combout => \inst|clkCounter[4]~25_combout\,
	cout => \inst|clkCounter[4]~26\);

-- Location: FF_X33_Y13_N25
\inst|clkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[4]~25_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(4));

-- Location: LCCOMB_X33_Y13_N26
\inst|clkCounter[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[5]~27_combout\ = (\inst|clkCounter\(5) & (!\inst|clkCounter[4]~26\)) # (!\inst|clkCounter\(5) & ((\inst|clkCounter[4]~26\) # (GND)))
-- \inst|clkCounter[5]~28\ = CARRY((!\inst|clkCounter[4]~26\) # (!\inst|clkCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(5),
	datad => VCC,
	cin => \inst|clkCounter[4]~26\,
	combout => \inst|clkCounter[5]~27_combout\,
	cout => \inst|clkCounter[5]~28\);

-- Location: FF_X33_Y13_N27
\inst|clkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[5]~27_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(5));

-- Location: LCCOMB_X33_Y13_N28
\inst|clkCounter[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[6]~29_combout\ = (\inst|clkCounter\(6) & (\inst|clkCounter[5]~28\ $ (GND))) # (!\inst|clkCounter\(6) & (!\inst|clkCounter[5]~28\ & VCC))
-- \inst|clkCounter[6]~30\ = CARRY((\inst|clkCounter\(6) & !\inst|clkCounter[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(6),
	datad => VCC,
	cin => \inst|clkCounter[5]~28\,
	combout => \inst|clkCounter[6]~29_combout\,
	cout => \inst|clkCounter[6]~30\);

-- Location: FF_X33_Y13_N29
\inst|clkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[6]~29_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(6));

-- Location: LCCOMB_X33_Y13_N30
\inst|clkCounter[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[7]~31_combout\ = (\inst|clkCounter\(7) & (!\inst|clkCounter[6]~30\)) # (!\inst|clkCounter\(7) & ((\inst|clkCounter[6]~30\) # (GND)))
-- \inst|clkCounter[7]~32\ = CARRY((!\inst|clkCounter[6]~30\) # (!\inst|clkCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(7),
	datad => VCC,
	cin => \inst|clkCounter[6]~30\,
	combout => \inst|clkCounter[7]~31_combout\,
	cout => \inst|clkCounter[7]~32\);

-- Location: FF_X33_Y13_N31
\inst|clkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[7]~31_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(7));

-- Location: LCCOMB_X33_Y12_N0
\inst|clkCounter[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[8]~33_combout\ = (\inst|clkCounter\(8) & (\inst|clkCounter[7]~32\ $ (GND))) # (!\inst|clkCounter\(8) & (!\inst|clkCounter[7]~32\ & VCC))
-- \inst|clkCounter[8]~34\ = CARRY((\inst|clkCounter\(8) & !\inst|clkCounter[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(8),
	datad => VCC,
	cin => \inst|clkCounter[7]~32\,
	combout => \inst|clkCounter[8]~33_combout\,
	cout => \inst|clkCounter[8]~34\);

-- Location: LCCOMB_X33_Y13_N10
\inst|clkCounter[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[8]~feeder_combout\ = \inst|clkCounter[8]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter[8]~33_combout\,
	combout => \inst|clkCounter[8]~feeder_combout\);

-- Location: FF_X33_Y13_N11
\inst|clkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[8]~feeder_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(8));

-- Location: LCCOMB_X33_Y12_N2
\inst|clkCounter[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[9]~35_combout\ = (\inst|clkCounter\(9) & (!\inst|clkCounter[8]~34\)) # (!\inst|clkCounter\(9) & ((\inst|clkCounter[8]~34\) # (GND)))
-- \inst|clkCounter[9]~36\ = CARRY((!\inst|clkCounter[8]~34\) # (!\inst|clkCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(9),
	datad => VCC,
	cin => \inst|clkCounter[8]~34\,
	combout => \inst|clkCounter[9]~35_combout\,
	cout => \inst|clkCounter[9]~36\);

-- Location: LCCOMB_X33_Y13_N2
\inst|clkCounter[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[9]~feeder_combout\ = \inst|clkCounter[9]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter[9]~35_combout\,
	combout => \inst|clkCounter[9]~feeder_combout\);

-- Location: FF_X33_Y13_N3
\inst|clkCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[9]~feeder_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(9));

-- Location: LCCOMB_X33_Y12_N4
\inst|clkCounter[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[10]~37_combout\ = (\inst|clkCounter\(10) & (\inst|clkCounter[9]~36\ $ (GND))) # (!\inst|clkCounter\(10) & (!\inst|clkCounter[9]~36\ & VCC))
-- \inst|clkCounter[10]~38\ = CARRY((\inst|clkCounter\(10) & !\inst|clkCounter[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(10),
	datad => VCC,
	cin => \inst|clkCounter[9]~36\,
	combout => \inst|clkCounter[10]~37_combout\,
	cout => \inst|clkCounter[10]~38\);

-- Location: FF_X33_Y12_N5
\inst|clkCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[10]~37_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(10));

-- Location: LCCOMB_X33_Y12_N6
\inst|clkCounter[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[11]~39_combout\ = (\inst|clkCounter\(11) & (!\inst|clkCounter[10]~38\)) # (!\inst|clkCounter\(11) & ((\inst|clkCounter[10]~38\) # (GND)))
-- \inst|clkCounter[11]~40\ = CARRY((!\inst|clkCounter[10]~38\) # (!\inst|clkCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(11),
	datad => VCC,
	cin => \inst|clkCounter[10]~38\,
	combout => \inst|clkCounter[11]~39_combout\,
	cout => \inst|clkCounter[11]~40\);

-- Location: FF_X33_Y12_N7
\inst|clkCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[11]~39_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(11));

-- Location: LCCOMB_X33_Y12_N8
\inst|clkCounter[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[12]~41_combout\ = (\inst|clkCounter\(12) & (\inst|clkCounter[11]~40\ $ (GND))) # (!\inst|clkCounter\(12) & (!\inst|clkCounter[11]~40\ & VCC))
-- \inst|clkCounter[12]~42\ = CARRY((\inst|clkCounter\(12) & !\inst|clkCounter[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(12),
	datad => VCC,
	cin => \inst|clkCounter[11]~40\,
	combout => \inst|clkCounter[12]~41_combout\,
	cout => \inst|clkCounter[12]~42\);

-- Location: FF_X33_Y12_N9
\inst|clkCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[12]~41_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(12));

-- Location: LCCOMB_X33_Y12_N10
\inst|clkCounter[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[13]~43_combout\ = (\inst|clkCounter\(13) & (!\inst|clkCounter[12]~42\)) # (!\inst|clkCounter\(13) & ((\inst|clkCounter[12]~42\) # (GND)))
-- \inst|clkCounter[13]~44\ = CARRY((!\inst|clkCounter[12]~42\) # (!\inst|clkCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(13),
	datad => VCC,
	cin => \inst|clkCounter[12]~42\,
	combout => \inst|clkCounter[13]~43_combout\,
	cout => \inst|clkCounter[13]~44\);

-- Location: FF_X33_Y12_N11
\inst|clkCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[13]~43_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(13));

-- Location: LCCOMB_X33_Y12_N12
\inst|clkCounter[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[14]~45_combout\ = (\inst|clkCounter\(14) & (\inst|clkCounter[13]~44\ $ (GND))) # (!\inst|clkCounter\(14) & (!\inst|clkCounter[13]~44\ & VCC))
-- \inst|clkCounter[14]~46\ = CARRY((\inst|clkCounter\(14) & !\inst|clkCounter[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(14),
	datad => VCC,
	cin => \inst|clkCounter[13]~44\,
	combout => \inst|clkCounter[14]~45_combout\,
	cout => \inst|clkCounter[14]~46\);

-- Location: FF_X33_Y12_N13
\inst|clkCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[14]~45_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(14));

-- Location: LCCOMB_X33_Y12_N14
\inst|clkCounter[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[15]~47_combout\ = (\inst|clkCounter\(15) & (!\inst|clkCounter[14]~46\)) # (!\inst|clkCounter\(15) & ((\inst|clkCounter[14]~46\) # (GND)))
-- \inst|clkCounter[15]~48\ = CARRY((!\inst|clkCounter[14]~46\) # (!\inst|clkCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|clkCounter\(15),
	datad => VCC,
	cin => \inst|clkCounter[14]~46\,
	combout => \inst|clkCounter[15]~47_combout\,
	cout => \inst|clkCounter[15]~48\);

-- Location: FF_X33_Y12_N15
\inst|clkCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[15]~47_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(15));

-- Location: LCCOMB_X33_Y12_N16
\inst|clkCounter[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkCounter[16]~49_combout\ = \inst|clkCounter[15]~48\ $ (!\inst|clkCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|clkCounter\(16),
	cin => \inst|clkCounter[15]~48\,
	combout => \inst|clkCounter[16]~49_combout\);

-- Location: FF_X33_Y12_N17
\inst|clkCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkCounter[16]~49_combout\,
	sclr => \inst|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkCounter\(16));

-- Location: LCCOMB_X33_Y13_N8
\inst|clkOutBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~0_combout\ = \inst|clkOutBuf~q\ $ (((\inst|clkCounter\(16) & (\inst|clkCounter\(15) & !\inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|clkCounter\(16),
	datab => \inst|clkCounter\(15),
	datac => \inst|clkOutBuf~q\,
	datad => \inst|LessThan0~2_combout\,
	combout => \inst|clkOutBuf~0_combout\);

-- Location: LCCOMB_X33_Y13_N6
\inst|clkOutBuf~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clkOutBuf~feeder_combout\ = \inst|clkOutBuf~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|clkOutBuf~0_combout\,
	combout => \inst|clkOutBuf~feeder_combout\);

-- Location: FF_X33_Y13_N7
\inst|clkOutBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|clkOutBuf~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clkOutBuf~q\);

-- Location: CLKCTRL_G6
\inst|clkOutBuf~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|clkOutBuf~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|clkOutBuf~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y14_N6
\inst11|clkCounter[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[0]~9_combout\ = \inst11|clkCounter\(0) $ (VCC)
-- \inst11|clkCounter[0]~10\ = CARRY(\inst11|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(0),
	datad => VCC,
	combout => \inst11|clkCounter[0]~9_combout\,
	cout => \inst11|clkCounter[0]~10\);

-- Location: FF_X11_Y14_N7
\inst11|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[0]~9_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(0));

-- Location: LCCOMB_X11_Y14_N8
\inst11|clkCounter[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[1]~11_combout\ = (\inst11|clkCounter\(1) & (!\inst11|clkCounter[0]~10\)) # (!\inst11|clkCounter\(1) & ((\inst11|clkCounter[0]~10\) # (GND)))
-- \inst11|clkCounter[1]~12\ = CARRY((!\inst11|clkCounter[0]~10\) # (!\inst11|clkCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|clkCounter\(1),
	datad => VCC,
	cin => \inst11|clkCounter[0]~10\,
	combout => \inst11|clkCounter[1]~11_combout\,
	cout => \inst11|clkCounter[1]~12\);

-- Location: FF_X11_Y14_N9
\inst11|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[1]~11_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(1));

-- Location: LCCOMB_X11_Y14_N10
\inst11|clkCounter[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[2]~13_combout\ = (\inst11|clkCounter\(2) & (\inst11|clkCounter[1]~12\ $ (GND))) # (!\inst11|clkCounter\(2) & (!\inst11|clkCounter[1]~12\ & VCC))
-- \inst11|clkCounter[2]~14\ = CARRY((\inst11|clkCounter\(2) & !\inst11|clkCounter[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(2),
	datad => VCC,
	cin => \inst11|clkCounter[1]~12\,
	combout => \inst11|clkCounter[2]~13_combout\,
	cout => \inst11|clkCounter[2]~14\);

-- Location: FF_X11_Y14_N11
\inst11|clkCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[2]~13_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(2));

-- Location: LCCOMB_X11_Y14_N12
\inst11|clkCounter[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[3]~15_combout\ = (\inst11|clkCounter\(3) & (!\inst11|clkCounter[2]~14\)) # (!\inst11|clkCounter\(3) & ((\inst11|clkCounter[2]~14\) # (GND)))
-- \inst11|clkCounter[3]~16\ = CARRY((!\inst11|clkCounter[2]~14\) # (!\inst11|clkCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(3),
	datad => VCC,
	cin => \inst11|clkCounter[2]~14\,
	combout => \inst11|clkCounter[3]~15_combout\,
	cout => \inst11|clkCounter[3]~16\);

-- Location: FF_X11_Y14_N13
\inst11|clkCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[3]~15_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(3));

-- Location: LCCOMB_X11_Y14_N14
\inst11|clkCounter[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[4]~17_combout\ = (\inst11|clkCounter\(4) & (\inst11|clkCounter[3]~16\ $ (GND))) # (!\inst11|clkCounter\(4) & (!\inst11|clkCounter[3]~16\ & VCC))
-- \inst11|clkCounter[4]~18\ = CARRY((\inst11|clkCounter\(4) & !\inst11|clkCounter[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|clkCounter\(4),
	datad => VCC,
	cin => \inst11|clkCounter[3]~16\,
	combout => \inst11|clkCounter[4]~17_combout\,
	cout => \inst11|clkCounter[4]~18\);

-- Location: FF_X11_Y14_N15
\inst11|clkCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[4]~17_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(4));

-- Location: LCCOMB_X11_Y14_N16
\inst11|clkCounter[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[5]~19_combout\ = (\inst11|clkCounter\(5) & (!\inst11|clkCounter[4]~18\)) # (!\inst11|clkCounter\(5) & ((\inst11|clkCounter[4]~18\) # (GND)))
-- \inst11|clkCounter[5]~20\ = CARRY((!\inst11|clkCounter[4]~18\) # (!\inst11|clkCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|clkCounter\(5),
	datad => VCC,
	cin => \inst11|clkCounter[4]~18\,
	combout => \inst11|clkCounter[5]~19_combout\,
	cout => \inst11|clkCounter[5]~20\);

-- Location: FF_X11_Y14_N17
\inst11|clkCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[5]~19_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(5));

-- Location: LCCOMB_X11_Y14_N18
\inst11|clkCounter[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[6]~21_combout\ = (\inst11|clkCounter\(6) & (\inst11|clkCounter[5]~20\ $ (GND))) # (!\inst11|clkCounter\(6) & (!\inst11|clkCounter[5]~20\ & VCC))
-- \inst11|clkCounter[6]~22\ = CARRY((\inst11|clkCounter\(6) & !\inst11|clkCounter[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|clkCounter\(6),
	datad => VCC,
	cin => \inst11|clkCounter[5]~20\,
	combout => \inst11|clkCounter[6]~21_combout\,
	cout => \inst11|clkCounter[6]~22\);

-- Location: FF_X11_Y14_N19
\inst11|clkCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[6]~21_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(6));

-- Location: LCCOMB_X11_Y14_N20
\inst11|clkCounter[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[7]~23_combout\ = (\inst11|clkCounter\(7) & (!\inst11|clkCounter[6]~22\)) # (!\inst11|clkCounter\(7) & ((\inst11|clkCounter[6]~22\) # (GND)))
-- \inst11|clkCounter[7]~24\ = CARRY((!\inst11|clkCounter[6]~22\) # (!\inst11|clkCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|clkCounter\(7),
	datad => VCC,
	cin => \inst11|clkCounter[6]~22\,
	combout => \inst11|clkCounter[7]~23_combout\,
	cout => \inst11|clkCounter[7]~24\);

-- Location: FF_X11_Y14_N21
\inst11|clkCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[7]~23_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(7));

-- Location: LCCOMB_X11_Y14_N22
\inst11|clkCounter[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkCounter[8]~25_combout\ = \inst11|clkCounter\(8) $ (!\inst11|clkCounter[7]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(8),
	cin => \inst11|clkCounter[7]~24\,
	combout => \inst11|clkCounter[8]~25_combout\);

-- Location: FF_X11_Y14_N23
\inst11|clkCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkCounter[8]~25_combout\,
	sclr => \inst11|ALT_INV_LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkCounter\(8));

-- Location: LCCOMB_X11_Y14_N28
\inst11|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~0_combout\ = (((!\inst11|clkCounter\(2) & !\inst11|clkCounter\(3))) # (!\inst11|clkCounter\(4))) # (!\inst11|clkCounter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(2),
	datab => \inst11|clkCounter\(5),
	datac => \inst11|clkCounter\(4),
	datad => \inst11|clkCounter\(3),
	combout => \inst11|LessThan0~0_combout\);

-- Location: LCCOMB_X11_Y14_N26
\inst11|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|LessThan0~1_combout\ = (((\inst11|LessThan0~0_combout\) # (!\inst11|clkCounter\(7))) # (!\inst11|clkCounter\(6))) # (!\inst11|clkCounter\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|clkCounter\(8),
	datab => \inst11|clkCounter\(6),
	datac => \inst11|clkCounter\(7),
	datad => \inst11|LessThan0~0_combout\,
	combout => \inst11|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y14_N30
\inst11|clkOutBuf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|clkOutBuf~0_combout\ = \inst11|clkOutBuf~q\ $ (!\inst11|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|clkOutBuf~q\,
	datad => \inst11|LessThan0~1_combout\,
	combout => \inst11|clkOutBuf~0_combout\);

-- Location: FF_X11_Y14_N31
\inst11|clkOutBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst11|clkOutBuf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|clkOutBuf~q\);

-- Location: LCCOMB_X11_Y14_N4
\inst10|startPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|startPrev~0_combout\ = !\inst11|clkOutBuf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|clkOutBuf~q\,
	combout => \inst10|startPrev~0_combout\);

-- Location: FF_X11_Y14_N5
\inst10|startPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|startPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|startPrev~q\);

-- Location: LCCOMB_X11_Y13_N6
\inst10|LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan4~0_combout\ = ((!\inst10|count\(1) & (!\inst10|count\(2) & !\inst10|count\(0)))) # (!\inst10|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(1),
	datab => \inst10|count\(2),
	datac => \inst10|count\(0),
	datad => \inst10|count\(4),
	combout => \inst10|LessThan4~0_combout\);

-- Location: LCCOMB_X11_Y13_N0
\inst10|LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan4~1_combout\ = (!\inst10|count\(6) & (!\inst10|count\(5) & ((\inst10|LessThan4~0_combout\) # (!\inst10|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datab => \inst10|count\(3),
	datac => \inst10|count\(5),
	datad => \inst10|LessThan4~0_combout\,
	combout => \inst10|LessThan4~1_combout\);

-- Location: LCCOMB_X13_Y13_N28
\inst10|bitPosition[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~6_combout\ = (\inst10|bitPosition\(2)) # ((\inst10|bitPosition\(1)) # ((\inst10|bitPosition\(0) & !\inst10|stateI2C.DeviceAddressSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|bitPosition\(0),
	datab => \inst10|bitPosition\(2),
	datac => \inst10|bitPosition\(1),
	datad => \inst10|stateI2C.DeviceAddressSending~q\,
	combout => \inst10|bitPosition[2]~6_combout\);

-- Location: LCCOMB_X13_Y13_N6
\inst10|bitPosition[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~7_combout\ = (\inst10|stateI2C.Waiting~q\ & (\inst10|bitPosition[2]~6_combout\ & \inst10|bitPosition[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Waiting~q\,
	datac => \inst10|bitPosition[2]~6_combout\,
	datad => \inst10|bitPosition[2]~4_combout\,
	combout => \inst10|bitPosition[2]~7_combout\);

-- Location: LCCOMB_X12_Y13_N4
\inst10|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector37~0_combout\ = (\inst10|bitPosition\(0) $ (!\inst10|bitPosition\(1))) # (!\inst10|bitPosition[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|bitPosition\(0),
	datac => \inst10|bitPosition\(1),
	datad => \inst10|bitPosition[2]~7_combout\,
	combout => \inst10|Selector37~0_combout\);

-- Location: LCCOMB_X12_Y14_N30
\inst10|bitPosition[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~9_combout\ = (!\inst10|bitPosition[2]~4_combout\ & (\inst10|stateI2C.AcknowledgeChecking10~q\ $ (((\inst10|sda~reg0_q\) # (!\inst10|sda~en_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datab => \inst10|bitPosition[2]~4_combout\,
	datac => \inst10|sda~reg0_q\,
	datad => \inst10|sda~en_q\,
	combout => \inst10|bitPosition[2]~9_combout\);

-- Location: LCCOMB_X10_Y13_N18
\inst10|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector39~0_combout\ = (\inst10|stateI2C.PresetPointerStopping~q\ & ((\inst10|LessThan0~1_combout\) # ((\inst10|rw~q\)))) # (!\inst10|stateI2C.PresetPointerStopping~q\ & (((\inst10|rw~q\ & \inst10|stateI2C.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PresetPointerStopping~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|rw~q\,
	datad => \inst10|stateI2C.Waiting~q\,
	combout => \inst10|Selector39~0_combout\);

-- Location: FF_X10_Y13_N19
\inst10|rw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector39~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|rw~q\);

-- Location: LCCOMB_X12_Y13_N26
\inst10|bitPosition[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~5_combout\ = (!\inst10|bitPosition\(1) & !\inst10|bitPosition\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|bitPosition\(1),
	datad => \inst10|bitPosition\(2),
	combout => \inst10|bitPosition[2]~5_combout\);

-- Location: LCCOMB_X10_Y13_N4
\inst10|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~4_combout\ = (\inst10|stateI2C.DeviceAddressSending~q\ & (\inst10|rw~q\ & ((\inst10|bitPosition[2]~5_combout\)))) # (!\inst10|stateI2C.DeviceAddressSending~q\ & (((\inst10|stateI2C.ReadBitPreparing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|rw~q\,
	datab => \inst10|stateI2C.ReadBitPreparing~q\,
	datac => \inst10|bitPosition[2]~5_combout\,
	datad => \inst10|stateI2C.DeviceAddressSending~q\,
	combout => \inst10|Selector6~4_combout\);

-- Location: LCCOMB_X10_Y13_N22
\inst10|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~5_combout\ = (\inst10|LessThan0~1_combout\ & ((\inst10|Selector6~4_combout\))) # (!\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.ReadBitPreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.ReadBitPreparing~q\,
	datac => \inst10|Selector6~4_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector6~5_combout\);

-- Location: LCCOMB_X14_Y13_N4
\inst10|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector19~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.PointerBytePreparing~q\)) # (!\inst10|LessThan0~1_combout\ & ((\inst10|stateI2C.PointerByteSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PointerBytePreparing~q\,
	datac => \inst10|stateI2C.PointerByteSending~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector19~0_combout\);

-- Location: FF_X14_Y13_N5
\inst10|stateI2C.PointerByteSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.PointerByteSending~q\);

-- Location: FF_X14_Y13_N27
\inst10|stateI2C.AcknowledgeChecking1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst10|stateI2C.WriteBitSending~q\,
	sload => VCC,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking1~q\);

-- Location: FF_X14_Y13_N1
\inst10|stateI2C.AcknowledgeChecking2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst10|stateI2C.AcknowledgeChecking1~q\,
	sload => VCC,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking2~q\);

-- Location: LCCOMB_X11_Y13_N28
\inst10|stateI2C~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stateI2C~54_combout\ = (\inst10|count\(6) & (\inst10|count\(5) & (\inst10|LessThan0~0_combout\ & \inst10|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datab => \inst10|count\(5),
	datac => \inst10|LessThan0~0_combout\,
	datad => \inst10|count\(2),
	combout => \inst10|stateI2C~54_combout\);

-- Location: LCCOMB_X12_Y13_N8
\inst10|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector0~2_combout\ = (\inst10|sda~en_q\ & (!\inst10|sda~reg0_q\ & ((\inst10|count\(7)) # (\inst10|stateI2C~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sda~en_q\,
	datab => \inst10|count\(7),
	datac => \inst10|sda~reg0_q\,
	datad => \inst10|stateI2C~54_combout\,
	combout => \inst10|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y13_N6
\inst10|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector18~0_combout\ = (\inst10|stateI2C.PointerBytePreparing~q\ & ((\inst10|scl~0_combout\) # ((\inst10|stateI2C.AcknowledgeChecking2~q\ & \inst10|Selector0~2_combout\)))) # (!\inst10|stateI2C.PointerBytePreparing~q\ & 
-- (\inst10|stateI2C.AcknowledgeChecking2~q\ & ((\inst10|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PointerBytePreparing~q\,
	datab => \inst10|stateI2C.AcknowledgeChecking2~q\,
	datac => \inst10|scl~0_combout\,
	datad => \inst10|Selector0~2_combout\,
	combout => \inst10|Selector18~0_combout\);

-- Location: LCCOMB_X14_Y13_N16
\inst10|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector18~1_combout\ = (\inst10|Selector18~0_combout\) # ((!\inst10|Selector41~2_combout\ & (\inst10|stateI2C.PointerByteSending~q\ & \inst10|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~2_combout\,
	datab => \inst10|stateI2C.PointerByteSending~q\,
	datac => \inst10|LessThan0~1_combout\,
	datad => \inst10|Selector18~0_combout\,
	combout => \inst10|Selector18~1_combout\);

-- Location: FF_X14_Y13_N17
\inst10|stateI2C.PointerBytePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.PointerBytePreparing~q\);

-- Location: LCCOMB_X11_Y13_N4
\inst10|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~1_combout\ = (!\inst10|count\(7) & (((\inst10|LessThan1~0_combout\) # (!\inst10|count\(5))) # (!\inst10|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(6),
	datab => \inst10|count\(5),
	datac => \inst10|count\(7),
	datad => \inst10|LessThan1~0_combout\,
	combout => \inst10|LessThan1~1_combout\);

-- Location: LCCOMB_X10_Y13_N26
\inst10|count[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~26_combout\ = ((!\inst10|stateI2C.PointerBytePreparing~q\ & (!\inst10|stateI2C.WriteBitPreparing~q\ & !\inst10|stateI2C.DeviceAddressPreparing~q\))) # (!\inst10|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PointerBytePreparing~q\,
	datab => \inst10|stateI2C.WriteBitPreparing~q\,
	datac => \inst10|stateI2C.DeviceAddressPreparing~q\,
	datad => \inst10|LessThan1~1_combout\,
	combout => \inst10|count[2]~26_combout\);

-- Location: LCCOMB_X11_Y13_N30
\inst10|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~2_combout\ = (\inst10|count\(7)) # ((\inst10|stateI2C.Updating~q\ & (!\inst10|LessThan4~1_combout\)) # (!\inst10|stateI2C.Updating~q\ & ((\inst10|stateI2C~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(7),
	datab => \inst10|LessThan4~1_combout\,
	datac => \inst10|stateI2C.Updating~q\,
	datad => \inst10|stateI2C~54_combout\,
	combout => \inst10|Selector6~2_combout\);

-- Location: LCCOMB_X10_Y13_N28
\inst10|count[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~25_combout\ = ((!\inst10|stateI2C.ReadBitPreparing~q\ & !\inst10|stateI2C.PresetPointerStopping~q\)) # (!\inst10|LessThan1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.ReadBitPreparing~q\,
	datac => \inst10|stateI2C.PresetPointerStopping~q\,
	datad => \inst10|LessThan1~1_combout\,
	combout => \inst10|count[2]~25_combout\);

-- Location: LCCOMB_X10_Y13_N12
\inst10|count[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~29_combout\ = (\inst10|count[2]~26_combout\ & (\inst10|Selector6~2_combout\ & \inst10|count[2]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count[2]~26_combout\,
	datac => \inst10|Selector6~2_combout\,
	datad => \inst10|count[2]~25_combout\,
	combout => \inst10|count[2]~29_combout\);

-- Location: LCCOMB_X10_Y13_N8
\inst10|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~7_combout\ = (\inst10|Selector6~5_combout\ & ((\inst10|stateI2C.DeviceAddressSending~q\) # ((!\inst10|count[2]~29_combout\) # (!\inst10|stateI2C.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressSending~q\,
	datab => \inst10|stateI2C.Waiting~q\,
	datac => \inst10|Selector6~5_combout\,
	datad => \inst10|count[2]~29_combout\,
	combout => \inst10|Selector6~7_combout\);

-- Location: LCCOMB_X10_Y13_N2
\inst10|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~6_combout\ = (\inst10|Selector6~7_combout\ & (((\inst10|stateI2C.DeviceAddressSending~q\ & \inst10|LessThan0~1_combout\)) # (!\inst10|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressSending~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|Selector6~7_combout\,
	datad => \inst10|Selector6~3_combout\,
	combout => \inst10|Selector6~6_combout\);

-- Location: FF_X10_Y13_N3
\inst10|stateI2C.ReadBitPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.ReadBitPreparing~q\);

-- Location: LCCOMB_X13_Y13_N26
\inst10|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector7~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.ReadBitPreparing~q\)) # (!\inst10|LessThan0~1_combout\ & ((\inst10|stateI2C.ReadBitSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.ReadBitPreparing~q\,
	datac => \inst10|stateI2C.ReadBitSending~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector7~0_combout\);

-- Location: FF_X13_Y13_N27
\inst10|stateI2C.ReadBitSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.ReadBitSending~q\);

-- Location: FF_X14_Y13_N29
\inst10|stateI2C.AcknowledgeChecking5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst10|stateI2C.ReadBitSending~q\,
	sload => VCC,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking5~q\);

-- Location: LCCOMB_X12_Y14_N28
\inst10|stateI2C.AcknowledgeChecking6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stateI2C.AcknowledgeChecking6~feeder_combout\ = \inst10|stateI2C.AcknowledgeChecking5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|stateI2C.AcknowledgeChecking5~q\,
	combout => \inst10|stateI2C.AcknowledgeChecking6~feeder_combout\);

-- Location: FF_X12_Y14_N29
\inst10|stateI2C.AcknowledgeChecking6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|stateI2C.AcknowledgeChecking6~feeder_combout\,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking6~q\);

-- Location: LCCOMB_X14_Y13_N18
\inst10|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector20~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.MSByteFromDevicePreparing~q\ & ((!\inst10|Selector41~2_combout\)))) # (!\inst10|LessThan0~1_combout\ & (((\inst10|stateI2C.MSByteFromDeviceReading~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.MSByteFromDevicePreparing~q\,
	datab => \inst10|stateI2C.MSByteFromDeviceReading~q\,
	datac => \inst10|LessThan0~1_combout\,
	datad => \inst10|Selector41~2_combout\,
	combout => \inst10|Selector20~0_combout\);

-- Location: LCCOMB_X14_Y13_N20
\inst10|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector20~1_combout\ = (\inst10|Selector20~0_combout\) # ((\inst10|stateI2C.AcknowledgeChecking6~q\ & \inst10|Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.AcknowledgeChecking6~q\,
	datac => \inst10|Selector0~2_combout\,
	datad => \inst10|Selector20~0_combout\,
	combout => \inst10|Selector20~1_combout\);

-- Location: FF_X14_Y13_N21
\inst10|stateI2C.MSByteFromDeviceReading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.MSByteFromDeviceReading~q\);

-- Location: LCCOMB_X14_Y13_N10
\inst10|stateI2C.MSByteFromDevicePreparing~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stateI2C.MSByteFromDevicePreparing~feeder_combout\ = \inst10|stateI2C.MSByteFromDeviceReading~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|stateI2C.MSByteFromDeviceReading~q\,
	combout => \inst10|stateI2C.MSByteFromDevicePreparing~feeder_combout\);

-- Location: FF_X14_Y13_N11
\inst10|stateI2C.MSByteFromDevicePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|stateI2C.MSByteFromDevicePreparing~feeder_combout\,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.MSByteFromDevicePreparing~q\);

-- Location: LCCOMB_X14_Y13_N12
\inst10|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector14~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.MSByteFromDevicePreparing~q\ & ((\inst10|Selector41~2_combout\)))) # (!\inst10|LessThan0~1_combout\ & (((\inst10|stateI2C.AcknowledgeChecking7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.MSByteFromDevicePreparing~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|stateI2C.AcknowledgeChecking7~q\,
	datad => \inst10|Selector41~2_combout\,
	combout => \inst10|Selector14~0_combout\);

-- Location: FF_X14_Y13_N13
\inst10|stateI2C.AcknowledgeChecking7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking7~q\);

-- Location: LCCOMB_X12_Y14_N14
\inst10|stateI2C.AcknowledgeChecking8~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stateI2C.AcknowledgeChecking8~feeder_combout\ = \inst10|stateI2C.AcknowledgeChecking7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stateI2C.AcknowledgeChecking7~q\,
	combout => \inst10|stateI2C.AcknowledgeChecking8~feeder_combout\);

-- Location: FF_X12_Y14_N15
\inst10|stateI2C.AcknowledgeChecking8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|stateI2C.AcknowledgeChecking8~feeder_combout\,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking8~q\);

-- Location: LCCOMB_X14_Y13_N2
\inst10|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector22~0_combout\ = (\inst10|LessThan0~1_combout\ & (!\inst10|Selector41~2_combout\ & ((\inst10|stateI2C.LSByteFromDevicePreparing~q\)))) # (!\inst10|LessThan0~1_combout\ & (((\inst10|stateI2C.LSByteFromDeviceReading~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~2_combout\,
	datab => \inst10|stateI2C.LSByteFromDeviceReading~q\,
	datac => \inst10|LessThan0~1_combout\,
	datad => \inst10|stateI2C.LSByteFromDevicePreparing~q\,
	combout => \inst10|Selector22~0_combout\);

-- Location: LCCOMB_X14_Y13_N8
\inst10|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector22~1_combout\ = (\inst10|Selector22~0_combout\) # ((\inst10|stateI2C.AcknowledgeChecking8~q\ & \inst10|Selector0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.AcknowledgeChecking8~q\,
	datac => \inst10|Selector0~2_combout\,
	datad => \inst10|Selector22~0_combout\,
	combout => \inst10|Selector22~1_combout\);

-- Location: FF_X14_Y13_N9
\inst10|stateI2C.LSByteFromDeviceReading\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.LSByteFromDeviceReading~q\);

-- Location: LCCOMB_X14_Y13_N24
\inst10|stateI2C.LSByteFromDevicePreparing~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|stateI2C.LSByteFromDevicePreparing~feeder_combout\ = \inst10|stateI2C.LSByteFromDeviceReading~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|stateI2C.LSByteFromDeviceReading~q\,
	combout => \inst10|stateI2C.LSByteFromDevicePreparing~feeder_combout\);

-- Location: FF_X14_Y13_N25
\inst10|stateI2C.LSByteFromDevicePreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|stateI2C.LSByteFromDevicePreparing~feeder_combout\,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.LSByteFromDevicePreparing~q\);

-- Location: LCCOMB_X14_Y13_N28
\inst10|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector43~0_combout\ = (!\inst10|stateI2C.MSByteFromDevicePreparing~q\ & (!\inst10|stateI2C.PointerByteSending~q\ & !\inst10|stateI2C.LSByteFromDevicePreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.MSByteFromDevicePreparing~q\,
	datab => \inst10|stateI2C.PointerByteSending~q\,
	datad => \inst10|stateI2C.LSByteFromDevicePreparing~q\,
	combout => \inst10|Selector43~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
\inst10|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|WideOr2~0_combout\ = (!\inst10|stateI2C.DeviceAddressSending~q\ & (\inst10|Selector43~0_combout\ & \inst10|bitPosition[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.DeviceAddressSending~q\,
	datac => \inst10|Selector43~0_combout\,
	datad => \inst10|bitPosition[2]~4_combout\,
	combout => \inst10|WideOr2~0_combout\);

-- Location: LCCOMB_X12_Y13_N0
\inst10|bitPosition[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~8_combout\ = (!\inst10|bitPosition[2]~9_combout\ & ((\inst10|WideOr2~0_combout\ & (!\inst10|stateI2C.Waiting~q\)) # (!\inst10|WideOr2~0_combout\ & ((\inst10|LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Waiting~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|bitPosition[2]~9_combout\,
	datad => \inst10|WideOr2~0_combout\,
	combout => \inst10|bitPosition[2]~8_combout\);

-- Location: FF_X12_Y13_N5
\inst10|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector37~0_combout\,
	ena => \inst10|bitPosition[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|bitPosition\(1));

-- Location: LCCOMB_X12_Y13_N10
\inst10|Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~2_combout\ = (!\inst10|bitPosition\(0) & (!\inst10|bitPosition\(1) & !\inst10|bitPosition\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|bitPosition\(0),
	datac => \inst10|bitPosition\(1),
	datad => \inst10|bitPosition\(2),
	combout => \inst10|Selector41~2_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst10|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector16~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|Selector41~2_combout\ & (\inst10|stateI2C.LSByteFromDevicePreparing~q\))) # (!\inst10|LessThan0~1_combout\ & (((\inst10|stateI2C.AcknowledgeChecking9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~2_combout\,
	datab => \inst10|stateI2C.LSByteFromDevicePreparing~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking9~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector16~0_combout\);

-- Location: FF_X14_Y13_N31
\inst10|stateI2C.AcknowledgeChecking9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking9~q\);

-- Location: FF_X12_Y14_N11
\inst10|stateI2C.AcknowledgeChecking10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst10|stateI2C.AcknowledgeChecking9~q\,
	sload => VCC,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking10~q\);

-- Location: LCCOMB_X12_Y14_N18
\inst10|bitPosition[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|bitPosition[2]~4_combout\ = (!\inst10|stateI2C.AcknowledgeChecking10~q\ & (!\inst10|stateI2C.AcknowledgeChecking8~q\ & !\inst10|stateI2C.AcknowledgeChecking6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking8~q\,
	datad => \inst10|stateI2C.AcknowledgeChecking6~q\,
	combout => \inst10|bitPosition[2]~4_combout\);

-- Location: LCCOMB_X12_Y13_N12
\inst10|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector38~0_combout\ = (((!\inst10|bitPosition[2]~6_combout\) # (!\inst10|bitPosition\(0))) # (!\inst10|bitPosition[2]~4_combout\)) # (!\inst10|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Waiting~q\,
	datab => \inst10|bitPosition[2]~4_combout\,
	datac => \inst10|bitPosition\(0),
	datad => \inst10|bitPosition[2]~6_combout\,
	combout => \inst10|Selector38~0_combout\);

-- Location: FF_X12_Y13_N13
\inst10|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector38~0_combout\,
	ena => \inst10|bitPosition[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|bitPosition\(0));

-- Location: LCCOMB_X12_Y13_N18
\inst10|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector36~0_combout\ = (\inst10|bitPosition\(2) $ (((!\inst10|bitPosition\(0) & !\inst10|bitPosition\(1))))) # (!\inst10|bitPosition[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|bitPosition\(0),
	datab => \inst10|bitPosition\(1),
	datac => \inst10|bitPosition\(2),
	datad => \inst10|bitPosition[2]~7_combout\,
	combout => \inst10|Selector36~0_combout\);

-- Location: FF_X12_Y13_N19
\inst10|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector36~0_combout\,
	ena => \inst10|bitPosition[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|bitPosition\(2));

-- Location: LCCOMB_X13_Y13_N14
\inst10|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector2~0_combout\ = (\inst10|stateI2C.Starting~q\) # ((\inst10|stateI2C.DeviceAddressSending~q\ & ((\inst10|bitPosition\(2)) # (\inst10|bitPosition\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Starting~q\,
	datab => \inst10|bitPosition\(2),
	datac => \inst10|bitPosition\(1),
	datad => \inst10|stateI2C.DeviceAddressSending~q\,
	combout => \inst10|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\inst10|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector2~1_combout\ = (\inst10|scl~0_combout\ & ((\inst10|stateI2C.DeviceAddressPreparing~q\) # ((\inst10|Selector2~0_combout\ & \inst10|LessThan0~1_combout\)))) # (!\inst10|scl~0_combout\ & (\inst10|Selector2~0_combout\ & 
-- ((\inst10|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|scl~0_combout\,
	datab => \inst10|Selector2~0_combout\,
	datac => \inst10|stateI2C.DeviceAddressPreparing~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector2~1_combout\);

-- Location: FF_X13_Y13_N11
\inst10|stateI2C.DeviceAddressPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.DeviceAddressPreparing~q\);

-- Location: LCCOMB_X12_Y13_N14
\inst10|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector3~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.DeviceAddressPreparing~q\)) # (!\inst10|LessThan0~1_combout\ & ((\inst10|stateI2C.DeviceAddressSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressPreparing~q\,
	datac => \inst10|stateI2C.DeviceAddressSending~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector3~0_combout\);

-- Location: FF_X12_Y13_N15
\inst10|stateI2C.DeviceAddressSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.DeviceAddressSending~q\);

-- Location: LCCOMB_X10_Y13_N0
\inst10|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector4~2_combout\ = (\inst10|stateI2C.DeviceAddressSending~q\ & (!\inst10|rw~q\ & ((\inst10|bitPosition[2]~5_combout\)))) # (!\inst10|stateI2C.DeviceAddressSending~q\ & (((\inst10|stateI2C.WriteBitPreparing~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|rw~q\,
	datab => \inst10|stateI2C.WriteBitPreparing~q\,
	datac => \inst10|bitPosition[2]~5_combout\,
	datad => \inst10|stateI2C.DeviceAddressSending~q\,
	combout => \inst10|Selector4~2_combout\);

-- Location: LCCOMB_X10_Y13_N14
\inst10|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector4~3_combout\ = (\inst10|LessThan0~1_combout\ & ((\inst10|Selector4~2_combout\))) # (!\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.WriteBitPreparing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.WriteBitPreparing~q\,
	datac => \inst10|LessThan0~1_combout\,
	datad => \inst10|Selector4~2_combout\,
	combout => \inst10|Selector4~3_combout\);

-- Location: LCCOMB_X10_Y13_N30
\inst10|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector4~5_combout\ = (\inst10|Selector4~3_combout\ & ((\inst10|stateI2C.DeviceAddressSending~q\) # ((!\inst10|count[2]~29_combout\) # (!\inst10|stateI2C.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressSending~q\,
	datab => \inst10|stateI2C.Waiting~q\,
	datac => \inst10|Selector4~3_combout\,
	datad => \inst10|count[2]~29_combout\,
	combout => \inst10|Selector4~5_combout\);

-- Location: LCCOMB_X10_Y13_N20
\inst10|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector4~4_combout\ = (\inst10|Selector4~5_combout\ & (((\inst10|stateI2C.DeviceAddressSending~q\ & \inst10|LessThan0~1_combout\)) # (!\inst10|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressSending~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|Selector4~5_combout\,
	datad => \inst10|Selector6~3_combout\,
	combout => \inst10|Selector4~4_combout\);

-- Location: FF_X10_Y13_N21
\inst10|stateI2C.WriteBitPreparing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.WriteBitPreparing~q\);

-- Location: LCCOMB_X13_Y13_N24
\inst10|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector5~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.WriteBitPreparing~q\)) # (!\inst10|LessThan0~1_combout\ & ((\inst10|stateI2C.WriteBitSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.WriteBitPreparing~q\,
	datac => \inst10|stateI2C.WriteBitSending~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector5~0_combout\);

-- Location: FF_X13_Y13_N25
\inst10|stateI2C.WriteBitSending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.WriteBitSending~q\);

-- Location: LCCOMB_X13_Y13_N18
\inst10|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector43~1_combout\ = (!\inst10|stateI2C.WriteBitSending~q\ & (!\inst10|stateI2C.ReadBitSending~q\ & \inst10|Selector43~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.WriteBitSending~q\,
	datac => \inst10|stateI2C.ReadBitSending~q\,
	datad => \inst10|Selector43~0_combout\,
	combout => \inst10|Selector43~1_combout\);

-- Location: LCCOMB_X13_Y13_N22
\inst10|Selector41~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~6_combout\ = (!\inst10|count\(7) & ((\inst10|count\(3)) # ((\inst10|count\(2)) # (\inst10|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(3),
	datab => \inst10|count\(2),
	datac => \inst10|count\(4),
	datad => \inst10|count\(7),
	combout => \inst10|Selector41~6_combout\);

-- Location: LCCOMB_X13_Y13_N16
\inst10|Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~1_combout\ = (\inst10|stateI2C.DeviceAddressPreparing~q\) # ((\inst10|stateI2C.PresetPointerStopping~q\) # ((\inst10|stateI2C.ReadBitPreparing~q\) # (\inst10|stateI2C.WriteBitPreparing~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.DeviceAddressPreparing~q\,
	datab => \inst10|stateI2C.PresetPointerStopping~q\,
	datac => \inst10|stateI2C.ReadBitPreparing~q\,
	datad => \inst10|stateI2C.WriteBitPreparing~q\,
	combout => \inst10|Selector41~1_combout\);

-- Location: LCCOMB_X13_Y13_N8
\inst10|Selector41~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~5_combout\ = (\inst10|stateI2C.PointerBytePreparing~q\ & (((!\inst10|LessThan0~0_combout\)) # (!\inst10|count\(2)))) # (!\inst10|stateI2C.PointerBytePreparing~q\ & (\inst10|Selector41~1_combout\ & ((!\inst10|LessThan0~0_combout\) # 
-- (!\inst10|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PointerBytePreparing~q\,
	datab => \inst10|count\(2),
	datac => \inst10|LessThan0~0_combout\,
	datad => \inst10|Selector41~1_combout\,
	combout => \inst10|Selector41~5_combout\);

-- Location: LCCOMB_X13_Y13_N4
\inst10|Selector41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~3_combout\ = (\inst10|stateI2C.WriteBitSending~q\) # ((\inst10|stateI2C.ReadBitSending~q\) # ((\inst10|Selector41~2_combout\ & !\inst10|Selector43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~2_combout\,
	datab => \inst10|stateI2C.WriteBitSending~q\,
	datac => \inst10|stateI2C.ReadBitSending~q\,
	datad => \inst10|Selector43~0_combout\,
	combout => \inst10|Selector41~3_combout\);

-- Location: LCCOMB_X13_Y13_N2
\inst10|Selector41~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~4_combout\ = ((\inst10|LessThan0~1_combout\ & ((\inst10|Selector41~3_combout\))) # (!\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.Starting~q\))) # (!\inst10|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Starting~q\,
	datab => \inst10|stateI2C.Waiting~q\,
	datac => \inst10|Selector41~3_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector41~4_combout\);

-- Location: LCCOMB_X13_Y13_N20
\inst10|Selector41~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector41~7_combout\ = (\inst10|Selector41~4_combout\) # ((\inst10|Selector41~6_combout\ & (\inst10|Selector41~0_combout\ & \inst10|Selector41~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~6_combout\,
	datab => \inst10|Selector41~0_combout\,
	datac => \inst10|Selector41~5_combout\,
	datad => \inst10|Selector41~4_combout\,
	combout => \inst10|Selector41~7_combout\);

-- Location: FF_X13_Y13_N19
\inst10|sda~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector43~1_combout\,
	ena => \inst10|Selector41~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|sda~en_q\);

-- Location: LCCOMB_X12_Y14_N12
\inst10|ledBuf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|ledBuf~3_combout\ = (\inst10|stateI2C.AcknowledgeChecking10~q\ & (\inst10|LessThan0~1_combout\ & ((\inst10|sda~reg0_q\) # (!\inst10|sda~en_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sda~en_q\,
	datab => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datac => \inst10|sda~reg0_q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|ledBuf~3_combout\);

-- Location: LCCOMB_X12_Y14_N0
\inst10|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector25~2_combout\ = (\inst10|ledBuf~3_combout\) # ((!\inst10|count\(7) & (\inst10|LessThan4~1_combout\ & \inst10|stateI2C.Updating~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(7),
	datab => \inst10|LessThan4~1_combout\,
	datac => \inst10|stateI2C.Updating~q\,
	datad => \inst10|ledBuf~3_combout\,
	combout => \inst10|Selector25~2_combout\);

-- Location: FF_X12_Y14_N1
\inst10|stateI2C.Updating\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector25~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.Updating~q\);

-- Location: LCCOMB_X14_Y13_N22
\inst10|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector10~0_combout\ = (\inst10|LessThan0~1_combout\ & (\inst10|Selector41~2_combout\ & (\inst10|stateI2C.PointerByteSending~q\))) # (!\inst10|LessThan0~1_combout\ & (((\inst10|stateI2C.AcknowledgeChecking3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector41~2_combout\,
	datab => \inst10|stateI2C.PointerByteSending~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking3~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector10~0_combout\);

-- Location: FF_X14_Y13_N23
\inst10|stateI2C.AcknowledgeChecking3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking3~q\);

-- Location: FF_X14_Y13_N15
\inst10|stateI2C.AcknowledgeChecking4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst10|stateI2C.AcknowledgeChecking3~q\,
	sload => VCC,
	ena => \inst10|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.AcknowledgeChecking4~q\);

-- Location: LCCOMB_X12_Y14_N8
\inst10|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector40~0_combout\ = (\inst10|stateI2C.AcknowledgeChecking2~q\) # ((\inst10|stateI2C.AcknowledgeChecking6~q\) # ((\inst10|stateI2C.AcknowledgeChecking8~q\) # (\inst10|stateI2C.AcknowledgeChecking4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking2~q\,
	datab => \inst10|stateI2C.AcknowledgeChecking6~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking8~q\,
	datad => \inst10|stateI2C.AcknowledgeChecking4~q\,
	combout => \inst10|Selector40~0_combout\);

-- Location: LCCOMB_X12_Y14_N10
\inst10|sda~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|sda~1_combout\ = (\inst10|sda~reg0_q\) # (!\inst10|sda~en_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|sda~reg0_q\,
	datad => \inst10|sda~en_q\,
	combout => \inst10|sda~1_combout\);

-- Location: LCCOMB_X12_Y14_N4
\inst10|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector0~4_combout\ = (\inst10|sda~1_combout\ & (((\inst10|Selector40~0_combout\)))) # (!\inst10|sda~1_combout\ & ((\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.AcknowledgeChecking10~q\)) # (!\inst10|LessThan0~1_combout\ & 
-- ((\inst10|Selector40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datab => \inst10|Selector40~0_combout\,
	datac => \inst10|sda~1_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector0~4_combout\);

-- Location: LCCOMB_X11_Y14_N24
\inst10|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector0~3_combout\ = (\inst10|startPrev~q\) # (\inst11|clkOutBuf~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|startPrev~q\,
	datad => \inst11|clkOutBuf~q\,
	combout => \inst10|Selector0~3_combout\);

-- Location: LCCOMB_X12_Y14_N6
\inst10|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector0~5_combout\ = (\inst10|stateI2C.Waiting~q\ & (\inst10|LessThan0~1_combout\ & (\inst10|Selector0~4_combout\))) # (!\inst10|stateI2C.Waiting~q\ & (((\inst10|Selector0~4_combout\) # (\inst10|Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Waiting~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|Selector0~4_combout\,
	datad => \inst10|Selector0~3_combout\,
	combout => \inst10|Selector0~5_combout\);

-- Location: LCCOMB_X12_Y14_N2
\inst10|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector0~6_combout\ = (!\inst10|Selector0~5_combout\ & (((!\inst10|count\(7) & \inst10|LessThan4~1_combout\)) # (!\inst10|stateI2C.Updating~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(7),
	datab => \inst10|stateI2C.Updating~q\,
	datac => \inst10|LessThan4~1_combout\,
	datad => \inst10|Selector0~5_combout\,
	combout => \inst10|Selector0~6_combout\);

-- Location: FF_X12_Y14_N3
\inst10|stateI2C.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.Waiting~q\);

-- Location: LCCOMB_X10_Y13_N10
\inst10|Selector6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector6~3_combout\ = (!\inst10|startPrev~q\ & (!\inst11|clkOutBuf~q\ & !\inst10|stateI2C.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|startPrev~q\,
	datac => \inst11|clkOutBuf~q\,
	datad => \inst10|stateI2C.Waiting~q\,
	combout => \inst10|Selector6~3_combout\);

-- Location: LCCOMB_X10_Y13_N24
\inst10|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector1~0_combout\ = (\inst10|Selector6~3_combout\) # ((\inst10|LessThan0~1_combout\ & (\inst10|stateI2C.PresetPointerStopping~q\)) # (!\inst10|LessThan0~1_combout\ & ((\inst10|stateI2C.Starting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PresetPointerStopping~q\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|stateI2C.Starting~q\,
	datad => \inst10|Selector6~3_combout\,
	combout => \inst10|Selector1~0_combout\);

-- Location: FF_X10_Y13_N25
\inst10|stateI2C.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.Starting~q\);

-- Location: LCCOMB_X10_Y13_N6
\inst10|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~24_combout\ = (\inst10|stateI2C.Starting~q\) # (!\inst10|stateI2C.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|stateI2C.Starting~q\,
	datad => \inst10|stateI2C.Waiting~q\,
	combout => \inst10|count[2]~24_combout\);

-- Location: LCCOMB_X10_Y13_N16
\inst10|count[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~27_combout\ = (\inst10|count[2]~24_combout\) # ((\inst10|count[2]~26_combout\ & (\inst10|Selector6~2_combout\ & \inst10|count[2]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count[2]~24_combout\,
	datab => \inst10|count[2]~26_combout\,
	datac => \inst10|Selector6~2_combout\,
	datad => \inst10|count[2]~25_combout\,
	combout => \inst10|count[2]~27_combout\);

-- Location: FF_X11_Y13_N11
\inst10|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[0]~8_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(0));

-- Location: LCCOMB_X11_Y13_N12
\inst10|count[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[1]~10_combout\ = (\inst10|count\(1) & (!\inst10|count[0]~9\)) # (!\inst10|count\(1) & ((\inst10|count[0]~9\) # (GND)))
-- \inst10|count[1]~11\ = CARRY((!\inst10|count[0]~9\) # (!\inst10|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|count\(1),
	datad => VCC,
	cin => \inst10|count[0]~9\,
	combout => \inst10|count[1]~10_combout\,
	cout => \inst10|count[1]~11\);

-- Location: FF_X11_Y13_N13
\inst10|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[1]~10_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(1));

-- Location: LCCOMB_X11_Y13_N14
\inst10|count[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[2]~12_combout\ = (\inst10|count\(2) & (\inst10|count[1]~11\ $ (GND))) # (!\inst10|count\(2) & (!\inst10|count[1]~11\ & VCC))
-- \inst10|count[2]~13\ = CARRY((\inst10|count\(2) & !\inst10|count[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(2),
	datad => VCC,
	cin => \inst10|count[1]~11\,
	combout => \inst10|count[2]~12_combout\,
	cout => \inst10|count[2]~13\);

-- Location: FF_X11_Y13_N15
\inst10|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[2]~12_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(2));

-- Location: LCCOMB_X11_Y13_N16
\inst10|count[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|count[3]~14_combout\ = (\inst10|count\(3) & (!\inst10|count[2]~13\)) # (!\inst10|count\(3) & ((\inst10|count[2]~13\) # (GND)))
-- \inst10|count[3]~15\ = CARRY((!\inst10|count[2]~13\) # (!\inst10|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(3),
	datad => VCC,
	cin => \inst10|count[2]~13\,
	combout => \inst10|count[3]~14_combout\,
	cout => \inst10|count[3]~15\);

-- Location: FF_X11_Y13_N17
\inst10|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[3]~14_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(3));

-- Location: FF_X11_Y13_N19
\inst10|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|count[4]~16_combout\,
	sclr => \inst10|count[2]~27_combout\,
	ena => \inst10|count[2]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|count\(4));

-- Location: LCCOMB_X11_Y13_N2
\inst10|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~0_combout\ = (!\inst10|count\(4) & (!\inst10|count\(2) & !\inst10|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|count\(4),
	datac => \inst10|count\(2),
	datad => \inst10|count\(3),
	combout => \inst10|LessThan1~0_combout\);

-- Location: LCCOMB_X12_Y13_N16
\inst10|scl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|scl~0_combout\ = (!\inst10|count\(7) & ((\inst10|LessThan1~0_combout\) # (!\inst10|stateI2C~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LessThan1~0_combout\,
	datab => \inst10|count\(7),
	datad => \inst10|stateI2C~54_combout\,
	combout => \inst10|scl~0_combout\);

-- Location: LCCOMB_X13_Y13_N12
\inst10|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector24~0_combout\ = (\inst10|scl~0_combout\ & ((\inst10|stateI2C.PresetPointerStopping~q\) # ((\inst10|stateI2C.AcknowledgeChecking4~q\ & \inst10|Selector0~2_combout\)))) # (!\inst10|scl~0_combout\ & (\inst10|stateI2C.AcknowledgeChecking4~q\ & 
-- ((\inst10|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|scl~0_combout\,
	datab => \inst10|stateI2C.AcknowledgeChecking4~q\,
	datac => \inst10|stateI2C.PresetPointerStopping~q\,
	datad => \inst10|Selector0~2_combout\,
	combout => \inst10|Selector24~0_combout\);

-- Location: FF_X13_Y13_N13
\inst10|stateI2C.PresetPointerStopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector24~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|stateI2C.PresetPointerStopping~q\);

-- Location: LCCOMB_X13_Y13_N30
\inst10|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector42~0_combout\ = (\inst10|bitPosition\(1) & (\inst10|stateI2C.DeviceAddressPreparing~q\ & (\inst10|bitPosition\(0) $ (\inst10|bitPosition\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|bitPosition\(0),
	datab => \inst10|bitPosition\(2),
	datac => \inst10|bitPosition\(1),
	datad => \inst10|stateI2C.DeviceAddressPreparing~q\,
	combout => \inst10|Selector42~0_combout\);

-- Location: LCCOMB_X13_Y13_N0
\inst10|Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector42~1_combout\ = (\inst10|stateI2C.PresetPointerStopping~q\) # ((\inst10|stateI2C.ReadBitPreparing~q\) # ((\inst10|Selector42~0_combout\) # (!\inst10|stateI2C.Waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PresetPointerStopping~q\,
	datab => \inst10|stateI2C.ReadBitPreparing~q\,
	datac => \inst10|Selector42~0_combout\,
	datad => \inst10|stateI2C.Waiting~q\,
	combout => \inst10|Selector42~1_combout\);

-- Location: FF_X13_Y13_N1
\inst10|sda~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector42~1_combout\,
	ena => \inst10|Selector41~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|sda~reg0_q\);

-- Location: LCCOMB_X12_Y14_N16
\inst10|Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector40~2_combout\ = (!\inst10|stateI2C.AcknowledgeChecking4~q\ & (!\inst10|error~q\ & (!\inst10|stateI2C.AcknowledgeChecking2~q\ & \inst10|bitPosition[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking4~q\,
	datab => \inst10|error~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking2~q\,
	datad => \inst10|bitPosition[2]~4_combout\,
	combout => \inst10|Selector40~2_combout\);

-- Location: LCCOMB_X12_Y14_N26
\inst10|Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector40~3_combout\ = (\inst10|stateI2C.AcknowledgeChecking10~q\ & (\inst10|error~q\ $ (((\inst10|sda~1_combout\) # (!\inst10|LessThan0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datab => \inst10|error~q\,
	datac => \inst10|sda~1_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector40~3_combout\);

-- Location: LCCOMB_X12_Y14_N20
\inst10|Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector40~1_combout\ = (\inst10|Selector40~0_combout\ & (\inst10|error~q\ $ (((!\inst10|LessThan0~1_combout\) # (!\inst10|sda~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector40~0_combout\,
	datab => \inst10|error~q\,
	datac => \inst10|sda~1_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector40~1_combout\);

-- Location: LCCOMB_X12_Y14_N24
\inst10|Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector40~4_combout\ = (!\inst10|Selector40~2_combout\ & (!\inst10|Selector40~3_combout\ & !\inst10|Selector40~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Selector40~2_combout\,
	datac => \inst10|Selector40~3_combout\,
	datad => \inst10|Selector40~1_combout\,
	combout => \inst10|Selector40~4_combout\);

-- Location: FF_X12_Y14_N25
\inst10|error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector40~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|error~q\);

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

-- Location: FF_X17_Y14_N27
\inst13|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|latch~q\);

-- Location: LCCOMB_X17_Y14_N2
\inst13|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count~1_combout\ = (!\inst13|count\(0) & (\inst13|latch~q\ $ (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|latch~q\,
	datab => \reset~input_o\,
	datac => \inst13|count\(0),
	combout => \inst13|count~1_combout\);

-- Location: FF_X17_Y14_N3
\inst13|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(0));

-- Location: LCCOMB_X17_Y14_N0
\inst13|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count~2_combout\ = (\inst13|latch~q\ & (\reset~input_o\ & (\inst13|count\(1) $ (\inst13|count\(0))))) # (!\inst13|latch~q\ & (!\reset~input_o\ & (\inst13|count\(1) $ (\inst13|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|latch~q\,
	datab => \reset~input_o\,
	datac => \inst13|count\(1),
	datad => \inst13|count\(0),
	combout => \inst13|count~2_combout\);

-- Location: FF_X17_Y14_N1
\inst13|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(1));

-- Location: LCCOMB_X17_Y14_N4
\inst13|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|output~0_combout\ = (\inst13|count\(0) & (\inst13|count\(1) & (\inst13|latch~q\ $ (!\reset~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|latch~q\,
	datab => \inst13|count\(0),
	datac => \reset~input_o\,
	datad => \inst13|count\(1),
	combout => \inst13|output~0_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst13|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|output~2_combout\ = \inst13|latch~q\ $ (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|latch~q\,
	datac => \reset~input_o\,
	combout => \inst13|output~2_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst13|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|count~0_combout\ = (!\inst13|output~2_combout\ & (\inst13|count\(2) $ (((\inst13|count\(0) & \inst13|count\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|output~2_combout\,
	datab => \inst13|count\(0),
	datac => \inst13|count\(2),
	datad => \inst13|count\(1),
	combout => \inst13|count~0_combout\);

-- Location: FF_X17_Y14_N13
\inst13|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|count\(2));

-- Location: LCCOMB_X17_Y17_N12
\inst13|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|output~1_combout\ = (\inst13|output~0_combout\ & ((\inst13|count\(2) & (\reset~input_o\)) # (!\inst13|count\(2) & ((\inst13|output~q\))))) # (!\inst13|output~0_combout\ & (((\inst13|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|output~0_combout\,
	datab => \reset~input_o\,
	datac => \inst13|output~q\,
	datad => \inst13|count\(2),
	combout => \inst13|output~1_combout\);

-- Location: FF_X17_Y17_N13
\inst13|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst13|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|output~q\);

-- Location: LCCOMB_X18_Y17_N24
\inst14|resetPrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|resetPrev~0_combout\ = !\inst13|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst13|output~q\,
	combout => \inst14|resetPrev~0_combout\);

-- Location: FF_X18_Y17_N25
\inst14|resetPrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|resetPrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|resetPrev~q\);

-- Location: LCCOMB_X18_Y17_N18
\inst14|countUpdate[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|countUpdate[0]~0_combout\ = \inst14|countUpdate\(0) $ (((!\inst14|updateBuf~q\ & ((\inst13|output~q\) # (\inst14|resetPrev~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|output~q\,
	datab => \inst14|resetPrev~q\,
	datac => \inst14|countUpdate\(0),
	datad => \inst14|updateBuf~q\,
	combout => \inst14|countUpdate[0]~0_combout\);

-- Location: FF_X18_Y17_N19
\inst14|countUpdate[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|countUpdate[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|countUpdate\(0));

-- Location: LCCOMB_X18_Y17_N0
\inst14|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|process_0~0_combout\ = (!\inst14|resetPrev~q\ & !\inst13|output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|resetPrev~q\,
	datad => \inst13|output~q\,
	combout => \inst14|process_0~0_combout\);

-- Location: LCCOMB_X18_Y17_N16
\inst14|countUpdate[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|countUpdate[1]~1_combout\ = \inst14|countUpdate\(1) $ (((\inst14|countUpdate\(0) & (!\inst14|updateBuf~q\ & !\inst14|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|countUpdate\(0),
	datab => \inst14|updateBuf~q\,
	datac => \inst14|countUpdate\(1),
	datad => \inst14|process_0~0_combout\,
	combout => \inst14|countUpdate[1]~1_combout\);

-- Location: FF_X18_Y17_N17
\inst14|countUpdate[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|countUpdate[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|countUpdate\(1));

-- Location: LCCOMB_X18_Y17_N14
\inst14|countUpdate[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|countUpdate[1]~2_combout\ = (\inst14|countUpdate\(0) & (!\inst14|updateBuf~q\ & ((\inst13|output~q\) # (\inst14|resetPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|output~q\,
	datab => \inst14|countUpdate\(0),
	datac => \inst14|updateBuf~q\,
	datad => \inst14|resetPrev~q\,
	combout => \inst14|countUpdate[1]~2_combout\);

-- Location: LCCOMB_X18_Y17_N30
\inst14|countUpdate[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|countUpdate[2]~3_combout\ = \inst14|countUpdate\(2) $ (((\inst14|countUpdate[1]~2_combout\ & \inst14|countUpdate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|countUpdate[1]~2_combout\,
	datac => \inst14|countUpdate\(2),
	datad => \inst14|countUpdate\(1),
	combout => \inst14|countUpdate[2]~3_combout\);

-- Location: FF_X18_Y17_N31
\inst14|countUpdate[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|countUpdate[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|countUpdate\(2));

-- Location: LCCOMB_X18_Y17_N4
\inst14|updateBuf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|updateBuf~2_combout\ = (!\inst14|updateBuf~q\ & (((!\inst14|countUpdate\(0)) # (!\inst14|countUpdate\(2))) # (!\inst14|countUpdate\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|countUpdate\(1),
	datab => \inst14|countUpdate\(2),
	datac => \inst14|countUpdate\(0),
	datad => \inst14|updateBuf~q\,
	combout => \inst14|updateBuf~2_combout\);

-- Location: LCCOMB_X18_Y17_N2
\inst14|updateBuf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|updateBuf~3_combout\ = (!\inst14|updateBuf~2_combout\ & ((\inst13|output~q\) # (\inst14|resetPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|output~q\,
	datac => \inst14|updateBuf~2_combout\,
	datad => \inst14|resetPrev~q\,
	combout => \inst14|updateBuf~3_combout\);

-- Location: FF_X18_Y17_N3
\inst14|updateBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|updateBuf~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|updateBuf~q\);

-- Location: LCCOMB_X18_Y17_N20
\inst15|updatePrev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|updatePrev~0_combout\ = !\inst14|updateBuf~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|updateBuf~q\,
	combout => \inst15|updatePrev~0_combout\);

-- Location: FF_X18_Y17_N21
\inst15|updatePrev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|updatePrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|updatePrev~q\);

-- Location: LCCOMB_X18_Y17_N8
\inst15|dataBuf[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|dataBuf[7]~0_combout\ = (\inst15|stateUART.Waiting~q\) # ((\inst14|updateBuf~q\) # (\inst15|updatePrev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stateUART.Waiting~q\,
	datab => \inst14|updateBuf~q\,
	datad => \inst15|updatePrev~q\,
	combout => \inst15|dataBuf[7]~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst15|count[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[0]~14_combout\ = \inst15|count\(0) $ (VCC)
-- \inst15|count[0]~15\ = CARRY(\inst15|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(0),
	datad => VCC,
	combout => \inst15|count[0]~14_combout\,
	cout => \inst15|count[0]~15\);

-- Location: LCCOMB_X22_Y17_N26
\inst15|count[10]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[10]~34_combout\ = (\inst15|count\(10) & (\inst15|count[9]~33\ $ (GND))) # (!\inst15|count\(10) & (!\inst15|count[9]~33\ & VCC))
-- \inst15|count[10]~35\ = CARRY((\inst15|count\(10) & !\inst15|count[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(10),
	datad => VCC,
	cin => \inst15|count[9]~33\,
	combout => \inst15|count[10]~34_combout\,
	cout => \inst15|count[10]~35\);

-- Location: LCCOMB_X22_Y17_N28
\inst15|count[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[11]~36_combout\ = (\inst15|count\(11) & (!\inst15|count[10]~35\)) # (!\inst15|count\(11) & ((\inst15|count[10]~35\) # (GND)))
-- \inst15|count[11]~37\ = CARRY((!\inst15|count[10]~35\) # (!\inst15|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(11),
	datad => VCC,
	cin => \inst15|count[10]~35\,
	combout => \inst15|count[11]~36_combout\,
	cout => \inst15|count[11]~37\);

-- Location: LCCOMB_X18_Y17_N22
\inst15|count[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[1]~13_combout\ = (!\inst15|stateUART.Waiting~q\ & ((\inst15|updatePrev~q\) # (\inst14|updateBuf~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|updatePrev~q\,
	datab => \inst15|stateUART.Waiting~q\,
	datad => \inst14|updateBuf~q\,
	combout => \inst15|count[1]~13_combout\);

-- Location: FF_X22_Y17_N29
\inst15|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[11]~36_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(11));

-- Location: LCCOMB_X22_Y17_N2
\inst15|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~2_combout\ = (!\inst15|count\(9) & (!\inst15|count\(8) & !\inst15|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(9),
	datac => \inst15|count\(8),
	datad => \inst15|count\(11),
	combout => \inst15|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y17_N20
\inst15|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~1_combout\ = (!\inst15|count\(7) & (((!\inst15|count\(4) & !\inst15|count\(5))) # (!\inst15|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(6),
	datab => \inst15|count\(4),
	datac => \inst15|count\(7),
	datad => \inst15|count\(5),
	combout => \inst15|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst15|count[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[1]~38_combout\ = ((!\inst15|LessThan0~0_combout\ & ((!\inst15|LessThan0~1_combout\) # (!\inst15|LessThan0~2_combout\)))) # (!\inst15|stateUART.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stateUART.Waiting~q\,
	datab => \inst15|LessThan0~2_combout\,
	datac => \inst15|LessThan0~0_combout\,
	datad => \inst15|LessThan0~1_combout\,
	combout => \inst15|count[1]~38_combout\);

-- Location: FF_X22_Y17_N7
\inst15|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[0]~14_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(0));

-- Location: LCCOMB_X22_Y17_N8
\inst15|count[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[1]~16_combout\ = (\inst15|count\(1) & (!\inst15|count[0]~15\)) # (!\inst15|count\(1) & ((\inst15|count[0]~15\) # (GND)))
-- \inst15|count[1]~17\ = CARRY((!\inst15|count[0]~15\) # (!\inst15|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(1),
	datad => VCC,
	cin => \inst15|count[0]~15\,
	combout => \inst15|count[1]~16_combout\,
	cout => \inst15|count[1]~17\);

-- Location: FF_X22_Y17_N9
\inst15|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[1]~16_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(1));

-- Location: LCCOMB_X22_Y17_N10
\inst15|count[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[2]~18_combout\ = (\inst15|count\(2) & (\inst15|count[1]~17\ $ (GND))) # (!\inst15|count\(2) & (!\inst15|count[1]~17\ & VCC))
-- \inst15|count[2]~19\ = CARRY((\inst15|count\(2) & !\inst15|count[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(2),
	datad => VCC,
	cin => \inst15|count[1]~17\,
	combout => \inst15|count[2]~18_combout\,
	cout => \inst15|count[2]~19\);

-- Location: FF_X22_Y17_N11
\inst15|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[2]~18_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(2));

-- Location: LCCOMB_X22_Y17_N12
\inst15|count[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[3]~20_combout\ = (\inst15|count\(3) & (!\inst15|count[2]~19\)) # (!\inst15|count\(3) & ((\inst15|count[2]~19\) # (GND)))
-- \inst15|count[3]~21\ = CARRY((!\inst15|count[2]~19\) # (!\inst15|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(3),
	datad => VCC,
	cin => \inst15|count[2]~19\,
	combout => \inst15|count[3]~20_combout\,
	cout => \inst15|count[3]~21\);

-- Location: FF_X22_Y17_N13
\inst15|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[3]~20_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(3));

-- Location: LCCOMB_X22_Y17_N14
\inst15|count[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[4]~22_combout\ = (\inst15|count\(4) & (\inst15|count[3]~21\ $ (GND))) # (!\inst15|count\(4) & (!\inst15|count[3]~21\ & VCC))
-- \inst15|count[4]~23\ = CARRY((\inst15|count\(4) & !\inst15|count[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(4),
	datad => VCC,
	cin => \inst15|count[3]~21\,
	combout => \inst15|count[4]~22_combout\,
	cout => \inst15|count[4]~23\);

-- Location: FF_X22_Y17_N15
\inst15|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[4]~22_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(4));

-- Location: LCCOMB_X22_Y17_N16
\inst15|count[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[5]~24_combout\ = (\inst15|count\(5) & (!\inst15|count[4]~23\)) # (!\inst15|count\(5) & ((\inst15|count[4]~23\) # (GND)))
-- \inst15|count[5]~25\ = CARRY((!\inst15|count[4]~23\) # (!\inst15|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(5),
	datad => VCC,
	cin => \inst15|count[4]~23\,
	combout => \inst15|count[5]~24_combout\,
	cout => \inst15|count[5]~25\);

-- Location: FF_X22_Y17_N17
\inst15|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[5]~24_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(5));

-- Location: LCCOMB_X22_Y17_N18
\inst15|count[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[6]~26_combout\ = (\inst15|count\(6) & (\inst15|count[5]~25\ $ (GND))) # (!\inst15|count\(6) & (!\inst15|count[5]~25\ & VCC))
-- \inst15|count[6]~27\ = CARRY((\inst15|count\(6) & !\inst15|count[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(6),
	datad => VCC,
	cin => \inst15|count[5]~25\,
	combout => \inst15|count[6]~26_combout\,
	cout => \inst15|count[6]~27\);

-- Location: FF_X22_Y17_N19
\inst15|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[6]~26_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(6));

-- Location: LCCOMB_X22_Y17_N20
\inst15|count[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[7]~28_combout\ = (\inst15|count\(7) & (!\inst15|count[6]~27\)) # (!\inst15|count\(7) & ((\inst15|count[6]~27\) # (GND)))
-- \inst15|count[7]~29\ = CARRY((!\inst15|count[6]~27\) # (!\inst15|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst15|count\(7),
	datad => VCC,
	cin => \inst15|count[6]~27\,
	combout => \inst15|count[7]~28_combout\,
	cout => \inst15|count[7]~29\);

-- Location: FF_X22_Y17_N21
\inst15|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[7]~28_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(7));

-- Location: LCCOMB_X22_Y17_N22
\inst15|count[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[8]~30_combout\ = (\inst15|count\(8) & (\inst15|count[7]~29\ $ (GND))) # (!\inst15|count\(8) & (!\inst15|count[7]~29\ & VCC))
-- \inst15|count[8]~31\ = CARRY((\inst15|count\(8) & !\inst15|count[7]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(8),
	datad => VCC,
	cin => \inst15|count[7]~29\,
	combout => \inst15|count[8]~30_combout\,
	cout => \inst15|count[8]~31\);

-- Location: FF_X22_Y17_N23
\inst15|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[8]~30_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(8));

-- Location: LCCOMB_X22_Y17_N24
\inst15|count[9]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[9]~32_combout\ = (\inst15|count\(9) & (!\inst15|count[8]~31\)) # (!\inst15|count\(9) & ((\inst15|count[8]~31\) # (GND)))
-- \inst15|count[9]~33\ = CARRY((!\inst15|count[8]~31\) # (!\inst15|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(9),
	datad => VCC,
	cin => \inst15|count[8]~31\,
	combout => \inst15|count[9]~32_combout\,
	cout => \inst15|count[9]~33\);

-- Location: FF_X22_Y17_N25
\inst15|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[9]~32_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(9));

-- Location: FF_X22_Y17_N27
\inst15|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[10]~34_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(10));

-- Location: LCCOMB_X22_Y17_N30
\inst15|count[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|count[12]~39_combout\ = \inst15|count\(12) $ (!\inst15|count[11]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(12),
	cin => \inst15|count[11]~37\,
	combout => \inst15|count[12]~39_combout\);

-- Location: FF_X22_Y17_N31
\inst15|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|count[12]~39_combout\,
	sclr => \inst15|count[1]~38_combout\,
	ena => \inst15|ALT_INV_count[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|count\(12));

-- Location: LCCOMB_X22_Y17_N4
\inst15|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~0_combout\ = ((!\inst15|count\(10) & !\inst15|count\(11))) # (!\inst15|count\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|count\(10),
	datac => \inst15|count\(12),
	datad => \inst15|count\(11),
	combout => \inst15|LessThan0~0_combout\);

-- Location: LCCOMB_X18_Y17_N28
\inst15|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|LessThan0~3_combout\ = (\inst15|LessThan0~0_combout\) # ((\inst15|LessThan0~2_combout\ & \inst15|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|LessThan0~0_combout\,
	datab => \inst15|LessThan0~2_combout\,
	datad => \inst15|LessThan0~1_combout\,
	combout => \inst15|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y17_N30
\inst15|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector1~1_combout\ = (!\inst15|Selector0~1_combout\ & (((\inst15|stateUART.Starting~q\ & \inst15|LessThan0~3_combout\)) # (!\inst15|dataBuf[7]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|dataBuf[7]~0_combout\,
	datab => \inst15|Selector0~1_combout\,
	datac => \inst15|stateUART.Starting~q\,
	datad => \inst15|LessThan0~3_combout\,
	combout => \inst15|Selector1~1_combout\);

-- Location: FF_X19_Y17_N31
\inst15|stateUART.Starting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stateUART.Starting~q\);

-- Location: LCCOMB_X19_Y17_N0
\inst15|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector2~0_combout\ = (\inst15|dataBuf[7]~0_combout\ & (\inst15|stateUART.ReceivingData~q\ & !\inst15|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|dataBuf[7]~0_combout\,
	datab => \inst15|stateUART.ReceivingData~q\,
	datad => \inst15|Selector0~1_combout\,
	combout => \inst15|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y17_N28
\inst15|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector2~1_combout\ = (\inst15|LessThan0~3_combout\ & (((\inst15|Selector2~0_combout\)))) # (!\inst15|LessThan0~3_combout\ & (!\inst15|stateUART.Stopping~q\ & ((\inst15|stateUART.Starting~q\) # (\inst15|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stateUART.Starting~q\,
	datab => \inst15|LessThan0~3_combout\,
	datac => \inst15|stateUART.Stopping~q\,
	datad => \inst15|Selector2~0_combout\,
	combout => \inst15|Selector2~1_combout\);

-- Location: FF_X19_Y17_N29
\inst15|stateUART.ReceivingData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stateUART.ReceivingData~q\);

-- Location: LCCOMB_X19_Y17_N20
\inst15|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector0~0_combout\ = (\inst15|stateUART.ReceivingData~q\ & (!\inst15|LessThan0~0_combout\ & ((!\inst15|LessThan0~1_combout\) # (!\inst15|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stateUART.ReceivingData~q\,
	datab => \inst15|LessThan0~0_combout\,
	datac => \inst15|LessThan0~2_combout\,
	datad => \inst15|LessThan0~1_combout\,
	combout => \inst15|Selector0~0_combout\);

-- Location: LCCOMB_X19_Y17_N16
\inst15|bitPosition[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|bitPosition[0]~2_combout\ = \inst15|bitPosition\(0) $ (\inst15|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|bitPosition\(0),
	datad => \inst15|Selector0~0_combout\,
	combout => \inst15|bitPosition[0]~2_combout\);

-- Location: FF_X19_Y17_N17
\inst15|bitPosition[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|bitPosition[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|bitPosition\(0));

-- Location: LCCOMB_X19_Y17_N8
\inst15|bitPosition[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|bitPosition[1]~1_combout\ = \inst15|bitPosition\(1) $ (((\inst15|bitPosition\(0) & \inst15|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|bitPosition\(0),
	datac => \inst15|bitPosition\(1),
	datad => \inst15|Selector0~0_combout\,
	combout => \inst15|bitPosition[1]~1_combout\);

-- Location: FF_X19_Y17_N9
\inst15|bitPosition[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|bitPosition[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|bitPosition\(1));

-- Location: LCCOMB_X19_Y17_N12
\inst15|bitPosition[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|bitPosition[2]~0_combout\ = \inst15|bitPosition\(2) $ (((\inst15|bitPosition\(1) & (\inst15|bitPosition\(0) & \inst15|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|bitPosition\(1),
	datab => \inst15|bitPosition\(0),
	datac => \inst15|bitPosition\(2),
	datad => \inst15|Selector0~0_combout\,
	combout => \inst15|bitPosition[2]~0_combout\);

-- Location: FF_X19_Y17_N13
\inst15|bitPosition[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|bitPosition[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|bitPosition\(2));

-- Location: LCCOMB_X19_Y17_N18
\inst15|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector0~1_combout\ = (\inst15|bitPosition\(0) & (\inst15|bitPosition\(2) & (\inst15|bitPosition\(1) & \inst15|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|bitPosition\(0),
	datab => \inst15|bitPosition\(2),
	datac => \inst15|bitPosition\(1),
	datad => \inst15|Selector0~0_combout\,
	combout => \inst15|Selector0~1_combout\);

-- Location: LCCOMB_X19_Y17_N26
\inst15|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector3~0_combout\ = (\inst15|Selector0~1_combout\) # ((\inst15|stateUART.Stopping~q\ & \inst15|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|Selector0~1_combout\,
	datac => \inst15|stateUART.Stopping~q\,
	datad => \inst15|LessThan0~3_combout\,
	combout => \inst15|Selector3~0_combout\);

-- Location: FF_X19_Y17_N27
\inst15|stateUART.Stopping\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stateUART.Stopping~q\);

-- Location: LCCOMB_X18_Y17_N10
\inst15|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector0~2_combout\ = (!\inst15|count[1]~13_combout\ & ((\inst15|LessThan0~3_combout\) # (!\inst15|stateUART.Stopping~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|stateUART.Stopping~q\,
	datac => \inst15|count[1]~13_combout\,
	datad => \inst15|LessThan0~3_combout\,
	combout => \inst15|Selector0~2_combout\);

-- Location: FF_X18_Y17_N11
\inst15|stateUART.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|Selector0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|stateUART.Waiting~q\);

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

-- Location: LCCOMB_X22_Y16_N8
\inst7|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|latch~feeder_combout\ = \key1~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key1~input_o\,
	combout => \inst7|latch~feeder_combout\);

-- Location: FF_X22_Y16_N9
\inst7|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|latch~q\);

-- Location: LCCOMB_X22_Y16_N24
\inst7|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~1_combout\ = (!\inst7|count\(0) & (\inst7|latch~q\ $ (!\key1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|latch~q\,
	datac => \inst7|count\(0),
	datad => \key1~input_o\,
	combout => \inst7|count~1_combout\);

-- Location: FF_X22_Y16_N25
\inst7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(0));

-- Location: LCCOMB_X22_Y16_N22
\inst7|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~2_combout\ = (\key1~input_o\ & (\inst7|latch~q\ & (\inst7|count\(1) $ (\inst7|count\(0))))) # (!\key1~input_o\ & (!\inst7|latch~q\ & (\inst7|count\(1) $ (\inst7|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datab => \inst7|latch~q\,
	datac => \inst7|count\(1),
	datad => \inst7|count\(0),
	combout => \inst7|count~2_combout\);

-- Location: FF_X22_Y16_N23
\inst7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(1));

-- Location: LCCOMB_X22_Y16_N10
\inst7|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output~0_combout\ = (\inst7|count\(1) & (\inst7|count\(0) & (\key1~input_o\ $ (!\inst7|latch~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key1~input_o\,
	datab => \inst7|latch~q\,
	datac => \inst7|count\(1),
	datad => \inst7|count\(0),
	combout => \inst7|output~0_combout\);

-- Location: LCCOMB_X22_Y16_N12
\inst7|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output~2_combout\ = \inst7|latch~q\ $ (\key1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|latch~q\,
	datad => \key1~input_o\,
	combout => \inst7|output~2_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst7|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~0_combout\ = (!\inst7|output~2_combout\ & (\inst7|count\(2) $ (((\inst7|count\(1) & \inst7|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(1),
	datab => \inst7|count\(0),
	datac => \inst7|count\(2),
	datad => \inst7|output~2_combout\,
	combout => \inst7|count~0_combout\);

-- Location: FF_X22_Y16_N19
\inst7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(2));

-- Location: LCCOMB_X22_Y16_N0
\inst7|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|output~1_combout\ = (\inst7|output~0_combout\ & ((\inst7|count\(2) & ((\key1~input_o\))) # (!\inst7|count\(2) & (\inst7|output~q\)))) # (!\inst7|output~0_combout\ & (((\inst7|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|output~0_combout\,
	datab => \inst7|count\(2),
	datac => \inst7|output~q\,
	datad => \key1~input_o\,
	combout => \inst7|output~1_combout\);

-- Location: FF_X22_Y16_N1
\inst7|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|output~q\);

-- Location: LCCOMB_X18_Y16_N26
\inst14|key1Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|key1Prev~0_combout\ = !\inst7|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|output~q\,
	combout => \inst14|key1Prev~0_combout\);

-- Location: FF_X18_Y16_N27
\inst14|key1Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|key1Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|key1Prev~q\);

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

-- Location: LCCOMB_X19_Y16_N12
\inst8|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|latch~feeder_combout\ = \key2~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key2~input_o\,
	combout => \inst8|latch~feeder_combout\);

-- Location: FF_X19_Y16_N13
\inst8|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|latch~q\);

-- Location: LCCOMB_X19_Y16_N0
\inst8|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~1_combout\ = (!\inst8|count\(0) & (\inst8|latch~q\ $ (!\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|latch~q\,
	datac => \inst8|count\(0),
	datad => \key2~input_o\,
	combout => \inst8|count~1_combout\);

-- Location: FF_X19_Y16_N1
\inst8|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(0));

-- Location: LCCOMB_X19_Y16_N22
\inst8|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~2_combout\ = (\inst8|latch~q\ & (\key2~input_o\ & (\inst8|count\(0) $ (\inst8|count\(1))))) # (!\inst8|latch~q\ & (!\key2~input_o\ & (\inst8|count\(0) $ (\inst8|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|latch~q\,
	datab => \inst8|count\(0),
	datac => \inst8|count\(1),
	datad => \key2~input_o\,
	combout => \inst8|count~2_combout\);

-- Location: FF_X19_Y16_N23
\inst8|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(1));

-- Location: LCCOMB_X19_Y16_N10
\inst8|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|output~0_combout\ = (\inst8|count\(0) & (\inst8|count\(1) & (\inst8|latch~q\ $ (!\key2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|latch~q\,
	datab => \inst8|count\(0),
	datac => \inst8|count\(1),
	datad => \key2~input_o\,
	combout => \inst8|output~0_combout\);

-- Location: LCCOMB_X19_Y16_N28
\inst8|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|output~2_combout\ = \key2~input_o\ $ (\inst8|latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key2~input_o\,
	datad => \inst8|latch~q\,
	combout => \inst8|output~2_combout\);

-- Location: LCCOMB_X19_Y16_N18
\inst8|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~0_combout\ = (!\inst8|output~2_combout\ & (\inst8|count\(2) $ (((\inst8|count\(1) & \inst8|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|count\(1),
	datab => \inst8|output~2_combout\,
	datac => \inst8|count\(2),
	datad => \inst8|count\(0),
	combout => \inst8|count~0_combout\);

-- Location: FF_X19_Y16_N19
\inst8|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|count\(2));

-- Location: LCCOMB_X19_Y16_N4
\inst8|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|output~1_combout\ = (\inst8|output~0_combout\ & ((\inst8|count\(2) & ((\key2~input_o\))) # (!\inst8|count\(2) & (\inst8|output~q\)))) # (!\inst8|output~0_combout\ & (((\inst8|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|output~0_combout\,
	datab => \inst8|count\(2),
	datac => \inst8|output~q\,
	datad => \key2~input_o\,
	combout => \inst8|output~1_combout\);

-- Location: FF_X19_Y16_N5
\inst8|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst8|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|output~q\);

-- Location: LCCOMB_X18_Y16_N8
\inst14|key2Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|key2Prev~0_combout\ = !\inst8|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst8|output~q\,
	combout => \inst14|key2Prev~0_combout\);

-- Location: FF_X18_Y16_N9
\inst14|key2Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|key2Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|key2Prev~q\);

-- Location: LCCOMB_X18_Y16_N24
\inst14|dataBuf0[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[2]~0_combout\ = (\inst14|key1Prev~q\ & ((\inst14|key2Prev~q\) # ((\inst8|output~q\)))) # (!\inst14|key1Prev~q\ & (\inst7|output~q\ & ((\inst14|key2Prev~q\) # (\inst8|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|key1Prev~q\,
	datab => \inst14|key2Prev~q\,
	datac => \inst7|output~q\,
	datad => \inst8|output~q\,
	combout => \inst14|dataBuf0[2]~0_combout\);

-- Location: LCCOMB_X18_Y16_N12
\inst14|dataBuf0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0~4_combout\ = \inst14|dataBuf0\(0) $ (!\inst14|dataBuf0[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|dataBuf0\(0),
	datad => \inst14|dataBuf0[2]~0_combout\,
	combout => \inst14|dataBuf0~4_combout\);

-- Location: FF_X18_Y16_N13
\inst14|dataBuf0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf0\(0));

-- Location: LCCOMB_X18_Y16_N4
\inst14|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|process_1~1_combout\ = (!\inst14|key2Prev~q\ & !\inst8|output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|key2Prev~q\,
	datad => \inst8|output~q\,
	combout => \inst14|process_1~1_combout\);

-- Location: LCCOMB_X18_Y16_N10
\inst14|dataBuf0[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[1]~3_combout\ = \inst14|dataBuf0\(1) $ (((!\inst14|dataBuf0[2]~0_combout\ & (\inst14|dataBuf0\(0) $ (\inst14|process_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf0\(0),
	datab => \inst14|process_1~1_combout\,
	datac => \inst14|dataBuf0\(1),
	datad => \inst14|dataBuf0[2]~0_combout\,
	combout => \inst14|dataBuf0[1]~3_combout\);

-- Location: FF_X18_Y16_N11
\inst14|dataBuf0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf0[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf0\(1));

-- Location: LCCOMB_X18_Y16_N22
\inst14|dataBuf0[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[2]~1_combout\ = (\inst14|dataBuf0\(1) & (\inst14|dataBuf0\(0) & ((\inst14|key2Prev~q\) # (\inst8|output~q\)))) # (!\inst14|dataBuf0\(1) & (!\inst14|dataBuf0\(0) & (!\inst14|key2Prev~q\ & !\inst8|output~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf0\(1),
	datab => \inst14|dataBuf0\(0),
	datac => \inst14|key2Prev~q\,
	datad => \inst8|output~q\,
	combout => \inst14|dataBuf0[2]~1_combout\);

-- Location: LCCOMB_X18_Y16_N0
\inst14|dataBuf0[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[2]~2_combout\ = \inst14|dataBuf0\(2) $ (((\inst14|dataBuf0[2]~1_combout\ & !\inst14|dataBuf0[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf0[2]~1_combout\,
	datac => \inst14|dataBuf0\(2),
	datad => \inst14|dataBuf0[2]~0_combout\,
	combout => \inst14|dataBuf0[2]~2_combout\);

-- Location: FF_X18_Y16_N1
\inst14|dataBuf0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf0[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf0\(2));

-- Location: LCCOMB_X17_Y17_N2
\inst14|dataBuf[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf[2]~feeder_combout\ = \inst14|dataBuf0\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|dataBuf0\(2),
	combout => \inst14|dataBuf[2]~feeder_combout\);

-- Location: FF_X17_Y17_N3
\inst14|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf[2]~feeder_combout\,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(2));

-- Location: FF_X19_Y17_N15
\inst15|dataBuf[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(2),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(2));

-- Location: LCCOMB_X18_Y16_N18
\inst14|dataBuf0[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[3]~5_combout\ = (\inst14|dataBuf0\(1) & (\inst14|dataBuf0\(2) & (!\inst14|process_1~1_combout\ & \inst14|dataBuf0\(0)))) # (!\inst14|dataBuf0\(1) & (!\inst14|dataBuf0\(2) & (\inst14|process_1~1_combout\ & !\inst14|dataBuf0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf0\(1),
	datab => \inst14|dataBuf0\(2),
	datac => \inst14|process_1~1_combout\,
	datad => \inst14|dataBuf0\(0),
	combout => \inst14|dataBuf0[3]~5_combout\);

-- Location: LCCOMB_X18_Y16_N2
\inst14|dataBuf0[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf0[3]~6_combout\ = \inst14|dataBuf0\(3) $ (((\inst14|dataBuf0[3]~5_combout\ & !\inst14|dataBuf0[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|dataBuf0[3]~5_combout\,
	datac => \inst14|dataBuf0\(3),
	datad => \inst14|dataBuf0[2]~0_combout\,
	combout => \inst14|dataBuf0[3]~6_combout\);

-- Location: FF_X18_Y16_N3
\inst14|dataBuf0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf0[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf0\(3));

-- Location: LCCOMB_X18_Y17_N26
\inst14|dataBuf[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf[3]~feeder_combout\ = \inst14|dataBuf0\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|dataBuf0\(3),
	combout => \inst14|dataBuf[3]~feeder_combout\);

-- Location: FF_X18_Y17_N27
\inst14|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf[3]~feeder_combout\,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(3));

-- Location: FF_X19_Y17_N25
\inst15|dataBuf[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(3),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(3));

-- Location: FF_X18_Y17_N23
\inst14|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf0\(1),
	sload => VCC,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(1));

-- Location: LCCOMB_X19_Y17_N4
\inst15|dataBuf[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|dataBuf[1]~feeder_combout\ = \inst14|dataBuf\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|dataBuf\(1),
	combout => \inst15|dataBuf[1]~feeder_combout\);

-- Location: FF_X19_Y17_N5
\inst15|dataBuf[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|dataBuf[1]~feeder_combout\,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(1));

-- Location: FF_X18_Y17_N1
\inst14|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf0\(0),
	sload => VCC,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(0));

-- Location: FF_X19_Y17_N3
\inst15|dataBuf[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(0),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(0));

-- Location: LCCOMB_X19_Y17_N2
\inst15|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux0~2_combout\ = (\inst15|bitPosition\(1) & (((\inst15|bitPosition\(0))))) # (!\inst15|bitPosition\(1) & ((\inst15|bitPosition\(0) & (\inst15|dataBuf\(1))) # (!\inst15|bitPosition\(0) & ((\inst15|dataBuf\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|bitPosition\(1),
	datab => \inst15|dataBuf\(1),
	datac => \inst15|dataBuf\(0),
	datad => \inst15|bitPosition\(0),
	combout => \inst15|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y17_N24
\inst15|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux0~3_combout\ = (\inst15|bitPosition\(1) & ((\inst15|Mux0~2_combout\ & ((\inst15|dataBuf\(3)))) # (!\inst15|Mux0~2_combout\ & (\inst15|dataBuf\(2))))) # (!\inst15|bitPosition\(1) & (((\inst15|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|bitPosition\(1),
	datab => \inst15|dataBuf\(2),
	datac => \inst15|dataBuf\(3),
	datad => \inst15|Mux0~2_combout\,
	combout => \inst15|Mux0~3_combout\);

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

-- Location: LCCOMB_X16_Y16_N20
\inst9|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|latch~feeder_combout\ = \key3~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key3~input_o\,
	combout => \inst9|latch~feeder_combout\);

-- Location: FF_X16_Y16_N21
\inst9|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|latch~q\);

-- Location: LCCOMB_X16_Y16_N12
\inst9|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count~1_combout\ = (!\inst9|count\(0) & (\inst9|latch~q\ $ (!\key3~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|latch~q\,
	datac => \inst9|count\(0),
	datad => \key3~input_o\,
	combout => \inst9|count~1_combout\);

-- Location: FF_X16_Y16_N13
\inst9|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(0));

-- Location: LCCOMB_X16_Y16_N22
\inst9|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count~2_combout\ = (\inst9|count\(0) & (!\inst9|count\(1) & (\inst9|latch~q\ $ (!\key3~input_o\)))) # (!\inst9|count\(0) & (\inst9|count\(1) & (\inst9|latch~q\ $ (!\key3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(0),
	datab => \inst9|latch~q\,
	datac => \inst9|count\(1),
	datad => \key3~input_o\,
	combout => \inst9|count~2_combout\);

-- Location: FF_X16_Y16_N23
\inst9|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(1));

-- Location: LCCOMB_X16_Y16_N0
\inst9|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|output~2_combout\ = \key3~input_o\ $ (\inst9|latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datad => \inst9|latch~q\,
	combout => \inst9|output~2_combout\);

-- Location: LCCOMB_X16_Y16_N10
\inst9|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|count~0_combout\ = (!\inst9|output~2_combout\ & (\inst9|count\(2) $ (((\inst9|count\(1) & \inst9|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(1),
	datab => \inst9|output~2_combout\,
	datac => \inst9|count\(2),
	datad => \inst9|count\(0),
	combout => \inst9|count~0_combout\);

-- Location: FF_X16_Y16_N11
\inst9|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|count\(2));

-- Location: LCCOMB_X16_Y16_N2
\inst9|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|output~0_combout\ = (\inst9|count\(0) & (\inst9|count\(1) & (\inst9|latch~q\ $ (!\key3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(0),
	datab => \inst9|latch~q\,
	datac => \inst9|count\(1),
	datad => \key3~input_o\,
	combout => \inst9|output~0_combout\);

-- Location: LCCOMB_X16_Y16_N24
\inst9|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|output~1_combout\ = (\inst9|count\(2) & ((\inst9|output~0_combout\ & ((\key3~input_o\))) # (!\inst9|output~0_combout\ & (\inst9|output~q\)))) # (!\inst9|count\(2) & (((\inst9|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|count\(2),
	datab => \inst9|output~0_combout\,
	datac => \inst9|output~q\,
	datad => \key3~input_o\,
	combout => \inst9|output~1_combout\);

-- Location: FF_X16_Y16_N25
\inst9|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst9|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9|output~q\);

-- Location: LCCOMB_X17_Y16_N22
\inst14|key3Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|key3Prev~0_combout\ = !\inst9|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst9|output~q\,
	combout => \inst14|key3Prev~0_combout\);

-- Location: FF_X17_Y16_N23
\inst14|key3Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|key3Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|key3Prev~q\);

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

-- Location: LCCOMB_X21_Y16_N28
\inst12|latch~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|latch~feeder_combout\ = \key4~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key4~input_o\,
	combout => \inst12|latch~feeder_combout\);

-- Location: FF_X21_Y16_N29
\inst12|latch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|latch~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|latch~q\);

-- Location: LCCOMB_X21_Y16_N0
\inst12|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count~1_combout\ = (!\inst12|count\(0) & (\inst12|latch~q\ $ (!\key4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|latch~q\,
	datac => \inst12|count\(0),
	datad => \key4~input_o\,
	combout => \inst12|count~1_combout\);

-- Location: FF_X21_Y16_N1
\inst12|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(0));

-- Location: LCCOMB_X21_Y16_N22
\inst12|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count~2_combout\ = (\inst12|latch~q\ & (\key4~input_o\ & (\inst12|count\(0) $ (\inst12|count\(1))))) # (!\inst12|latch~q\ & (!\key4~input_o\ & (\inst12|count\(0) $ (\inst12|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|latch~q\,
	datab => \inst12|count\(0),
	datac => \inst12|count\(1),
	datad => \key4~input_o\,
	combout => \inst12|count~2_combout\);

-- Location: FF_X21_Y16_N23
\inst12|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(1));

-- Location: LCCOMB_X21_Y16_N10
\inst12|output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|output~0_combout\ = (\inst12|count\(0) & (\inst12|count\(1) & (\inst12|latch~q\ $ (!\key4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|latch~q\,
	datab => \inst12|count\(0),
	datac => \inst12|count\(1),
	datad => \key4~input_o\,
	combout => \inst12|output~0_combout\);

-- Location: LCCOMB_X21_Y16_N12
\inst12|output~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|output~2_combout\ = \key4~input_o\ $ (\inst12|latch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key4~input_o\,
	datad => \inst12|latch~q\,
	combout => \inst12|output~2_combout\);

-- Location: LCCOMB_X21_Y16_N18
\inst12|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|count~0_combout\ = (!\inst12|output~2_combout\ & (\inst12|count\(2) $ (((\inst12|count\(1) & \inst12|count\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|count\(1),
	datab => \inst12|count\(0),
	datac => \inst12|count\(2),
	datad => \inst12|output~2_combout\,
	combout => \inst12|count~0_combout\);

-- Location: FF_X21_Y16_N19
\inst12|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|count\(2));

-- Location: LCCOMB_X21_Y16_N4
\inst12|output~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|output~1_combout\ = (\inst12|output~0_combout\ & ((\inst12|count\(2) & ((\key4~input_o\))) # (!\inst12|count\(2) & (\inst12|output~q\)))) # (!\inst12|output~0_combout\ & (((\inst12|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|output~0_combout\,
	datab => \inst12|count\(2),
	datac => \inst12|output~q\,
	datad => \key4~input_o\,
	combout => \inst12|output~1_combout\);

-- Location: FF_X21_Y16_N5
\inst12|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst12|output~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|output~q\);

-- Location: LCCOMB_X17_Y16_N8
\inst14|key4Prev~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|key4Prev~0_combout\ = !\inst12|output~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst12|output~q\,
	combout => \inst14|key4Prev~0_combout\);

-- Location: FF_X17_Y16_N9
\inst14|key4Prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|key4Prev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|key4Prev~q\);

-- Location: LCCOMB_X17_Y16_N24
\inst14|dataBuf1[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[1]~0_combout\ = (\inst14|key3Prev~q\ & (((\inst14|key4Prev~q\) # (\inst12|output~q\)))) # (!\inst14|key3Prev~q\ & (\inst9|output~q\ & ((\inst14|key4Prev~q\) # (\inst12|output~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|key3Prev~q\,
	datab => \inst9|output~q\,
	datac => \inst14|key4Prev~q\,
	datad => \inst12|output~q\,
	combout => \inst14|dataBuf1[1]~0_combout\);

-- Location: LCCOMB_X17_Y16_N0
\inst14|dataBuf1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1~4_combout\ = \inst14|dataBuf1\(0) $ (!\inst14|dataBuf1[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|dataBuf1\(0),
	datad => \inst14|dataBuf1[1]~0_combout\,
	combout => \inst14|dataBuf1~4_combout\);

-- Location: FF_X17_Y16_N1
\inst14|dataBuf1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf1\(0));

-- Location: LCCOMB_X17_Y16_N4
\inst14|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|process_1~0_combout\ = (!\inst14|key4Prev~q\ & !\inst12|output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|key4Prev~q\,
	datad => \inst12|output~q\,
	combout => \inst14|process_1~0_combout\);

-- Location: LCCOMB_X17_Y16_N2
\inst14|dataBuf1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[1]~3_combout\ = \inst14|dataBuf1\(1) $ (((!\inst14|dataBuf1[1]~0_combout\ & (\inst14|dataBuf1\(0) $ (\inst14|process_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf1\(0),
	datab => \inst14|process_1~0_combout\,
	datac => \inst14|dataBuf1\(1),
	datad => \inst14|dataBuf1[1]~0_combout\,
	combout => \inst14|dataBuf1[1]~3_combout\);

-- Location: FF_X17_Y16_N3
\inst14|dataBuf1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf1[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf1\(1));

-- Location: LCCOMB_X17_Y16_N10
\inst14|dataBuf1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[2]~1_combout\ = (\inst14|dataBuf1\(1) & (\inst14|dataBuf1\(0) & ((\inst12|output~q\) # (\inst14|key4Prev~q\)))) # (!\inst14|dataBuf1\(1) & (!\inst12|output~q\ & (!\inst14|key4Prev~q\ & !\inst14|dataBuf1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|output~q\,
	datab => \inst14|dataBuf1\(1),
	datac => \inst14|key4Prev~q\,
	datad => \inst14|dataBuf1\(0),
	combout => \inst14|dataBuf1[2]~1_combout\);

-- Location: LCCOMB_X17_Y16_N16
\inst14|dataBuf1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[2]~2_combout\ = \inst14|dataBuf1\(2) $ (((\inst14|dataBuf1[2]~1_combout\ & !\inst14|dataBuf1[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf1[2]~1_combout\,
	datac => \inst14|dataBuf1\(2),
	datad => \inst14|dataBuf1[1]~0_combout\,
	combout => \inst14|dataBuf1[2]~2_combout\);

-- Location: FF_X17_Y16_N17
\inst14|dataBuf1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf1\(2));

-- Location: LCCOMB_X17_Y16_N6
\inst14|dataBuf1[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[3]~5_combout\ = (\inst14|dataBuf1\(2) & (\inst14|dataBuf1\(0) & (!\inst14|process_1~0_combout\ & \inst14|dataBuf1\(1)))) # (!\inst14|dataBuf1\(2) & (!\inst14|dataBuf1\(0) & (\inst14|process_1~0_combout\ & !\inst14|dataBuf1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dataBuf1\(2),
	datab => \inst14|dataBuf1\(0),
	datac => \inst14|process_1~0_combout\,
	datad => \inst14|dataBuf1\(1),
	combout => \inst14|dataBuf1[3]~5_combout\);

-- Location: LCCOMB_X17_Y16_N18
\inst14|dataBuf1[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf1[3]~6_combout\ = \inst14|dataBuf1\(3) $ (((!\inst14|dataBuf1[1]~0_combout\ & \inst14|dataBuf1[3]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|dataBuf1[1]~0_combout\,
	datac => \inst14|dataBuf1\(3),
	datad => \inst14|dataBuf1[3]~5_combout\,
	combout => \inst14|dataBuf1[3]~6_combout\);

-- Location: FF_X17_Y16_N19
\inst14|dataBuf1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf1[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf1\(3));

-- Location: FF_X18_Y17_N9
\inst14|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf1\(3),
	sload => VCC,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(7));

-- Location: FF_X19_Y17_N1
\inst15|dataBuf[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(7),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(7));

-- Location: FF_X18_Y17_N7
\inst14|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf1\(2),
	sload => VCC,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(6));

-- Location: FF_X19_Y17_N11
\inst15|dataBuf[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(6),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(6));

-- Location: LCCOMB_X17_Y17_N0
\inst14|dataBuf[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dataBuf[5]~feeder_combout\ = \inst14|dataBuf1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|dataBuf1\(1),
	combout => \inst14|dataBuf[5]~feeder_combout\);

-- Location: FF_X17_Y17_N1
\inst14|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|dataBuf[5]~feeder_combout\,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(5));

-- Location: LCCOMB_X19_Y17_N22
\inst15|dataBuf[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|dataBuf[5]~feeder_combout\ = \inst14|dataBuf\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst14|dataBuf\(5),
	combout => \inst15|dataBuf[5]~feeder_combout\);

-- Location: FF_X19_Y17_N23
\inst15|dataBuf[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|dataBuf[5]~feeder_combout\,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(5));

-- Location: FF_X18_Y17_N29
\inst14|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf1\(0),
	sload => VCC,
	ena => \inst14|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dataBuf\(4));

-- Location: FF_X19_Y17_N7
\inst15|dataBuf[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst14|dataBuf\(4),
	sload => VCC,
	ena => \inst15|ALT_INV_dataBuf[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|dataBuf\(4));

-- Location: LCCOMB_X19_Y17_N6
\inst15|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux0~0_combout\ = (\inst15|bitPosition\(1) & (((\inst15|bitPosition\(0))))) # (!\inst15|bitPosition\(1) & ((\inst15|bitPosition\(0) & (\inst15|dataBuf\(5))) # (!\inst15|bitPosition\(0) & ((\inst15|dataBuf\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|dataBuf\(5),
	datab => \inst15|bitPosition\(1),
	datac => \inst15|dataBuf\(4),
	datad => \inst15|bitPosition\(0),
	combout => \inst15|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y17_N10
\inst15|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Mux0~1_combout\ = (\inst15|bitPosition\(1) & ((\inst15|Mux0~0_combout\ & (\inst15|dataBuf\(7))) # (!\inst15|Mux0~0_combout\ & ((\inst15|dataBuf\(6)))))) # (!\inst15|bitPosition\(1) & (((\inst15|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|dataBuf\(7),
	datab => \inst15|bitPosition\(1),
	datac => \inst15|dataBuf\(6),
	datad => \inst15|Mux0~0_combout\,
	combout => \inst15|Mux0~1_combout\);

-- Location: LCCOMB_X19_Y17_N14
\inst15|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector17~0_combout\ = (\inst15|bitPosition\(2) & ((\inst15|Mux0~1_combout\))) # (!\inst15|bitPosition\(2) & (\inst15|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|bitPosition\(2),
	datab => \inst15|Mux0~3_combout\,
	datad => \inst15|Mux0~1_combout\,
	combout => \inst15|Selector17~0_combout\);

-- Location: LCCOMB_X18_Y17_N6
\inst15|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector17~1_combout\ = (\inst15|LessThan0~3_combout\ & ((!\inst15|Selector17~0_combout\))) # (!\inst15|LessThan0~3_combout\ & (\inst15|tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|tx~q\,
	datab => \inst15|Selector17~0_combout\,
	datad => \inst15|LessThan0~3_combout\,
	combout => \inst15|Selector17~1_combout\);

-- Location: LCCOMB_X18_Y17_N12
\inst15|Selector17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|Selector17~2_combout\ = (\inst15|stateUART.Waiting~q\ & (!\inst15|stateUART.Stopping~q\ & ((\inst15|Selector17~1_combout\) # (!\inst15|stateUART.ReceivingData~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|stateUART.Waiting~q\,
	datab => \inst15|stateUART.Stopping~q\,
	datac => \inst15|stateUART.ReceivingData~q\,
	datad => \inst15|Selector17~1_combout\,
	combout => \inst15|Selector17~2_combout\);

-- Location: FF_X18_Y17_N13
\inst15|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst15|Selector17~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15|tx~q\);

-- Location: LCCOMB_X14_Y13_N0
\inst10|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~0_combout\ = (!\inst10|stateI2C.ReadBitSending~q\ & (!\inst10|stateI2C.AcknowledgeChecking4~q\ & (!\inst10|stateI2C.AcknowledgeChecking2~q\ & !\inst10|stateI2C.WriteBitSending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.ReadBitSending~q\,
	datab => \inst10|stateI2C.AcknowledgeChecking4~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking2~q\,
	datad => \inst10|stateI2C.WriteBitSending~q\,
	combout => \inst10|Selector34~0_combout\);

-- Location: LCCOMB_X12_Y13_N6
\inst10|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~1_combout\ = (!\inst10|stateI2C.Starting~q\ & (\inst10|WideOr2~0_combout\ & \inst10|Selector34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.Starting~q\,
	datab => \inst10|WideOr2~0_combout\,
	datad => \inst10|Selector34~0_combout\,
	combout => \inst10|Selector34~1_combout\);

-- Location: LCCOMB_X14_Y13_N26
\inst10|Selector34~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~3_combout\ = (!\inst10|stateI2C.AcknowledgeChecking9~q\ & (!\inst10|stateI2C.LSByteFromDeviceReading~q\ & !\inst10|stateI2C.MSByteFromDeviceReading~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking9~q\,
	datab => \inst10|stateI2C.LSByteFromDeviceReading~q\,
	datad => \inst10|stateI2C.MSByteFromDeviceReading~q\,
	combout => \inst10|Selector34~3_combout\);

-- Location: LCCOMB_X14_Y13_N14
\inst10|Selector34~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~2_combout\ = (!\inst10|stateI2C.AcknowledgeChecking1~q\ & (!\inst10|stateI2C.AcknowledgeChecking5~q\ & (!\inst10|stateI2C.AcknowledgeChecking3~q\ & !\inst10|stateI2C.AcknowledgeChecking7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking1~q\,
	datab => \inst10|stateI2C.AcknowledgeChecking5~q\,
	datac => \inst10|stateI2C.AcknowledgeChecking3~q\,
	datad => \inst10|stateI2C.AcknowledgeChecking7~q\,
	combout => \inst10|Selector34~2_combout\);

-- Location: LCCOMB_X12_Y13_N22
\inst10|Selector34~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~4_combout\ = (!\inst10|stateI2C.Updating~q\ & ((\inst10|LessThan0~1_combout\) # ((\inst10|Selector34~3_combout\ & \inst10|Selector34~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector34~3_combout\,
	datab => \inst10|stateI2C.Updating~q\,
	datac => \inst10|Selector34~2_combout\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|Selector34~4_combout\);

-- Location: LCCOMB_X12_Y13_N2
\inst10|Selector34~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~5_combout\ = (\inst10|Selector34~4_combout\ & (((!\inst10|stateI2C.PointerBytePreparing~q\ & !\inst10|Selector41~1_combout\)) # (!\inst10|scl~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.PointerBytePreparing~q\,
	datab => \inst10|Selector41~1_combout\,
	datac => \inst10|Selector34~4_combout\,
	datad => \inst10|scl~0_combout\,
	combout => \inst10|Selector34~5_combout\);

-- Location: LCCOMB_X12_Y13_N24
\inst10|Selector34~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|Selector34~6_combout\ = (\inst10|Selector34~1_combout\ & (((\inst10|scl~q\) # (\inst10|Selector34~5_combout\)))) # (!\inst10|Selector34~1_combout\ & (!\inst10|LessThan0~1_combout\ & (\inst10|scl~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Selector34~1_combout\,
	datab => \inst10|LessThan0~1_combout\,
	datac => \inst10|scl~q\,
	datad => \inst10|Selector34~5_combout\,
	combout => \inst10|Selector34~6_combout\);

-- Location: FF_X12_Y13_N25
\inst10|scl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|Selector34~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|scl~q\);

-- Location: LCCOMB_X12_Y14_N22
\inst10|ledBuf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|ledBuf~2_combout\ = \inst10|ledBuf~q\ $ (((\inst10|stateI2C.AcknowledgeChecking10~q\ & (\inst10|sda~1_combout\ & \inst10|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|stateI2C.AcknowledgeChecking10~q\,
	datab => \inst10|sda~1_combout\,
	datac => \inst10|ledBuf~q\,
	datad => \inst10|LessThan0~1_combout\,
	combout => \inst10|ledBuf~2_combout\);

-- Location: FF_X12_Y14_N23
\inst10|ledBuf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst10|ledBuf~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|ledBuf~q\);

-- Location: LCCOMB_X1_Y11_N24
\inst2|clkCounter[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[0]~1_combout\ = !\inst2|clkCounter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[0]~1_combout\);

-- Location: FF_X1_Y11_N25
\inst2|clkCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst2|clkCounter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkCounter\(0));

-- Location: LCCOMB_X1_Y11_N28
\inst2|clkCounter[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~0_combout\ = \inst2|clkCounter\(1) $ (\inst2|clkCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|clkCounter\(1),
	datad => \inst2|clkCounter\(0),
	combout => \inst2|clkCounter[1]~0_combout\);

-- Location: LCCOMB_X1_Y11_N20
\inst2|clkCounter[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|clkCounter[1]~feeder_combout\ = \inst2|clkCounter[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|clkCounter[1]~0_combout\,
	combout => \inst2|clkCounter[1]~feeder_combout\);

-- Location: FF_X1_Y11_N21
\inst2|clkCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clkOutBuf~clkctrl_outclk\,
	d => \inst2|clkCounter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|clkCounter\(1));

-- Location: CLKCTRL_G4
\inst2|clkCounter[1]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|clkCounter[1]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|clkCounter[1]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N26
\inst2|indicator[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(1) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|indicator\(1))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((!\inst2|clkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|indicator\(1),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|clkCounter\(0),
	combout => \inst2|indicator\(1));

-- Location: LCCOMB_X1_Y11_N14
\inst2|indicator[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|indicator\(0) = (GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & (\inst2|indicator\(0))) # (!GLOBAL(\inst2|clkCounter[1]~clkctrl_outclk\) & ((\inst2|clkCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|indicator\(0),
	datac => \inst2|clkCounter[1]~clkctrl_outclk\,
	datad => \inst2|clkCounter\(0),
	combout => \inst2|indicator\(0));

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

ww_sda <= \sda~output_o\;

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
END structure;


