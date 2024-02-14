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

-- DATE "02/14/2024 16:36:39"

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

ENTITY 	VHDLstart02 IS
    PORT (
	clk : IN std_logic;
	buttonWaiting : IN std_logic;
	buttonLeft : IN std_logic;
	buttonRight : IN std_logic;
	buttonSelection : IN std_logic;
	led1 : BUFFER std_logic_vector(3 DOWNTO 0);
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	en : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VHDLstart02;

-- Design Ports Information
-- led1[0]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[1]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[2]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[3]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[0]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[1]	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[2]	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[3]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[4]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[5]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led5[6]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- en[0]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- en[1]	=>  Location: PIN_135,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- en[2]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- en[3]	=>  Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonSelection	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonRight	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonLeft	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonWaiting	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VHDLstart02 IS
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
SIGNAL ww_buttonWaiting : std_logic;
SIGNAL ww_buttonLeft : std_logic;
SIGNAL ww_buttonRight : std_logic;
SIGNAL ww_buttonSelection : std_logic;
SIGNAL ww_led1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_en : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \buttonSelection~input_o\ : std_logic;
SIGNAL \buttonSelectionPrev~feeder_combout\ : std_logic;
SIGNAL \buttonRight~input_o\ : std_logic;
SIGNAL \buttonRightPrev~feeder_combout\ : std_logic;
SIGNAL \buttonRightPrev~q\ : std_logic;
SIGNAL \buttonLeft~input_o\ : std_logic;
SIGNAL \buttonLeftPrev~feeder_combout\ : std_logic;
SIGNAL \buttonLeftPrev~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \process_4~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \buttonWaiting~input_o\ : std_logic;
SIGNAL \buttonWaitingPrev~q\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Add7~57_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add7~86_combout\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~3_combout\ : std_logic;
SIGNAL \Add7~85_combout\ : std_logic;
SIGNAL \Add7~4\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add7~84_combout\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~7_combout\ : std_logic;
SIGNAL \Add7~83_combout\ : std_logic;
SIGNAL \Add7~8\ : std_logic;
SIGNAL \Add7~9_combout\ : std_logic;
SIGNAL \Add7~82_combout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~11_combout\ : std_logic;
SIGNAL \Add7~81_combout\ : std_logic;
SIGNAL \Add7~12\ : std_logic;
SIGNAL \Add7~13_combout\ : std_logic;
SIGNAL \Add7~80_combout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~15_combout\ : std_logic;
SIGNAL \Add7~79_combout\ : std_logic;
SIGNAL \Add7~16\ : std_logic;
SIGNAL \Add7~17_combout\ : std_logic;
SIGNAL \Add7~78_combout\ : std_logic;
SIGNAL \Add7~18\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add7~64_combout\ : std_logic;
SIGNAL \Add7~20\ : std_logic;
SIGNAL \Add7~21_combout\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~23_combout\ : std_logic;
SIGNAL \Add7~66_combout\ : std_logic;
SIGNAL \Add7~24\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add7~67_combout\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~27_combout\ : std_logic;
SIGNAL \Add7~68_combout\ : std_logic;
SIGNAL \Add7~28\ : std_logic;
SIGNAL \Add7~29_combout\ : std_logic;
SIGNAL \Add7~69_combout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~31_combout\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \Add7~32\ : std_logic;
SIGNAL \Add7~33_combout\ : std_logic;
SIGNAL \Add7~71_combout\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add7~63_combout\ : std_logic;
SIGNAL \Add7~36\ : std_logic;
SIGNAL \Add7~37_combout\ : std_logic;
SIGNAL \Add7~61_combout\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~39_combout\ : std_logic;
SIGNAL \Add7~76_combout\ : std_logic;
SIGNAL \Add7~40\ : std_logic;
SIGNAL \Add7~41_combout\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~43_combout\ : std_logic;
SIGNAL \Add7~72_combout\ : std_logic;
SIGNAL \Add7~44\ : std_logic;
SIGNAL \Add7~45_combout\ : std_logic;
SIGNAL \Add7~75_combout\ : std_logic;
SIGNAL \Add7~46\ : std_logic;
SIGNAL \Add7~47_combout\ : std_logic;
SIGNAL \Add7~77_combout\ : std_logic;
SIGNAL \Add7~48\ : std_logic;
SIGNAL \Add7~49_combout\ : std_logic;
SIGNAL \Add7~73_combout\ : std_logic;
SIGNAL \Add7~50\ : std_logic;
SIGNAL \Add7~51_combout\ : std_logic;
SIGNAL \Add7~74_combout\ : std_logic;
SIGNAL \Add7~52\ : std_logic;
SIGNAL \Add7~53_combout\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \LessThan9~4_combout\ : std_logic;
SIGNAL \LessThan9~5_combout\ : std_logic;
SIGNAL \LessThan9~6_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Unsuccessful~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Selection~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \process_4~2_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \Add5~21_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \Add5~8\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Implementation~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \enableButton~1_combout\ : std_logic;
SIGNAL \timeForNormalSignal[0]~17_combout\ : std_logic;
SIGNAL \timeForNormalSignal[0]~18\ : std_logic;
SIGNAL \timeForNormalSignal[1]~19_combout\ : std_logic;
SIGNAL \timeForNormalSignal[1]~20\ : std_logic;
SIGNAL \timeForNormalSignal[2]~21_combout\ : std_logic;
SIGNAL \timeForNormalSignal[2]~22\ : std_logic;
SIGNAL \timeForNormalSignal[3]~23_combout\ : std_logic;
SIGNAL \timeForNormalSignal[3]~24\ : std_logic;
SIGNAL \timeForNormalSignal[4]~25_combout\ : std_logic;
SIGNAL \timeForNormalSignal[4]~26\ : std_logic;
SIGNAL \timeForNormalSignal[5]~27_combout\ : std_logic;
SIGNAL \timeForNormalSignal[5]~28\ : std_logic;
SIGNAL \timeForNormalSignal[6]~29_combout\ : std_logic;
SIGNAL \timeForNormalSignal[6]~30\ : std_logic;
SIGNAL \timeForNormalSignal[7]~31_combout\ : std_logic;
SIGNAL \timeForNormalSignal[7]~32\ : std_logic;
SIGNAL \timeForNormalSignal[8]~33_combout\ : std_logic;
SIGNAL \timeForNormalSignal[8]~34\ : std_logic;
SIGNAL \timeForNormalSignal[9]~35_combout\ : std_logic;
SIGNAL \timeForNormalSignal[9]~36\ : std_logic;
SIGNAL \timeForNormalSignal[10]~37_combout\ : std_logic;
SIGNAL \timeForNormalSignal[10]~38\ : std_logic;
SIGNAL \timeForNormalSignal[11]~39_combout\ : std_logic;
SIGNAL \timeForNormalSignal[11]~40\ : std_logic;
SIGNAL \timeForNormalSignal[12]~41_combout\ : std_logic;
SIGNAL \timeForNormalSignal[12]~42\ : std_logic;
SIGNAL \timeForNormalSignal[13]~43_combout\ : std_logic;
SIGNAL \timeForNormalSignal[13]~44\ : std_logic;
SIGNAL \timeForNormalSignal[14]~45_combout\ : std_logic;
SIGNAL \timeForNormalSignal[14]~46\ : std_logic;
SIGNAL \timeForNormalSignal[15]~47_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \timeForNormalSignal[15]~48\ : std_logic;
SIGNAL \timeForNormalSignal[16]~49_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \enableButton~0_combout\ : std_logic;
SIGNAL \enableButton~2_combout\ : std_logic;
SIGNAL \enableButton~q\ : std_logic;
SIGNAL \buttonSelectionPrev~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Payment~q\ : std_logic;
SIGNAL \counter[0]~24_combout\ : std_logic;
SIGNAL \counter[0]~25\ : std_logic;
SIGNAL \counter[1]~26_combout\ : std_logic;
SIGNAL \counter[1]~27\ : std_logic;
SIGNAL \counter[2]~28_combout\ : std_logic;
SIGNAL \counter[2]~29\ : std_logic;
SIGNAL \counter[3]~30_combout\ : std_logic;
SIGNAL \counter[3]~31\ : std_logic;
SIGNAL \counter[4]~32_combout\ : std_logic;
SIGNAL \counter[4]~33\ : std_logic;
SIGNAL \counter[5]~34_combout\ : std_logic;
SIGNAL \counter[5]~35\ : std_logic;
SIGNAL \counter[6]~36_combout\ : std_logic;
SIGNAL \counter[6]~37\ : std_logic;
SIGNAL \counter[7]~38_combout\ : std_logic;
SIGNAL \counter[7]~39\ : std_logic;
SIGNAL \counter[8]~40_combout\ : std_logic;
SIGNAL \counter[8]~41\ : std_logic;
SIGNAL \counter[9]~42_combout\ : std_logic;
SIGNAL \counter[9]~43\ : std_logic;
SIGNAL \counter[10]~44_combout\ : std_logic;
SIGNAL \counter[10]~45\ : std_logic;
SIGNAL \counter[11]~46_combout\ : std_logic;
SIGNAL \counter[11]~47\ : std_logic;
SIGNAL \counter[12]~48_combout\ : std_logic;
SIGNAL \counter[12]~49\ : std_logic;
SIGNAL \counter[13]~50_combout\ : std_logic;
SIGNAL \counter[13]~51\ : std_logic;
SIGNAL \counter[14]~52_combout\ : std_logic;
SIGNAL \counter[14]~53\ : std_logic;
SIGNAL \counter[15]~54_combout\ : std_logic;
SIGNAL \counter[15]~55\ : std_logic;
SIGNAL \counter[16]~56_combout\ : std_logic;
SIGNAL \counter[16]~57\ : std_logic;
SIGNAL \counter[17]~58_combout\ : std_logic;
SIGNAL \counter[17]~59\ : std_logic;
SIGNAL \counter[18]~60_combout\ : std_logic;
SIGNAL \counter[18]~61\ : std_logic;
SIGNAL \counter[19]~62_combout\ : std_logic;
SIGNAL \counter[19]~63\ : std_logic;
SIGNAL \counter[20]~64_combout\ : std_logic;
SIGNAL \counter[20]~65\ : std_logic;
SIGNAL \counter[21]~66_combout\ : std_logic;
SIGNAL \counter[21]~67\ : std_logic;
SIGNAL \counter[22]~68_combout\ : std_logic;
SIGNAL \counter[22]~69\ : std_logic;
SIGNAL \counter[23]~70_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \latch~1_combout\ : std_logic;
SIGNAL \latch~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \clkForIndication[0]~18_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \clkForIndication[0]~19\ : std_logic;
SIGNAL \clkForIndication[1]~20_combout\ : std_logic;
SIGNAL \clkForIndication[1]~21\ : std_logic;
SIGNAL \clkForIndication[2]~22_combout\ : std_logic;
SIGNAL \clkForIndication[2]~23\ : std_logic;
SIGNAL \clkForIndication[3]~24_combout\ : std_logic;
SIGNAL \clkForIndication[3]~25\ : std_logic;
SIGNAL \clkForIndication[4]~26_combout\ : std_logic;
SIGNAL \clkForIndication[4]~27\ : std_logic;
SIGNAL \clkForIndication[5]~28_combout\ : std_logic;
SIGNAL \clkForIndication[5]~29\ : std_logic;
SIGNAL \clkForIndication[6]~30_combout\ : std_logic;
SIGNAL \clkForIndication[6]~31\ : std_logic;
SIGNAL \clkForIndication[7]~32_combout\ : std_logic;
SIGNAL \clkForIndication[7]~33\ : std_logic;
SIGNAL \clkForIndication[8]~34_combout\ : std_logic;
SIGNAL \clkForIndication[8]~35\ : std_logic;
SIGNAL \clkForIndication[9]~36_combout\ : std_logic;
SIGNAL \clkForIndication[9]~37\ : std_logic;
SIGNAL \clkForIndication[10]~38_combout\ : std_logic;
SIGNAL \clkForIndication[10]~39\ : std_logic;
SIGNAL \clkForIndication[11]~40_combout\ : std_logic;
SIGNAL \clkForIndication[11]~41\ : std_logic;
SIGNAL \clkForIndication[12]~42_combout\ : std_logic;
SIGNAL \clkForIndication[12]~43\ : std_logic;
SIGNAL \clkForIndication[13]~44_combout\ : std_logic;
SIGNAL \clkForIndication[13]~45\ : std_logic;
SIGNAL \clkForIndication[14]~46_combout\ : std_logic;
SIGNAL \clkForIndication[14]~47\ : std_logic;
SIGNAL \clkForIndication[15]~48_combout\ : std_logic;
SIGNAL \clkForIndication[15]~49\ : std_logic;
SIGNAL \clkForIndication[16]~50_combout\ : std_logic;
SIGNAL \clkForIndication[16]~51\ : std_logic;
SIGNAL \clkForIndication[17]~52_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \indicator[0]~1_combout\ : std_logic;
SIGNAL \indicator[1]~0_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~3_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Selector62~1_combout\ : std_logic;
SIGNAL \Selector62~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Selector60~1_combout\ : std_logic;
SIGNAL \Selector60~2_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~2_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \Selector52~2_combout\ : std_logic;
SIGNAL \Selector52~3_combout\ : std_logic;
SIGNAL \Selector52~4_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL timeForUnsuccessfulMessage : std_logic_vector(27 DOWNTO 0);
SIGNAL timeForNormalSignal : std_logic_vector(16 DOWNTO 0);
SIGNAL selectionDrink : std_logic_vector(1 DOWNTO 0);
SIGNAL money : std_logic_vector(5 DOWNTO 0);
SIGNAL led : std_logic_vector(3 DOWNTO 0);
SIGNAL indicator : std_logic_vector(1 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL clkForIndication : std_logic_vector(17 DOWNTO 0);
SIGNAL bufferForIndicator3 : std_logic_vector(6 DOWNTO 0);
SIGNAL bufferForIndicator2 : std_logic_vector(6 DOWNTO 0);
SIGNAL bufferForIndicator1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_LessThan10~3_combout\ : std_logic;
SIGNAL \ALT_INV_enableButton~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL ALT_INV_led : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_buttonWaiting <= buttonWaiting;
ww_buttonLeft <= buttonLeft;
ww_buttonRight <= buttonRight;
ww_buttonSelection <= buttonSelection;
led1 <= ww_led1;
led5 <= ww_led5;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan10~3_combout\ <= NOT \LessThan10~3_combout\;
\ALT_INV_enableButton~q\ <= NOT \enableButton~q\;
\ALT_INV_stateCoffeeMachine.Implementation~q\ <= NOT \stateCoffeeMachine.Implementation~q\;
\ALT_INV_stateCoffeeMachine.Waiting~q\ <= NOT \stateCoffeeMachine.Waiting~q\;
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\ALT_INV_Mux9~2_combout\ <= NOT \Mux9~2_combout\;
ALT_INV_led(2) <= NOT led(2);
ALT_INV_led(1) <= NOT led(1);
ALT_INV_led(0) <= NOT led(0);

-- Location: IOOBUF_X34_Y10_N9
\led1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led(0),
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led(1),
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led(2),
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_led(2),
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\led5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~1_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\led5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~1_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\led5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~1_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\led5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\led5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\led5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\led5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\en[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~2_combout\,
	devoe => ww_devoe,
	o => \en[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\en[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \en[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\en[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \en[2]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\en[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~2_combout\,
	devoe => ww_devoe,
	o => \en[3]~output_o\);

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

-- Location: IOIBUF_X34_Y12_N1
\buttonSelection~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonSelection,
	o => \buttonSelection~input_o\);

-- Location: LCCOMB_X23_Y13_N6
\buttonSelectionPrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonSelectionPrev~feeder_combout\ = \buttonSelection~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonSelection~input_o\,
	combout => \buttonSelectionPrev~feeder_combout\);

-- Location: IOIBUF_X34_Y12_N8
\buttonRight~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonRight,
	o => \buttonRight~input_o\);

-- Location: LCCOMB_X23_Y12_N2
\buttonRightPrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonRightPrev~feeder_combout\ = \buttonRight~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonRight~input_o\,
	combout => \buttonRightPrev~feeder_combout\);

-- Location: FF_X23_Y12_N3
buttonRightPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonRightPrev~feeder_combout\,
	ena => \ALT_INV_enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonRightPrev~q\);

-- Location: IOIBUF_X34_Y12_N15
\buttonLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonLeft,
	o => \buttonLeft~input_o\);

-- Location: LCCOMB_X23_Y12_N12
\buttonLeftPrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonLeftPrev~feeder_combout\ = \buttonLeft~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonLeft~input_o\,
	combout => \buttonLeftPrev~feeder_combout\);

-- Location: FF_X23_Y12_N13
buttonLeftPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonLeftPrev~feeder_combout\,
	ena => \ALT_INV_enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonLeftPrev~q\);

-- Location: LCCOMB_X23_Y12_N0
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\buttonRight~input_o\ & (((\buttonLeft~input_o\) # (!\buttonLeftPrev~q\)))) # (!\buttonRight~input_o\ & (!\buttonRightPrev~q\ & ((\buttonLeft~input_o\) # (!\buttonLeftPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonRight~input_o\,
	datab => \buttonRightPrev~q\,
	datac => \buttonLeft~input_o\,
	datad => \buttonLeftPrev~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\buttonSelection~input_o\ & (\Selector5~0_combout\ & (\stateCoffeeMachine.Payment~q\ & \buttonSelectionPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~input_o\,
	datab => \Selector5~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \buttonSelectionPrev~q\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X23_Y12_N10
\process_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~1_combout\ = (!\buttonLeft~input_o\ & \buttonLeftPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonLeft~input_o\,
	datad => \buttonLeftPrev~q\,
	combout => \process_4~1_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = money(0) $ (VCC)
-- \Add5~1\ = CARRY(money(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X22_Y13_N20
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add5~0_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	combout => \Add5~2_combout\);

-- Location: IOIBUF_X34_Y12_N22
\buttonWaiting~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonWaiting,
	o => \buttonWaiting~input_o\);

-- Location: FF_X23_Y13_N29
buttonWaitingPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonWaiting~input_o\,
	sload => VCC,
	ena => \ALT_INV_enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonWaitingPrev~q\);

-- Location: LCCOMB_X23_Y13_N28
\process_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = (\buttonSelection~input_o\ & ((\buttonWaiting~input_o\) # ((!\buttonWaitingPrev~q\)))) # (!\buttonSelection~input_o\ & (!\buttonSelectionPrev~q\ & ((\buttonWaiting~input_o\) # (!\buttonWaitingPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~input_o\,
	datab => \buttonWaiting~input_o\,
	datac => \buttonWaitingPrev~q\,
	datad => \buttonSelectionPrev~q\,
	combout => \process_4~0_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((!\Selector5~0_combout\) # (!\process_4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_4~0_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Add7~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~57_combout\ = (!\stateCoffeeMachine.Unsuccessful~q\ & (timeForUnsuccessfulMessage(27) & \stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(27),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Add7~57_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = timeForUnsuccessfulMessage(0) $ (VCC)
-- \Add7~2\ = CARRY(timeForUnsuccessfulMessage(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(0),
	datad => VCC,
	combout => \Add7~1_combout\,
	cout => \Add7~2\);

-- Location: LCCOMB_X17_Y13_N2
\Add7~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~86_combout\ = (\Add7~1_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~1_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~86_combout\);

-- Location: LCCOMB_X18_Y13_N30
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & ((!\LessThan9~6_combout\))) # (!\stateCoffeeMachine.Unsuccessful~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan9~6_combout\,
	combout => \Add7~56_combout\);

-- Location: FF_X17_Y13_N3
\timeForUnsuccessfulMessage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~86_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(0));

-- Location: LCCOMB_X17_Y13_N6
\Add7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~3_combout\ = (timeForUnsuccessfulMessage(1) & (!\Add7~2\)) # (!timeForUnsuccessfulMessage(1) & ((\Add7~2\) # (GND)))
-- \Add7~4\ = CARRY((!\Add7~2\) # (!timeForUnsuccessfulMessage(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(1),
	datad => VCC,
	cin => \Add7~2\,
	combout => \Add7~3_combout\,
	cout => \Add7~4\);

-- Location: LCCOMB_X17_Y13_N0
\Add7~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~85_combout\ = (\Add7~3_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~3_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~85_combout\);

-- Location: FF_X17_Y13_N1
\timeForUnsuccessfulMessage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~85_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(1));

-- Location: LCCOMB_X17_Y13_N8
\Add7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~5_combout\ = (timeForUnsuccessfulMessage(2) & (\Add7~4\ $ (GND))) # (!timeForUnsuccessfulMessage(2) & (!\Add7~4\ & VCC))
-- \Add7~6\ = CARRY((timeForUnsuccessfulMessage(2) & !\Add7~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(2),
	datad => VCC,
	cin => \Add7~4\,
	combout => \Add7~5_combout\,
	cout => \Add7~6\);

-- Location: LCCOMB_X16_Y13_N6
\Add7~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~84_combout\ = (\Add7~5_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~5_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~84_combout\);

-- Location: FF_X17_Y13_N27
\timeForUnsuccessfulMessage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add7~84_combout\,
	sload => VCC,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(2));

-- Location: LCCOMB_X17_Y13_N10
\Add7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~7_combout\ = (timeForUnsuccessfulMessage(3) & (!\Add7~6\)) # (!timeForUnsuccessfulMessage(3) & ((\Add7~6\) # (GND)))
-- \Add7~8\ = CARRY((!\Add7~6\) # (!timeForUnsuccessfulMessage(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(3),
	datad => VCC,
	cin => \Add7~6\,
	combout => \Add7~7_combout\,
	cout => \Add7~8\);

-- Location: LCCOMB_X16_Y13_N4
\Add7~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~83_combout\ = (\Add7~7_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~7_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~83_combout\);

-- Location: FF_X17_Y13_N7
\timeForUnsuccessfulMessage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add7~83_combout\,
	sload => VCC,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(3));

-- Location: LCCOMB_X17_Y13_N12
\Add7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~9_combout\ = (timeForUnsuccessfulMessage(4) & (\Add7~8\ $ (GND))) # (!timeForUnsuccessfulMessage(4) & (!\Add7~8\ & VCC))
-- \Add7~10\ = CARRY((timeForUnsuccessfulMessage(4) & !\Add7~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(4),
	datad => VCC,
	cin => \Add7~8\,
	combout => \Add7~9_combout\,
	cout => \Add7~10\);

-- Location: LCCOMB_X16_Y13_N26
\Add7~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~82_combout\ = (\Add7~9_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~9_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~82_combout\);

-- Location: FF_X17_Y13_N31
\timeForUnsuccessfulMessage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add7~82_combout\,
	sload => VCC,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(4));

-- Location: LCCOMB_X17_Y13_N14
\Add7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~11_combout\ = (timeForUnsuccessfulMessage(5) & (!\Add7~10\)) # (!timeForUnsuccessfulMessage(5) & ((\Add7~10\) # (GND)))
-- \Add7~12\ = CARRY((!\Add7~10\) # (!timeForUnsuccessfulMessage(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(5),
	datad => VCC,
	cin => \Add7~10\,
	combout => \Add7~11_combout\,
	cout => \Add7~12\);

-- Location: LCCOMB_X16_Y13_N16
\Add7~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~81_combout\ = (\Add7~11_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~11_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~81_combout\);

-- Location: FF_X17_Y13_N13
\timeForUnsuccessfulMessage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add7~81_combout\,
	sload => VCC,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(5));

-- Location: LCCOMB_X17_Y13_N16
\Add7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~13_combout\ = (timeForUnsuccessfulMessage(6) & (\Add7~12\ $ (GND))) # (!timeForUnsuccessfulMessage(6) & (!\Add7~12\ & VCC))
-- \Add7~14\ = CARRY((timeForUnsuccessfulMessage(6) & !\Add7~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(6),
	datad => VCC,
	cin => \Add7~12\,
	combout => \Add7~13_combout\,
	cout => \Add7~14\);

-- Location: LCCOMB_X18_Y13_N12
\Add7~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~80_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add7~13_combout\,
	combout => \Add7~80_combout\);

-- Location: FF_X18_Y13_N13
\timeForUnsuccessfulMessage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~80_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(6));

-- Location: LCCOMB_X17_Y13_N18
\Add7~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~15_combout\ = (timeForUnsuccessfulMessage(7) & (!\Add7~14\)) # (!timeForUnsuccessfulMessage(7) & ((\Add7~14\) # (GND)))
-- \Add7~16\ = CARRY((!\Add7~14\) # (!timeForUnsuccessfulMessage(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(7),
	datad => VCC,
	cin => \Add7~14\,
	combout => \Add7~15_combout\,
	cout => \Add7~16\);

-- Location: LCCOMB_X18_Y13_N2
\Add7~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~79_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~15_combout\,
	combout => \Add7~79_combout\);

-- Location: FF_X18_Y13_N3
\timeForUnsuccessfulMessage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~79_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(7));

-- Location: LCCOMB_X17_Y13_N20
\Add7~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~17_combout\ = (timeForUnsuccessfulMessage(8) & (\Add7~16\ $ (GND))) # (!timeForUnsuccessfulMessage(8) & (!\Add7~16\ & VCC))
-- \Add7~18\ = CARRY((timeForUnsuccessfulMessage(8) & !\Add7~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(8),
	datad => VCC,
	cin => \Add7~16\,
	combout => \Add7~17_combout\,
	cout => \Add7~18\);

-- Location: LCCOMB_X16_Y13_N14
\Add7~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~78_combout\ = (\Add7~17_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~17_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~78_combout\);

-- Location: FF_X16_Y13_N15
\timeForUnsuccessfulMessage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~78_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(8));

-- Location: LCCOMB_X17_Y13_N22
\Add7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~19_combout\ = (timeForUnsuccessfulMessage(9) & (!\Add7~18\)) # (!timeForUnsuccessfulMessage(9) & ((\Add7~18\) # (GND)))
-- \Add7~20\ = CARRY((!\Add7~18\) # (!timeForUnsuccessfulMessage(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(9),
	datad => VCC,
	cin => \Add7~18\,
	combout => \Add7~19_combout\,
	cout => \Add7~20\);

-- Location: LCCOMB_X18_Y13_N8
\Add7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~64_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~19_combout\,
	combout => \Add7~64_combout\);

-- Location: FF_X18_Y13_N9
\timeForUnsuccessfulMessage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~64_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(9));

-- Location: LCCOMB_X17_Y13_N24
\Add7~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~21_combout\ = (timeForUnsuccessfulMessage(10) & (\Add7~20\ $ (GND))) # (!timeForUnsuccessfulMessage(10) & (!\Add7~20\ & VCC))
-- \Add7~22\ = CARRY((timeForUnsuccessfulMessage(10) & !\Add7~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(10),
	datad => VCC,
	cin => \Add7~20\,
	combout => \Add7~21_combout\,
	cout => \Add7~22\);

-- Location: LCCOMB_X18_Y13_N18
\Add7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~65_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~21_combout\,
	combout => \Add7~65_combout\);

-- Location: FF_X18_Y13_N19
\timeForUnsuccessfulMessage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~65_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(10));

-- Location: LCCOMB_X17_Y13_N26
\Add7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~23_combout\ = (timeForUnsuccessfulMessage(11) & (!\Add7~22\)) # (!timeForUnsuccessfulMessage(11) & ((\Add7~22\) # (GND)))
-- \Add7~24\ = CARRY((!\Add7~22\) # (!timeForUnsuccessfulMessage(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(11),
	datad => VCC,
	cin => \Add7~22\,
	combout => \Add7~23_combout\,
	cout => \Add7~24\);

-- Location: LCCOMB_X18_Y13_N0
\Add7~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~66_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add7~23_combout\,
	combout => \Add7~66_combout\);

-- Location: FF_X18_Y13_N1
\timeForUnsuccessfulMessage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~66_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(11));

-- Location: LCCOMB_X17_Y13_N28
\Add7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~25_combout\ = (timeForUnsuccessfulMessage(12) & (\Add7~24\ $ (GND))) # (!timeForUnsuccessfulMessage(12) & (!\Add7~24\ & VCC))
-- \Add7~26\ = CARRY((timeForUnsuccessfulMessage(12) & !\Add7~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(12),
	datad => VCC,
	cin => \Add7~24\,
	combout => \Add7~25_combout\,
	cout => \Add7~26\);

-- Location: LCCOMB_X18_Y13_N10
\Add7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~67_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~25_combout\,
	combout => \Add7~67_combout\);

-- Location: FF_X18_Y13_N11
\timeForUnsuccessfulMessage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~67_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(12));

-- Location: LCCOMB_X17_Y13_N30
\Add7~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~27_combout\ = (timeForUnsuccessfulMessage(13) & (!\Add7~26\)) # (!timeForUnsuccessfulMessage(13) & ((\Add7~26\) # (GND)))
-- \Add7~28\ = CARRY((!\Add7~26\) # (!timeForUnsuccessfulMessage(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(13),
	datad => VCC,
	cin => \Add7~26\,
	combout => \Add7~27_combout\,
	cout => \Add7~28\);

-- Location: LCCOMB_X18_Y13_N4
\Add7~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~68_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~27_combout\,
	combout => \Add7~68_combout\);

-- Location: FF_X18_Y13_N5
\timeForUnsuccessfulMessage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~68_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(13));

-- Location: LCCOMB_X17_Y12_N0
\Add7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~29_combout\ = (timeForUnsuccessfulMessage(14) & (\Add7~28\ $ (GND))) # (!timeForUnsuccessfulMessage(14) & (!\Add7~28\ & VCC))
-- \Add7~30\ = CARRY((timeForUnsuccessfulMessage(14) & !\Add7~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(14),
	datad => VCC,
	cin => \Add7~28\,
	combout => \Add7~29_combout\,
	cout => \Add7~30\);

-- Location: LCCOMB_X18_Y13_N16
\Add7~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~69_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add7~29_combout\,
	combout => \Add7~69_combout\);

-- Location: FF_X18_Y13_N17
\timeForUnsuccessfulMessage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~69_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(14));

-- Location: LCCOMB_X17_Y12_N2
\Add7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~31_combout\ = (timeForUnsuccessfulMessage(15) & (!\Add7~30\)) # (!timeForUnsuccessfulMessage(15) & ((\Add7~30\) # (GND)))
-- \Add7~32\ = CARRY((!\Add7~30\) # (!timeForUnsuccessfulMessage(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(15),
	datad => VCC,
	cin => \Add7~30\,
	combout => \Add7~31_combout\,
	cout => \Add7~32\);

-- Location: LCCOMB_X18_Y13_N14
\Add7~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~70_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~31_combout\,
	combout => \Add7~70_combout\);

-- Location: FF_X18_Y13_N15
\timeForUnsuccessfulMessage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~70_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(15));

-- Location: LCCOMB_X17_Y12_N4
\Add7~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~33_combout\ = (timeForUnsuccessfulMessage(16) & (\Add7~32\ $ (GND))) # (!timeForUnsuccessfulMessage(16) & (!\Add7~32\ & VCC))
-- \Add7~34\ = CARRY((timeForUnsuccessfulMessage(16) & !\Add7~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(16),
	datad => VCC,
	cin => \Add7~32\,
	combout => \Add7~33_combout\,
	cout => \Add7~34\);

-- Location: LCCOMB_X18_Y13_N20
\Add7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~71_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~33_combout\,
	combout => \Add7~71_combout\);

-- Location: FF_X18_Y13_N21
\timeForUnsuccessfulMessage[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~71_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(16));

-- Location: LCCOMB_X17_Y12_N6
\Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~35_combout\ = (timeForUnsuccessfulMessage(17) & (!\Add7~34\)) # (!timeForUnsuccessfulMessage(17) & ((\Add7~34\) # (GND)))
-- \Add7~36\ = CARRY((!\Add7~34\) # (!timeForUnsuccessfulMessage(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(17),
	datad => VCC,
	cin => \Add7~34\,
	combout => \Add7~35_combout\,
	cout => \Add7~36\);

-- Location: LCCOMB_X18_Y12_N2
\Add7~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~63_combout\ = (\Add7~35_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~35_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~63_combout\);

-- Location: FF_X18_Y12_N3
\timeForUnsuccessfulMessage[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~63_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(17));

-- Location: LCCOMB_X17_Y12_N8
\Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~37_combout\ = (timeForUnsuccessfulMessage(18) & (\Add7~36\ $ (GND))) # (!timeForUnsuccessfulMessage(18) & (!\Add7~36\ & VCC))
-- \Add7~38\ = CARRY((timeForUnsuccessfulMessage(18) & !\Add7~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(18),
	datad => VCC,
	cin => \Add7~36\,
	combout => \Add7~37_combout\,
	cout => \Add7~38\);

-- Location: LCCOMB_X17_Y12_N30
\Add7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~61_combout\ = (\Add7~37_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~37_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~61_combout\);

-- Location: FF_X17_Y12_N31
\timeForUnsuccessfulMessage[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~61_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(18));

-- Location: LCCOMB_X17_Y12_N10
\Add7~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~39_combout\ = (timeForUnsuccessfulMessage(19) & (!\Add7~38\)) # (!timeForUnsuccessfulMessage(19) & ((\Add7~38\) # (GND)))
-- \Add7~40\ = CARRY((!\Add7~38\) # (!timeForUnsuccessfulMessage(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(19),
	datad => VCC,
	cin => \Add7~38\,
	combout => \Add7~39_combout\,
	cout => \Add7~40\);

-- Location: LCCOMB_X16_Y13_N10
\Add7~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~76_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~39_combout\,
	combout => \Add7~76_combout\);

-- Location: FF_X16_Y13_N11
\timeForUnsuccessfulMessage[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~76_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(19));

-- Location: LCCOMB_X17_Y12_N12
\Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~41_combout\ = (timeForUnsuccessfulMessage(20) & (\Add7~40\ $ (GND))) # (!timeForUnsuccessfulMessage(20) & (!\Add7~40\ & VCC))
-- \Add7~42\ = CARRY((timeForUnsuccessfulMessage(20) & !\Add7~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(20),
	datad => VCC,
	cin => \Add7~40\,
	combout => \Add7~41_combout\,
	cout => \Add7~42\);

-- Location: LCCOMB_X16_Y13_N24
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = (\Add7~41_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~41_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~62_combout\);

-- Location: FF_X16_Y13_N25
\timeForUnsuccessfulMessage[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~62_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(20));

-- Location: LCCOMB_X17_Y12_N14
\Add7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~43_combout\ = (timeForUnsuccessfulMessage(21) & (!\Add7~42\)) # (!timeForUnsuccessfulMessage(21) & ((\Add7~42\) # (GND)))
-- \Add7~44\ = CARRY((!\Add7~42\) # (!timeForUnsuccessfulMessage(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(21),
	datad => VCC,
	cin => \Add7~42\,
	combout => \Add7~43_combout\,
	cout => \Add7~44\);

-- Location: LCCOMB_X16_Y13_N30
\Add7~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~72_combout\ = (\Add7~43_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~43_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~72_combout\);

-- Location: FF_X16_Y13_N31
\timeForUnsuccessfulMessage[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~72_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(21));

-- Location: LCCOMB_X17_Y12_N16
\Add7~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~45_combout\ = (timeForUnsuccessfulMessage(22) & (\Add7~44\ $ (GND))) # (!timeForUnsuccessfulMessage(22) & (!\Add7~44\ & VCC))
-- \Add7~46\ = CARRY((timeForUnsuccessfulMessage(22) & !\Add7~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(22),
	datad => VCC,
	cin => \Add7~44\,
	combout => \Add7~45_combout\,
	cout => \Add7~46\);

-- Location: LCCOMB_X16_Y13_N12
\Add7~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~75_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~45_combout\,
	combout => \Add7~75_combout\);

-- Location: FF_X16_Y13_N13
\timeForUnsuccessfulMessage[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~75_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(22));

-- Location: LCCOMB_X17_Y12_N18
\Add7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~47_combout\ = (timeForUnsuccessfulMessage(23) & (!\Add7~46\)) # (!timeForUnsuccessfulMessage(23) & ((\Add7~46\) # (GND)))
-- \Add7~48\ = CARRY((!\Add7~46\) # (!timeForUnsuccessfulMessage(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(23),
	datad => VCC,
	cin => \Add7~46\,
	combout => \Add7~47_combout\,
	cout => \Add7~48\);

-- Location: LCCOMB_X16_Y13_N8
\Add7~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~77_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~47_combout\,
	combout => \Add7~77_combout\);

-- Location: FF_X16_Y13_N9
\timeForUnsuccessfulMessage[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~77_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(23));

-- Location: LCCOMB_X17_Y12_N20
\Add7~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~49_combout\ = (timeForUnsuccessfulMessage(24) & (\Add7~48\ $ (GND))) # (!timeForUnsuccessfulMessage(24) & (!\Add7~48\ & VCC))
-- \Add7~50\ = CARRY((timeForUnsuccessfulMessage(24) & !\Add7~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(24),
	datad => VCC,
	cin => \Add7~48\,
	combout => \Add7~49_combout\,
	cout => \Add7~50\);

-- Location: LCCOMB_X16_Y13_N28
\Add7~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~73_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~49_combout\,
	combout => \Add7~73_combout\);

-- Location: FF_X16_Y13_N29
\timeForUnsuccessfulMessage[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~73_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(24));

-- Location: LCCOMB_X17_Y12_N22
\Add7~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~51_combout\ = (timeForUnsuccessfulMessage(25) & (!\Add7~50\)) # (!timeForUnsuccessfulMessage(25) & ((\Add7~50\) # (GND)))
-- \Add7~52\ = CARRY((!\Add7~50\) # (!timeForUnsuccessfulMessage(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(25),
	datad => VCC,
	cin => \Add7~50\,
	combout => \Add7~51_combout\,
	cout => \Add7~52\);

-- Location: LCCOMB_X16_Y13_N2
\Add7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~74_combout\ = (\Add7~51_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~51_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add7~74_combout\);

-- Location: FF_X16_Y13_N3
\timeForUnsuccessfulMessage[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~74_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(25));

-- Location: LCCOMB_X17_Y12_N24
\Add7~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~53_combout\ = (timeForUnsuccessfulMessage(26) & (\Add7~52\ $ (GND))) # (!timeForUnsuccessfulMessage(26) & (!\Add7~52\ & VCC))
-- \Add7~54\ = CARRY((timeForUnsuccessfulMessage(26) & !\Add7~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(26),
	datad => VCC,
	cin => \Add7~52\,
	combout => \Add7~53_combout\,
	cout => \Add7~54\);

-- Location: LCCOMB_X18_Y12_N0
\Add7~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~55_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add7~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add7~53_combout\,
	combout => \Add7~55_combout\);

-- Location: FF_X18_Y12_N1
\timeForUnsuccessfulMessage[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~55_combout\,
	ena => \Add7~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(26));

-- Location: LCCOMB_X17_Y12_N26
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = \Add7~54\ $ (timeForUnsuccessfulMessage(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeForUnsuccessfulMessage(27),
	cin => \Add7~54\,
	combout => \Add7~58_combout\);

-- Location: LCCOMB_X17_Y12_N28
\Add7~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~60_combout\ = (\Add7~57_combout\) # ((\stateCoffeeMachine.Unsuccessful~q\ & ((\Add7~58_combout\) # (\LessThan9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~57_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add7~58_combout\,
	datad => \LessThan9~6_combout\,
	combout => \Add7~60_combout\);

-- Location: FF_X17_Y12_N29
\timeForUnsuccessfulMessage[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(27));

-- Location: LCCOMB_X18_Y13_N22
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (!timeForUnsuccessfulMessage(12) & (!timeForUnsuccessfulMessage(13) & !timeForUnsuccessfulMessage(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(12),
	datac => timeForUnsuccessfulMessage(13),
	datad => timeForUnsuccessfulMessage(11),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X18_Y13_N6
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (timeForUnsuccessfulMessage(14) & (timeForUnsuccessfulMessage(15) & timeForUnsuccessfulMessage(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(14),
	datac => timeForUnsuccessfulMessage(15),
	datad => timeForUnsuccessfulMessage(16),
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X18_Y13_N24
\LessThan9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (\LessThan9~1_combout\ & ((timeForUnsuccessfulMessage(10)) # ((timeForUnsuccessfulMessage(9)) # (!\LessThan9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(10),
	datab => timeForUnsuccessfulMessage(9),
	datac => \LessThan9~0_combout\,
	datad => \LessThan9~1_combout\,
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X18_Y13_N26
\LessThan9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (timeForUnsuccessfulMessage(20)) # ((timeForUnsuccessfulMessage(18)) # ((timeForUnsuccessfulMessage(17) & \LessThan9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(17),
	datab => timeForUnsuccessfulMessage(20),
	datac => timeForUnsuccessfulMessage(18),
	datad => \LessThan9~2_combout\,
	combout => \LessThan9~3_combout\);

-- Location: LCCOMB_X16_Y13_N18
\LessThan9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~4_combout\ = (timeForUnsuccessfulMessage(22) & (timeForUnsuccessfulMessage(23) & ((timeForUnsuccessfulMessage(20)) # (timeForUnsuccessfulMessage(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(22),
	datab => timeForUnsuccessfulMessage(20),
	datac => timeForUnsuccessfulMessage(23),
	datad => timeForUnsuccessfulMessage(19),
	combout => \LessThan9~4_combout\);

-- Location: LCCOMB_X16_Y13_N20
\LessThan9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~5_combout\ = (timeForUnsuccessfulMessage(25) & (timeForUnsuccessfulMessage(24) & (timeForUnsuccessfulMessage(21) & \LessThan9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(25),
	datab => timeForUnsuccessfulMessage(24),
	datac => timeForUnsuccessfulMessage(21),
	datad => \LessThan9~4_combout\,
	combout => \LessThan9~5_combout\);

-- Location: LCCOMB_X18_Y13_N28
\LessThan9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~6_combout\ = (timeForUnsuccessfulMessage(27) & ((timeForUnsuccessfulMessage(26)) # ((\LessThan9~3_combout\ & \LessThan9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(27),
	datab => timeForUnsuccessfulMessage(26),
	datac => \LessThan9~3_combout\,
	datad => \LessThan9~5_combout\,
	combout => \LessThan9~6_combout\);

-- Location: LCCOMB_X19_Y13_N30
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector5~1_combout\ & (\Mux11~5_combout\ & ((!\stateCoffeeMachine.Unsuccessful~q\) # (!\LessThan9~6_combout\)))) # (!\Selector5~1_combout\ & (!\LessThan9~6_combout\ & (\stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~6_combout\,
	datab => \Selector5~1_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Mux11~5_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X19_Y13_N31
\stateCoffeeMachine.Unsuccessful\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Unsuccessful~q\);

-- Location: LCCOMB_X23_Y13_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \LessThan9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan9~6_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X23_Y13_N14
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector2~0_combout\ & ((\Selector2~2_combout\ & (\Selector2~1_combout\)) # (!\Selector2~2_combout\ & ((\stateCoffeeMachine.Selection~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X23_Y13_N15
\stateCoffeeMachine.Selection\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Selection~q\);

-- Location: LCCOMB_X23_Y13_N30
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\stateCoffeeMachine.Selection~q\ & !\stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector5~0_combout\ & (!\process_4~0_combout\ & ((!\stateCoffeeMachine.Waiting~q\) # (!\Selector1~3_combout\)))) # (!\Selector5~0_combout\ & (((!\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \Selector5~0_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \process_4~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X23_Y13_N22
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ((!\Selector2~1_combout\ & ((\buttonSelection~input_o\) # (!\buttonSelectionPrev~q\)))) # (!\Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \buttonSelection~input_o\,
	datac => \Selector2~2_combout\,
	datad => \buttonSelectionPrev~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X23_Y13_N8
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (!\Selector2~0_combout\ & (((!\Selector2~2_combout\ & \stateCoffeeMachine.Waiting~q\)) # (!\Selector2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector2~2_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: FF_X23_Y13_N9
\stateCoffeeMachine.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Waiting~q\);

-- Location: LCCOMB_X23_Y12_N4
\process_4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~2_combout\ = (!\buttonRight~input_o\ & \buttonRightPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonRight~input_o\,
	datad => \buttonRightPrev~q\,
	combout => \process_4~2_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = ((\process_4~1_combout\ $ (money(4) $ (!\Add5~14\)))) # (GND)
-- \Add5~17\ = CARRY((\process_4~1_combout\ & ((money(4)) # (!\Add5~14\))) # (!\process_4~1_combout\ & (money(4) & !\Add5~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(4),
	datad => VCC,
	cin => \Add5~14\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X22_Y13_N16
\Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = money(5) $ (\Add5~17\ $ (\process_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(5),
	datad => \process_4~1_combout\,
	cin => \Add5~17\,
	combout => \Add5~19_combout\);

-- Location: LCCOMB_X22_Y13_N2
\Add5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~21_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~19_combout\,
	combout => \Add5~21_combout\);

-- Location: FF_X22_Y13_N3
\money[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~21_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(5));

-- Location: LCCOMB_X21_Y13_N10
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (money(5) & money(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datad => money(4),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X21_Y13_N6
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (\LessThan8~0_combout\ & ((money(3)) # ((money(1)) # (money(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(1),
	datac => money(2),
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X22_Y13_N4
\Add5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (money(3)) # ((money(2)) # ((money(1)) # (money(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(2),
	datac => money(1),
	datad => money(0),
	combout => \Add5~3_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\process_4~1_combout\ & ((money(5)) # ((money(4)) # (\Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => \Add5~3_combout\,
	datad => \process_4~1_combout\,
	combout => \Add5~4_combout\);

-- Location: LCCOMB_X22_Y13_N24
\Add5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (\Add5~4_combout\) # ((\process_4~2_combout\ & (!\LessThan8~1_combout\ & !\process_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~2_combout\,
	datab => \LessThan8~1_combout\,
	datac => \Add5~4_combout\,
	datad => \process_4~1_combout\,
	combout => \Add5~5_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Add5~5_combout\))) # (!\stateCoffeeMachine.Payment~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Add5~5_combout\,
	combout => \Add5~6_combout\);

-- Location: FF_X22_Y13_N21
\money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~2_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(0));

-- Location: LCCOMB_X22_Y13_N8
\Add5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (\process_4~1_combout\ & ((money(1) & (\Add5~1\ & VCC)) # (!money(1) & (!\Add5~1\)))) # (!\process_4~1_combout\ & ((money(1) & (!\Add5~1\)) # (!money(1) & ((\Add5~1\) # (GND)))))
-- \Add5~8\ = CARRY((\process_4~1_combout\ & (!money(1) & !\Add5~1\)) # (!\process_4~1_combout\ & ((!\Add5~1\) # (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~7_combout\,
	cout => \Add5~8\);

-- Location: LCCOMB_X22_Y13_N22
\Add5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~7_combout\,
	combout => \Add5~9_combout\);

-- Location: FF_X22_Y13_N23
\money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~9_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(1));

-- Location: LCCOMB_X22_Y13_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = ((\process_4~1_combout\ $ (money(2) $ (\Add5~8\)))) # (GND)
-- \Add5~11\ = CARRY((\process_4~1_combout\ & (money(2) & !\Add5~8\)) # (!\process_4~1_combout\ & ((money(2)) # (!\Add5~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(2),
	datad => VCC,
	cin => \Add5~8\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X22_Y13_N0
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~10_combout\,
	combout => \Add5~12_combout\);

-- Location: FF_X22_Y13_N1
\money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(2));

-- Location: LCCOMB_X22_Y13_N12
\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\process_4~1_combout\ & ((money(3) & (\Add5~11\ & VCC)) # (!money(3) & (!\Add5~11\)))) # (!\process_4~1_combout\ & ((money(3) & (!\Add5~11\)) # (!money(3) & ((\Add5~11\) # (GND)))))
-- \Add5~14\ = CARRY((\process_4~1_combout\ & (!money(3) & !\Add5~11\)) # (!\process_4~1_combout\ & ((!\Add5~11\) # (!money(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(3),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~13_combout\,
	cout => \Add5~14\);

-- Location: LCCOMB_X22_Y13_N30
\Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~13_combout\,
	combout => \Add5~15_combout\);

-- Location: FF_X22_Y13_N31
\money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~15_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(3));

-- Location: LCCOMB_X22_Y13_N28
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~16_combout\,
	combout => \Add5~18_combout\);

-- Location: FF_X22_Y13_N29
\money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~18_combout\,
	ena => \Add5~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(4));

-- Location: LCCOMB_X19_Y13_N8
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\stateCoffeeMachine.Selection~q\ & ((\Selector5~0_combout\ $ (!selectionDrink(0))))) # (!\stateCoffeeMachine.Selection~q\ & (\stateCoffeeMachine.Waiting~q\ & ((selectionDrink(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \Selector5~0_combout\,
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X19_Y13_N9
\selectionDrink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selectionDrink(0));

-- Location: LCCOMB_X19_Y13_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (money(1) & ((money(0)) # (!money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(5),
	datac => money(1),
	datad => money(0),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (money(2)) # ((!selectionDrink(0) & \Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(0),
	datac => money(2),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X19_Y13_N12
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (money(5)) # ((money(4) & ((money(3)) # (\Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => money(5),
	datac => money(3),
	datad => \Mux11~1_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = selectionDrink(1) $ (((selectionDrink(0) & (!\process_4~1_combout\ & \process_4~2_combout\)) # (!selectionDrink(0) & (\process_4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \process_4~1_combout\,
	datad => \process_4~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\stateCoffeeMachine.Selection~q\ & (((\Selector8~0_combout\)))) # (!\stateCoffeeMachine.Selection~q\ & (\stateCoffeeMachine.Waiting~q\ & (selectionDrink(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => selectionDrink(1),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X22_Y14_N21
\selectionDrink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selectionDrink(1));

-- Location: LCCOMB_X19_Y13_N18
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (money(3) & ((money(5)) # ((!money(4) & \Mux11~1_combout\)))) # (!money(3) & ((\Mux11~1_combout\ & (money(5))) # (!\Mux11~1_combout\ & ((money(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(5),
	datac => money(4),
	datad => \Mux11~1_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X19_Y13_N20
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (selectionDrink(0) & (\LessThan8~1_combout\)) # (!selectionDrink(0) & ((\Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(0),
	datac => \LessThan8~1_combout\,
	datad => \Mux11~3_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X19_Y13_N6
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~2_combout\ & (((selectionDrink(1) & !\Mux11~4_combout\)))) # (!\Mux11~2_combout\ & ((selectionDrink(0) $ (selectionDrink(1))) # (!\Mux11~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => selectionDrink(0),
	datac => selectionDrink(1),
	datad => \Mux11~4_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X19_Y13_N0
\stateCoffeeMachine.Implementation~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stateCoffeeMachine.Implementation~0_combout\ = (\Selector5~1_combout\ & ((!\Mux11~5_combout\))) # (!\Selector5~1_combout\ & (\stateCoffeeMachine.Implementation~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector5~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Mux11~5_combout\,
	combout => \stateCoffeeMachine.Implementation~0_combout\);

-- Location: FF_X19_Y13_N1
\stateCoffeeMachine.Implementation\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \stateCoffeeMachine.Implementation~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Implementation~q\);

-- Location: LCCOMB_X19_Y13_N2
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (!\stateCoffeeMachine.Unsuccessful~q\ & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\enableButton~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~1_combout\ = (\Selector2~1_combout\) # ((\enableButton~q\ & ((\stateCoffeeMachine.Implementation~q\) # (!\Add7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \Add7~0_combout\,
	datac => \enableButton~q\,
	datad => \Selector2~1_combout\,
	combout => \enableButton~1_combout\);

-- Location: LCCOMB_X26_Y14_N16
\timeForNormalSignal[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[0]~17_combout\ = timeForNormalSignal(0) $ (VCC)
-- \timeForNormalSignal[0]~18\ = CARRY(timeForNormalSignal(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(0),
	datad => VCC,
	combout => \timeForNormalSignal[0]~17_combout\,
	cout => \timeForNormalSignal[0]~18\);

-- Location: FF_X26_Y14_N17
\timeForNormalSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[0]~17_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(0));

-- Location: LCCOMB_X26_Y14_N18
\timeForNormalSignal[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[1]~19_combout\ = (timeForNormalSignal(1) & (!\timeForNormalSignal[0]~18\)) # (!timeForNormalSignal(1) & ((\timeForNormalSignal[0]~18\) # (GND)))
-- \timeForNormalSignal[1]~20\ = CARRY((!\timeForNormalSignal[0]~18\) # (!timeForNormalSignal(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(1),
	datad => VCC,
	cin => \timeForNormalSignal[0]~18\,
	combout => \timeForNormalSignal[1]~19_combout\,
	cout => \timeForNormalSignal[1]~20\);

-- Location: FF_X26_Y14_N19
\timeForNormalSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[1]~19_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(1));

-- Location: LCCOMB_X26_Y14_N20
\timeForNormalSignal[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[2]~21_combout\ = (timeForNormalSignal(2) & (\timeForNormalSignal[1]~20\ $ (GND))) # (!timeForNormalSignal(2) & (!\timeForNormalSignal[1]~20\ & VCC))
-- \timeForNormalSignal[2]~22\ = CARRY((timeForNormalSignal(2) & !\timeForNormalSignal[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(2),
	datad => VCC,
	cin => \timeForNormalSignal[1]~20\,
	combout => \timeForNormalSignal[2]~21_combout\,
	cout => \timeForNormalSignal[2]~22\);

-- Location: FF_X26_Y14_N21
\timeForNormalSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[2]~21_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(2));

-- Location: LCCOMB_X26_Y14_N22
\timeForNormalSignal[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[3]~23_combout\ = (timeForNormalSignal(3) & (!\timeForNormalSignal[2]~22\)) # (!timeForNormalSignal(3) & ((\timeForNormalSignal[2]~22\) # (GND)))
-- \timeForNormalSignal[3]~24\ = CARRY((!\timeForNormalSignal[2]~22\) # (!timeForNormalSignal(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(3),
	datad => VCC,
	cin => \timeForNormalSignal[2]~22\,
	combout => \timeForNormalSignal[3]~23_combout\,
	cout => \timeForNormalSignal[3]~24\);

-- Location: FF_X26_Y14_N23
\timeForNormalSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[3]~23_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(3));

-- Location: LCCOMB_X26_Y14_N24
\timeForNormalSignal[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[4]~25_combout\ = (timeForNormalSignal(4) & (\timeForNormalSignal[3]~24\ $ (GND))) # (!timeForNormalSignal(4) & (!\timeForNormalSignal[3]~24\ & VCC))
-- \timeForNormalSignal[4]~26\ = CARRY((timeForNormalSignal(4) & !\timeForNormalSignal[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(4),
	datad => VCC,
	cin => \timeForNormalSignal[3]~24\,
	combout => \timeForNormalSignal[4]~25_combout\,
	cout => \timeForNormalSignal[4]~26\);

-- Location: FF_X26_Y14_N25
\timeForNormalSignal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[4]~25_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(4));

-- Location: LCCOMB_X26_Y14_N26
\timeForNormalSignal[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[5]~27_combout\ = (timeForNormalSignal(5) & (!\timeForNormalSignal[4]~26\)) # (!timeForNormalSignal(5) & ((\timeForNormalSignal[4]~26\) # (GND)))
-- \timeForNormalSignal[5]~28\ = CARRY((!\timeForNormalSignal[4]~26\) # (!timeForNormalSignal(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(5),
	datad => VCC,
	cin => \timeForNormalSignal[4]~26\,
	combout => \timeForNormalSignal[5]~27_combout\,
	cout => \timeForNormalSignal[5]~28\);

-- Location: FF_X26_Y14_N27
\timeForNormalSignal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[5]~27_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(5));

-- Location: LCCOMB_X26_Y14_N28
\timeForNormalSignal[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[6]~29_combout\ = (timeForNormalSignal(6) & (\timeForNormalSignal[5]~28\ $ (GND))) # (!timeForNormalSignal(6) & (!\timeForNormalSignal[5]~28\ & VCC))
-- \timeForNormalSignal[6]~30\ = CARRY((timeForNormalSignal(6) & !\timeForNormalSignal[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(6),
	datad => VCC,
	cin => \timeForNormalSignal[5]~28\,
	combout => \timeForNormalSignal[6]~29_combout\,
	cout => \timeForNormalSignal[6]~30\);

-- Location: FF_X26_Y14_N29
\timeForNormalSignal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[6]~29_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(6));

-- Location: LCCOMB_X26_Y14_N30
\timeForNormalSignal[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[7]~31_combout\ = (timeForNormalSignal(7) & (!\timeForNormalSignal[6]~30\)) # (!timeForNormalSignal(7) & ((\timeForNormalSignal[6]~30\) # (GND)))
-- \timeForNormalSignal[7]~32\ = CARRY((!\timeForNormalSignal[6]~30\) # (!timeForNormalSignal(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(7),
	datad => VCC,
	cin => \timeForNormalSignal[6]~30\,
	combout => \timeForNormalSignal[7]~31_combout\,
	cout => \timeForNormalSignal[7]~32\);

-- Location: FF_X26_Y14_N31
\timeForNormalSignal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[7]~31_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(7));

-- Location: LCCOMB_X26_Y13_N0
\timeForNormalSignal[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[8]~33_combout\ = (timeForNormalSignal(8) & (\timeForNormalSignal[7]~32\ $ (GND))) # (!timeForNormalSignal(8) & (!\timeForNormalSignal[7]~32\ & VCC))
-- \timeForNormalSignal[8]~34\ = CARRY((timeForNormalSignal(8) & !\timeForNormalSignal[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(8),
	datad => VCC,
	cin => \timeForNormalSignal[7]~32\,
	combout => \timeForNormalSignal[8]~33_combout\,
	cout => \timeForNormalSignal[8]~34\);

-- Location: FF_X26_Y13_N1
\timeForNormalSignal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[8]~33_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(8));

-- Location: LCCOMB_X26_Y13_N2
\timeForNormalSignal[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[9]~35_combout\ = (timeForNormalSignal(9) & (!\timeForNormalSignal[8]~34\)) # (!timeForNormalSignal(9) & ((\timeForNormalSignal[8]~34\) # (GND)))
-- \timeForNormalSignal[9]~36\ = CARRY((!\timeForNormalSignal[8]~34\) # (!timeForNormalSignal(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(9),
	datad => VCC,
	cin => \timeForNormalSignal[8]~34\,
	combout => \timeForNormalSignal[9]~35_combout\,
	cout => \timeForNormalSignal[9]~36\);

-- Location: FF_X26_Y13_N3
\timeForNormalSignal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[9]~35_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(9));

-- Location: LCCOMB_X26_Y13_N4
\timeForNormalSignal[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[10]~37_combout\ = (timeForNormalSignal(10) & (\timeForNormalSignal[9]~36\ $ (GND))) # (!timeForNormalSignal(10) & (!\timeForNormalSignal[9]~36\ & VCC))
-- \timeForNormalSignal[10]~38\ = CARRY((timeForNormalSignal(10) & !\timeForNormalSignal[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(10),
	datad => VCC,
	cin => \timeForNormalSignal[9]~36\,
	combout => \timeForNormalSignal[10]~37_combout\,
	cout => \timeForNormalSignal[10]~38\);

-- Location: FF_X26_Y13_N5
\timeForNormalSignal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[10]~37_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(10));

-- Location: LCCOMB_X26_Y13_N6
\timeForNormalSignal[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[11]~39_combout\ = (timeForNormalSignal(11) & (!\timeForNormalSignal[10]~38\)) # (!timeForNormalSignal(11) & ((\timeForNormalSignal[10]~38\) # (GND)))
-- \timeForNormalSignal[11]~40\ = CARRY((!\timeForNormalSignal[10]~38\) # (!timeForNormalSignal(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(11),
	datad => VCC,
	cin => \timeForNormalSignal[10]~38\,
	combout => \timeForNormalSignal[11]~39_combout\,
	cout => \timeForNormalSignal[11]~40\);

-- Location: FF_X26_Y13_N7
\timeForNormalSignal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[11]~39_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(11));

-- Location: LCCOMB_X26_Y13_N8
\timeForNormalSignal[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[12]~41_combout\ = (timeForNormalSignal(12) & (\timeForNormalSignal[11]~40\ $ (GND))) # (!timeForNormalSignal(12) & (!\timeForNormalSignal[11]~40\ & VCC))
-- \timeForNormalSignal[12]~42\ = CARRY((timeForNormalSignal(12) & !\timeForNormalSignal[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(12),
	datad => VCC,
	cin => \timeForNormalSignal[11]~40\,
	combout => \timeForNormalSignal[12]~41_combout\,
	cout => \timeForNormalSignal[12]~42\);

-- Location: FF_X26_Y13_N9
\timeForNormalSignal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[12]~41_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(12));

-- Location: LCCOMB_X26_Y13_N10
\timeForNormalSignal[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[13]~43_combout\ = (timeForNormalSignal(13) & (!\timeForNormalSignal[12]~42\)) # (!timeForNormalSignal(13) & ((\timeForNormalSignal[12]~42\) # (GND)))
-- \timeForNormalSignal[13]~44\ = CARRY((!\timeForNormalSignal[12]~42\) # (!timeForNormalSignal(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(13),
	datad => VCC,
	cin => \timeForNormalSignal[12]~42\,
	combout => \timeForNormalSignal[13]~43_combout\,
	cout => \timeForNormalSignal[13]~44\);

-- Location: FF_X26_Y13_N11
\timeForNormalSignal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[13]~43_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(13));

-- Location: LCCOMB_X26_Y13_N12
\timeForNormalSignal[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[14]~45_combout\ = (timeForNormalSignal(14) & (\timeForNormalSignal[13]~44\ $ (GND))) # (!timeForNormalSignal(14) & (!\timeForNormalSignal[13]~44\ & VCC))
-- \timeForNormalSignal[14]~46\ = CARRY((timeForNormalSignal(14) & !\timeForNormalSignal[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(14),
	datad => VCC,
	cin => \timeForNormalSignal[13]~44\,
	combout => \timeForNormalSignal[14]~45_combout\,
	cout => \timeForNormalSignal[14]~46\);

-- Location: FF_X26_Y13_N13
\timeForNormalSignal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[14]~45_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(14));

-- Location: LCCOMB_X26_Y13_N14
\timeForNormalSignal[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[15]~47_combout\ = (timeForNormalSignal(15) & (!\timeForNormalSignal[14]~46\)) # (!timeForNormalSignal(15) & ((\timeForNormalSignal[14]~46\) # (GND)))
-- \timeForNormalSignal[15]~48\ = CARRY((!\timeForNormalSignal[14]~46\) # (!timeForNormalSignal(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(15),
	datad => VCC,
	cin => \timeForNormalSignal[14]~46\,
	combout => \timeForNormalSignal[15]~47_combout\,
	cout => \timeForNormalSignal[15]~48\);

-- Location: FF_X26_Y13_N15
\timeForNormalSignal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[15]~47_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(15));

-- Location: LCCOMB_X26_Y14_N12
\LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!timeForNormalSignal(8) & (((!timeForNormalSignal(6) & !timeForNormalSignal(5))) # (!timeForNormalSignal(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(7),
	datab => timeForNormalSignal(6),
	datac => timeForNormalSignal(5),
	datad => timeForNormalSignal(8),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X26_Y13_N28
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!timeForNormalSignal(14) & (!timeForNormalSignal(13) & (!timeForNormalSignal(12) & !timeForNormalSignal(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(14),
	datab => timeForNormalSignal(13),
	datac => timeForNormalSignal(12),
	datad => timeForNormalSignal(11),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X26_Y13_N22
\LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = (\LessThan10~0_combout\ & ((\LessThan10~1_combout\) # ((!timeForNormalSignal(10)) # (!timeForNormalSignal(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~1_combout\,
	datab => timeForNormalSignal(9),
	datac => timeForNormalSignal(10),
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X26_Y13_N16
\timeForNormalSignal[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[16]~49_combout\ = \timeForNormalSignal[15]~48\ $ (!timeForNormalSignal(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeForNormalSignal(16),
	cin => \timeForNormalSignal[15]~48\,
	combout => \timeForNormalSignal[16]~49_combout\);

-- Location: FF_X26_Y13_N17
\timeForNormalSignal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[16]~49_combout\,
	sclr => \ALT_INV_LessThan10~3_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(16));

-- Location: LCCOMB_X26_Y13_N24
\LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = ((\LessThan10~2_combout\) # (!timeForNormalSignal(16))) # (!timeForNormalSignal(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(15),
	datac => \LessThan10~2_combout\,
	datad => timeForNormalSignal(16),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X23_Y13_N20
\enableButton~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~0_combout\ = (!\Selector1~3_combout\ & ((\enableButton~q\) # ((!\Selector5~0_combout\) # (!\process_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableButton~q\,
	datab => \process_4~0_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector5~0_combout\,
	combout => \enableButton~0_combout\);

-- Location: LCCOMB_X26_Y13_N30
\enableButton~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~2_combout\ = (\enableButton~1_combout\ & ((\LessThan10~3_combout\) # ((!\enableButton~q\)))) # (!\enableButton~1_combout\ & (\enableButton~0_combout\ & ((\LessThan10~3_combout\) # (!\enableButton~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableButton~1_combout\,
	datab => \LessThan10~3_combout\,
	datac => \enableButton~q\,
	datad => \enableButton~0_combout\,
	combout => \enableButton~2_combout\);

-- Location: FF_X26_Y13_N31
enableButton : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enableButton~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enableButton~q\);

-- Location: FF_X23_Y13_N7
buttonSelectionPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonSelectionPrev~feeder_combout\,
	ena => \ALT_INV_enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonSelectionPrev~q\);

-- Location: LCCOMB_X23_Y13_N12
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\buttonSelectionPrev~q\ & (\Selector5~0_combout\ & (\stateCoffeeMachine.Selection~q\ & !\buttonSelection~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelectionPrev~q\,
	datab => \Selector5~0_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \buttonSelection~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\stateCoffeeMachine.Payment~q\ & ((\process_4~0_combout\) # (!\Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \process_4~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector5~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X23_Y13_N25
\stateCoffeeMachine.Payment\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Payment~q\);

-- Location: LCCOMB_X23_Y15_N8
\counter[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~24_combout\ = counter(0) $ (VCC)
-- \counter[0]~25\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~24_combout\,
	cout => \counter[0]~25\);

-- Location: FF_X23_Y15_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~24_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X23_Y15_N10
\counter[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~26_combout\ = (counter(1) & (!\counter[0]~25\)) # (!counter(1) & ((\counter[0]~25\) # (GND)))
-- \counter[1]~27\ = CARRY((!\counter[0]~25\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~25\,
	combout => \counter[1]~26_combout\,
	cout => \counter[1]~27\);

-- Location: FF_X23_Y15_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~26_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X23_Y15_N12
\counter[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~28_combout\ = (counter(2) & (\counter[1]~27\ $ (GND))) # (!counter(2) & (!\counter[1]~27\ & VCC))
-- \counter[2]~29\ = CARRY((counter(2) & !\counter[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datad => VCC,
	cin => \counter[1]~27\,
	combout => \counter[2]~28_combout\,
	cout => \counter[2]~29\);

-- Location: FF_X23_Y15_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~28_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X23_Y15_N14
\counter[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~30_combout\ = (counter(3) & (!\counter[2]~29\)) # (!counter(3) & ((\counter[2]~29\) # (GND)))
-- \counter[3]~31\ = CARRY((!\counter[2]~29\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~29\,
	combout => \counter[3]~30_combout\,
	cout => \counter[3]~31\);

-- Location: FF_X23_Y15_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~30_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X23_Y15_N16
\counter[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~32_combout\ = (counter(4) & (\counter[3]~31\ $ (GND))) # (!counter(4) & (!\counter[3]~31\ & VCC))
-- \counter[4]~33\ = CARRY((counter(4) & !\counter[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~31\,
	combout => \counter[4]~32_combout\,
	cout => \counter[4]~33\);

-- Location: FF_X23_Y15_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~32_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X23_Y15_N18
\counter[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~34_combout\ = (counter(5) & (!\counter[4]~33\)) # (!counter(5) & ((\counter[4]~33\) # (GND)))
-- \counter[5]~35\ = CARRY((!\counter[4]~33\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~33\,
	combout => \counter[5]~34_combout\,
	cout => \counter[5]~35\);

-- Location: FF_X23_Y15_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~34_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X23_Y15_N20
\counter[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~36_combout\ = (counter(6) & (\counter[5]~35\ $ (GND))) # (!counter(6) & (!\counter[5]~35\ & VCC))
-- \counter[6]~37\ = CARRY((counter(6) & !\counter[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~35\,
	combout => \counter[6]~36_combout\,
	cout => \counter[6]~37\);

-- Location: FF_X23_Y15_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~36_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X23_Y15_N22
\counter[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~38_combout\ = (counter(7) & (!\counter[6]~37\)) # (!counter(7) & ((\counter[6]~37\) # (GND)))
-- \counter[7]~39\ = CARRY((!\counter[6]~37\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~37\,
	combout => \counter[7]~38_combout\,
	cout => \counter[7]~39\);

-- Location: FF_X23_Y15_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~38_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X23_Y15_N24
\counter[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~40_combout\ = (counter(8) & (\counter[7]~39\ $ (GND))) # (!counter(8) & (!\counter[7]~39\ & VCC))
-- \counter[8]~41\ = CARRY((counter(8) & !\counter[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~39\,
	combout => \counter[8]~40_combout\,
	cout => \counter[8]~41\);

-- Location: FF_X23_Y15_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~40_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X23_Y15_N26
\counter[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~42_combout\ = (counter(9) & (!\counter[8]~41\)) # (!counter(9) & ((\counter[8]~41\) # (GND)))
-- \counter[9]~43\ = CARRY((!\counter[8]~41\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~41\,
	combout => \counter[9]~42_combout\,
	cout => \counter[9]~43\);

-- Location: FF_X23_Y15_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~42_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X23_Y15_N28
\counter[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~44_combout\ = (counter(10) & (\counter[9]~43\ $ (GND))) # (!counter(10) & (!\counter[9]~43\ & VCC))
-- \counter[10]~45\ = CARRY((counter(10) & !\counter[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~43\,
	combout => \counter[10]~44_combout\,
	cout => \counter[10]~45\);

-- Location: FF_X23_Y15_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~44_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X23_Y15_N30
\counter[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~46_combout\ = (counter(11) & (!\counter[10]~45\)) # (!counter(11) & ((\counter[10]~45\) # (GND)))
-- \counter[11]~47\ = CARRY((!\counter[10]~45\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~45\,
	combout => \counter[11]~46_combout\,
	cout => \counter[11]~47\);

-- Location: FF_X23_Y15_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~46_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X23_Y14_N0
\counter[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~48_combout\ = (counter(12) & (\counter[11]~47\ $ (GND))) # (!counter(12) & (!\counter[11]~47\ & VCC))
-- \counter[12]~49\ = CARRY((counter(12) & !\counter[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~47\,
	combout => \counter[12]~48_combout\,
	cout => \counter[12]~49\);

-- Location: FF_X23_Y14_N1
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~48_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X23_Y14_N2
\counter[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~50_combout\ = (counter(13) & (!\counter[12]~49\)) # (!counter(13) & ((\counter[12]~49\) # (GND)))
-- \counter[13]~51\ = CARRY((!\counter[12]~49\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~49\,
	combout => \counter[13]~50_combout\,
	cout => \counter[13]~51\);

-- Location: FF_X23_Y14_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~50_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X23_Y14_N4
\counter[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~52_combout\ = (counter(14) & (\counter[13]~51\ $ (GND))) # (!counter(14) & (!\counter[13]~51\ & VCC))
-- \counter[14]~53\ = CARRY((counter(14) & !\counter[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~51\,
	combout => \counter[14]~52_combout\,
	cout => \counter[14]~53\);

-- Location: FF_X23_Y14_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~52_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X23_Y14_N6
\counter[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~54_combout\ = (counter(15) & (!\counter[14]~53\)) # (!counter(15) & ((\counter[14]~53\) # (GND)))
-- \counter[15]~55\ = CARRY((!\counter[14]~53\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~53\,
	combout => \counter[15]~54_combout\,
	cout => \counter[15]~55\);

-- Location: FF_X23_Y14_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~54_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X23_Y14_N8
\counter[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~56_combout\ = (counter(16) & (\counter[15]~55\ $ (GND))) # (!counter(16) & (!\counter[15]~55\ & VCC))
-- \counter[16]~57\ = CARRY((counter(16) & !\counter[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~55\,
	combout => \counter[16]~56_combout\,
	cout => \counter[16]~57\);

-- Location: FF_X23_Y14_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~56_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X23_Y14_N10
\counter[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~58_combout\ = (counter(17) & (!\counter[16]~57\)) # (!counter(17) & ((\counter[16]~57\) # (GND)))
-- \counter[17]~59\ = CARRY((!\counter[16]~57\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~57\,
	combout => \counter[17]~58_combout\,
	cout => \counter[17]~59\);

-- Location: FF_X23_Y14_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~58_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X23_Y14_N12
\counter[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~60_combout\ = (counter(18) & (\counter[17]~59\ $ (GND))) # (!counter(18) & (!\counter[17]~59\ & VCC))
-- \counter[18]~61\ = CARRY((counter(18) & !\counter[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datad => VCC,
	cin => \counter[17]~59\,
	combout => \counter[18]~60_combout\,
	cout => \counter[18]~61\);

-- Location: FF_X23_Y14_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~60_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X23_Y14_N14
\counter[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~62_combout\ = (counter(19) & (!\counter[18]~61\)) # (!counter(19) & ((\counter[18]~61\) # (GND)))
-- \counter[19]~63\ = CARRY((!\counter[18]~61\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~61\,
	combout => \counter[19]~62_combout\,
	cout => \counter[19]~63\);

-- Location: FF_X23_Y14_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~62_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X23_Y14_N16
\counter[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~64_combout\ = (counter(20) & (\counter[19]~63\ $ (GND))) # (!counter(20) & (!\counter[19]~63\ & VCC))
-- \counter[20]~65\ = CARRY((counter(20) & !\counter[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~63\,
	combout => \counter[20]~64_combout\,
	cout => \counter[20]~65\);

-- Location: FF_X23_Y14_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~64_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X23_Y14_N18
\counter[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~66_combout\ = (counter(21) & (!\counter[20]~65\)) # (!counter(21) & ((\counter[20]~65\) # (GND)))
-- \counter[21]~67\ = CARRY((!\counter[20]~65\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~65\,
	combout => \counter[21]~66_combout\,
	cout => \counter[21]~67\);

-- Location: FF_X23_Y14_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~66_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X23_Y14_N20
\counter[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~68_combout\ = (counter(22) & (\counter[21]~67\ $ (GND))) # (!counter(22) & (!\counter[21]~67\ & VCC))
-- \counter[22]~69\ = CARRY((counter(22) & !\counter[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datad => VCC,
	cin => \counter[21]~67\,
	combout => \counter[22]~68_combout\,
	cout => \counter[22]~69\);

-- Location: FF_X23_Y14_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~68_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X23_Y14_N22
\counter[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~70_combout\ = counter(23) $ (\counter[22]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(23),
	cin => \counter[22]~69\,
	combout => \counter[23]~70_combout\);

-- Location: FF_X23_Y14_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~70_combout\,
	sclr => \ALT_INV_LessThan2~9_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X23_Y14_N24
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (((!counter(21)) # (!counter(19))) # (!counter(20))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(20),
	datac => counter(19),
	datad => counter(21),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X24_Y14_N12
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ((\LessThan2~2_combout\) # (!counter(23))) # (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(22),
	datac => counter(23),
	datad => \LessThan2~2_combout\,
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (counter(14) & ((counter(12)) # (counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datac => counter(14),
	datad => counter(13),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ((!\LessThan2~0_combout\ & (!counter(16) & !counter(15)))) # (!counter(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => \LessThan2~0_combout\,
	datac => counter(16),
	datad => counter(15),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (!counter(15) & (!counter(16) & (!counter(6) & !counter(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datab => counter(16),
	datac => counter(6),
	datad => counter(13),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X23_Y15_N0
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = (!counter(9) & (!counter(10) & (!counter(7) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(10),
	datac => counter(7),
	datad => counter(8),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X23_Y15_N6
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = (!counter(4) & (!counter(2) & ((!counter(0)) # (!counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datab => counter(4),
	datac => counter(0),
	datad => counter(2),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X23_Y15_N4
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ((!counter(4) & !counter(3))) # (!counter(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datac => counter(3),
	datad => counter(5),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X22_Y14_N14
\LessThan2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~4_combout\ & (\LessThan2~5_combout\ & ((\LessThan2~6_combout\) # (\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~4_combout\,
	datab => \LessThan2~5_combout\,
	datac => \LessThan2~6_combout\,
	datad => \LessThan2~7_combout\,
	combout => \LessThan2~8_combout\);

-- Location: LCCOMB_X23_Y14_N26
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = (\LessThan2~3_combout\) # ((\LessThan2~1_combout\) # ((!counter(11) & \LessThan2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~1_combout\,
	datad => \LessThan2~8_combout\,
	combout => \LessThan2~9_combout\);

-- Location: LCCOMB_X25_Y14_N0
\latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \latch~1_combout\ = (\latch~q\) # (!\LessThan2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datac => \latch~q\,
	combout => \latch~1_combout\);

-- Location: FF_X25_Y14_N1
latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latch~1_combout\,
	sclr => \stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latch~q\);

-- Location: LCCOMB_X25_Y14_N20
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((led(0) & ((!\LessThan2~9_combout\))) # (!led(0) & ((\LessThan2~9_combout\) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led(0),
	datab => \latch~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \LessThan2~9_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X25_Y14_N10
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (!\stateCoffeeMachine.Payment~q\ & (!\stateCoffeeMachine.Selection~q\ & !\Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X25_Y14_N11
\led[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led(0));

-- Location: LCCOMB_X25_Y14_N2
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((led(1) & ((!\LessThan2~9_combout\))) # (!led(1) & ((\LessThan2~9_combout\) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latch~q\,
	datab => led(1),
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \LessThan2~9_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X25_Y14_N28
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\stateCoffeeMachine.Selection~q\ & !\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Selection~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X25_Y14_N29
\led[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led(1));

-- Location: LCCOMB_X25_Y14_N6
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\stateCoffeeMachine.Waiting~q\) # ((\LessThan2~9_combout\ & (led(2))) # (!\LessThan2~9_combout\ & (!led(2) & \latch~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~9_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => led(2),
	datad => \latch~q\,
	combout => \led~0_combout\);

-- Location: FF_X25_Y14_N7
\led[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led(2));

-- Location: LCCOMB_X24_Y13_N6
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\stateCoffeeMachine.Selection~q\ & (!selectionDrink(0) & !selectionDrink(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(0),
	datad => selectionDrink(1),
	combout => \Selector48~0_combout\);

-- Location: FF_X24_Y13_N7
\bufferForIndicator1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector48~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(0));

-- Location: LCCOMB_X12_Y13_N14
\clkForIndication[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[0]~18_combout\ = clkForIndication(0) $ (VCC)
-- \clkForIndication[0]~19\ = CARRY(clkForIndication(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(0),
	datad => VCC,
	combout => \clkForIndication[0]~18_combout\,
	cout => \clkForIndication[0]~19\);

-- Location: LCCOMB_X12_Y13_N8
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!clkForIndication(4) & (!clkForIndication(5) & !clkForIndication(6)))) # (!clkForIndication(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(4),
	datab => clkForIndication(5),
	datac => clkForIndication(6),
	datad => clkForIndication(7),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y13_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!clkForIndication(8) & (!clkForIndication(9) & (!clkForIndication(11) & !clkForIndication(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datab => clkForIndication(9),
	datac => clkForIndication(11),
	datad => clkForIndication(10),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y13_N12
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkForIndication(13) & (((\LessThan0~0_combout\ & \LessThan0~1_combout\)) # (!clkForIndication(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(12),
	datab => clkForIndication(13),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y13_N10
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\LessThan0~3_combout\ & !\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X12_Y13_N15
\clkForIndication[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[0]~18_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(0));

-- Location: LCCOMB_X12_Y13_N16
\clkForIndication[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[1]~20_combout\ = (clkForIndication(1) & (!\clkForIndication[0]~19\)) # (!clkForIndication(1) & ((\clkForIndication[0]~19\) # (GND)))
-- \clkForIndication[1]~21\ = CARRY((!\clkForIndication[0]~19\) # (!clkForIndication(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(1),
	datad => VCC,
	cin => \clkForIndication[0]~19\,
	combout => \clkForIndication[1]~20_combout\,
	cout => \clkForIndication[1]~21\);

-- Location: FF_X12_Y13_N17
\clkForIndication[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[1]~20_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(1));

-- Location: LCCOMB_X12_Y13_N18
\clkForIndication[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[2]~22_combout\ = (clkForIndication(2) & (\clkForIndication[1]~21\ $ (GND))) # (!clkForIndication(2) & (!\clkForIndication[1]~21\ & VCC))
-- \clkForIndication[2]~23\ = CARRY((clkForIndication(2) & !\clkForIndication[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(2),
	datad => VCC,
	cin => \clkForIndication[1]~21\,
	combout => \clkForIndication[2]~22_combout\,
	cout => \clkForIndication[2]~23\);

-- Location: FF_X12_Y13_N19
\clkForIndication[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[2]~22_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(2));

-- Location: LCCOMB_X12_Y13_N20
\clkForIndication[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[3]~24_combout\ = (clkForIndication(3) & (!\clkForIndication[2]~23\)) # (!clkForIndication(3) & ((\clkForIndication[2]~23\) # (GND)))
-- \clkForIndication[3]~25\ = CARRY((!\clkForIndication[2]~23\) # (!clkForIndication(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(3),
	datad => VCC,
	cin => \clkForIndication[2]~23\,
	combout => \clkForIndication[3]~24_combout\,
	cout => \clkForIndication[3]~25\);

-- Location: FF_X12_Y13_N21
\clkForIndication[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[3]~24_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(3));

-- Location: LCCOMB_X12_Y13_N22
\clkForIndication[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[4]~26_combout\ = (clkForIndication(4) & (\clkForIndication[3]~25\ $ (GND))) # (!clkForIndication(4) & (!\clkForIndication[3]~25\ & VCC))
-- \clkForIndication[4]~27\ = CARRY((clkForIndication(4) & !\clkForIndication[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(4),
	datad => VCC,
	cin => \clkForIndication[3]~25\,
	combout => \clkForIndication[4]~26_combout\,
	cout => \clkForIndication[4]~27\);

-- Location: FF_X12_Y13_N23
\clkForIndication[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[4]~26_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(4));

-- Location: LCCOMB_X12_Y13_N24
\clkForIndication[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[5]~28_combout\ = (clkForIndication(5) & (!\clkForIndication[4]~27\)) # (!clkForIndication(5) & ((\clkForIndication[4]~27\) # (GND)))
-- \clkForIndication[5]~29\ = CARRY((!\clkForIndication[4]~27\) # (!clkForIndication(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(5),
	datad => VCC,
	cin => \clkForIndication[4]~27\,
	combout => \clkForIndication[5]~28_combout\,
	cout => \clkForIndication[5]~29\);

-- Location: FF_X12_Y13_N25
\clkForIndication[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[5]~28_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(5));

-- Location: LCCOMB_X12_Y13_N26
\clkForIndication[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[6]~30_combout\ = (clkForIndication(6) & (\clkForIndication[5]~29\ $ (GND))) # (!clkForIndication(6) & (!\clkForIndication[5]~29\ & VCC))
-- \clkForIndication[6]~31\ = CARRY((clkForIndication(6) & !\clkForIndication[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(6),
	datad => VCC,
	cin => \clkForIndication[5]~29\,
	combout => \clkForIndication[6]~30_combout\,
	cout => \clkForIndication[6]~31\);

-- Location: FF_X12_Y13_N27
\clkForIndication[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[6]~30_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(6));

-- Location: LCCOMB_X12_Y13_N28
\clkForIndication[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[7]~32_combout\ = (clkForIndication(7) & (!\clkForIndication[6]~31\)) # (!clkForIndication(7) & ((\clkForIndication[6]~31\) # (GND)))
-- \clkForIndication[7]~33\ = CARRY((!\clkForIndication[6]~31\) # (!clkForIndication(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(7),
	datad => VCC,
	cin => \clkForIndication[6]~31\,
	combout => \clkForIndication[7]~32_combout\,
	cout => \clkForIndication[7]~33\);

-- Location: FF_X12_Y13_N29
\clkForIndication[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[7]~32_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(7));

-- Location: LCCOMB_X12_Y13_N30
\clkForIndication[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[8]~34_combout\ = (clkForIndication(8) & (\clkForIndication[7]~33\ $ (GND))) # (!clkForIndication(8) & (!\clkForIndication[7]~33\ & VCC))
-- \clkForIndication[8]~35\ = CARRY((clkForIndication(8) & !\clkForIndication[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datad => VCC,
	cin => \clkForIndication[7]~33\,
	combout => \clkForIndication[8]~34_combout\,
	cout => \clkForIndication[8]~35\);

-- Location: FF_X12_Y13_N31
\clkForIndication[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[8]~34_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(8));

-- Location: LCCOMB_X12_Y12_N0
\clkForIndication[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[9]~36_combout\ = (clkForIndication(9) & (!\clkForIndication[8]~35\)) # (!clkForIndication(9) & ((\clkForIndication[8]~35\) # (GND)))
-- \clkForIndication[9]~37\ = CARRY((!\clkForIndication[8]~35\) # (!clkForIndication(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(9),
	datad => VCC,
	cin => \clkForIndication[8]~35\,
	combout => \clkForIndication[9]~36_combout\,
	cout => \clkForIndication[9]~37\);

-- Location: FF_X13_Y13_N17
\clkForIndication[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clkForIndication[9]~36_combout\,
	sclr => \LessThan0~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(9));

-- Location: LCCOMB_X12_Y12_N2
\clkForIndication[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[10]~38_combout\ = (clkForIndication(10) & (\clkForIndication[9]~37\ $ (GND))) # (!clkForIndication(10) & (!\clkForIndication[9]~37\ & VCC))
-- \clkForIndication[10]~39\ = CARRY((clkForIndication(10) & !\clkForIndication[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(10),
	datad => VCC,
	cin => \clkForIndication[9]~37\,
	combout => \clkForIndication[10]~38_combout\,
	cout => \clkForIndication[10]~39\);

-- Location: FF_X12_Y12_N3
\clkForIndication[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[10]~38_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(10));

-- Location: LCCOMB_X12_Y12_N4
\clkForIndication[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[11]~40_combout\ = (clkForIndication(11) & (!\clkForIndication[10]~39\)) # (!clkForIndication(11) & ((\clkForIndication[10]~39\) # (GND)))
-- \clkForIndication[11]~41\ = CARRY((!\clkForIndication[10]~39\) # (!clkForIndication(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(11),
	datad => VCC,
	cin => \clkForIndication[10]~39\,
	combout => \clkForIndication[11]~40_combout\,
	cout => \clkForIndication[11]~41\);

-- Location: FF_X12_Y12_N5
\clkForIndication[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[11]~40_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(11));

-- Location: LCCOMB_X12_Y12_N6
\clkForIndication[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[12]~42_combout\ = (clkForIndication(12) & (\clkForIndication[11]~41\ $ (GND))) # (!clkForIndication(12) & (!\clkForIndication[11]~41\ & VCC))
-- \clkForIndication[12]~43\ = CARRY((clkForIndication(12) & !\clkForIndication[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(12),
	datad => VCC,
	cin => \clkForIndication[11]~41\,
	combout => \clkForIndication[12]~42_combout\,
	cout => \clkForIndication[12]~43\);

-- Location: FF_X12_Y12_N7
\clkForIndication[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[12]~42_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(12));

-- Location: LCCOMB_X12_Y12_N8
\clkForIndication[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[13]~44_combout\ = (clkForIndication(13) & (!\clkForIndication[12]~43\)) # (!clkForIndication(13) & ((\clkForIndication[12]~43\) # (GND)))
-- \clkForIndication[13]~45\ = CARRY((!\clkForIndication[12]~43\) # (!clkForIndication(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(13),
	datad => VCC,
	cin => \clkForIndication[12]~43\,
	combout => \clkForIndication[13]~44_combout\,
	cout => \clkForIndication[13]~45\);

-- Location: FF_X12_Y12_N9
\clkForIndication[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[13]~44_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(13));

-- Location: LCCOMB_X12_Y12_N10
\clkForIndication[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[14]~46_combout\ = (clkForIndication(14) & (\clkForIndication[13]~45\ $ (GND))) # (!clkForIndication(14) & (!\clkForIndication[13]~45\ & VCC))
-- \clkForIndication[14]~47\ = CARRY((clkForIndication(14) & !\clkForIndication[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(14),
	datad => VCC,
	cin => \clkForIndication[13]~45\,
	combout => \clkForIndication[14]~46_combout\,
	cout => \clkForIndication[14]~47\);

-- Location: FF_X12_Y12_N11
\clkForIndication[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[14]~46_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(14));

-- Location: LCCOMB_X12_Y12_N12
\clkForIndication[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[15]~48_combout\ = (clkForIndication(15) & (!\clkForIndication[14]~47\)) # (!clkForIndication(15) & ((\clkForIndication[14]~47\) # (GND)))
-- \clkForIndication[15]~49\ = CARRY((!\clkForIndication[14]~47\) # (!clkForIndication(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(15),
	datad => VCC,
	cin => \clkForIndication[14]~47\,
	combout => \clkForIndication[15]~48_combout\,
	cout => \clkForIndication[15]~49\);

-- Location: FF_X12_Y12_N13
\clkForIndication[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[15]~48_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(15));

-- Location: LCCOMB_X12_Y12_N14
\clkForIndication[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[16]~50_combout\ = (clkForIndication(16) & (\clkForIndication[15]~49\ $ (GND))) # (!clkForIndication(16) & (!\clkForIndication[15]~49\ & VCC))
-- \clkForIndication[16]~51\ = CARRY((clkForIndication(16) & !\clkForIndication[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(16),
	datad => VCC,
	cin => \clkForIndication[15]~49\,
	combout => \clkForIndication[16]~50_combout\,
	cout => \clkForIndication[16]~51\);

-- Location: FF_X12_Y12_N15
\clkForIndication[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[16]~50_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(16));

-- Location: LCCOMB_X12_Y12_N16
\clkForIndication[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[17]~52_combout\ = \clkForIndication[16]~51\ $ (clkForIndication(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clkForIndication(17),
	cin => \clkForIndication[16]~51\,
	combout => \clkForIndication[17]~52_combout\);

-- Location: FF_X12_Y12_N17
\clkForIndication[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[17]~52_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(17));

-- Location: LCCOMB_X12_Y12_N22
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (((!clkForIndication(14)) # (!clkForIndication(16))) # (!clkForIndication(17))) # (!clkForIndication(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(15),
	datab => clkForIndication(17),
	datac => clkForIndication(16),
	datad => clkForIndication(14),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y13_N6
\indicator[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[0]~1_combout\ = indicator(0) $ (((!\LessThan0~3_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~3_combout\,
	datac => indicator(0),
	datad => \LessThan0~2_combout\,
	combout => \indicator[0]~1_combout\);

-- Location: FF_X12_Y13_N7
\indicator[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \indicator[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indicator(0));

-- Location: LCCOMB_X12_Y13_N0
\indicator[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[1]~0_combout\ = indicator(1) $ (((indicator(0) & (!\LessThan0~3_combout\ & !\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(0),
	datab => \LessThan0~3_combout\,
	datac => indicator(1),
	datad => \LessThan0~2_combout\,
	combout => \indicator[1]~0_combout\);

-- Location: FF_X12_Y13_N1
\indicator[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \indicator[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indicator(1));

-- Location: LCCOMB_X23_Y13_N0
\Selector55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (!\stateCoffeeMachine.Payment~q\ & (((selectionDrink(0) & !selectionDrink(1))) # (!\stateCoffeeMachine.Selection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X25_Y13_N30
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (!money(3) & (!money(0) & (money(1) & !money(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(0),
	datac => money(1),
	datad => money(2),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (money(3) & (!money(1) & (money(2) $ (!money(0))))) # (!money(3) & (!money(2) & (money(1) & money(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(3),
	datac => money(1),
	datad => money(0),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X25_Y13_N16
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (money(2) & (!money(0) & (money(3) $ (!money(1))))) # (!money(2) & (money(3) & (!money(1) & money(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(3),
	datac => money(1),
	datad => money(0),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X25_Y13_N24
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (money(4) & (!money(5) & ((!\Mux23~0_combout\)))) # (!money(4) & (((!\Mux23~1_combout\)) # (!money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => money(5),
	datac => \Mux23~1_combout\,
	datad => \Mux23~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Selector55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Selector55~0_combout\) # ((\LessThan8~0_combout\ & !\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Mux23~2_combout\,
	datad => \Selector55~0_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Selector55~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~3_combout\ = (\stateCoffeeMachine.Unsuccessful~q\) # ((!\Selector55~2_combout\ & !\Selector55~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Selector55~2_combout\,
	datad => \Selector55~1_combout\,
	combout => \Selector55~3_combout\);

-- Location: FF_X24_Y13_N25
\bufferForIndicator2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~3_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(0));

-- Location: LCCOMB_X25_Y13_N26
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (money(1) & ((money(5) & (!money(3) & !money(2))) # (!money(5) & (money(3) & money(2))))) # (!money(1) & (money(2) & (money(5) $ (!money(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datab => money(5),
	datac => money(3),
	datad => money(2),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X25_Y13_N28
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = ((money(5)) # ((money(1)) # (money(2)))) # (!money(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(5),
	datac => money(1),
	datad => money(2),
	combout => \Selector62~0_combout\);

-- Location: LCCOMB_X25_Y13_N4
\Selector62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~1_combout\ = ((money(4) & ((\Selector62~0_combout\))) # (!money(4) & (!\Mux26~0_combout\))) # (!money(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => money(0),
	datac => \Mux26~0_combout\,
	datad => \Selector62~0_combout\,
	combout => \Selector62~1_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Selector62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~2_combout\ = (\stateCoffeeMachine.Payment~q\ & (!\Selector62~1_combout\)) # (!\stateCoffeeMachine.Payment~q\ & (((\stateCoffeeMachine.Selection~q\) # (\stateCoffeeMachine.Unsuccessful~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector62~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector62~2_combout\);

-- Location: FF_X24_Y13_N11
\bufferForIndicator3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~2_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(0));

-- Location: LCCOMB_X24_Y13_N12
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(0)))) # (!indicator(0) & (!bufferForIndicator2(0))))) # (!indicator(1) & (((!indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => bufferForIndicator2(0),
	datac => indicator(0),
	datad => bufferForIndicator3(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((!bufferForIndicator1(0) & !indicator(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(0),
	datac => indicator(1),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X25_Y13_N18
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (money(3) & (!money(1) & (money(0) $ (!money(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(0),
	datac => money(1),
	datad => money(2),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = ((money(4) & (!\Mux23~2_combout\)) # (!money(4) & ((!\Mux22~0_combout\)))) # (!money(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => money(5),
	datac => \Mux23~2_combout\,
	datad => \Mux22~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X25_Y14_N8
\Selector54~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\stateCoffeeMachine.Payment~q\ & (((!\Selector54~0_combout\)))) # (!\stateCoffeeMachine.Payment~q\ & ((\stateCoffeeMachine.Selection~q\) # ((\stateCoffeeMachine.Unsuccessful~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Selector54~0_combout\,
	combout => \Selector54~1_combout\);

-- Location: FF_X25_Y14_N9
\bufferForIndicator2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector54~1_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(1));

-- Location: LCCOMB_X25_Y13_N10
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (money(2) & ((money(3) $ (money(1))) # (!money(0)))) # (!money(2) & ((money(0)) # (money(3) $ (money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(3),
	datac => money(1),
	datad => money(0),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X25_Y13_N12
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (money(5) & (((money(4))) # (!\Mux23~1_combout\))) # (!money(5) & (((!money(4) & \Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~1_combout\,
	datab => money(5),
	datac => money(4),
	datad => \Mux24~0_combout\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X25_Y13_N6
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (money(4) & ((\Mux24~1_combout\ & ((!\Mux23~2_combout\))) # (!\Mux24~1_combout\ & (!\Mux23~0_combout\)))) # (!money(4) & (((\Mux24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Mux23~0_combout\,
	datac => \Mux23~2_combout\,
	datad => \Mux24~1_combout\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X25_Y13_N8
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\stateCoffeeMachine.Payment~q\ & (!\Mux24~2_combout\)) # (!\stateCoffeeMachine.Payment~q\ & (((\stateCoffeeMachine.Selection~q\) # (\stateCoffeeMachine.Unsuccessful~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector61~0_combout\);

-- Location: FF_X25_Y13_N9
\bufferForIndicator3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(1));

-- Location: LCCOMB_X25_Y14_N22
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (indicator(0) & (indicator(1) & ((!bufferForIndicator3(1))))) # (!indicator(0) & (((!bufferForIndicator2(1))) # (!indicator(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(0),
	datab => indicator(1),
	datac => bufferForIndicator2(1),
	datad => bufferForIndicator3(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X25_Y14_N12
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (!\stateCoffeeMachine.Payment~q\ & (\stateCoffeeMachine.Waiting~q\ & ((bufferForIndicator1(1)) # (!\stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => bufferForIndicator1(1),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector47~0_combout\);

-- Location: FF_X25_Y14_N13
\bufferForIndicator1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(1));

-- Location: LCCOMB_X25_Y14_N18
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\) # ((!indicator(1) & !bufferForIndicator1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~0_combout\,
	datac => indicator(1),
	datad => bufferForIndicator1(1),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X21_Y13_N22
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (!money(5) & (money(4) & (money(3) $ (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => money(3),
	datad => money(1),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (money(5) & ((money(4) & ((money(3)) # (!money(1)))) # (!money(4) & ((money(1)) # (!money(3)))))) # (!money(5) & ((money(4)) # (money(3) $ (money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => money(3),
	datad => money(1),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\stateCoffeeMachine.Payment~q\ & ((money(0)) # ((!money(2) & \Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(0),
	datab => money(2),
	datac => \Mux25~0_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector60~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\Selector60~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~1_combout\ = (\Selector60~0_combout\) # ((!\Mux25~1_combout\ & (\stateCoffeeMachine.Payment~q\ & money(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => money(2),
	datad => \Selector60~0_combout\,
	combout => \Selector60~1_combout\);

-- Location: LCCOMB_X21_Y13_N16
\Selector60~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~2_combout\ = (\Add7~0_combout\ & (!\Selector60~1_combout\ & ((bufferForIndicator3(2)) # (!\stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \Add7~0_combout\,
	datac => bufferForIndicator3(2),
	datad => \Selector60~1_combout\,
	combout => \Selector60~2_combout\);

-- Location: FF_X21_Y13_N17
\bufferForIndicator3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector60~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(2));

-- Location: LCCOMB_X21_Y14_N24
\Selector53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (!\stateCoffeeMachine.Payment~q\ & (((!selectionDrink(0) & !selectionDrink(1))) # (!\stateCoffeeMachine.Selection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => selectionDrink(0),
	datac => selectionDrink(1),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector53~1_combout\);

-- Location: LCCOMB_X21_Y13_N0
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!money(1) & ((money(0) & (!money(2) & money(3))) # (!money(0) & (money(2) & !money(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(0),
	datab => money(2),
	datac => money(3),
	datad => money(1),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X21_Y14_N2
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\stateCoffeeMachine.Payment~q\ & (((money(5)) # (!\Mux21~0_combout\)) # (!money(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Mux21~0_combout\,
	datac => money(5),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X21_Y14_N12
\Selector53~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~2_combout\ = (!\Selector53~1_combout\ & !\Selector53~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector53~1_combout\,
	datad => \Selector53~0_combout\,
	combout => \Selector53~2_combout\);

-- Location: FF_X21_Y14_N13
\bufferForIndicator2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector53~2_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(2));

-- Location: LCCOMB_X21_Y14_N22
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (indicator(0) & (!bufferForIndicator3(2) & (indicator(1)))) # (!indicator(0) & (((!bufferForIndicator2(2)) # (!indicator(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator3(2),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator2(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((!indicator(1) & !bufferForIndicator1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datac => indicator(1),
	datad => bufferForIndicator1(1),
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = ((!selectionDrink(1)) # (!selectionDrink(0))) # (!\stateCoffeeMachine.Selection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(0),
	datad => selectionDrink(1),
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Selector59~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (\stateCoffeeMachine.Unsuccessful~q\) # ((\stateCoffeeMachine.Payment~q\ & (!\Mux24~2_combout\)) # (!\stateCoffeeMachine.Payment~q\ & ((!\Selector59~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Selector59~0_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector59~1_combout\);

-- Location: FF_X24_Y13_N17
\bufferForIndicator3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector59~1_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(3));

-- Location: LCCOMB_X23_Y13_N2
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (!\stateCoffeeMachine.Payment~q\ & ((selectionDrink(1)) # (!\stateCoffeeMachine.Selection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(1),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Selector52~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (money(2)) # ((money(3)) # ((!money(0)) # (!money(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(3),
	datac => money(1),
	datad => money(0),
	combout => \Selector52~1_combout\);

-- Location: LCCOMB_X25_Y13_N2
\Selector52~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~2_combout\ = (money(4) & (((!money(5) & !\Mux23~0_combout\)))) # (!money(4) & ((\Selector52~1_combout\) # ((!money(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Selector52~1_combout\,
	datac => money(5),
	datad => \Mux23~0_combout\,
	combout => \Selector52~2_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Selector52~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~3_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Selector52~2_combout\) # ((\LessThan8~0_combout\ & !\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~0_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Mux23~2_combout\,
	datad => \Selector52~2_combout\,
	combout => \Selector52~3_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Selector52~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~4_combout\ = (\stateCoffeeMachine.Unsuccessful~q\) # ((!\Selector52~0_combout\ & !\Selector52~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Selector52~3_combout\,
	combout => \Selector52~4_combout\);

-- Location: FF_X24_Y13_N19
\bufferForIndicator2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector52~4_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(3));

-- Location: LCCOMB_X24_Y13_N26
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (indicator(1) & ((indicator(0) & (!bufferForIndicator3(3))) # (!indicator(0) & ((!bufferForIndicator2(3)))))) # (!indicator(1) & (((!indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => bufferForIndicator3(3),
	datac => indicator(0),
	datad => bufferForIndicator2(3),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((!indicator(1) & !bufferForIndicator1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => indicator(1),
	datad => bufferForIndicator1(1),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X21_Y13_N14
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (!money(0) & (money(1) & (money(2) $ (!money(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(0),
	datab => money(2),
	datac => money(3),
	datad => money(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X21_Y13_N30
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (money(5) & (!money(2) & (money(0) & money(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(2),
	datac => money(0),
	datad => money(1),
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X21_Y13_N4
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (money(5) & (!money(1) & (money(2) $ (!money(0))))) # (!money(5) & (money(1) & (money(2) $ (!money(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(2),
	datac => money(0),
	datad => money(1),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (money(3) & (((\Mux19~1_combout\) # (money(4))))) # (!money(3) & (\Mux19~2_combout\ & ((!money(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~1_combout\,
	datac => money(3),
	datad => money(4),
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (money(4) & ((money(5) $ (!\Mux19~3_combout\)) # (!\Mux19~0_combout\))) # (!money(4) & (((!\Mux19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => \Mux19~0_combout\,
	datad => \Mux19~3_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (\stateCoffeeMachine.Payment~q\ & (!\Mux19~4_combout\)) # (!\stateCoffeeMachine.Payment~q\ & (((\stateCoffeeMachine.Unsuccessful~q\) # (\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector51~0_combout\);

-- Location: FF_X25_Y14_N17
\bufferForIndicator2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector51~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(4));

-- Location: LCCOMB_X25_Y14_N24
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\stateCoffeeMachine.Selection~q\) # (((\stateCoffeeMachine.Implementation~q\ & !bufferForIndicator3(4))) # (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => bufferForIndicator3(4),
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X25_Y13_N14
\Selector58~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = (!\Selector58~0_combout\ & ((!\Mux24~2_combout\) # (!\stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Selector58~0_combout\,
	datad => \Mux24~2_combout\,
	combout => \Selector58~1_combout\);

-- Location: FF_X25_Y13_N15
\bufferForIndicator3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector58~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(4));

-- Location: LCCOMB_X25_Y14_N30
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ((indicator(0) & ((!bufferForIndicator3(4)))) # (!indicator(0) & (!bufferForIndicator2(4)))) # (!indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(0),
	datab => bufferForIndicator2(4),
	datac => indicator(1),
	datad => bufferForIndicator3(4),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X21_Y14_N10
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (!\Selector60~1_combout\ & ((\stateCoffeeMachine.Payment~q\) # ((\stateCoffeeMachine.Selection~q\ & !selectionDrink(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => selectionDrink(0),
	datac => \Selector60~1_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector57~0_combout\);

-- Location: FF_X21_Y14_N11
\bufferForIndicator3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(5));

-- Location: LCCOMB_X21_Y13_N18
\Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (money(3) & (\Mux19~1_combout\)) # (!money(3) & ((\Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \Mux19~1_combout\,
	datac => \Mux19~2_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X21_Y13_N8
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (money(0) & (!money(2) & (money(3) & !money(1)))) # (!money(0) & (money(2) & (money(3) $ (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(0),
	datab => money(2),
	datac => money(3),
	datad => money(1),
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (money(4) & (!money(5) & ((\Selector50~0_combout\)))) # (!money(4) & (((\Selector50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => \Selector50~1_combout\,
	datac => \Selector50~0_combout\,
	datad => money(4),
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Selector50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (!\Selector53~1_combout\ & ((\Selector50~2_combout\) # (!\stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \Selector50~2_combout\,
	datad => \Selector53~1_combout\,
	combout => \Selector50~3_combout\);

-- Location: FF_X21_Y14_N1
\bufferForIndicator2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~3_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(5));

-- Location: LCCOMB_X21_Y14_N20
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ((indicator(0) & (!bufferForIndicator3(5))) # (!indicator(0) & ((!bufferForIndicator2(5))))) # (!indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator3(5),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator2(5),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\stateCoffeeMachine.Selection~q\ & ((!selectionDrink(1)) # (!selectionDrink(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(0),
	datad => selectionDrink(1),
	combout => \Selector44~0_combout\);

-- Location: FF_X24_Y13_N31
\bufferForIndicator1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector44~0_combout\,
	sload => VCC,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(6));

-- Location: LCCOMB_X24_Y13_N14
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\) # ((\stateCoffeeMachine.Payment~q\ & (!\Mux24~2_combout\)) # (!\stateCoffeeMachine.Payment~q\ & ((\Selector44~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Selector44~0_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector56~0_combout\);

-- Location: FF_X24_Y13_N15
\bufferForIndicator3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(6));

-- Location: LCCOMB_X24_Y13_N20
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (!\Selector52~3_combout\ & ((\stateCoffeeMachine.Unsuccessful~q\) # ((\stateCoffeeMachine.Payment~q\) # (\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector52~3_combout\,
	combout => \Selector49~0_combout\);

-- Location: FF_X24_Y13_N21
\bufferForIndicator2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~0_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(6));

-- Location: LCCOMB_X24_Y13_N28
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (indicator(1) & ((indicator(0) & (!bufferForIndicator3(6))) # (!indicator(0) & ((!bufferForIndicator2(6)))))) # (!indicator(1) & (((!indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => bufferForIndicator3(6),
	datac => indicator(0),
	datad => bufferForIndicator2(6),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((!indicator(1) & !bufferForIndicator1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datac => bufferForIndicator1(6),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X12_Y22_N12
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (indicator(0) & indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X12_Y22_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (indicator(0)) # (!indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X12_Y22_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (indicator(1)) # (!indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X12_Y22_N22
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (indicator(0)) # (indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux10~2_combout\);

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_en(0) <= \en[0]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(3) <= \en[3]~output_o\;
END structure;


