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

-- DATE "02/15/2024 14:51:03"

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
	led1 : OUT std_logic_vector(3 DOWNTO 0);
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	en : OUT std_logic_vector(3 DOWNTO 0)
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
-- buttonWaiting	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonRight	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonLeft	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonSelection	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \timeForNormalSignal[0]~21_combout\ : std_logic;
SIGNAL \timeForNormalSignal[16]~54\ : std_logic;
SIGNAL \timeForNormalSignal[17]~55_combout\ : std_logic;
SIGNAL \timeForNormalSignal[17]~56\ : std_logic;
SIGNAL \timeForNormalSignal[18]~57_combout\ : std_logic;
SIGNAL \timeForNormalSignal[18]~58\ : std_logic;
SIGNAL \timeForNormalSignal[19]~59_combout\ : std_logic;
SIGNAL \timeForNormalSignal[19]~60\ : std_logic;
SIGNAL \timeForNormalSignal[20]~61_combout\ : std_logic;
SIGNAL \LessThan12~3_combout\ : std_logic;
SIGNAL \LessThan12~4_combout\ : std_logic;
SIGNAL \timeForNormalSignal[0]~22\ : std_logic;
SIGNAL \timeForNormalSignal[1]~23_combout\ : std_logic;
SIGNAL \timeForNormalSignal[1]~24\ : std_logic;
SIGNAL \timeForNormalSignal[2]~25_combout\ : std_logic;
SIGNAL \timeForNormalSignal[2]~26\ : std_logic;
SIGNAL \timeForNormalSignal[3]~27_combout\ : std_logic;
SIGNAL \timeForNormalSignal[3]~28\ : std_logic;
SIGNAL \timeForNormalSignal[4]~29_combout\ : std_logic;
SIGNAL \timeForNormalSignal[4]~30\ : std_logic;
SIGNAL \timeForNormalSignal[5]~31_combout\ : std_logic;
SIGNAL \timeForNormalSignal[5]~32\ : std_logic;
SIGNAL \timeForNormalSignal[6]~33_combout\ : std_logic;
SIGNAL \timeForNormalSignal[6]~34\ : std_logic;
SIGNAL \timeForNormalSignal[7]~35_combout\ : std_logic;
SIGNAL \timeForNormalSignal[7]~36\ : std_logic;
SIGNAL \timeForNormalSignal[8]~37_combout\ : std_logic;
SIGNAL \timeForNormalSignal[8]~38\ : std_logic;
SIGNAL \timeForNormalSignal[9]~39_combout\ : std_logic;
SIGNAL \timeForNormalSignal[9]~40\ : std_logic;
SIGNAL \timeForNormalSignal[10]~41_combout\ : std_logic;
SIGNAL \timeForNormalSignal[10]~42\ : std_logic;
SIGNAL \timeForNormalSignal[11]~43_combout\ : std_logic;
SIGNAL \timeForNormalSignal[11]~44\ : std_logic;
SIGNAL \timeForNormalSignal[12]~45_combout\ : std_logic;
SIGNAL \timeForNormalSignal[12]~46\ : std_logic;
SIGNAL \timeForNormalSignal[13]~47_combout\ : std_logic;
SIGNAL \timeForNormalSignal[13]~48\ : std_logic;
SIGNAL \timeForNormalSignal[14]~49_combout\ : std_logic;
SIGNAL \timeForNormalSignal[14]~50\ : std_logic;
SIGNAL \timeForNormalSignal[15]~51_combout\ : std_logic;
SIGNAL \timeForNormalSignal[15]~52\ : std_logic;
SIGNAL \timeForNormalSignal[16]~53_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan12~2_combout\ : std_logic;
SIGNAL \buttonLeft~input_o\ : std_logic;
SIGNAL \buttonLeftPrev~feeder_combout\ : std_logic;
SIGNAL \buttonLeftPrev~q\ : std_logic;
SIGNAL \process_4~1_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~21_combout\ : std_logic;
SIGNAL \buttonRight~input_o\ : std_logic;
SIGNAL \buttonRightPrev~feeder_combout\ : std_logic;
SIGNAL \buttonRightPrev~q\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add5~16\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~85_combout\ : std_logic;
SIGNAL \Add9~45_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~84_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~83_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~82_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add9~81_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~80_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~79_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~78_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~77_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add9~72_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~73_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~74_combout\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add9~75_combout\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Add9~71_combout\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Add9~67_combout\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Add9~68_combout\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Add9~69_combout\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Add9~70_combout\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Add9~66_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Add9~65_combout\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Add9~64_combout\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~49_combout\ : std_logic;
SIGNAL \Add9~51_combout\ : std_logic;
SIGNAL \Add9~50\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Add9~76_combout\ : std_logic;
SIGNAL \Add9~57\ : std_logic;
SIGNAL \Add9~58_combout\ : std_logic;
SIGNAL \Add9~63_combout\ : std_logic;
SIGNAL \Add9~55_combout\ : std_logic;
SIGNAL \Add9~59\ : std_logic;
SIGNAL \Add9~60_combout\ : std_logic;
SIGNAL \Add9~62_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \LessThan11~4_combout\ : std_logic;
SIGNAL \LessThan11~5_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Unsuccessful~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~7_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Selection~q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~75_combout\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~74_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~73_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~72_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~71_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~69_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~68_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~23_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add7~24\ : std_logic;
SIGNAL \Add7~26_combout\ : std_logic;
SIGNAL \Add7~28_combout\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add7~29_combout\ : std_logic;
SIGNAL \Add7~31_combout\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~32_combout\ : std_logic;
SIGNAL \Add7~34_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~35_combout\ : std_logic;
SIGNAL \Add7~37_combout\ : std_logic;
SIGNAL \Add7~36\ : std_logic;
SIGNAL \Add7~38_combout\ : std_logic;
SIGNAL \Add7~40_combout\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~41_combout\ : std_logic;
SIGNAL \Add7~43_combout\ : std_logic;
SIGNAL \Add7~42\ : std_logic;
SIGNAL \Add7~44_combout\ : std_logic;
SIGNAL \Add7~46_combout\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~47_combout\ : std_logic;
SIGNAL \Add7~49_combout\ : std_logic;
SIGNAL \Add7~48\ : std_logic;
SIGNAL \Add7~50_combout\ : std_logic;
SIGNAL \Add7~52_combout\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~53_combout\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~59_combout\ : std_logic;
SIGNAL \Add7~61_combout\ : std_logic;
SIGNAL \Add7~60\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add7~64_combout\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~67_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \LessThan10~5_combout\ : std_logic;
SIGNAL \procent~7_combout\ : std_logic;
SIGNAL \procent[0]~8_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \procent[0]~9\ : std_logic;
SIGNAL \procent[1]~10_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \procent[1]~11\ : std_logic;
SIGNAL \procent[2]~12_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \procent[2]~13\ : std_logic;
SIGNAL \procent[3]~14_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \procent[3]~15\ : std_logic;
SIGNAL \procent[4]~16_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \procent[4]~17\ : std_logic;
SIGNAL \procent[5]~18_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \procent[5]~19\ : std_logic;
SIGNAL \procent[6]~20_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \digit2[0]~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \buttonWaiting~input_o\ : std_logic;
SIGNAL \buttonWaitingPrev~q\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \enableButton~1_combout\ : std_logic;
SIGNAL \enableButton~0_combout\ : std_logic;
SIGNAL \enableButton~2_combout\ : std_logic;
SIGNAL \enableButton~3_combout\ : std_logic;
SIGNAL \enableButton~q\ : std_logic;
SIGNAL \buttonSelectionPrev~q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
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
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \counter[20]~65\ : std_logic;
SIGNAL \counter[21]~66_combout\ : std_logic;
SIGNAL \counter[21]~67\ : std_logic;
SIGNAL \counter[22]~68_combout\ : std_logic;
SIGNAL \counter[22]~69\ : std_logic;
SIGNAL \counter[23]~70_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \latch~1_combout\ : std_logic;
SIGNAL \latch~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \led~0_combout\ : std_logic;
SIGNAL \clkForIndication[0]~18_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
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
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \digit2[0]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \digit2[0]~2_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \enableButtonPrev~q\ : std_logic;
SIGNAL \digitBuf2[3]~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[5]~31_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[28]~48_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[24]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[24]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \Selector102~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[34]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[34]~83_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[33]~84_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~85_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[40]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[39]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[39]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~80_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[38]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[37]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[36]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[46]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~82_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[44]~86_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[42]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Selector99~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \Selector101~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Selector102~2_combout\ : std_logic;
SIGNAL \Selector102~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \Selector100~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \digitBuf3[2]~feeder_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[59]~62_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[59]~63_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~64_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[58]~65_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~66_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[57]~67_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~69_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[56]~68_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~71_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[55]~70_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~61_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[60]~60_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~95_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~72_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[70]~94_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[69]~73_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~74_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[68]~96_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~97_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[67]~75_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~98_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[66]~76_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[65]~78_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[65]~77_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~88_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[64]~89_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~90_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[79]~79_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~80_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[78]~91_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[77]~92_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[77]~81_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~93_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[76]~82_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~83_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[75]~99_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~84_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[74]~85_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~87_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[73]~86_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[0]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[1]~1_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \Mux44~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Selector86~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Selector93~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux43~0_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \Mux43~1_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Selector78~2_combout\ : std_logic;
SIGNAL \Selector78~3_combout\ : std_logic;
SIGNAL \Selector78~4_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \Selector85~2_combout\ : std_logic;
SIGNAL \Selector85~3_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \Selector84~2_combout\ : std_logic;
SIGNAL \Selector84~3_combout\ : std_logic;
SIGNAL \Selector84~4_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~5_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \Selector91~2_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Selector77~1_combout\ : std_logic;
SIGNAL \Selector77~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \bufferForIndicator1~0_combout\ : std_logic;
SIGNAL \bufferForIndicator1~1_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector83~2_combout\ : std_logic;
SIGNAL \Selector83~3_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \bufferForIndicator1~2_combout\ : std_logic;
SIGNAL \bufferForIndicator1~3_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Selector82~2_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~2_combout\ : std_logic;
SIGNAL \Selector81~3_combout\ : std_logic;
SIGNAL \Selector88~2_combout\ : std_logic;
SIGNAL \Selector88~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL led : std_logic_vector(3 DOWNTO 0);
SIGNAL bufferForIndicator2 : std_logic_vector(6 DOWNTO 0);
SIGNAL digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL procentCount : std_logic_vector(24 DOWNTO 0);
SIGNAL digitBuf2 : std_logic_vector(3 DOWNTO 0);
SIGNAL digit2 : std_logic_vector(3 DOWNTO 0);
SIGNAL indicator : std_logic_vector(1 DOWNTO 0);
SIGNAL bufferForIndicator1 : std_logic_vector(6 DOWNTO 0);
SIGNAL money : std_logic_vector(5 DOWNTO 0);
SIGNAL timeForUnsuccessfulMessage : std_logic_vector(27 DOWNTO 0);
SIGNAL digit3 : std_logic_vector(3 DOWNTO 0);
SIGNAL procent : std_logic_vector(6 DOWNTO 0);
SIGNAL digitBuf3 : std_logic_vector(3 DOWNTO 0);
SIGNAL bufferForIndicator3 : std_logic_vector(6 DOWNTO 0);
SIGNAL clkForIndication : std_logic_vector(17 DOWNTO 0);
SIGNAL timeForNormalSignal : std_logic_vector(20 DOWNTO 0);
SIGNAL selectionDrink : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_enableButton~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux10~2_combout\ : std_logic;
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
\ALT_INV_enableButton~q\ <= NOT \enableButton~q\;
\ALT_INV_stateCoffeeMachine.Implementation~q\ <= NOT \stateCoffeeMachine.Implementation~q\;
\ALT_INV_stateCoffeeMachine.Waiting~q\ <= NOT \stateCoffeeMachine.Waiting~q\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_Mux10~2_combout\ <= NOT \Mux10~2_combout\;
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
	i => \Mux6~1_combout\,
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
	i => \Mux5~1_combout\,
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
	i => \ALT_INV_Mux10~2_combout\,
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
	i => \Mux10~3_combout\,
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

-- Location: LCCOMB_X26_Y14_N12
\timeForNormalSignal[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[0]~21_combout\ = timeForNormalSignal(0) $ (VCC)
-- \timeForNormalSignal[0]~22\ = CARRY(timeForNormalSignal(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(0),
	datad => VCC,
	combout => \timeForNormalSignal[0]~21_combout\,
	cout => \timeForNormalSignal[0]~22\);

-- Location: LCCOMB_X26_Y13_N12
\timeForNormalSignal[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[16]~53_combout\ = (timeForNormalSignal(16) & (\timeForNormalSignal[15]~52\ $ (GND))) # (!timeForNormalSignal(16) & (!\timeForNormalSignal[15]~52\ & VCC))
-- \timeForNormalSignal[16]~54\ = CARRY((timeForNormalSignal(16) & !\timeForNormalSignal[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(16),
	datad => VCC,
	cin => \timeForNormalSignal[15]~52\,
	combout => \timeForNormalSignal[16]~53_combout\,
	cout => \timeForNormalSignal[16]~54\);

-- Location: LCCOMB_X26_Y13_N14
\timeForNormalSignal[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[17]~55_combout\ = (timeForNormalSignal(17) & (!\timeForNormalSignal[16]~54\)) # (!timeForNormalSignal(17) & ((\timeForNormalSignal[16]~54\) # (GND)))
-- \timeForNormalSignal[17]~56\ = CARRY((!\timeForNormalSignal[16]~54\) # (!timeForNormalSignal(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(17),
	datad => VCC,
	cin => \timeForNormalSignal[16]~54\,
	combout => \timeForNormalSignal[17]~55_combout\,
	cout => \timeForNormalSignal[17]~56\);

-- Location: FF_X26_Y13_N15
\timeForNormalSignal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[17]~55_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(17));

-- Location: LCCOMB_X26_Y13_N16
\timeForNormalSignal[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[18]~57_combout\ = (timeForNormalSignal(18) & (\timeForNormalSignal[17]~56\ $ (GND))) # (!timeForNormalSignal(18) & (!\timeForNormalSignal[17]~56\ & VCC))
-- \timeForNormalSignal[18]~58\ = CARRY((timeForNormalSignal(18) & !\timeForNormalSignal[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(18),
	datad => VCC,
	cin => \timeForNormalSignal[17]~56\,
	combout => \timeForNormalSignal[18]~57_combout\,
	cout => \timeForNormalSignal[18]~58\);

-- Location: FF_X26_Y13_N17
\timeForNormalSignal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[18]~57_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(18));

-- Location: LCCOMB_X26_Y13_N18
\timeForNormalSignal[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[19]~59_combout\ = (timeForNormalSignal(19) & (!\timeForNormalSignal[18]~58\)) # (!timeForNormalSignal(19) & ((\timeForNormalSignal[18]~58\) # (GND)))
-- \timeForNormalSignal[19]~60\ = CARRY((!\timeForNormalSignal[18]~58\) # (!timeForNormalSignal(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(19),
	datad => VCC,
	cin => \timeForNormalSignal[18]~58\,
	combout => \timeForNormalSignal[19]~59_combout\,
	cout => \timeForNormalSignal[19]~60\);

-- Location: FF_X26_Y13_N19
\timeForNormalSignal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[19]~59_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(19));

-- Location: LCCOMB_X26_Y13_N20
\timeForNormalSignal[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[20]~61_combout\ = \timeForNormalSignal[19]~60\ $ (!timeForNormalSignal(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeForNormalSignal(20),
	cin => \timeForNormalSignal[19]~60\,
	combout => \timeForNormalSignal[20]~61_combout\);

-- Location: FF_X26_Y13_N21
\timeForNormalSignal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[20]~61_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(20));

-- Location: LCCOMB_X26_Y13_N24
\LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~3_combout\ = (((!timeForNormalSignal(20)) # (!timeForNormalSignal(17))) # (!timeForNormalSignal(19))) # (!timeForNormalSignal(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(18),
	datab => timeForNormalSignal(19),
	datac => timeForNormalSignal(17),
	datad => timeForNormalSignal(20),
	combout => \LessThan12~3_combout\);

-- Location: LCCOMB_X26_Y13_N30
\LessThan12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~4_combout\ = (!\LessThan12~2_combout\ & !\LessThan12~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan12~2_combout\,
	datad => \LessThan12~3_combout\,
	combout => \LessThan12~4_combout\);

-- Location: FF_X26_Y14_N13
\timeForNormalSignal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[0]~21_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(0));

-- Location: LCCOMB_X26_Y14_N14
\timeForNormalSignal[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[1]~23_combout\ = (timeForNormalSignal(1) & (!\timeForNormalSignal[0]~22\)) # (!timeForNormalSignal(1) & ((\timeForNormalSignal[0]~22\) # (GND)))
-- \timeForNormalSignal[1]~24\ = CARRY((!\timeForNormalSignal[0]~22\) # (!timeForNormalSignal(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(1),
	datad => VCC,
	cin => \timeForNormalSignal[0]~22\,
	combout => \timeForNormalSignal[1]~23_combout\,
	cout => \timeForNormalSignal[1]~24\);

-- Location: FF_X26_Y14_N15
\timeForNormalSignal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[1]~23_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(1));

-- Location: LCCOMB_X26_Y14_N16
\timeForNormalSignal[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[2]~25_combout\ = (timeForNormalSignal(2) & (\timeForNormalSignal[1]~24\ $ (GND))) # (!timeForNormalSignal(2) & (!\timeForNormalSignal[1]~24\ & VCC))
-- \timeForNormalSignal[2]~26\ = CARRY((timeForNormalSignal(2) & !\timeForNormalSignal[1]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(2),
	datad => VCC,
	cin => \timeForNormalSignal[1]~24\,
	combout => \timeForNormalSignal[2]~25_combout\,
	cout => \timeForNormalSignal[2]~26\);

-- Location: FF_X26_Y14_N17
\timeForNormalSignal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[2]~25_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(2));

-- Location: LCCOMB_X26_Y14_N18
\timeForNormalSignal[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[3]~27_combout\ = (timeForNormalSignal(3) & (!\timeForNormalSignal[2]~26\)) # (!timeForNormalSignal(3) & ((\timeForNormalSignal[2]~26\) # (GND)))
-- \timeForNormalSignal[3]~28\ = CARRY((!\timeForNormalSignal[2]~26\) # (!timeForNormalSignal(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(3),
	datad => VCC,
	cin => \timeForNormalSignal[2]~26\,
	combout => \timeForNormalSignal[3]~27_combout\,
	cout => \timeForNormalSignal[3]~28\);

-- Location: FF_X26_Y14_N19
\timeForNormalSignal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[3]~27_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(3));

-- Location: LCCOMB_X26_Y14_N20
\timeForNormalSignal[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[4]~29_combout\ = (timeForNormalSignal(4) & (\timeForNormalSignal[3]~28\ $ (GND))) # (!timeForNormalSignal(4) & (!\timeForNormalSignal[3]~28\ & VCC))
-- \timeForNormalSignal[4]~30\ = CARRY((timeForNormalSignal(4) & !\timeForNormalSignal[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(4),
	datad => VCC,
	cin => \timeForNormalSignal[3]~28\,
	combout => \timeForNormalSignal[4]~29_combout\,
	cout => \timeForNormalSignal[4]~30\);

-- Location: FF_X26_Y14_N21
\timeForNormalSignal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[4]~29_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(4));

-- Location: LCCOMB_X26_Y14_N22
\timeForNormalSignal[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[5]~31_combout\ = (timeForNormalSignal(5) & (!\timeForNormalSignal[4]~30\)) # (!timeForNormalSignal(5) & ((\timeForNormalSignal[4]~30\) # (GND)))
-- \timeForNormalSignal[5]~32\ = CARRY((!\timeForNormalSignal[4]~30\) # (!timeForNormalSignal(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(5),
	datad => VCC,
	cin => \timeForNormalSignal[4]~30\,
	combout => \timeForNormalSignal[5]~31_combout\,
	cout => \timeForNormalSignal[5]~32\);

-- Location: FF_X26_Y14_N23
\timeForNormalSignal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[5]~31_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(5));

-- Location: LCCOMB_X26_Y14_N24
\timeForNormalSignal[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[6]~33_combout\ = (timeForNormalSignal(6) & (\timeForNormalSignal[5]~32\ $ (GND))) # (!timeForNormalSignal(6) & (!\timeForNormalSignal[5]~32\ & VCC))
-- \timeForNormalSignal[6]~34\ = CARRY((timeForNormalSignal(6) & !\timeForNormalSignal[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(6),
	datad => VCC,
	cin => \timeForNormalSignal[5]~32\,
	combout => \timeForNormalSignal[6]~33_combout\,
	cout => \timeForNormalSignal[6]~34\);

-- Location: FF_X26_Y14_N25
\timeForNormalSignal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[6]~33_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(6));

-- Location: LCCOMB_X26_Y14_N26
\timeForNormalSignal[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[7]~35_combout\ = (timeForNormalSignal(7) & (!\timeForNormalSignal[6]~34\)) # (!timeForNormalSignal(7) & ((\timeForNormalSignal[6]~34\) # (GND)))
-- \timeForNormalSignal[7]~36\ = CARRY((!\timeForNormalSignal[6]~34\) # (!timeForNormalSignal(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(7),
	datad => VCC,
	cin => \timeForNormalSignal[6]~34\,
	combout => \timeForNormalSignal[7]~35_combout\,
	cout => \timeForNormalSignal[7]~36\);

-- Location: FF_X26_Y14_N27
\timeForNormalSignal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[7]~35_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(7));

-- Location: LCCOMB_X26_Y14_N28
\timeForNormalSignal[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[8]~37_combout\ = (timeForNormalSignal(8) & (\timeForNormalSignal[7]~36\ $ (GND))) # (!timeForNormalSignal(8) & (!\timeForNormalSignal[7]~36\ & VCC))
-- \timeForNormalSignal[8]~38\ = CARRY((timeForNormalSignal(8) & !\timeForNormalSignal[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(8),
	datad => VCC,
	cin => \timeForNormalSignal[7]~36\,
	combout => \timeForNormalSignal[8]~37_combout\,
	cout => \timeForNormalSignal[8]~38\);

-- Location: FF_X26_Y14_N29
\timeForNormalSignal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[8]~37_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(8));

-- Location: LCCOMB_X26_Y14_N30
\timeForNormalSignal[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[9]~39_combout\ = (timeForNormalSignal(9) & (!\timeForNormalSignal[8]~38\)) # (!timeForNormalSignal(9) & ((\timeForNormalSignal[8]~38\) # (GND)))
-- \timeForNormalSignal[9]~40\ = CARRY((!\timeForNormalSignal[8]~38\) # (!timeForNormalSignal(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(9),
	datad => VCC,
	cin => \timeForNormalSignal[8]~38\,
	combout => \timeForNormalSignal[9]~39_combout\,
	cout => \timeForNormalSignal[9]~40\);

-- Location: FF_X26_Y14_N31
\timeForNormalSignal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[9]~39_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(9));

-- Location: LCCOMB_X26_Y13_N0
\timeForNormalSignal[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[10]~41_combout\ = (timeForNormalSignal(10) & (\timeForNormalSignal[9]~40\ $ (GND))) # (!timeForNormalSignal(10) & (!\timeForNormalSignal[9]~40\ & VCC))
-- \timeForNormalSignal[10]~42\ = CARRY((timeForNormalSignal(10) & !\timeForNormalSignal[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(10),
	datad => VCC,
	cin => \timeForNormalSignal[9]~40\,
	combout => \timeForNormalSignal[10]~41_combout\,
	cout => \timeForNormalSignal[10]~42\);

-- Location: FF_X26_Y13_N1
\timeForNormalSignal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[10]~41_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(10));

-- Location: LCCOMB_X26_Y13_N2
\timeForNormalSignal[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[11]~43_combout\ = (timeForNormalSignal(11) & (!\timeForNormalSignal[10]~42\)) # (!timeForNormalSignal(11) & ((\timeForNormalSignal[10]~42\) # (GND)))
-- \timeForNormalSignal[11]~44\ = CARRY((!\timeForNormalSignal[10]~42\) # (!timeForNormalSignal(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(11),
	datad => VCC,
	cin => \timeForNormalSignal[10]~42\,
	combout => \timeForNormalSignal[11]~43_combout\,
	cout => \timeForNormalSignal[11]~44\);

-- Location: FF_X26_Y13_N3
\timeForNormalSignal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[11]~43_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(11));

-- Location: LCCOMB_X26_Y13_N4
\timeForNormalSignal[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[12]~45_combout\ = (timeForNormalSignal(12) & (\timeForNormalSignal[11]~44\ $ (GND))) # (!timeForNormalSignal(12) & (!\timeForNormalSignal[11]~44\ & VCC))
-- \timeForNormalSignal[12]~46\ = CARRY((timeForNormalSignal(12) & !\timeForNormalSignal[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(12),
	datad => VCC,
	cin => \timeForNormalSignal[11]~44\,
	combout => \timeForNormalSignal[12]~45_combout\,
	cout => \timeForNormalSignal[12]~46\);

-- Location: FF_X26_Y13_N5
\timeForNormalSignal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[12]~45_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(12));

-- Location: LCCOMB_X26_Y13_N6
\timeForNormalSignal[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[13]~47_combout\ = (timeForNormalSignal(13) & (!\timeForNormalSignal[12]~46\)) # (!timeForNormalSignal(13) & ((\timeForNormalSignal[12]~46\) # (GND)))
-- \timeForNormalSignal[13]~48\ = CARRY((!\timeForNormalSignal[12]~46\) # (!timeForNormalSignal(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(13),
	datad => VCC,
	cin => \timeForNormalSignal[12]~46\,
	combout => \timeForNormalSignal[13]~47_combout\,
	cout => \timeForNormalSignal[13]~48\);

-- Location: FF_X26_Y13_N7
\timeForNormalSignal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[13]~47_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(13));

-- Location: LCCOMB_X26_Y13_N8
\timeForNormalSignal[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[14]~49_combout\ = (timeForNormalSignal(14) & (\timeForNormalSignal[13]~48\ $ (GND))) # (!timeForNormalSignal(14) & (!\timeForNormalSignal[13]~48\ & VCC))
-- \timeForNormalSignal[14]~50\ = CARRY((timeForNormalSignal(14) & !\timeForNormalSignal[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForNormalSignal(14),
	datad => VCC,
	cin => \timeForNormalSignal[13]~48\,
	combout => \timeForNormalSignal[14]~49_combout\,
	cout => \timeForNormalSignal[14]~50\);

-- Location: FF_X26_Y13_N9
\timeForNormalSignal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[14]~49_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(14));

-- Location: LCCOMB_X26_Y13_N10
\timeForNormalSignal[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \timeForNormalSignal[15]~51_combout\ = (timeForNormalSignal(15) & (!\timeForNormalSignal[14]~50\)) # (!timeForNormalSignal(15) & ((\timeForNormalSignal[14]~50\) # (GND)))
-- \timeForNormalSignal[15]~52\ = CARRY((!\timeForNormalSignal[14]~50\) # (!timeForNormalSignal(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(15),
	datad => VCC,
	cin => \timeForNormalSignal[14]~50\,
	combout => \timeForNormalSignal[15]~51_combout\,
	cout => \timeForNormalSignal[15]~52\);

-- Location: FF_X26_Y13_N11
\timeForNormalSignal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[15]~51_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(15));

-- Location: FF_X26_Y13_N13
\timeForNormalSignal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timeForNormalSignal[16]~53_combout\,
	sclr => \LessThan12~4_combout\,
	ena => \enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForNormalSignal(16));

-- Location: LCCOMB_X26_Y13_N28
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = (!timeForNormalSignal(13) & (!timeForNormalSignal(14) & (!timeForNormalSignal(12) & !timeForNormalSignal(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(13),
	datab => timeForNormalSignal(14),
	datac => timeForNormalSignal(12),
	datad => timeForNormalSignal(11),
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X26_Y14_N8
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = ((!timeForNormalSignal(9) & (!timeForNormalSignal(7) & !timeForNormalSignal(8)))) # (!timeForNormalSignal(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(9),
	datab => timeForNormalSignal(10),
	datac => timeForNormalSignal(7),
	datad => timeForNormalSignal(8),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~2_combout\ = (!timeForNormalSignal(16) & (((\LessThan12~1_combout\ & \LessThan12~0_combout\)) # (!timeForNormalSignal(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForNormalSignal(16),
	datab => \LessThan12~1_combout\,
	datac => \LessThan12~0_combout\,
	datad => timeForNormalSignal(15),
	combout => \LessThan12~2_combout\);

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

-- Location: LCCOMB_X29_Y14_N4
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

-- Location: FF_X29_Y14_N5
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

-- Location: LCCOMB_X29_Y14_N2
\process_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~1_combout\ = (\buttonLeftPrev~q\ & !\buttonLeft~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonLeftPrev~q\,
	datad => \buttonLeft~input_o\,
	combout => \process_4~1_combout\);

-- Location: LCCOMB_X28_Y14_N20
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

-- Location: LCCOMB_X28_Y14_N4
\Add5~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~21_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~0_combout\,
	combout => \Add5~21_combout\);

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

-- Location: LCCOMB_X29_Y14_N22
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

-- Location: FF_X29_Y14_N23
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

-- Location: LCCOMB_X29_Y14_N28
\process_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = (\buttonRight~input_o\) # (!\buttonRightPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonRightPrev~q\,
	datad => \buttonRight~input_o\,
	combout => \process_4~0_combout\);

-- Location: LCCOMB_X28_Y14_N8
\Add5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (money(3)) # ((money(0)) # ((money(1)) # (money(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(0),
	datac => money(1),
	datad => money(2),
	combout => \Add5~9_combout\);

-- Location: LCCOMB_X28_Y14_N6
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\process_4~1_combout\ & ((money(5)) # ((money(4)) # (\Add5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => \Add5~9_combout\,
	datad => \process_4~1_combout\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X29_Y14_N26
\Add5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (\Add5~10_combout\) # ((!\LessThan8~1_combout\ & (!\process_4~0_combout\ & !\process_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \process_4~0_combout\,
	datac => \Add5~10_combout\,
	datad => \process_4~1_combout\,
	combout => \Add5~11_combout\);

-- Location: LCCOMB_X25_Y18_N0
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\stateCoffeeMachine.Payment~q\ & (\Add5~11_combout\)) # (!\stateCoffeeMachine.Payment~q\ & ((!\stateCoffeeMachine.Waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~11_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Add5~12_combout\);

-- Location: FF_X28_Y14_N5
\money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~21_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(0));

-- Location: LCCOMB_X28_Y14_N22
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\process_4~1_combout\ & ((money(1) & (\Add5~1\ & VCC)) # (!money(1) & (!\Add5~1\)))) # (!\process_4~1_combout\ & ((money(1) & (!\Add5~1\)) # (!money(1) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\process_4~1_combout\ & (!money(1) & !\Add5~1\)) # (!\process_4~1_combout\ & ((!\Add5~1\) # (!money(1)))))

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
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X26_Y18_N28
\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~2_combout\,
	combout => \Add5~13_combout\);

-- Location: FF_X26_Y18_N29
\money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~13_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(1));

-- Location: LCCOMB_X28_Y14_N24
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\process_4~1_combout\ $ (money(2) $ (\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\process_4~1_combout\ & (money(2) & !\Add5~3\)) # (!\process_4~1_combout\ & ((money(2)) # (!\Add5~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(2),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X25_Y18_N14
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\Add5~4_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~4_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Add5~14_combout\);

-- Location: FF_X25_Y18_N15
\money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~14_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(2));

-- Location: LCCOMB_X28_Y14_N26
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\process_4~1_combout\ & ((money(3) & (\Add5~5\ & VCC)) # (!money(3) & (!\Add5~5\)))) # (!\process_4~1_combout\ & ((money(3) & (!\Add5~5\)) # (!money(3) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\process_4~1_combout\ & (!money(3) & !\Add5~5\)) # (!\process_4~1_combout\ & ((!\Add5~5\) # (!money(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X28_Y18_N12
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~6_combout\,
	combout => \Add5~8_combout\);

-- Location: FF_X28_Y18_N13
\money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~8_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(3));

-- Location: LCCOMB_X28_Y14_N28
\Add5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = ((\process_4~1_combout\ $ (money(4) $ (!\Add5~7\)))) # (GND)
-- \Add5~16\ = CARRY((\process_4~1_combout\ & ((money(4)) # (!\Add5~7\))) # (!\process_4~1_combout\ & (money(4) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_4~1_combout\,
	datab => money(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~15_combout\,
	cout => \Add5~16\);

-- Location: LCCOMB_X28_Y18_N26
\Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~15_combout\,
	combout => \Add5~17_combout\);

-- Location: FF_X28_Y18_N27
\money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~17_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(4));

-- Location: LCCOMB_X28_Y14_N30
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = money(5) $ (\Add5~16\ $ (\process_4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datad => \process_4~1_combout\,
	cin => \Add5~16\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X28_Y18_N20
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = (\Add5~18_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~18_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	combout => \Add5~20_combout\);

-- Location: FF_X28_Y18_N21
\money[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~20_combout\,
	ena => \Add5~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(5));

-- Location: LCCOMB_X28_Y14_N12
\LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (money(4) & ((money(3)) # ((money(1)) # (money(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(4),
	datac => money(1),
	datad => money(2),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X28_Y14_N10
\LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (money(5) & \LessThan8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(5),
	datad => \LessThan8~0_combout\,
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X29_Y14_N24
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\buttonLeft~input_o\ & (((\buttonRight~input_o\) # (!\buttonRightPrev~q\)))) # (!\buttonLeft~input_o\ & (!\buttonLeftPrev~q\ & ((\buttonRight~input_o\) # (!\buttonRightPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonLeft~input_o\,
	datab => \buttonLeftPrev~q\,
	datac => \buttonRightPrev~q\,
	datad => \buttonRight~input_o\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (!\buttonSelection~input_o\ & (\Selector6~0_combout\ & (\buttonSelectionPrev~q\ & \stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~input_o\,
	datab => \Selector6~0_combout\,
	datac => \buttonSelectionPrev~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X30_Y19_N4
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = timeForUnsuccessfulMessage(0) $ (VCC)
-- \Add9~1\ = CARRY(timeForUnsuccessfulMessage(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X31_Y19_N6
\Add9~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~85_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add9~0_combout\,
	combout => \Add9~85_combout\);

-- Location: LCCOMB_X30_Y16_N10
\Add9~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~45_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & ((!\LessThan11~5_combout\))) # (!\stateCoffeeMachine.Unsuccessful~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \LessThan11~5_combout\,
	combout => \Add9~45_combout\);

-- Location: FF_X31_Y19_N7
\timeForUnsuccessfulMessage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~85_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(0));

-- Location: LCCOMB_X30_Y19_N6
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (timeForUnsuccessfulMessage(1) & (!\Add9~1\)) # (!timeForUnsuccessfulMessage(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!timeForUnsuccessfulMessage(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X30_Y19_N2
\Add9~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~84_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~2_combout\,
	combout => \Add9~84_combout\);

-- Location: FF_X30_Y19_N3
\timeForUnsuccessfulMessage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~84_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(1));

-- Location: LCCOMB_X30_Y19_N8
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = (timeForUnsuccessfulMessage(2) & (\Add9~3\ $ (GND))) # (!timeForUnsuccessfulMessage(2) & (!\Add9~3\ & VCC))
-- \Add9~5\ = CARRY((timeForUnsuccessfulMessage(2) & !\Add9~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X31_Y19_N4
\Add9~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~83_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~4_combout\,
	combout => \Add9~83_combout\);

-- Location: FF_X31_Y19_N5
\timeForUnsuccessfulMessage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~83_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(2));

-- Location: LCCOMB_X30_Y19_N10
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (timeForUnsuccessfulMessage(3) & (!\Add9~5\)) # (!timeForUnsuccessfulMessage(3) & ((\Add9~5\) # (GND)))
-- \Add9~7\ = CARRY((!\Add9~5\) # (!timeForUnsuccessfulMessage(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X31_Y19_N30
\Add9~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~82_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~6_combout\,
	combout => \Add9~82_combout\);

-- Location: FF_X31_Y19_N31
\timeForUnsuccessfulMessage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~82_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(3));

-- Location: LCCOMB_X30_Y19_N12
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (timeForUnsuccessfulMessage(4) & (\Add9~7\ $ (GND))) # (!timeForUnsuccessfulMessage(4) & (!\Add9~7\ & VCC))
-- \Add9~9\ = CARRY((timeForUnsuccessfulMessage(4) & !\Add9~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(4),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X31_Y19_N8
\Add9~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~81_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~8_combout\,
	combout => \Add9~81_combout\);

-- Location: FF_X31_Y19_N9
\timeForUnsuccessfulMessage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~81_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(4));

-- Location: LCCOMB_X30_Y19_N14
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (timeForUnsuccessfulMessage(5) & (!\Add9~9\)) # (!timeForUnsuccessfulMessage(5) & ((\Add9~9\) # (GND)))
-- \Add9~11\ = CARRY((!\Add9~9\) # (!timeForUnsuccessfulMessage(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(5),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X31_Y19_N22
\Add9~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~80_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~10_combout\,
	combout => \Add9~80_combout\);

-- Location: FF_X31_Y19_N23
\timeForUnsuccessfulMessage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~80_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(5));

-- Location: LCCOMB_X30_Y19_N16
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (timeForUnsuccessfulMessage(6) & (\Add9~11\ $ (GND))) # (!timeForUnsuccessfulMessage(6) & (!\Add9~11\ & VCC))
-- \Add9~13\ = CARRY((timeForUnsuccessfulMessage(6) & !\Add9~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X31_Y19_N12
\Add9~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~79_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add9~12_combout\,
	combout => \Add9~79_combout\);

-- Location: FF_X31_Y19_N13
\timeForUnsuccessfulMessage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~79_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(6));

-- Location: LCCOMB_X30_Y19_N18
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (timeForUnsuccessfulMessage(7) & (!\Add9~13\)) # (!timeForUnsuccessfulMessage(7) & ((\Add9~13\) # (GND)))
-- \Add9~15\ = CARRY((!\Add9~13\) # (!timeForUnsuccessfulMessage(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(7),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X31_Y19_N18
\Add9~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~78_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~14_combout\,
	combout => \Add9~78_combout\);

-- Location: FF_X31_Y19_N19
\timeForUnsuccessfulMessage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~78_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(7));

-- Location: LCCOMB_X30_Y19_N20
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (timeForUnsuccessfulMessage(8) & (\Add9~15\ $ (GND))) # (!timeForUnsuccessfulMessage(8) & (!\Add9~15\ & VCC))
-- \Add9~17\ = CARRY((timeForUnsuccessfulMessage(8) & !\Add9~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(8),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X31_Y19_N20
\Add9~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~77_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~16_combout\,
	combout => \Add9~77_combout\);

-- Location: FF_X31_Y19_N21
\timeForUnsuccessfulMessage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~77_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(8));

-- Location: LCCOMB_X30_Y19_N22
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (timeForUnsuccessfulMessage(9) & (!\Add9~17\)) # (!timeForUnsuccessfulMessage(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!timeForUnsuccessfulMessage(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X29_Y19_N2
\Add9~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~72_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~18_combout\,
	combout => \Add9~72_combout\);

-- Location: FF_X29_Y19_N3
\timeForUnsuccessfulMessage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~72_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(9));

-- Location: LCCOMB_X30_Y19_N24
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (timeForUnsuccessfulMessage(10) & (\Add9~19\ $ (GND))) # (!timeForUnsuccessfulMessage(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((timeForUnsuccessfulMessage(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X29_Y19_N12
\Add9~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~73_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~20_combout\,
	combout => \Add9~73_combout\);

-- Location: FF_X29_Y19_N13
\timeForUnsuccessfulMessage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~73_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(10));

-- Location: LCCOMB_X30_Y19_N26
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (timeForUnsuccessfulMessage(11) & (!\Add9~21\)) # (!timeForUnsuccessfulMessage(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!timeForUnsuccessfulMessage(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X29_Y19_N26
\Add9~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~74_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~22_combout\,
	combout => \Add9~74_combout\);

-- Location: FF_X29_Y19_N27
\timeForUnsuccessfulMessage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~74_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(11));

-- Location: LCCOMB_X30_Y19_N28
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = (timeForUnsuccessfulMessage(12) & (\Add9~23\ $ (GND))) # (!timeForUnsuccessfulMessage(12) & (!\Add9~23\ & VCC))
-- \Add9~25\ = CARRY((timeForUnsuccessfulMessage(12) & !\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(12),
	datad => VCC,
	cin => \Add9~23\,
	combout => \Add9~24_combout\,
	cout => \Add9~25\);

-- Location: LCCOMB_X29_Y19_N16
\Add9~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~75_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~24_combout\,
	combout => \Add9~75_combout\);

-- Location: FF_X29_Y19_N17
\timeForUnsuccessfulMessage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~75_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(12));

-- Location: LCCOMB_X30_Y19_N30
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (timeForUnsuccessfulMessage(13) & (!\Add9~25\)) # (!timeForUnsuccessfulMessage(13) & ((\Add9~25\) # (GND)))
-- \Add9~27\ = CARRY((!\Add9~25\) # (!timeForUnsuccessfulMessage(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(13),
	datad => VCC,
	cin => \Add9~25\,
	combout => \Add9~26_combout\,
	cout => \Add9~27\);

-- Location: LCCOMB_X30_Y19_N0
\Add9~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~71_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add9~26_combout\,
	combout => \Add9~71_combout\);

-- Location: FF_X30_Y19_N1
\timeForUnsuccessfulMessage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~71_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(13));

-- Location: LCCOMB_X30_Y18_N0
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (timeForUnsuccessfulMessage(14) & (\Add9~27\ $ (GND))) # (!timeForUnsuccessfulMessage(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((timeForUnsuccessfulMessage(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X29_Y18_N30
\Add9~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~67_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add9~28_combout\,
	combout => \Add9~67_combout\);

-- Location: FF_X29_Y18_N31
\timeForUnsuccessfulMessage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~67_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(14));

-- Location: LCCOMB_X30_Y18_N2
\Add9~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~30_combout\ = (timeForUnsuccessfulMessage(15) & (!\Add9~29\)) # (!timeForUnsuccessfulMessage(15) & ((\Add9~29\) # (GND)))
-- \Add9~31\ = CARRY((!\Add9~29\) # (!timeForUnsuccessfulMessage(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(15),
	datad => VCC,
	cin => \Add9~29\,
	combout => \Add9~30_combout\,
	cout => \Add9~31\);

-- Location: LCCOMB_X29_Y18_N16
\Add9~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~68_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~30_combout\,
	combout => \Add9~68_combout\);

-- Location: FF_X29_Y18_N17
\timeForUnsuccessfulMessage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~68_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(15));

-- Location: LCCOMB_X30_Y18_N4
\Add9~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~32_combout\ = (timeForUnsuccessfulMessage(16) & (\Add9~31\ $ (GND))) # (!timeForUnsuccessfulMessage(16) & (!\Add9~31\ & VCC))
-- \Add9~33\ = CARRY((timeForUnsuccessfulMessage(16) & !\Add9~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(16),
	datad => VCC,
	cin => \Add9~31\,
	combout => \Add9~32_combout\,
	cout => \Add9~33\);

-- Location: LCCOMB_X31_Y18_N10
\Add9~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~69_combout\ = (\Add9~32_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~32_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add9~69_combout\);

-- Location: FF_X31_Y18_N11
\timeForUnsuccessfulMessage[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~69_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(16));

-- Location: LCCOMB_X30_Y18_N6
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (timeForUnsuccessfulMessage(17) & (!\Add9~33\)) # (!timeForUnsuccessfulMessage(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!timeForUnsuccessfulMessage(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X29_Y18_N26
\Add9~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~70_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~34_combout\,
	combout => \Add9~70_combout\);

-- Location: FF_X29_Y18_N27
\timeForUnsuccessfulMessage[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~70_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(17));

-- Location: LCCOMB_X30_Y18_N8
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (timeForUnsuccessfulMessage(18) & (\Add9~35\ $ (GND))) # (!timeForUnsuccessfulMessage(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((timeForUnsuccessfulMessage(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X29_Y19_N0
\Add9~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~66_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add9~36_combout\,
	combout => \Add9~66_combout\);

-- Location: FF_X29_Y19_N1
\timeForUnsuccessfulMessage[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~66_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(18));

-- Location: LCCOMB_X30_Y18_N10
\Add9~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~38_combout\ = (timeForUnsuccessfulMessage(19) & (!\Add9~37\)) # (!timeForUnsuccessfulMessage(19) & ((\Add9~37\) # (GND)))
-- \Add9~39\ = CARRY((!\Add9~37\) # (!timeForUnsuccessfulMessage(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(19),
	datad => VCC,
	cin => \Add9~37\,
	combout => \Add9~38_combout\,
	cout => \Add9~39\);

-- Location: LCCOMB_X31_Y18_N4
\Add9~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~65_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~38_combout\,
	combout => \Add9~65_combout\);

-- Location: FF_X31_Y18_N5
\timeForUnsuccessfulMessage[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~65_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(19));

-- Location: LCCOMB_X30_Y18_N12
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (timeForUnsuccessfulMessage(20) & (\Add9~39\ $ (GND))) # (!timeForUnsuccessfulMessage(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((timeForUnsuccessfulMessage(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X31_Y18_N6
\Add9~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~64_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~40_combout\,
	combout => \Add9~64_combout\);

-- Location: FF_X31_Y18_N7
\timeForUnsuccessfulMessage[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~64_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(20));

-- Location: LCCOMB_X30_Y18_N14
\Add9~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~42_combout\ = (timeForUnsuccessfulMessage(21) & (!\Add9~41\)) # (!timeForUnsuccessfulMessage(21) & ((\Add9~41\) # (GND)))
-- \Add9~43\ = CARRY((!\Add9~41\) # (!timeForUnsuccessfulMessage(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(21),
	datad => VCC,
	cin => \Add9~41\,
	combout => \Add9~42_combout\,
	cout => \Add9~43\);

-- Location: LCCOMB_X31_Y18_N16
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~42_combout\,
	combout => \Add9~44_combout\);

-- Location: FF_X31_Y18_N17
\timeForUnsuccessfulMessage[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~44_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(21));

-- Location: LCCOMB_X30_Y18_N16
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (timeForUnsuccessfulMessage(22) & (\Add9~43\ $ (GND))) # (!timeForUnsuccessfulMessage(22) & (!\Add9~43\ & VCC))
-- \Add9~47\ = CARRY((timeForUnsuccessfulMessage(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X31_Y18_N26
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (\Add9~46_combout\ & \stateCoffeeMachine.Unsuccessful~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~46_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add9~48_combout\);

-- Location: FF_X31_Y18_N27
\timeForUnsuccessfulMessage[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~48_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(22));

-- Location: LCCOMB_X30_Y18_N18
\Add9~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~49_combout\ = (timeForUnsuccessfulMessage(23) & (!\Add9~47\)) # (!timeForUnsuccessfulMessage(23) & ((\Add9~47\) # (GND)))
-- \Add9~50\ = CARRY((!\Add9~47\) # (!timeForUnsuccessfulMessage(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(23),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~49_combout\,
	cout => \Add9~50\);

-- Location: LCCOMB_X31_Y18_N0
\Add9~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~51_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~49_combout\,
	combout => \Add9~51_combout\);

-- Location: FF_X31_Y18_N1
\timeForUnsuccessfulMessage[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~51_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(23));

-- Location: LCCOMB_X30_Y18_N20
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (timeForUnsuccessfulMessage(24) & (\Add9~50\ $ (GND))) # (!timeForUnsuccessfulMessage(24) & (!\Add9~50\ & VCC))
-- \Add9~53\ = CARRY((timeForUnsuccessfulMessage(24) & !\Add9~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(24),
	datad => VCC,
	cin => \Add9~50\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X31_Y18_N22
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~52_combout\,
	combout => \Add9~54_combout\);

-- Location: FF_X31_Y18_N23
\timeForUnsuccessfulMessage[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~54_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(24));

-- Location: LCCOMB_X30_Y18_N22
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = (timeForUnsuccessfulMessage(25) & (!\Add9~53\)) # (!timeForUnsuccessfulMessage(25) & ((\Add9~53\) # (GND)))
-- \Add9~57\ = CARRY((!\Add9~53\) # (!timeForUnsuccessfulMessage(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(25),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~56_combout\,
	cout => \Add9~57\);

-- Location: LCCOMB_X31_Y18_N20
\Add9~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~76_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~56_combout\,
	combout => \Add9~76_combout\);

-- Location: FF_X31_Y18_N21
\timeForUnsuccessfulMessage[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~76_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(25));

-- Location: LCCOMB_X30_Y18_N24
\Add9~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~58_combout\ = (timeForUnsuccessfulMessage(26) & (\Add9~57\ $ (GND))) # (!timeForUnsuccessfulMessage(26) & (!\Add9~57\ & VCC))
-- \Add9~59\ = CARRY((timeForUnsuccessfulMessage(26) & !\Add9~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(26),
	datad => VCC,
	cin => \Add9~57\,
	combout => \Add9~58_combout\,
	cout => \Add9~59\);

-- Location: LCCOMB_X31_Y18_N12
\Add9~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~63_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \Add9~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add9~58_combout\,
	combout => \Add9~63_combout\);

-- Location: FF_X31_Y18_N13
\timeForUnsuccessfulMessage[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~63_combout\,
	ena => \Add9~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(26));

-- Location: LCCOMB_X30_Y16_N28
\Add9~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~55_combout\ = (timeForUnsuccessfulMessage(27) & (\stateCoffeeMachine.Waiting~q\ & !\stateCoffeeMachine.Unsuccessful~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(27),
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add9~55_combout\);

-- Location: LCCOMB_X30_Y18_N26
\Add9~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~60_combout\ = \Add9~59\ $ (timeForUnsuccessfulMessage(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeForUnsuccessfulMessage(27),
	cin => \Add9~59\,
	combout => \Add9~60_combout\);

-- Location: LCCOMB_X30_Y16_N0
\Add9~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~62_combout\ = (\Add9~55_combout\) # ((\stateCoffeeMachine.Unsuccessful~q\ & ((\LessThan11~5_combout\) # (\Add9~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~5_combout\,
	datab => \Add9~55_combout\,
	datac => \Add9~60_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Add9~62_combout\);

-- Location: FF_X30_Y16_N1
\timeForUnsuccessfulMessage[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(27));

-- Location: LCCOMB_X30_Y18_N28
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (timeForUnsuccessfulMessage(24) & (timeForUnsuccessfulMessage(22) & (timeForUnsuccessfulMessage(23) & timeForUnsuccessfulMessage(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(24),
	datab => timeForUnsuccessfulMessage(22),
	datac => timeForUnsuccessfulMessage(23),
	datad => timeForUnsuccessfulMessage(21),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X29_Y19_N6
\LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (timeForUnsuccessfulMessage(10)) # ((timeForUnsuccessfulMessage(12)) # ((timeForUnsuccessfulMessage(11)) # (timeForUnsuccessfulMessage(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(10),
	datab => timeForUnsuccessfulMessage(12),
	datac => timeForUnsuccessfulMessage(11),
	datad => timeForUnsuccessfulMessage(9),
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X29_Y18_N0
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (timeForUnsuccessfulMessage(14) & (timeForUnsuccessfulMessage(15) & (timeForUnsuccessfulMessage(17) & timeForUnsuccessfulMessage(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(14),
	datab => timeForUnsuccessfulMessage(15),
	datac => timeForUnsuccessfulMessage(17),
	datad => timeForUnsuccessfulMessage(16),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X29_Y19_N28
\LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (timeForUnsuccessfulMessage(18)) # ((\LessThan11~1_combout\ & ((\LessThan11~2_combout\) # (timeForUnsuccessfulMessage(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~2_combout\,
	datab => \LessThan11~1_combout\,
	datac => timeForUnsuccessfulMessage(13),
	datad => timeForUnsuccessfulMessage(18),
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X30_Y18_N30
\LessThan11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~4_combout\ = (timeForUnsuccessfulMessage(25) & ((timeForUnsuccessfulMessage(20)) # ((\LessThan11~3_combout\ & timeForUnsuccessfulMessage(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(20),
	datab => \LessThan11~3_combout\,
	datac => timeForUnsuccessfulMessage(25),
	datad => timeForUnsuccessfulMessage(19),
	combout => \LessThan11~4_combout\);

-- Location: LCCOMB_X30_Y16_N22
\LessThan11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~5_combout\ = (timeForUnsuccessfulMessage(27) & ((timeForUnsuccessfulMessage(26)) # ((\LessThan11~0_combout\ & \LessThan11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(26),
	datab => timeForUnsuccessfulMessage(27),
	datac => \LessThan11~0_combout\,
	datad => \LessThan11~4_combout\,
	combout => \LessThan11~5_combout\);

-- Location: LCCOMB_X30_Y14_N14
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\Selector6~1_combout\ & (\Mux11~1_combout\ & ((!\LessThan11~5_combout\) # (!\stateCoffeeMachine.Unsuccessful~q\)))) # (!\Selector6~1_combout\ & (((\stateCoffeeMachine.Unsuccessful~q\ & !\LessThan11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan11~5_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X30_Y14_N15
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

-- Location: LCCOMB_X30_Y14_N8
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & \LessThan11~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan11~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X29_Y14_N14
\Selector3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~7_combout\ = (!\Selector3~0_combout\ & ((\Selector3~6_combout\ & ((\Selector3~5_combout\))) # (!\Selector3~6_combout\ & (\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \Selector3~0_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector3~5_combout\,
	combout => \Selector3~7_combout\);

-- Location: FF_X29_Y14_N15
\stateCoffeeMachine.Selection\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Selection~q\);

-- Location: LCCOMB_X29_Y14_N12
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\stateCoffeeMachine.Selection~q\ & ((selectionDrink(0) $ (!\Selector6~0_combout\)))) # (!\stateCoffeeMachine.Selection~q\ & (\stateCoffeeMachine.Waiting~q\ & (selectionDrink(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(0),
	datad => \Selector6~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X29_Y14_N13
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

-- Location: LCCOMB_X28_Y14_N0
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (money(3) & ((money(2)) # (money(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(2),
	datac => money(1),
	datad => money(3),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X28_Y14_N18
\LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (money(4)) # ((money(5)) # (\LessThan13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(4),
	datac => money(5),
	datad => \LessThan13~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X28_Y14_N14
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!money(5) & (((!money(3) & !money(2))) # (!money(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(4),
	datac => money(3),
	datad => money(2),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X29_Y14_N20
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = selectionDrink(1) $ (((selectionDrink(0) & (!\process_4~0_combout\ & !\process_4~1_combout\)) # (!selectionDrink(0) & ((\process_4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => \process_4~0_combout\,
	datac => \process_4~1_combout\,
	datad => selectionDrink(1),
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X29_Y14_N6
\Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\stateCoffeeMachine.Selection~q\ & (((\Selector8~0_combout\)))) # (!\stateCoffeeMachine.Selection~q\ & (\stateCoffeeMachine.Waiting~q\ & (selectionDrink(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(1),
	datad => \Selector8~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: FF_X29_Y14_N7
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

-- Location: LCCOMB_X29_Y14_N18
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (selectionDrink(0) & (((\LessThan6~0_combout\) # (selectionDrink(1))))) # (!selectionDrink(0) & (!\LessThan13~1_combout\ & ((!selectionDrink(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => \LessThan13~1_combout\,
	datac => \LessThan6~0_combout\,
	datad => selectionDrink(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X28_Y14_N2
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!money(3) & (!money(2) & ((!money(1)) # (!money(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(0),
	datac => money(1),
	datad => money(2),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X28_Y14_N16
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = ((!money(4) & \LessThan7~0_combout\)) # (!money(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(4),
	datac => money(5),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X29_Y14_N16
\Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & (((!selectionDrink(1))) # (!\LessThan8~1_combout\))) # (!\Mux11~0_combout\ & (((\LessThan7~1_combout\ & selectionDrink(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~1_combout\,
	datab => \Mux11~0_combout\,
	datac => \LessThan7~1_combout\,
	datad => selectionDrink(1),
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = procentCount(0) $ (VCC)
-- \Add7~1\ = CARRY(procentCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procentCount(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X21_Y15_N24
\Add7~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~75_combout\ = (\Add7~0_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~0_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~75_combout\);

-- Location: LCCOMB_X25_Y16_N8
\Add7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~19_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((!\LessThan9~1_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => \LessThan9~1_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Add7~19_combout\);

-- Location: FF_X21_Y15_N25
\procentCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~75_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(0));

-- Location: LCCOMB_X22_Y15_N10
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (procentCount(1) & (!\Add7~1\)) # (!procentCount(1) & ((\Add7~1\) # (GND)))
-- \Add7~3\ = CARRY((!\Add7~1\) # (!procentCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X22_Y15_N0
\Add7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~74_combout\ = (\Add7~2_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~2_combout\,
	datac => \LessThan10~5_combout\,
	combout => \Add7~74_combout\);

-- Location: FF_X22_Y15_N1
\procentCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~74_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(1));

-- Location: LCCOMB_X22_Y15_N12
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (procentCount(2) & (\Add7~3\ $ (GND))) # (!procentCount(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((procentCount(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X22_Y15_N2
\Add7~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~73_combout\ = (\Add7~4_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datac => \LessThan10~5_combout\,
	combout => \Add7~73_combout\);

-- Location: FF_X22_Y15_N3
\procentCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~73_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(2));

-- Location: LCCOMB_X22_Y15_N14
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (procentCount(3) & (!\Add7~5\)) # (!procentCount(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!procentCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X21_Y15_N10
\Add7~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~72_combout\ = (\Add7~6_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~6_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~72_combout\);

-- Location: FF_X21_Y15_N11
\procentCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~72_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(3));

-- Location: LCCOMB_X22_Y15_N16
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (procentCount(4) & (\Add7~7\ $ (GND))) # (!procentCount(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((procentCount(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X22_Y15_N4
\Add7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~71_combout\ = (\Add7~8_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~8_combout\,
	datac => \LessThan10~5_combout\,
	combout => \Add7~71_combout\);

-- Location: FF_X22_Y15_N5
\procentCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~71_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(4));

-- Location: LCCOMB_X22_Y15_N18
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (procentCount(5) & (!\Add7~9\)) # (!procentCount(5) & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!procentCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(5),
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X21_Y15_N4
\Add7~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~70_combout\ = (\Add7~10_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~10_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~70_combout\);

-- Location: FF_X21_Y15_N5
\procentCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~70_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(5));

-- Location: LCCOMB_X22_Y15_N20
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (procentCount(6) & (\Add7~11\ $ (GND))) # (!procentCount(6) & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((procentCount(6) & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(6),
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X21_Y15_N26
\Add7~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~69_combout\ = (\Add7~12_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~12_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~69_combout\);

-- Location: FF_X21_Y15_N27
\procentCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~69_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(6));

-- Location: LCCOMB_X22_Y15_N22
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (procentCount(7) & (!\Add7~13\)) # (!procentCount(7) & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!procentCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(7),
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X21_Y15_N20
\Add7~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~68_combout\ = (\Add7~14_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~68_combout\);

-- Location: FF_X21_Y15_N21
\procentCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~68_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(7));

-- Location: LCCOMB_X22_Y15_N24
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (procentCount(8) & (\Add7~15\ $ (GND))) # (!procentCount(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((procentCount(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X21_Y15_N16
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add7~16_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~16_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~18_combout\);

-- Location: FF_X21_Y15_N17
\procentCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~18_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(8));

-- Location: LCCOMB_X22_Y15_N26
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (procentCount(9) & (!\Add7~17\)) # (!procentCount(9) & ((\Add7~17\) # (GND)))
-- \Add7~21\ = CARRY((!\Add7~17\) # (!procentCount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(9),
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X21_Y15_N22
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\Add7~20_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~20_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~22_combout\);

-- Location: FF_X21_Y15_N23
\procentCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~22_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(9));

-- Location: LCCOMB_X22_Y15_N28
\Add7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~23_combout\ = (procentCount(10) & (\Add7~21\ $ (GND))) # (!procentCount(10) & (!\Add7~21\ & VCC))
-- \Add7~24\ = CARRY((procentCount(10) & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(10),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~23_combout\,
	cout => \Add7~24\);

-- Location: LCCOMB_X21_Y15_N12
\Add7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~25_combout\ = (\Add7~23_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~23_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~25_combout\);

-- Location: FF_X21_Y15_N13
\procentCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~25_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(10));

-- Location: LCCOMB_X22_Y15_N30
\Add7~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~26_combout\ = (procentCount(11) & (!\Add7~24\)) # (!procentCount(11) & ((\Add7~24\) # (GND)))
-- \Add7~27\ = CARRY((!\Add7~24\) # (!procentCount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(11),
	datad => VCC,
	cin => \Add7~24\,
	combout => \Add7~26_combout\,
	cout => \Add7~27\);

-- Location: LCCOMB_X21_Y15_N6
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (\Add7~26_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~26_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~28_combout\);

-- Location: FF_X21_Y15_N7
\procentCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~28_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(11));

-- Location: LCCOMB_X22_Y14_N0
\Add7~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~29_combout\ = (procentCount(12) & (\Add7~27\ $ (GND))) # (!procentCount(12) & (!\Add7~27\ & VCC))
-- \Add7~30\ = CARRY((procentCount(12) & !\Add7~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(12),
	datad => VCC,
	cin => \Add7~27\,
	combout => \Add7~29_combout\,
	cout => \Add7~30\);

-- Location: LCCOMB_X23_Y14_N0
\Add7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~31_combout\ = (\Add7~29_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~29_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~31_combout\);

-- Location: FF_X23_Y14_N1
\procentCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~31_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(12));

-- Location: LCCOMB_X22_Y14_N2
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (procentCount(13) & (!\Add7~30\)) # (!procentCount(13) & ((\Add7~30\) # (GND)))
-- \Add7~33\ = CARRY((!\Add7~30\) # (!procentCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(13),
	datad => VCC,
	cin => \Add7~30\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X23_Y14_N26
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\Add7~32_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~32_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~34_combout\);

-- Location: FF_X23_Y14_N27
\procentCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~34_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(13));

-- Location: LCCOMB_X22_Y14_N4
\Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~35_combout\ = (procentCount(14) & (\Add7~33\ $ (GND))) # (!procentCount(14) & (!\Add7~33\ & VCC))
-- \Add7~36\ = CARRY((procentCount(14) & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(14),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~35_combout\,
	cout => \Add7~36\);

-- Location: LCCOMB_X23_Y14_N4
\Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~37_combout\ = (\Add7~35_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~35_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~37_combout\);

-- Location: FF_X23_Y14_N5
\procentCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~37_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(14));

-- Location: LCCOMB_X22_Y14_N6
\Add7~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~38_combout\ = (procentCount(15) & (!\Add7~36\)) # (!procentCount(15) & ((\Add7~36\) # (GND)))
-- \Add7~39\ = CARRY((!\Add7~36\) # (!procentCount(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(15),
	datad => VCC,
	cin => \Add7~36\,
	combout => \Add7~38_combout\,
	cout => \Add7~39\);

-- Location: LCCOMB_X23_Y14_N18
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\Add7~38_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~38_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~40_combout\);

-- Location: FF_X23_Y14_N19
\procentCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~40_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(15));

-- Location: LCCOMB_X22_Y14_N8
\Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~41_combout\ = (procentCount(16) & (\Add7~39\ $ (GND))) # (!procentCount(16) & (!\Add7~39\ & VCC))
-- \Add7~42\ = CARRY((procentCount(16) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(16),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~41_combout\,
	cout => \Add7~42\);

-- Location: LCCOMB_X23_Y14_N28
\Add7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~43_combout\ = (\Add7~41_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~41_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~43_combout\);

-- Location: FF_X23_Y14_N29
\procentCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~43_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(16));

-- Location: LCCOMB_X22_Y14_N10
\Add7~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~44_combout\ = (procentCount(17) & (!\Add7~42\)) # (!procentCount(17) & ((\Add7~42\) # (GND)))
-- \Add7~45\ = CARRY((!\Add7~42\) # (!procentCount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(17),
	datad => VCC,
	cin => \Add7~42\,
	combout => \Add7~44_combout\,
	cout => \Add7~45\);

-- Location: LCCOMB_X23_Y14_N6
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\Add7~44_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~44_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~46_combout\);

-- Location: FF_X23_Y14_N7
\procentCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~46_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(17));

-- Location: LCCOMB_X22_Y14_N12
\Add7~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~47_combout\ = (procentCount(18) & (\Add7~45\ $ (GND))) # (!procentCount(18) & (!\Add7~45\ & VCC))
-- \Add7~48\ = CARRY((procentCount(18) & !\Add7~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(18),
	datad => VCC,
	cin => \Add7~45\,
	combout => \Add7~47_combout\,
	cout => \Add7~48\);

-- Location: LCCOMB_X22_Y14_N26
\Add7~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~49_combout\ = (\Add7~47_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~47_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~49_combout\);

-- Location: FF_X22_Y14_N27
\procentCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~49_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(18));

-- Location: LCCOMB_X22_Y14_N14
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (procentCount(19) & (!\Add7~48\)) # (!procentCount(19) & ((\Add7~48\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~48\) # (!procentCount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(19),
	datad => VCC,
	cin => \Add7~48\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X23_Y14_N20
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (\Add7~50_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~50_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~52_combout\);

-- Location: FF_X23_Y14_N21
\procentCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~52_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(19));

-- Location: LCCOMB_X22_Y14_N16
\Add7~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~53_combout\ = (procentCount(20) & (\Add7~51\ $ (GND))) # (!procentCount(20) & (!\Add7~51\ & VCC))
-- \Add7~54\ = CARRY((procentCount(20) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(20),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~53_combout\,
	cout => \Add7~54\);

-- Location: LCCOMB_X22_Y14_N28
\Add7~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~55_combout\ = (\Add7~53_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~53_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~55_combout\);

-- Location: FF_X22_Y14_N29
\procentCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~55_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(20));

-- Location: LCCOMB_X22_Y14_N18
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (procentCount(21) & (!\Add7~54\)) # (!procentCount(21) & ((\Add7~54\) # (GND)))
-- \Add7~57\ = CARRY((!\Add7~54\) # (!procentCount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(21),
	datad => VCC,
	cin => \Add7~54\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X23_Y14_N2
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (\Add7~56_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~56_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~58_combout\);

-- Location: FF_X23_Y14_N3
\procentCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~58_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(21));

-- Location: LCCOMB_X22_Y14_N20
\Add7~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~59_combout\ = (procentCount(22) & (\Add7~57\ $ (GND))) # (!procentCount(22) & (!\Add7~57\ & VCC))
-- \Add7~60\ = CARRY((procentCount(22) & !\Add7~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(22),
	datad => VCC,
	cin => \Add7~57\,
	combout => \Add7~59_combout\,
	cout => \Add7~60\);

-- Location: LCCOMB_X23_Y14_N16
\Add7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~61_combout\ = (\Add7~59_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~59_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~61_combout\);

-- Location: FF_X23_Y14_N17
\procentCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~61_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(22));

-- Location: LCCOMB_X22_Y14_N22
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = (procentCount(23) & (!\Add7~60\)) # (!procentCount(23) & ((\Add7~60\) # (GND)))
-- \Add7~63\ = CARRY((!\Add7~60\) # (!procentCount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(23),
	datad => VCC,
	cin => \Add7~60\,
	combout => \Add7~62_combout\,
	cout => \Add7~63\);

-- Location: LCCOMB_X23_Y14_N30
\Add7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~64_combout\ = (\Add7~62_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~62_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~64_combout\);

-- Location: FF_X23_Y14_N31
\procentCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~64_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(23));

-- Location: LCCOMB_X22_Y14_N24
\Add7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~65_combout\ = procentCount(24) $ (!\Add7~63\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(24),
	cin => \Add7~63\,
	combout => \Add7~65_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Add7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~67_combout\ = (\Add7~65_combout\ & \LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~65_combout\,
	datad => \LessThan10~5_combout\,
	combout => \Add7~67_combout\);

-- Location: FF_X22_Y14_N31
\procentCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~67_combout\,
	sclr => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(24));

-- Location: LCCOMB_X21_Y15_N30
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (((!procentCount(8) & !procentCount(9))) # (!procentCount(11))) # (!procentCount(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(10),
	datab => procentCount(8),
	datac => procentCount(9),
	datad => procentCount(11),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X23_Y14_N12
\LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = ((\LessThan10~0_combout\ & !procentCount(12))) # (!procentCount(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datac => procentCount(13),
	datad => procentCount(12),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X23_Y14_N10
\LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = ((\LessThan10~1_combout\ & (!procentCount(14) & !procentCount(15)))) # (!procentCount(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~1_combout\,
	datab => procentCount(16),
	datac => procentCount(14),
	datad => procentCount(15),
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X23_Y14_N8
\LessThan10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~3_combout\ = (!procentCount(19) & (!procentCount(18) & !procentCount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procentCount(19),
	datac => procentCount(18),
	datad => procentCount(17),
	combout => \LessThan10~3_combout\);

-- Location: LCCOMB_X23_Y14_N22
\LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = (((\LessThan10~2_combout\ & \LessThan10~3_combout\)) # (!procentCount(21))) # (!procentCount(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~2_combout\,
	datab => procentCount(20),
	datac => \LessThan10~3_combout\,
	datad => procentCount(21),
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X23_Y14_N24
\LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~5_combout\ = ((!procentCount(23) & (\LessThan10~4_combout\ & !procentCount(22)))) # (!procentCount(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(23),
	datab => procentCount(24),
	datac => \LessThan10~4_combout\,
	datad => procentCount(22),
	combout => \LessThan10~5_combout\);

-- Location: LCCOMB_X25_Y16_N12
\procent~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent~7_combout\ = (\LessThan9~1_combout\) # (\LessThan10~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan9~1_combout\,
	datad => \LessThan10~5_combout\,
	combout => \procent~7_combout\);

-- Location: LCCOMB_X28_Y16_N12
\procent[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[0]~8_combout\ = (procent(0) & (\procent~7_combout\ $ (GND))) # (!procent(0) & (!\procent~7_combout\ & VCC))
-- \procent[0]~9\ = CARRY((procent(0) & !\procent~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(0),
	datab => \procent~7_combout\,
	datad => VCC,
	combout => \procent[0]~8_combout\,
	cout => \procent[0]~9\);

-- Location: LCCOMB_X25_Y16_N14
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\stateCoffeeMachine.Waiting~q\ & procent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => procent(0),
	combout => \Selector22~0_combout\);

-- Location: FF_X28_Y16_N13
\procent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[0]~8_combout\,
	asdata => \Selector22~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(0));

-- Location: LCCOMB_X28_Y16_N14
\procent[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[1]~10_combout\ = (procent(1) & (!\procent[0]~9\)) # (!procent(1) & ((\procent[0]~9\) # (GND)))
-- \procent[1]~11\ = CARRY((!\procent[0]~9\) # (!procent(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(1),
	datad => VCC,
	cin => \procent[0]~9\,
	combout => \procent[1]~10_combout\,
	cout => \procent[1]~11\);

-- Location: LCCOMB_X28_Y17_N22
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (procent(1) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X28_Y16_N15
\procent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[1]~10_combout\,
	asdata => \Selector21~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(1));

-- Location: LCCOMB_X28_Y16_N16
\procent[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[2]~12_combout\ = (procent(2) & (\procent[1]~11\ $ (GND))) # (!procent(2) & (!\procent[1]~11\ & VCC))
-- \procent[2]~13\ = CARRY((procent(2) & !\procent[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => VCC,
	cin => \procent[1]~11\,
	combout => \procent[2]~12_combout\,
	cout => \procent[2]~13\);

-- Location: LCCOMB_X28_Y17_N4
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (procent(2) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X28_Y16_N17
\procent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[2]~12_combout\,
	asdata => \Selector20~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(2));

-- Location: LCCOMB_X28_Y16_N18
\procent[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[3]~14_combout\ = (procent(3) & (!\procent[2]~13\)) # (!procent(3) & ((\procent[2]~13\) # (GND)))
-- \procent[3]~15\ = CARRY((!\procent[2]~13\) # (!procent(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datad => VCC,
	cin => \procent[2]~13\,
	combout => \procent[3]~14_combout\,
	cout => \procent[3]~15\);

-- Location: LCCOMB_X28_Y17_N14
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (procent(3) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X28_Y16_N19
\procent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[3]~14_combout\,
	asdata => \Selector19~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(3));

-- Location: LCCOMB_X26_Y15_N0
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (procent(2) & ((procent(1)) # (procent(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(1),
	datac => procent(2),
	datad => procent(0),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X28_Y16_N20
\procent[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[4]~16_combout\ = (procent(4) & (\procent[3]~15\ $ (GND))) # (!procent(4) & (!\procent[3]~15\ & VCC))
-- \procent[4]~17\ = CARRY((procent(4) & !\procent[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datad => VCC,
	cin => \procent[3]~15\,
	combout => \procent[4]~16_combout\,
	cout => \procent[4]~17\);

-- Location: LCCOMB_X28_Y17_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (procent(4) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(4),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X28_Y16_N21
\procent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[4]~16_combout\,
	asdata => \Selector18~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(4));

-- Location: LCCOMB_X28_Y16_N22
\procent[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[5]~18_combout\ = (procent(5) & (!\procent[4]~17\)) # (!procent(5) & ((\procent[4]~17\) # (GND)))
-- \procent[5]~19\ = CARRY((!\procent[4]~17\) # (!procent(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(5),
	datad => VCC,
	cin => \procent[4]~17\,
	combout => \procent[5]~18_combout\,
	cout => \procent[5]~19\);

-- Location: LCCOMB_X28_Y17_N8
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (procent(5) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(5),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector17~0_combout\);

-- Location: FF_X28_Y16_N23
\procent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[5]~18_combout\,
	asdata => \Selector17~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(5));

-- Location: LCCOMB_X28_Y16_N24
\procent[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[6]~20_combout\ = procent(6) $ (!\procent[5]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	cin => \procent[5]~19\,
	combout => \procent[6]~20_combout\);

-- Location: LCCOMB_X28_Y17_N30
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (procent(6) & \stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(6),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X28_Y16_N25
\procent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[6]~20_combout\,
	asdata => \Selector16~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(6));

-- Location: LCCOMB_X26_Y16_N0
\digit2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[0]~0_combout\ = (procent(6) & procent(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(6),
	datad => procent(5),
	combout => \digit2[0]~0_combout\);

-- Location: LCCOMB_X26_Y16_N20
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (\digit2[0]~0_combout\ & ((procent(3)) # ((\LessThan9~0_combout\) # (procent(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => \LessThan9~0_combout\,
	datac => procent(4),
	datad => \digit2[0]~0_combout\,
	combout => \LessThan9~1_combout\);

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

-- Location: FF_X30_Y14_N11
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

-- Location: LCCOMB_X30_Y14_N10
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\LessThan9~1_combout\)) # (!\stateCoffeeMachine.Implementation~q\ & (((!\buttonWaiting~input_o\ & \buttonWaitingPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~1_combout\,
	datab => \buttonWaiting~input_o\,
	datac => \buttonWaitingPrev~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X30_Y14_N4
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector6~1_combout\ & (!\Mux11~1_combout\)) # (!\Selector6~1_combout\ & (((\stateCoffeeMachine.Implementation~q\ & !\Selector3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X30_Y14_N5
\stateCoffeeMachine.Implementation\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Implementation~q\);

-- Location: LCCOMB_X30_Y14_N16
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector6~0_combout\ & ((\buttonSelection~input_o\) # (!\buttonSelectionPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~input_o\,
	datac => \buttonSelectionPrev~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X30_Y14_N22
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\stateCoffeeMachine.Selection~q\ & !\stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X30_Y14_N2
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~1_combout\ & ((\stateCoffeeMachine.Implementation~q\) # ((\Selector3~2_combout\ & !\Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \Selector3~2_combout\,
	datac => \Selector1~3_combout\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X30_Y14_N12
\Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (!\Selector1~3_combout\ & (!\buttonSelection~input_o\ & (\buttonSelectionPrev~q\ & \Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \buttonSelection~input_o\,
	datac => \buttonSelectionPrev~q\,
	datad => \Selector6~0_combout\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X29_Y14_N10
\Selector3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~3_combout\) # ((\Selector3~4_combout\) # (\Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~3_combout\,
	datac => \Selector3~4_combout\,
	datad => \Selector3~5_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCCOMB_X29_Y14_N8
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\Selector3~0_combout\ & (!\Selector3~3_combout\ & ((\Selector3~6_combout\) # (\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~6_combout\,
	datab => \Selector3~0_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector3~3_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X29_Y14_N9
\stateCoffeeMachine.Waiting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Waiting~q\);

-- Location: LCCOMB_X30_Y14_N6
\Selector3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (!\stateCoffeeMachine.Waiting~q\ & (((\buttonWaitingPrev~q\ & !\buttonWaiting~input_o\)) # (!\Selector3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \Selector3~2_combout\,
	datac => \buttonWaitingPrev~q\,
	datad => \buttonWaiting~input_o\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X30_Y14_N24
\enableButton~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~1_combout\ = (\enableButton~q\) # (((\buttonWaitingPrev~q\ & !\buttonWaiting~input_o\)) # (!\Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableButton~q\,
	datab => \Selector3~2_combout\,
	datac => \buttonWaitingPrev~q\,
	datad => \buttonWaiting~input_o\,
	combout => \enableButton~1_combout\);

-- Location: LCCOMB_X30_Y14_N18
\enableButton~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~0_combout\ = (\enableButton~q\ & (((\stateCoffeeMachine.Unsuccessful~q\) # (\stateCoffeeMachine.Implementation~q\)) # (!\stateCoffeeMachine.Waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \enableButton~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \enableButton~0_combout\);

-- Location: LCCOMB_X30_Y14_N30
\enableButton~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~2_combout\ = (\Selector3~5_combout\) # ((\enableButton~0_combout\) # ((\enableButton~1_combout\ & !\Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~5_combout\,
	datab => \enableButton~1_combout\,
	datac => \Selector1~3_combout\,
	datad => \enableButton~0_combout\,
	combout => \enableButton~2_combout\);

-- Location: LCCOMB_X26_Y13_N22
\enableButton~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \enableButton~3_combout\ = (\enableButton~2_combout\ & ((\LessThan12~2_combout\) # ((\LessThan12~3_combout\) # (!\enableButton~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~2_combout\,
	datab => \enableButton~2_combout\,
	datac => \enableButton~q\,
	datad => \LessThan12~3_combout\,
	combout => \enableButton~3_combout\);

-- Location: FF_X26_Y13_N23
enableButton : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \enableButton~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enableButton~q\);

-- Location: FF_X30_Y14_N17
buttonSelectionPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonSelection~input_o\,
	sload => VCC,
	ena => \ALT_INV_enableButton~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonSelectionPrev~q\);

-- Location: LCCOMB_X30_Y14_N26
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\buttonSelection~input_o\ & (((\buttonWaiting~input_o\) # (!\buttonWaitingPrev~q\)))) # (!\buttonSelection~input_o\ & (!\buttonSelectionPrev~q\ & ((\buttonWaiting~input_o\) # (!\buttonWaitingPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~input_o\,
	datab => \buttonSelectionPrev~q\,
	datac => \buttonWaitingPrev~q\,
	datad => \buttonWaiting~input_o\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X30_Y14_N0
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\stateCoffeeMachine.Selection~q\ & (\Selector6~0_combout\ & (\buttonSelectionPrev~q\ & !\buttonSelection~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \Selector6~0_combout\,
	datac => \buttonSelectionPrev~q\,
	datad => \buttonSelection~input_o\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X30_Y14_N28
\Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Selector4~0_combout\) # ((\stateCoffeeMachine.Payment~q\ & ((\Selector4~1_combout\) # (!\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \Selector6~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: FF_X30_Y14_N29
\stateCoffeeMachine.Payment\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.Payment~q\);

-- Location: LCCOMB_X26_Y20_N8
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

-- Location: FF_X26_Y20_N9
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~24_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X26_Y20_N10
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

-- Location: FF_X26_Y20_N11
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~26_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X26_Y20_N12
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

-- Location: FF_X26_Y20_N13
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~28_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X26_Y20_N14
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

-- Location: FF_X26_Y20_N15
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~30_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X26_Y20_N16
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

-- Location: FF_X26_Y20_N17
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~32_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X26_Y20_N18
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

-- Location: FF_X26_Y20_N19
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~34_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X26_Y20_N20
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

-- Location: FF_X26_Y20_N21
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~36_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X26_Y20_N22
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

-- Location: FF_X26_Y20_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~38_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X26_Y20_N24
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

-- Location: FF_X26_Y20_N25
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~40_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X26_Y20_N26
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

-- Location: FF_X26_Y20_N27
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~42_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X26_Y20_N28
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

-- Location: FF_X26_Y20_N29
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~44_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X26_Y20_N30
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

-- Location: FF_X26_Y20_N31
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~46_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X26_Y19_N0
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

-- Location: FF_X26_Y19_N1
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~48_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X26_Y19_N2
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

-- Location: FF_X26_Y19_N3
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~50_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X26_Y19_N4
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

-- Location: FF_X26_Y19_N5
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~52_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X26_Y19_N6
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

-- Location: FF_X26_Y19_N7
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~54_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X26_Y19_N8
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

-- Location: FF_X26_Y19_N9
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~56_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X26_Y19_N10
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

-- Location: FF_X26_Y19_N11
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~58_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X26_Y19_N12
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

-- Location: FF_X26_Y19_N13
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~60_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X26_Y19_N14
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

-- Location: FF_X26_Y19_N15
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~62_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X26_Y19_N16
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

-- Location: FF_X26_Y19_N17
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~64_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X26_Y19_N28
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!counter(17)) # (!counter(19))) # (!counter(20))) # (!counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(18),
	datab => counter(20),
	datac => counter(19),
	datad => counter(17),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X26_Y19_N18
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

-- Location: FF_X26_Y19_N19
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~66_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X26_Y19_N20
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

-- Location: FF_X26_Y19_N21
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~68_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X26_Y19_N22
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

-- Location: FF_X26_Y19_N23
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[23]~70_combout\,
	sclr => \ALT_INV_LessThan2~7_combout\,
	ena => \ALT_INV_stateCoffeeMachine.Waiting~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X26_Y19_N30
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan2~0_combout\) # (((!counter(21)) # (!counter(23))) # (!counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => counter(22),
	datac => counter(23),
	datad => counter(21),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ((!counter(2) & ((!counter(1)) # (!counter(0))))) # (!counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(2),
	datab => counter(3),
	datac => counter(0),
	datad => counter(1),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X26_Y20_N4
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!counter(9) & (!counter(8) & (!counter(7) & !counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(8),
	datac => counter(7),
	datad => counter(6),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X26_Y20_N0
\LessThan2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = (\LessThan2~2_combout\ & (((\LessThan2~3_combout\ & !counter(4))) # (!counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => counter(4),
	datac => \LessThan2~2_combout\,
	datad => counter(5),
	combout => \LessThan2~4_combout\);

-- Location: LCCOMB_X26_Y20_N2
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((!counter(11) & (!counter(10) & \LessThan2~4_combout\))) # (!counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => counter(10),
	datac => counter(12),
	datad => \LessThan2~4_combout\,
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((!counter(13) & \LessThan2~5_combout\)) # (!counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datac => counter(14),
	datad => \LessThan2~5_combout\,
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X26_Y19_N26
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = (\LessThan2~1_combout\) # ((\LessThan2~6_combout\ & (!counter(16) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~6_combout\,
	datac => counter(16),
	datad => counter(15),
	combout => \LessThan2~7_combout\);

-- Location: LCCOMB_X28_Y17_N28
\latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \latch~1_combout\ = (\latch~q\) # (!\LessThan2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datac => \latch~q\,
	combout => \latch~1_combout\);

-- Location: FF_X28_Y17_N29
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

-- Location: LCCOMB_X28_Y17_N2
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((\LessThan2~7_combout\ & ((!led(0)))) # (!\LessThan2~7_combout\ & ((led(0)) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \latch~q\,
	datac => led(0),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X28_Y17_N26
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (!\stateCoffeeMachine.Payment~q\ & (!\stateCoffeeMachine.Selection~q\ & !\Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X28_Y17_N27
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

-- Location: LCCOMB_X28_Y17_N12
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((\LessThan2~7_combout\ & ((!led(1)))) # (!\LessThan2~7_combout\ & ((led(1)) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \latch~q\,
	datac => \LessThan2~7_combout\,
	datad => led(1),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X28_Y17_N24
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\stateCoffeeMachine.Selection~q\ & !\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X28_Y17_N25
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

-- Location: LCCOMB_X28_Y17_N18
\led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led~0_combout\ = (\stateCoffeeMachine.Waiting~q\) # ((\LessThan2~7_combout\ & ((led(2)))) # (!\LessThan2~7_combout\ & (\latch~q\ & !led(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \latch~q\,
	datac => led(2),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \led~0_combout\);

-- Location: FF_X28_Y17_N19
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

-- Location: LCCOMB_X21_Y19_N14
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

-- Location: LCCOMB_X21_Y18_N30
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!clkForIndication(8) & (!clkForIndication(10) & (!clkForIndication(11) & !clkForIndication(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datab => clkForIndication(10),
	datac => clkForIndication(11),
	datad => clkForIndication(9),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y19_N0
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

-- Location: LCCOMB_X21_Y18_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkForIndication(13) & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (!clkForIndication(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(12),
	datab => clkForIndication(13),
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y18_N24
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\LessThan0~3_combout\ & !\LessThan0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~3_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~4_combout\);

-- Location: FF_X21_Y19_N15
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

-- Location: LCCOMB_X21_Y19_N16
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

-- Location: FF_X21_Y19_N17
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

-- Location: LCCOMB_X21_Y19_N18
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

-- Location: FF_X21_Y19_N19
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

-- Location: LCCOMB_X21_Y19_N20
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

-- Location: FF_X21_Y19_N21
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

-- Location: LCCOMB_X21_Y19_N22
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

-- Location: FF_X21_Y19_N23
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

-- Location: LCCOMB_X21_Y19_N24
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

-- Location: FF_X21_Y19_N25
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

-- Location: LCCOMB_X21_Y19_N26
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

-- Location: FF_X21_Y19_N27
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

-- Location: LCCOMB_X21_Y19_N28
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

-- Location: FF_X21_Y19_N29
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

-- Location: LCCOMB_X21_Y19_N30
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

-- Location: FF_X21_Y19_N31
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

-- Location: LCCOMB_X21_Y18_N0
\clkForIndication[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[9]~36_combout\ = (clkForIndication(9) & (!\clkForIndication[8]~35\)) # (!clkForIndication(9) & ((\clkForIndication[8]~35\) # (GND)))
-- \clkForIndication[9]~37\ = CARRY((!\clkForIndication[8]~35\) # (!clkForIndication(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(9),
	datad => VCC,
	cin => \clkForIndication[8]~35\,
	combout => \clkForIndication[9]~36_combout\,
	cout => \clkForIndication[9]~37\);

-- Location: FF_X21_Y18_N1
\clkForIndication[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[9]~36_combout\,
	sclr => \LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(9));

-- Location: LCCOMB_X21_Y18_N2
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

-- Location: FF_X21_Y18_N3
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

-- Location: LCCOMB_X21_Y18_N4
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

-- Location: FF_X21_Y18_N5
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

-- Location: LCCOMB_X21_Y18_N6
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

-- Location: FF_X21_Y18_N7
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

-- Location: LCCOMB_X21_Y18_N8
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

-- Location: FF_X21_Y18_N9
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

-- Location: LCCOMB_X21_Y18_N10
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

-- Location: FF_X21_Y18_N11
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

-- Location: LCCOMB_X21_Y18_N12
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

-- Location: FF_X21_Y18_N13
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

-- Location: LCCOMB_X21_Y18_N14
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

-- Location: FF_X21_Y18_N15
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

-- Location: LCCOMB_X21_Y18_N16
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

-- Location: FF_X21_Y18_N17
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

-- Location: LCCOMB_X21_Y18_N22
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

-- Location: LCCOMB_X21_Y18_N28
\indicator[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[0]~1_combout\ = indicator(0) $ (((!\LessThan0~3_combout\ & !\LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datac => indicator(0),
	datad => \LessThan0~2_combout\,
	combout => \indicator[0]~1_combout\);

-- Location: FF_X21_Y18_N29
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

-- Location: LCCOMB_X21_Y18_N26
\indicator[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[1]~0_combout\ = indicator(1) $ (((!\LessThan0~3_combout\ & (indicator(0) & !\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => indicator(0),
	datac => indicator(1),
	datad => \LessThan0~2_combout\,
	combout => \indicator[1]~0_combout\);

-- Location: FF_X21_Y18_N27
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

-- Location: LCCOMB_X25_Y16_N30
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\stateCoffeeMachine.Payment~q\) # (\stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X30_Y17_N8
\digit2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[0]~1_combout\ = (!procent(4) & (procent(6) & (!procent(3) & procent(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datab => procent(6),
	datac => procent(3),
	datad => procent(5),
	combout => \digit2[0]~1_combout\);

-- Location: LCCOMB_X28_Y16_N0
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = procent(4) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(procent(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y16_N2
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (procent(5) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!procent(5) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!procent(5) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(5),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y16_N4
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (procent(6) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!procent(6) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((procent(6) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y16_N6
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X28_Y16_N26
\Mod1|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X28_Y16_N28
\Mod1|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ = (procent(6) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X28_Y16_N8
\Mod1|auto_generated|divider|divider|StageOut[23]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X28_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[23]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\ = (procent(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X30_Y16_N6
\Mod1|auto_generated|divider|divider|StageOut[22]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X30_Y16_N12
\Mod1|auto_generated|divider|divider|StageOut[22]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ = (procent(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X30_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[21]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\ = (procent(3) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X30_Y16_N24
\Mod1|auto_generated|divider|divider|StageOut[21]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\ = (procent(3) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X29_Y16_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y16_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y16_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y16_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X29_Y16_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y16_N10
\Mod1|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(6)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => procent(6),
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X29_Y16_N0
\Mod1|auto_generated|divider|divider|StageOut[32]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X29_Y16_N30
\Mod1|auto_generated|divider|divider|StageOut[31]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X29_Y16_N2
\Mod1|auto_generated|divider|divider|StageOut[31]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(5)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => procent(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\);

-- Location: LCCOMB_X30_Y16_N2
\Mod1|auto_generated|divider|divider|StageOut[30]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => procent(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\);

-- Location: LCCOMB_X29_Y16_N14
\Mod1|auto_generated|divider|divider|StageOut[30]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X30_Y16_N4
\Mod1|auto_generated|divider|divider|StageOut[29]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ = (procent(3) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X29_Y16_N28
\Mod1|auto_generated|divider|divider|StageOut[29]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X30_Y16_N20
\Mod1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (procent(2) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X30_Y16_N18
\Mod1|auto_generated|divider|divider|StageOut[28]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\ = (procent(2) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X29_Y16_N16
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X29_Y16_N18
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X29_Y16_N20
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X29_Y16_N22
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X29_Y16_N24
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X29_Y16_N26
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y17_N8
\Mod1|auto_generated|divider|divider|StageOut[40]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X29_Y17_N2
\Mod1|auto_generated|divider|divider|StageOut[40]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\);

-- Location: LCCOMB_X29_Y17_N26
\Mod1|auto_generated|divider|divider|StageOut[39]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\);

-- Location: LCCOMB_X29_Y17_N24
\Mod1|auto_generated|divider|divider|StageOut[39]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\);

-- Location: LCCOMB_X29_Y17_N6
\Mod1|auto_generated|divider|divider|StageOut[38]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\);

-- Location: LCCOMB_X29_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[38]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\);

-- Location: LCCOMB_X29_Y17_N30
\Mod1|auto_generated|divider|divider|StageOut[37]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\);

-- Location: LCCOMB_X30_Y17_N14
\Mod1|auto_generated|divider|divider|StageOut[37]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (procent(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => procent(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\);

-- Location: LCCOMB_X30_Y17_N4
\Mod1|auto_generated|divider|divider|StageOut[36]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\ = (procent(2) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\);

-- Location: LCCOMB_X29_Y17_N0
\Mod1|auto_generated|divider|divider|StageOut[36]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X28_Y17_N16
\Mod1|auto_generated|divider|divider|StageOut[35]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & procent(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => procent(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\);

-- Location: LCCOMB_X28_Y17_N6
\Mod1|auto_generated|divider|divider|StageOut[35]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & procent(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => procent(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X29_Y17_N10
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[35]~59_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X29_Y17_N12
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X29_Y17_N14
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X29_Y17_N16
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X29_Y17_N18
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\))))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\) # (GND))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X29_Y17_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X29_Y17_N22
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X30_Y17_N10
\Mod1|auto_generated|divider|divider|StageOut[48]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X30_Y17_N0
\Mod1|auto_generated|divider|divider|StageOut[47]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[39]~68_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\);

-- Location: LCCOMB_X29_Y17_N28
\Mod1|auto_generated|divider|divider|StageOut[46]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~69_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\);

-- Location: LCCOMB_X30_Y17_N6
\Mod1|auto_generated|divider|divider|StageOut[45]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\);

-- Location: LCCOMB_X30_Y17_N12
\Mod1|auto_generated|divider|divider|StageOut[44]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\);

-- Location: LCCOMB_X30_Y17_N2
\Mod1|auto_generated|divider|divider|StageOut[43]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((procent(1)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => procent(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\);

-- Location: LCCOMB_X30_Y17_N16
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = (procent(1) & ((GND) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\))) # (!procent(1) & (\Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\ $ (GND)))
-- \Add12~1\ = CARRY((procent(1)) # (!\Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datab => \Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\,
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X30_Y17_N18
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ & ((procent(2) & (!\Add12~1\)) # (!procent(2) & ((\Add12~1\) # (GND))))) # (!\Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ & ((procent(2) & (\Add12~1\ & 
-- VCC)) # (!procent(2) & (!\Add12~1\))))
-- \Add12~3\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ & ((!\Add12~1\) # (!procent(2)))) # (!\Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\ & (!procent(2) & !\Add12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datab => procent(2),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X30_Y17_N20
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((\Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\ $ (procent(3) $ (\Add12~3\)))) # (GND)
-- \Add12~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\ & (procent(3) & !\Add12~3\)) # (!\Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\ & ((procent(3)) # (!\Add12~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datab => procent(3),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X30_Y17_N22
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (procent(4) & ((\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ & (!\Add12~5\)) # (!\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ & (\Add12~5\ & VCC)))) # (!procent(4) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ & ((\Add12~5\) # (GND))) # (!\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ & (!\Add12~5\))))
-- \Add12~7\ = CARRY((procent(4) & (\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\ & !\Add12~5\)) # (!procent(4) & ((\Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datab => \Mod1|auto_generated|divider|divider|StageOut[46]~63_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X30_Y17_N24
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((procent(5) $ (\Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\ $ (\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((procent(5) & ((!\Add12~7\) # (!\Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\))) # (!procent(5) & (!\Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\ & !\Add12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(5),
	datab => \Mod1|auto_generated|divider|divider|StageOut[47]~62_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X30_Y17_N26
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ & ((procent(6) & (!\Add12~9\)) # (!procent(6) & ((\Add12~9\) # (GND))))) # (!\Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ & ((procent(6) & (\Add12~9\ & 
-- VCC)) # (!procent(6) & (!\Add12~9\))))
-- \Add12~11\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ & ((!\Add12~9\) # (!procent(6)))) # (!\Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\ & (!procent(6) & !\Add12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datab => procent(6),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X30_Y17_N28
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = !\Add12~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add12~11\,
	combout => \Add12~12_combout\);

-- Location: LCCOMB_X26_Y15_N6
\digit2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[0]~2_combout\ = (\stateCoffeeMachine.Implementation~q\ & (!procent(0) & (procent(2) & !procent(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => procent(0),
	datac => procent(2),
	datad => procent(1),
	combout => \digit2[0]~2_combout\);

-- Location: LCCOMB_X24_Y16_N20
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\Add12~12_combout\ & ((!\digit2[0]~2_combout\) # (!\digit2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[0]~1_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Add12~12_combout\,
	datad => \digit2[0]~2_combout\,
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X28_Y18_N2
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = money(3) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(money(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X28_Y18_N4
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (money(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!money(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!money(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y18_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (money(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!money(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((money(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X28_Y18_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X28_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[21]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & money(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => money(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\);

-- Location: LCCOMB_X28_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[21]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\);

-- Location: LCCOMB_X28_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[20]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\);

-- Location: LCCOMB_X28_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[20]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\ = (money(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[19]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & money(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => money(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\);

-- Location: LCCOMB_X28_Y18_N22
\Mod0|auto_generated|divider|divider|StageOut[19]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\);

-- Location: LCCOMB_X25_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[18]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\ = (money(2) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(2),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\);

-- Location: LCCOMB_X28_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[18]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & money(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => money(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\);

-- Location: LCCOMB_X25_Y18_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~31_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X25_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[19]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[19]~29_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X25_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~27_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X25_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~25_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X25_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X25_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[28]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\);

-- Location: LCCOMB_X28_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((money(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datab => money(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\);

-- Location: LCCOMB_X28_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[27]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (money(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\);

-- Location: LCCOMB_X25_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[27]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\);

-- Location: LCCOMB_X25_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X28_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[26]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (money(3))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\);

-- Location: LCCOMB_X26_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[25]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\);

-- Location: LCCOMB_X26_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (money(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X26_Y18_N22
\Mod0|auto_generated|divider|divider|StageOut[24]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\ = (money(1) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\);

-- Location: LCCOMB_X26_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[24]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\ = (money(1) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\);

-- Location: LCCOMB_X26_Y18_N8
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~33_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~32_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X26_Y18_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X26_Y18_N12
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X26_Y18_N14
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X26_Y18_N16
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X26_Y18_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X25_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[35]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[28]~44_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\);

-- Location: LCCOMB_X25_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[34]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~35_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~45_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Mod0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X26_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[32]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[25]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\);

-- Location: LCCOMB_X25_Y15_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (money(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & (money(1) $ (VCC))) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\ & ((money(1)) # (GND)))
-- \Add11~1\ = CARRY((money(1)) # (!\Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	datab => money(1),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X25_Y15_N18
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (money(2) & ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\Add11~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (\Add11~1\ & VCC)))) # (!money(2) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & ((\Add11~1\) # (GND))) # (!\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & (!\Add11~1\))))
-- \Add11~3\ = CARRY((money(2) & (\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\ & !\Add11~1\)) # (!money(2) & ((\Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\) # (!\Add11~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X25_Y15_N20
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ $ (money(3) $ (\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & (money(3) & !\Add11~3\)) # (!\Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\ & ((money(3)) # (!\Add11~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datab => money(3),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X25_Y15_N22
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ & ((money(4) & (!\Add11~5\)) # (!money(4) & ((\Add11~5\) # (GND))))) # (!\Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ & ((money(4) & (\Add11~5\ & VCC)) # 
-- (!money(4) & (!\Add11~5\))))
-- \Add11~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ & ((!\Add11~5\) # (!money(4)))) # (!\Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\ & (!money(4) & !\Add11~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~43_combout\,
	datab => money(4),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X25_Y15_N24
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ $ (money(5) $ (\Add11~7\)))) # (GND)
-- \Add11~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ & (money(5) & !\Add11~7\)) # (!\Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\ & ((money(5)) # (!\Add11~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~42_combout\,
	datab => money(5),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X25_Y15_N26
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = \Add11~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add11~9\,
	combout => \Add11~10_combout\);

-- Location: LCCOMB_X25_Y15_N28
\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ = (!\Add11~0_combout\ & (!\Add11~4_combout\ & (!\Add11~10_combout\ & !\Add11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \Add11~4_combout\,
	datac => \Add11~10_combout\,
	datad => \Add11~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\);

-- Location: LCCOMB_X25_Y15_N2
\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & ((\Add11~6_combout\ & (\Add11~8_combout\ & \Add11~10_combout\)) # (!\Add11~6_combout\ & (!\Add11~8_combout\ & 
-- !\Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add11~8_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\);

-- Location: LCCOMB_X25_Y15_N4
\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ = \Add11~8_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & (!\Add11~6_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ & 
-- ((\Add11~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add11~8_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\);

-- Location: LCCOMB_X25_Y15_N10
\Div0|auto_generated|divider|my_abs_num|cs2a[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\ = \Add11~6_combout\ $ (\Add11~10_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\ $ (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[4]~3_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X23_Y15_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X23_Y15_N24
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X23_Y15_N26
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X23_Y15_N28
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Div0|auto_generated|divider|divider|StageOut[28]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~32_combout\);

-- Location: LCCOMB_X24_Y15_N10
\Div0|auto_generated|divider|divider|StageOut[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\);

-- Location: LCCOMB_X24_Y15_N16
\Div0|auto_generated|divider|divider|StageOut[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~33_combout\);

-- Location: LCCOMB_X24_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[26]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~36_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~36_combout\);

-- Location: LCCOMB_X24_Y15_N4
\Div0|auto_generated|divider|divider|StageOut[26]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\ = (!\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\);

-- Location: LCCOMB_X25_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add11~6_combout\ $ (\Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\ $ (!\Add11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~0_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X23_Y15_N6
\Div0|auto_generated|divider|divider|StageOut[25]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\);

-- Location: LCCOMB_X25_Y15_N8
\Div0|auto_generated|divider|my_abs_num|cs2a[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\ = \Add11~4_combout\ $ (((\Add11~10_combout\) # ((!\Add11~0_combout\ & !\Add11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \Add11~4_combout\,
	datac => \Add11~10_combout\,
	datad => \Add11~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\);

-- Location: LCCOMB_X24_Y15_N12
\Div0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (!\Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X24_Y15_N14
\Div0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X24_Y15_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Div0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[24]~38_combout\) # (\Div0|auto_generated|divider|divider|StageOut[24]~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y15_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[25]~37_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[25]~37_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~37_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~37_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y15_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~36_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~36_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~35_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X24_Y15_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~33_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[27]~33_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[27]~34_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[27]~33_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~34_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~33_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X24_Y15_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[28]~32_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~32_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y15_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Div0|auto_generated|divider|divider|StageOut[34]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~58_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Div0|auto_generated|divider|divider|StageOut[34]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~40_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~40_combout\);

-- Location: LCCOMB_X24_Y15_N2
\Div0|auto_generated|divider|divider|StageOut[33]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs2a[5]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~59_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Div0|auto_generated|divider|divider|StageOut[33]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~41_combout\);

-- Location: LCCOMB_X24_Y15_N30
\Div0|auto_generated|divider|divider|StageOut[32]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[25]~54_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\);

-- Location: LCCOMB_X24_Y14_N28
\Div0|auto_generated|divider|divider|StageOut[32]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~42_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~42_combout\);

-- Location: LCCOMB_X24_Y15_N0
\Div0|auto_generated|divider|divider|StageOut[31]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~44_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~44_combout\);

-- Location: LCCOMB_X24_Y14_N18
\Div0|auto_generated|divider|divider|StageOut[31]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ = (!\Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~43_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Div0|auto_generated|divider|divider|StageOut[30]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add11~2_combout\ $ (((\Add11~0_combout\ & !\Add11~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add11~0_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~45_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[30]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~46_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add11~2_combout\ $ (((!\Add11~10_combout\ & \Add11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Add11~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Add11~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~46_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[30]~45_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~46_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~45_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~45_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~46_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X24_Y14_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[31]~44_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~43_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~44_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[31]~43_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~44_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~43_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~43_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y14_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~55_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~42_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[32]~55_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~42_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~55_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X24_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[33]~41_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~59_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[33]~41_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~41_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X24_Y14_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~58_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[34]~40_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~58_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X24_Y14_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X25_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[40]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~59_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~59_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~56_combout\);

-- Location: LCCOMB_X24_Y14_N22
\Div0|auto_generated|divider|divider|StageOut[40]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~47_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Div0|auto_generated|divider|divider|StageOut[39]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~55_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[32]~55_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~57_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Div0|auto_generated|divider|divider|StageOut[39]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\);

-- Location: LCCOMB_X24_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[38]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs2a[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~60_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Div0|auto_generated|divider|divider|StageOut[38]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~49_combout\);

-- Location: LCCOMB_X24_Y16_N4
\Div0|auto_generated|divider|divider|StageOut[37]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~51_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~51_combout\);

-- Location: LCCOMB_X24_Y16_N18
\Div0|auto_generated|divider|divider|StageOut[37]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Add11~2_combout\ $ (((!\Add11~10_combout\ & \Add11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Add11~10_combout\,
	datac => \Add11~0_combout\,
	datad => \Add11~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~50_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Div0|auto_generated|divider|divider|StageOut[36]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~53_combout\ = (\Add11~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~53_combout\);

-- Location: LCCOMB_X25_Y14_N16
\Div0|auto_generated|divider|divider|StageOut[36]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~52_combout\ = (\Add11~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~52_combout\);

-- Location: LCCOMB_X25_Y14_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[36]~53_combout\) # (\Div0|auto_generated|divider|divider|StageOut[36]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~52_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X25_Y14_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[37]~51_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[37]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X25_Y14_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[38]~60_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[38]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~49_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X25_Y14_N24
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[39]~57_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[39]~48_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[39]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[39]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y14_N26
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~56_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[40]~47_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~47_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X25_Y14_N28
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X25_Y14_N2
\Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X25_Y14_N4
\Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|op_1~1\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X25_Y14_N6
\Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~3\ & VCC))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X25_Y14_N8
\Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = \Div0|auto_generated|divider|op_1~5\ $ (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X25_Y14_N14
\Div0|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~3_combout\ = (\Add11~10_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\Add11~10_combout\ & (\Div0|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~10_combout\,
	datac => \Div0|auto_generated|divider|op_1~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~3_combout\);

-- Location: FF_X29_Y13_N13
enableButtonPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \enableButton~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enableButtonPrev~q\);

-- Location: LCCOMB_X29_Y13_N12
\digitBuf2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[3]~0_combout\ = (\enableButton~q\ & (\stateCoffeeMachine.Payment~q\ & !\enableButtonPrev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enableButton~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \enableButtonPrev~q\,
	combout => \digitBuf2[3]~0_combout\);

-- Location: FF_X25_Y14_N15
\digitBuf2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|quotient[3]~3_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(3));

-- Location: LCCOMB_X31_Y17_N30
\Div1|auto_generated|divider|my_abs_num|cs1a[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = (!\Add12~10_combout\ & (!\Add12~6_combout\ & (!\Add12~8_combout\ & !\Add12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datab => \Add12~6_combout\,
	datac => \Add12~8_combout\,
	datad => \Add12~12_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X31_Y17_N2
\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ = (!\Add12~0_combout\ & (!\Add12~4_combout\ & (\Div1|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & !\Add12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add12~4_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => \Add12~2_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\);

-- Location: LCCOMB_X31_Y17_N26
\Div1|auto_generated|divider|my_abs_num|cs1a[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ = (!\Add12~0_combout\ & (!\Add12~2_combout\ & (!\Add12~4_combout\ & !\Add12~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add12~2_combout\,
	datac => \Add12~4_combout\,
	datad => \Add12~8_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\);

-- Location: LCCOMB_X31_Y17_N8
\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ = \Add12~10_combout\ $ (((\Add12~12_combout\) # ((\Div1|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ & !\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datab => \Add12~12_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\,
	datad => \Add12~6_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\);

-- Location: LCCOMB_X31_Y17_N4
\Div1|auto_generated|divider|my_abs_num|cs1a[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[5]~31_combout\ = (\Add12~2_combout\) # ((\Add12~0_combout\) # (\Add12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~2_combout\,
	datac => \Add12~0_combout\,
	datad => \Add12~4_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~31_combout\);

-- Location: LCCOMB_X31_Y17_N10
\Div1|auto_generated|divider|my_abs_num|cs1a[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\ = \Add12~8_combout\ $ (((\Add12~12_combout\) # ((!\Add12~6_combout\ & !\Div1|auto_generated|divider|my_abs_num|cs1a[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \Add12~6_combout\,
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~31_combout\,
	datad => \Add12~12_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\);

-- Location: LCCOMB_X31_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\ $ (GND)
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(!\Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X31_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ & (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X31_Y17_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X31_Y17_N24
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X32_Y15_N26
\Div1|auto_generated|divider|divider|StageOut[28]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[28]~48_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[28]~48_combout\);

-- Location: LCCOMB_X31_Y17_N6
\Div1|auto_generated|divider|divider|StageOut[27]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~50_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~50_combout\);

-- Location: LCCOMB_X31_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[27]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X31_Y17_N12
\Div1|auto_generated|divider|divider|StageOut[26]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~51_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~51_combout\);

-- Location: LCCOMB_X31_Y17_N14
\Div1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X31_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[25]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~53_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\ & \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~53_combout\);

-- Location: LCCOMB_X32_Y15_N4
\Div1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X32_Y15_N0
\Div1|auto_generated|divider|my_abs_num|cs1a[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\ = (!\Add12~12_combout\ & (!\Add12~0_combout\ & (!\Add12~4_combout\ & !\Add12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add12~0_combout\,
	datac => \Add12~4_combout\,
	datad => \Add12~2_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\);

-- Location: LCCOMB_X32_Y15_N22
\Div1|auto_generated|divider|divider|StageOut[24]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[24]~76_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add12~12_combout\ $ (\Add12~6_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add12~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[24]~76_combout\);

-- Location: LCCOMB_X32_Y15_N28
\Div1|auto_generated|divider|divider|StageOut[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[24]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Add12~12_combout\ $ (\Add12~6_combout\ $ (!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Add12~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[24]~75_combout\);

-- Location: LCCOMB_X32_Y15_N8
\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[24]~76_combout\) # (\Div1|auto_generated|divider|divider|StageOut[24]~75_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[24]~76_combout\) # (\Div1|auto_generated|divider|divider|StageOut[24]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[24]~76_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[24]~75_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X32_Y15_N10
\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[25]~53_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~53_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[25]~53_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[25]~54_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[25]~53_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X32_Y15_N12
\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[26]~51_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[26]~51_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[26]~51_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[26]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[26]~51_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X32_Y15_N14
\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[27]~50_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[27]~49_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[27]~50_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[27]~49_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[27]~50_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[27]~49_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[27]~50_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X32_Y15_N16
\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[28]~48_combout\) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[28]~48_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X32_Y15_N18
\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y15_N18
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\Selector102~0_combout\ & (((!\stateCoffeeMachine.Implementation~q\ & digitBuf2(3))) # (!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))) # (!\Selector102~0_combout\ & 
-- (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~0_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf2(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Selector99~0_combout\);

-- Location: LCCOMB_X22_Y15_N6
\Selector102~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~1_combout\ = (!\Add12~12_combout\ & (\stateCoffeeMachine.Implementation~q\ & ((!\digit2[0]~2_combout\) # (!\digit2[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \digit2[0]~1_combout\,
	datac => \digit2[0]~2_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector102~1_combout\);

-- Location: LCCOMB_X32_Y15_N30
\Div1|auto_generated|divider|divider|StageOut[34]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[34]~55_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[34]~55_combout\);

-- Location: LCCOMB_X31_Y15_N14
\Div1|auto_generated|divider|divider|StageOut[34]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[34]~83_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~34_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[34]~83_combout\);

-- Location: LCCOMB_X31_Y15_N12
\Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X31_Y15_N8
\Div1|auto_generated|divider|divider|StageOut[33]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[33]~84_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|my_abs_num|cs1a[6]~35_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[33]~84_combout\);

-- Location: LCCOMB_X31_Y15_N10
\Div1|auto_generated|divider|divider|StageOut[32]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~85_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[5]~32_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~85_combout\);

-- Location: LCCOMB_X31_Y15_N2
\Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X32_Y15_N20
\Div1|auto_generated|divider|divider|StageOut[31]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Add12~12_combout\ $ (\Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\ $ (!\Add12~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~12_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~30_combout\,
	datac => \Add12~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\);

-- Location: LCCOMB_X31_Y15_N4
\Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X31_Y15_N30
\Div1|auto_generated|divider|my_abs_num|cs1a[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\ = \Add12~4_combout\ $ (((\Add12~12_combout\) # ((!\Add12~2_combout\ & !\Add12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~4_combout\,
	datab => \Add12~2_combout\,
	datac => \Add12~0_combout\,
	datad => \Add12~12_combout\,
	combout => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\);

-- Location: LCCOMB_X31_Y15_N6
\Div1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\ & !\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X31_Y15_N28
\Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X31_Y15_N16
\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~59_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Div1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X31_Y15_N18
\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X31_Y15_N20
\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[32]~85_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[32]~85_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~85_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[32]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[32]~85_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X31_Y15_N22
\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[33]~84_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[33]~84_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[33]~84_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~84_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X31_Y15_N24
\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[34]~55_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[34]~83_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[34]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[34]~83_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y15_N26
\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X30_Y15_N10
\Div1|auto_generated|divider|divider|StageOut[40]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~78_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[33]~84_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[33]~84_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~78_combout\);

-- Location: LCCOMB_X30_Y15_N0
\Div1|auto_generated|divider|divider|StageOut[40]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[40]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[40]~61_combout\);

-- Location: LCCOMB_X30_Y15_N26
\Div1|auto_generated|divider|divider|StageOut[39]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[39]~62_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[39]~62_combout\);

-- Location: LCCOMB_X30_Y15_N8
\Div1|auto_generated|divider|divider|StageOut[39]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[39]~79_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[32]~85_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[32]~85_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[39]~79_combout\);

-- Location: LCCOMB_X30_Y15_N6
\Div1|auto_generated|divider|divider|StageOut[38]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~80_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[31]~77_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[31]~77_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~80_combout\);

-- Location: LCCOMB_X30_Y15_N24
\Div1|auto_generated|divider|divider|StageOut[38]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[38]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[38]~63_combout\);

-- Location: LCCOMB_X30_Y15_N28
\Div1|auto_generated|divider|divider|StageOut[37]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~65_combout\);

-- Location: LCCOMB_X30_Y15_N2
\Div1|auto_generated|divider|divider|StageOut[37]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[37]~64_combout\ = (!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[37]~64_combout\);

-- Location: LCCOMB_X30_Y15_N30
\Div1|auto_generated|divider|divider|StageOut[36]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~67_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Add12~2_combout\ $ (((\Add12~0_combout\ & !\Add12~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Add12~0_combout\,
	datac => \Add12~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~67_combout\);

-- Location: LCCOMB_X31_Y15_N0
\Div1|auto_generated|divider|divider|StageOut[36]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[36]~66_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Add12~2_combout\ $ (((\Add12~0_combout\ & !\Add12~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Add12~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Add12~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[36]~66_combout\);

-- Location: LCCOMB_X30_Y15_N12
\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[36]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[36]~66_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[36]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[36]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[36]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[36]~66_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X30_Y15_N14
\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[37]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[37]~64_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[37]~65_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[37]~64_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[37]~65_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[37]~64_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[37]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[37]~64_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X30_Y15_N16
\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[38]~80_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~63_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[38]~80_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~63_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[38]~80_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[38]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[38]~80_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[38]~63_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X30_Y15_N18
\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Div1|auto_generated|divider|divider|StageOut[39]~62_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[39]~79_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Div1|auto_generated|divider|divider|StageOut[39]~62_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[39]~79_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[39]~62_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[39]~79_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[39]~62_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[39]~79_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X30_Y15_N20
\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[40]~78_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[40]~61_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[40]~78_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[40]~61_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X30_Y15_N22
\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X29_Y15_N30
\Div1|auto_generated|divider|divider|StageOut[46]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~81_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[39]~79_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[39]~79_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~81_combout\);

-- Location: LCCOMB_X29_Y15_N14
\Div1|auto_generated|divider|divider|StageOut[46]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[46]~68_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[46]~68_combout\);

-- Location: LCCOMB_X29_Y15_N16
\Div1|auto_generated|divider|divider|StageOut[45]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~82_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[38]~80_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[38]~80_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~82_combout\);

-- Location: LCCOMB_X29_Y15_N20
\Div1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X29_Y15_N22
\Div1|auto_generated|divider|divider|StageOut[44]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[44]~86_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- ((!\Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Div1|auto_generated|divider|my_abs_num|cs1a[3]~33_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[44]~86_combout\);

-- Location: LCCOMB_X29_Y15_N18
\Div1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X30_Y15_N4
\Div1|auto_generated|divider|divider|StageOut[43]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~72_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~72_combout\);

-- Location: LCCOMB_X29_Y15_N28
\Div1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\Add12~2_combout\ $ (((!\Add12~12_combout\ & \Add12~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Add12~12_combout\,
	datac => \Add12~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X29_Y15_N26
\Div1|auto_generated|divider|divider|StageOut[42]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~73_combout\ = (\Add12~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~73_combout\);

-- Location: LCCOMB_X29_Y15_N24
\Div1|auto_generated|divider|divider|StageOut[42]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[42]~74_combout\ = (\Add12~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[42]~74_combout\);

-- Location: LCCOMB_X29_Y15_N2
\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[42]~73_combout\) # (\Div1|auto_generated|divider|divider|StageOut[42]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[42]~73_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[42]~74_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y15_N4
\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[43]~72_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[43]~72_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y15_N6
\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[44]~86_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[44]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[44]~86_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y15_N8
\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[45]~82_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[45]~82_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y15_N10
\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[46]~81_combout\) # ((\Div1|auto_generated|divider|divider|StageOut[46]~68_combout\) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[46]~81_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[46]~68_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X29_Y15_N12
\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y15_N10
\Div1|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~0_combout\ = \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ $ (VCC)
-- \Div1|auto_generated|divider|op_1~1\ = CARRY(\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|op_1~0_combout\,
	cout => \Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X28_Y15_N12
\Div1|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (!\Div1|auto_generated|divider|op_1~1\)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & 
-- ((\Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \Div1|auto_generated|divider|op_1~3\ = CARRY((!\Div1|auto_generated|divider|op_1~1\) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~1\,
	combout => \Div1|auto_generated|divider|op_1~2_combout\,
	cout => \Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X28_Y15_N14
\Div1|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\Div1|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- (!\Div1|auto_generated|divider|op_1~3\ & VCC))
-- \Div1|auto_generated|divider|op_1~5\ = CARRY((\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|op_1~3\,
	combout => \Div1|auto_generated|divider|op_1~4_combout\,
	cout => \Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X28_Y15_N16
\Div1|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|op_1~6_combout\ = \Div1|auto_generated|divider|op_1~5\ $ (\Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	cin => \Div1|auto_generated|divider|op_1~5\,
	combout => \Div1|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X28_Y15_N8
\Selector99~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~1_combout\ = (\Selector99~0_combout\) # ((\Selector102~1_combout\ & \Div1|auto_generated|divider|op_1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector99~0_combout\,
	datac => \Selector102~1_combout\,
	datad => \Div1|auto_generated|divider|op_1~6_combout\,
	combout => \Selector99~1_combout\);

-- Location: FF_X28_Y15_N9
\digit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector99~1_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(3));

-- Location: LCCOMB_X25_Y14_N10
\Div0|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~1_combout\ = (\Add11~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)) # (!\Add11~10_combout\ & ((\Div0|auto_generated|divider|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|op_1~2_combout\,
	datad => \Add11~10_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~1_combout\);

-- Location: FF_X25_Y14_N11
\digitBuf2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|quotient[1]~1_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(1));

-- Location: LCCOMB_X28_Y15_N6
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\Selector102~0_combout\ & (((\Selector102~1_combout\ & \Div1|auto_generated|divider|op_1~2_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))) # (!\Selector102~0_combout\ & 
-- (\Selector102~1_combout\ & ((\Div1|auto_generated|divider|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~0_combout\,
	datab => \Selector102~1_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|op_1~2_combout\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X28_Y15_N28
\Selector101~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~1_combout\ = (\Selector101~0_combout\) # ((!\stateCoffeeMachine.Implementation~q\ & digitBuf2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf2(1),
	datad => \Selector101~0_combout\,
	combout => \Selector101~1_combout\);

-- Location: FF_X28_Y15_N29
\digit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector101~1_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(1));

-- Location: LCCOMB_X25_Y14_N0
\Div0|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~0_combout\ = (\Add11~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)) # (!\Add11~10_combout\ & ((\Div0|auto_generated|divider|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Add11~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|quotient[0]~0_combout\);

-- Location: FF_X25_Y14_N1
\digitBuf2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|quotient[0]~0_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(0));

-- Location: LCCOMB_X28_Y15_N24
\Selector102~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~2_combout\ = (\Selector102~0_combout\ & (((\Selector102~1_combout\ & \Div1|auto_generated|divider|op_1~0_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))) # (!\Selector102~0_combout\ & 
-- (\Selector102~1_combout\ & ((\Div1|auto_generated|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~0_combout\,
	datab => \Selector102~1_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \Div1|auto_generated|divider|op_1~0_combout\,
	combout => \Selector102~2_combout\);

-- Location: LCCOMB_X28_Y15_N30
\Selector102~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~3_combout\ = (\Selector102~2_combout\) # ((!\stateCoffeeMachine.Implementation~q\ & digitBuf2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf2(0),
	datad => \Selector102~2_combout\,
	combout => \Selector102~3_combout\);

-- Location: FF_X28_Y15_N31
\digit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector102~3_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(0));

-- Location: LCCOMB_X25_Y14_N12
\Div0|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~2_combout\ = (\Add11~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)) # (!\Add11~10_combout\ & ((\Div0|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|quotient[2]~2_combout\);

-- Location: FF_X25_Y14_N13
\digitBuf2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div0|auto_generated|divider|quotient[2]~2_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(2));

-- Location: LCCOMB_X28_Y15_N20
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\Selector102~0_combout\ & (((\Selector102~1_combout\ & \Div1|auto_generated|divider|op_1~4_combout\)) # (!\Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))) # (!\Selector102~0_combout\ & 
-- (\Selector102~1_combout\ & (\Div1|auto_generated|divider|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~0_combout\,
	datab => \Selector102~1_combout\,
	datac => \Div1|auto_generated|divider|op_1~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X28_Y15_N22
\Selector100~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~1_combout\ = (\Selector100~0_combout\) # ((!\stateCoffeeMachine.Implementation~q\ & digitBuf2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf2(2),
	datad => \Selector100~0_combout\,
	combout => \Selector100~1_combout\);

-- Location: FF_X28_Y15_N23
\digit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~1_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(2));

-- Location: LCCOMB_X28_Y15_N2
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (digit2(3)) # ((digit2(1) & ((!digit2(2)) # (!digit2(0)))) # (!digit2(1) & ((digit2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(2),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (selectionDrink(0) & (\stateCoffeeMachine.Selection~q\ & !selectionDrink(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datac => \stateCoffeeMachine.Selection~q\,
	datad => selectionDrink(1),
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X28_Y15_N4
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\stateCoffeeMachine.Waiting~q\ & (!\Selector87~0_combout\ & ((\Mux31~0_combout\) # (!\WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \Mux31~0_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector87~0_combout\,
	combout => \Selector87~1_combout\);

-- Location: FF_X28_Y15_N5
\bufferForIndicator2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector87~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(0));

-- Location: FF_X25_Y15_N13
\digitBuf3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[33]~41_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(3));

-- Location: LCCOMB_X26_Y15_N26
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(3),
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[45]~64_combout\,
	combout => \Selector95~0_combout\);

-- Location: FF_X26_Y15_N27
\digit3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(3));

-- Location: FF_X25_Y14_N19
\digitBuf3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => money(0),
	sload => VCC,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(0));

-- Location: LCCOMB_X26_Y15_N24
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((procent(0)))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(0),
	datab => procent(0),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector98~0_combout\);

-- Location: FF_X26_Y15_N25
\digit3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(0));

-- Location: FF_X25_Y15_N1
\digitBuf3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Mod0|auto_generated|divider|divider|StageOut[31]~39_combout\,
	sload => VCC,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(1));

-- Location: LCCOMB_X26_Y15_N30
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(1),
	datab => \stateCoffeeMachine.Implementation~q\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[43]~66_combout\,
	combout => \Selector97~0_combout\);

-- Location: FF_X26_Y15_N31
\digit3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(1));

-- Location: LCCOMB_X25_Y15_N14
\digitBuf3[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf3[2]~feeder_combout\ = \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|StageOut[32]~40_combout\,
	combout => \digitBuf3[2]~feeder_combout\);

-- Location: FF_X25_Y15_N15
\digitBuf3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digitBuf3[2]~feeder_combout\,
	ena => \digitBuf2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(2));

-- Location: LCCOMB_X26_Y15_N12
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(2),
	datab => \Mod1|auto_generated|divider|divider|StageOut[44]~65_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector96~0_combout\);

-- Location: FF_X26_Y15_N13
\digit3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(2));

-- Location: LCCOMB_X26_Y15_N8
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (digit3(3)) # ((digit3(1) & ((!digit3(2)) # (!digit3(0)))) # (!digit3(1) & ((digit3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(0),
	datac => digit3(1),
	datad => digit3(2),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Selector94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = (\stateCoffeeMachine.Waiting~q\ & ((\Mux24~0_combout\) # ((!\stateCoffeeMachine.Payment~q\ & !\stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector94~2_combout\);

-- Location: FF_X26_Y15_N29
\bufferForIndicator3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector94~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(0));

-- Location: LCCOMB_X25_Y19_N20
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(0)))) # (!indicator(0) & (!bufferForIndicator2(0))))) # (!indicator(1) & (!indicator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator2(0),
	datad => bufferForIndicator3(0),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X29_Y18_N20
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (selectionDrink(0)) # ((selectionDrink(1)) # (!\stateCoffeeMachine.Selection~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \stateCoffeeMachine.Selection~q\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = procent(2) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(procent(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X26_Y16_N8
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (procent(3) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!procent(3) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!procent(3) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X26_Y16_N10
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (procent(4) & ((GND) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!procent(4) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ 
-- (GND)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((procent(4)) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X26_Y16_N12
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (procent(5) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!procent(5) & ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!procent(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X26_Y16_N14
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (procent(6) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!procent(6) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((procent(6) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X26_Y16_N16
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X26_Y16_N22
\Mod2|auto_generated|divider|divider|StageOut[48]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (procent(6))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\);

-- Location: LCCOMB_X26_Y16_N24
\Mod2|auto_generated|divider|divider|StageOut[47]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((procent(5)))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datab => procent(5),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\);

-- Location: LCCOMB_X26_Y16_N26
\Mod2|auto_generated|divider|divider|StageOut[46]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((procent(4)))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datac => procent(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\);

-- Location: LCCOMB_X26_Y16_N4
\Mod2|auto_generated|divider|divider|StageOut[45]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (procent(3))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\);

-- Location: LCCOMB_X26_Y16_N2
\Mod2|auto_generated|divider|divider|StageOut[44]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (procent(2))) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => procent(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\);

-- Location: LCCOMB_X26_Y17_N8
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = procent(0) $ (GND)
-- \Add13~1\ = CARRY(!procent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X26_Y17_N10
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (\Add12~0_combout\ & ((procent(1) & (!\Add13~1\)) # (!procent(1) & (\Add13~1\ & VCC)))) # (!\Add12~0_combout\ & ((procent(1) & ((\Add13~1\) # (GND))) # (!procent(1) & (!\Add13~1\))))
-- \Add13~3\ = CARRY((\Add12~0_combout\ & (procent(1) & !\Add13~1\)) # (!\Add12~0_combout\ & ((procent(1)) # (!\Add13~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => procent(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X26_Y17_N12
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = ((\Add12~2_combout\ $ (\Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\ $ (\Add13~3\)))) # (GND)
-- \Add13~5\ = CARRY((\Add12~2_combout\ & ((!\Add13~3\) # (!\Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\))) # (!\Add12~2_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\ & !\Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[44]~4_combout\,
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X26_Y17_N14
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ & ((\Add12~4_combout\ & (!\Add13~5\)) # (!\Add12~4_combout\ & ((\Add13~5\) # (GND))))) # (!\Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ & ((\Add12~4_combout\ 
-- & (\Add13~5\ & VCC)) # (!\Add12~4_combout\ & (!\Add13~5\))))
-- \Add13~7\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ & ((!\Add13~5\) # (!\Add12~4_combout\))) # (!\Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\ & (!\Add12~4_combout\ & !\Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[45]~3_combout\,
	datab => \Add12~4_combout\,
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X26_Y17_N16
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = ((\Add12~6_combout\ $ (\Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\ $ (\Add13~7\)))) # (GND)
-- \Add13~9\ = CARRY((\Add12~6_combout\ & ((!\Add13~7\) # (!\Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\))) # (!\Add12~6_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\ & !\Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[46]~2_combout\,
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X26_Y17_N18
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (\Add12~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ & (!\Add13~9\)) # (!\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ & (\Add13~9\ & VCC)))) # (!\Add12~8_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ & ((\Add13~9\) # (GND))) # (!\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ & (!\Add13~9\))))
-- \Add13~11\ = CARRY((\Add12~8_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\ & !\Add13~9\)) # (!\Add12~8_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\) # (!\Add13~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[47]~1_combout\,
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X26_Y17_N20
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = ((\Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\ $ (\Add12~10_combout\ $ (\Add13~11\)))) # (GND)
-- \Add13~13\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\ & (\Add12~10_combout\ & !\Add13~11\)) # (!\Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\ & ((\Add12~10_combout\) # (!\Add13~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[48]~0_combout\,
	datab => \Add12~10_combout\,
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X26_Y17_N22
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (\Add12~12_combout\ & (!\Add13~13\)) # (!\Add12~12_combout\ & (\Add13~13\ & VCC))
-- \Add13~15\ = CARRY((\Add12~12_combout\ & !\Add13~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~12_combout\,
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X26_Y17_N24
\Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (\Add12~12_combout\ & (\Add13~15\ $ (GND))) # (!\Add12~12_combout\ & ((GND) # (!\Add13~15\)))
-- \Add13~17\ = CARRY((!\Add13~15\) # (!\Add12~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~12_combout\,
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X26_Y17_N26
\Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = \Add13~17\ $ (\Add12~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add12~12_combout\,
	cin => \Add13~17\,
	combout => \Add13~18_combout\);

-- Location: LCCOMB_X25_Y17_N4
\Div2|auto_generated|divider|my_abs_num|cs1a[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ = (!\Add13~2_combout\ & !\Add13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add13~2_combout\,
	datad => \Add13~0_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\);

-- Location: LCCOMB_X26_Y17_N0
\Div2|auto_generated|divider|my_abs_num|cs1a[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = (!\Add13~4_combout\ & (\Div2|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\ & (!\Add13~6_combout\ & !\Add13~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs1a[1]~2_combout\,
	datac => \Add13~6_combout\,
	datad => \Add13~8_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X26_Y17_N6
\Div2|auto_generated|divider|my_abs_num|cs1a[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ = (\Add13~18_combout\ & (!\Add13~10_combout\ & (!\Add13~12_combout\ & \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Add13~10_combout\,
	datac => \Add13~12_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\);

-- Location: LCCOMB_X26_Y17_N30
\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\ = \Add13~16_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ & ((\Add13~14_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ & 
-- (\Add13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Add13~16_combout\,
	datac => \Add13~14_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\);

-- Location: LCCOMB_X26_Y17_N4
\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\ & ((\Add13~14_combout\ & (\Add13~16_combout\ & !\Add13~18_combout\)) # (!\Add13~14_combout\ & (!\Add13~16_combout\ & 
-- \Add13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~14_combout\,
	datab => \Add13~16_combout\,
	datac => \Add13~18_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~4_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\);

-- Location: LCCOMB_X22_Y17_N4
\Div2|auto_generated|divider|my_abs_num|cs1a[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\ = (!\Add13~0_combout\ & (!\Add13~2_combout\ & (!\Add13~4_combout\ & !\Add13~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~0_combout\,
	datab => \Add13~2_combout\,
	datac => \Add13~4_combout\,
	datad => \Add13~6_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\);

-- Location: LCCOMB_X26_Y17_N28
\Div2|auto_generated|divider|my_abs_num|cs1a[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ = (\Add13~18_combout\ & (!\Add13~8_combout\ & (!\Add13~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Add13~8_combout\,
	datac => \Add13~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\);

-- Location: LCCOMB_X26_Y17_N2
\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\ = \Add13~14_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ & ((\Add13~12_combout\))) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\ & 
-- (\Add13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datab => \Add13~12_combout\,
	datac => \Add13~14_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~8_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\);

-- Location: LCCOMB_X25_Y17_N30
\Div2|auto_generated|divider|my_abs_num|cs1a[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\ = \Add13~12_combout\ $ (((\Add13~18_combout\ & ((\Add13~10_combout\) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~12_combout\,
	datab => \Add13~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => \Add13~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Div2|auto_generated|divider|my_abs_num|cs1a[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\ = \Add13~10_combout\ $ (((\Add13~18_combout\ & ((\Add13~8_combout\) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~10_combout\,
	datab => \Add13~8_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~7_combout\,
	datad => \Add13~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\);

-- Location: LCCOMB_X25_Y17_N16
\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X25_Y17_N18
\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X25_Y17_N20
\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\ & ((GND) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X25_Y17_N22
\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X25_Y17_N24
\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # 
-- (!\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X25_Y17_N26
\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X24_Y17_N30
\Div2|auto_generated|divider|divider|StageOut[59]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[59]~62_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[59]~62_combout\);

-- Location: LCCOMB_X25_Y17_N14
\Div2|auto_generated|divider|divider|StageOut[59]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[59]~63_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[59]~63_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[58]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~64_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~64_combout\);

-- Location: LCCOMB_X25_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[58]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[58]~65_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[58]~65_combout\);

-- Location: LCCOMB_X25_Y17_N6
\Div2|auto_generated|divider|divider|StageOut[57]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~66_combout\ = (\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~66_combout\);

-- Location: LCCOMB_X25_Y17_N12
\Div2|auto_generated|divider|divider|StageOut[57]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[57]~67_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[57]~67_combout\);

-- Location: LCCOMB_X25_Y17_N2
\Div2|auto_generated|divider|divider|StageOut[56]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~69_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~69_combout\);

-- Location: LCCOMB_X22_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[56]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[56]~68_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[56]~68_combout\);

-- Location: LCCOMB_X22_Y17_N22
\Div2|auto_generated|divider|my_abs_num|cs1a[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\ = (!\Add13~4_combout\ & (!\Add13~0_combout\ & (!\Add13~2_combout\ & \Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add13~0_combout\,
	datac => \Add13~2_combout\,
	datad => \Add13~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Div2|auto_generated|divider|my_abs_num|cs1a[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\ = \Add13~8_combout\ $ (((\Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\ & (\Add13~6_combout\)) # (!\Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\ & 
-- ((\Add13~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~8_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\,
	datad => \Add13~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Div2|auto_generated|divider|divider|StageOut[55]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~71_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~71_combout\);

-- Location: LCCOMB_X25_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[55]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[55]~70_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[55]~70_combout\);

-- Location: LCCOMB_X24_Y17_N6
\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[55]~71_combout\) # (\Div2|auto_generated|divider|divider|StageOut[55]~70_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[55]~71_combout\) # (\Div2|auto_generated|divider|divider|StageOut[55]~70_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[55]~71_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[55]~70_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X24_Y17_N8
\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[56]~69_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[56]~68_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[56]~69_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[56]~68_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[56]~69_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[56]~68_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[56]~69_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[56]~68_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X24_Y17_N10
\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[57]~66_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[57]~67_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[57]~66_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[57]~67_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[57]~66_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[57]~67_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[57]~66_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[57]~67_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X24_Y17_N12
\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[58]~64_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[58]~64_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[58]~65_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[58]~65_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[58]~64_combout\ & !\Div2|auto_generated|divider|divider|StageOut[58]~65_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[58]~64_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[58]~65_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X24_Y17_N14
\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[59]~63_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[59]~63_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[59]~62_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[59]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[59]~62_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[59]~63_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X25_Y17_N8
\Div2|auto_generated|divider|divider|StageOut[60]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~61_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~61_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Div2|auto_generated|divider|divider|StageOut[60]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[60]~60_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\ & \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[60]~60_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\Div2|auto_generated|divider|divider|StageOut[60]~61_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[60]~60_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\Div2|auto_generated|divider|divider|StageOut[60]~61_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[60]~60_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[60]~61_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[60]~60_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[60]~61_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[60]~60_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X24_Y17_N18
\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y17_N2
\Div2|auto_generated|divider|divider|StageOut[69]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~95_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~95_combout\);

-- Location: LCCOMB_X24_Y17_N4
\Div2|auto_generated|divider|divider|StageOut[70]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~72_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~72_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Div2|auto_generated|divider|divider|StageOut[70]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[70]~94_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \Div2|auto_generated|divider|my_abs_num|cs1a[8]~5_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[70]~94_combout\);

-- Location: LCCOMB_X24_Y17_N2
\Div2|auto_generated|divider|divider|StageOut[69]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[69]~73_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[69]~73_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Div2|auto_generated|divider|divider|StageOut[68]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~74_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~74_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Div2|auto_generated|divider|divider|StageOut[68]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[68]~96_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[7]~9_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[68]~96_combout\);

-- Location: LCCOMB_X25_Y17_N10
\Div2|auto_generated|divider|divider|StageOut[67]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~97_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[6]~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~97_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Div2|auto_generated|divider|divider|StageOut[67]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[67]~75_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[67]~75_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Div2|auto_generated|divider|divider|StageOut[66]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~98_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\))) # (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[5]~11_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~98_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Div2|auto_generated|divider|divider|StageOut[66]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[66]~76_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[66]~76_combout\);

-- Location: LCCOMB_X22_Y17_N8
\Div2|auto_generated|divider|divider|StageOut[65]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[65]~78_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[65]~78_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Div2|auto_generated|divider|divider|StageOut[65]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[65]~77_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[65]~77_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Div2|auto_generated|divider|divider|StageOut[64]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~88_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add13~6_combout\ $ (\Add13~18_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~18_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~88_combout\);

-- Location: LCCOMB_X22_Y17_N6
\Div2|auto_generated|divider|divider|StageOut[64]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[64]~89_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Add13~6_combout\ $ (\Add13~18_combout\ $ (\Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => \Add13~18_combout\,
	datac => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[64]~89_combout\);

-- Location: LCCOMB_X23_Y17_N4
\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[64]~88_combout\) # (\Div2|auto_generated|divider|divider|StageOut[64]~89_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[64]~88_combout\) # (\Div2|auto_generated|divider|divider|StageOut[64]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[64]~88_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[64]~89_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\);

-- Location: LCCOMB_X23_Y17_N6
\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[65]~78_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[65]~77_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[65]~78_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[65]~77_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[65]~78_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[65]~77_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[65]~78_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[65]~77_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\);

-- Location: LCCOMB_X23_Y17_N8
\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[66]~98_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[66]~76_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[66]~98_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[66]~76_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[66]~98_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[66]~76_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[66]~98_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[66]~76_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\);

-- Location: LCCOMB_X23_Y17_N10
\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[67]~97_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[67]~97_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[67]~75_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[67]~75_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[67]~97_combout\ & !\Div2|auto_generated|divider|divider|StageOut[67]~75_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[67]~97_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[67]~75_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\);

-- Location: LCCOMB_X23_Y17_N12
\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[68]~74_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~96_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[68]~74_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~96_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~74_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[68]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[68]~74_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[68]~96_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\);

-- Location: LCCOMB_X23_Y17_N14
\Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (((\Div2|auto_generated|divider|divider|StageOut[69]~73_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[69]~95_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~73_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[69]~95_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~11\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[69]~73_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[69]~95_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[69]~73_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[69]~95_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~9\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~11\);

-- Location: LCCOMB_X23_Y17_N16
\Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[70]~72_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[70]~94_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[70]~72_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[70]~94_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~11\,
	cout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\);

-- Location: LCCOMB_X23_Y17_N18
\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ = !\Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_8_result_int[8]~13_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\);

-- Location: LCCOMB_X23_Y18_N30
\Div2|auto_generated|divider|divider|StageOut[79]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~90_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[69]~95_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[69]~95_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~90_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Div2|auto_generated|divider|divider|StageOut[79]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[79]~79_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[7]~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[79]~79_combout\);

-- Location: LCCOMB_X23_Y17_N28
\Div2|auto_generated|divider|divider|StageOut[78]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~80_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~80_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[78]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[78]~91_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[68]~96_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[68]~96_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[78]~91_combout\);

-- Location: LCCOMB_X24_Y18_N30
\Div2|auto_generated|divider|divider|StageOut[77]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[77]~92_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[67]~97_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[67]~97_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[77]~92_combout\);

-- Location: LCCOMB_X23_Y17_N30
\Div2|auto_generated|divider|divider|StageOut[77]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[77]~81_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[77]~81_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Div2|auto_generated|divider|divider|StageOut[76]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~93_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[66]~98_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[66]~98_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~93_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[76]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[76]~82_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[76]~82_combout\);

-- Location: LCCOMB_X22_Y18_N8
\Div2|auto_generated|divider|divider|StageOut[75]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~83_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~83_combout\);

-- Location: LCCOMB_X22_Y17_N0
\Div2|auto_generated|divider|divider|StageOut[75]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[75]~99_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\)) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|my_abs_num|cs1a[4]~14_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[75]~99_combout\);

-- Location: LCCOMB_X22_Y17_N2
\Div2|auto_generated|divider|divider|StageOut[74]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~84_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[64]~89_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[64]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[64]~89_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[64]~88_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~84_combout\);

-- Location: LCCOMB_X23_Y17_N22
\Div2|auto_generated|divider|divider|StageOut[74]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[74]~85_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_8_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[74]~85_combout\);

-- Location: LCCOMB_X22_Y17_N20
\Div2|auto_generated|divider|my_abs_num|cs1a[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\ = \Add13~4_combout\ $ (((\Add13~18_combout\ & ((\Add13~0_combout\) # (\Add13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~4_combout\,
	datab => \Add13~0_combout\,
	datac => \Add13~2_combout\,
	datad => \Add13~18_combout\,
	combout => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Div2|auto_generated|divider|divider|StageOut[73]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~87_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\ & !\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~87_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Div2|auto_generated|divider|divider|StageOut[73]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[73]~86_combout\ = (\Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\ & \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|my_abs_num|cs1a[2]~13_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[73]~86_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[73]~87_combout\) # (\Div2|auto_generated|divider|divider|StageOut[73]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[73]~87_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[73]~86_combout\,
	datad => VCC,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\);

-- Location: LCCOMB_X23_Y18_N2
\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[74]~84_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[74]~85_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[74]~84_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[74]~85_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[2]~1_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\);

-- Location: LCCOMB_X23_Y18_N4
\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[75]~83_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[75]~99_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[75]~83_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[75]~99_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[3]~3_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\);

-- Location: LCCOMB_X23_Y18_N6
\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[76]~93_combout\ & !\Div2|auto_generated|divider|divider|StageOut[76]~82_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[76]~93_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[76]~82_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[4]~5_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\);

-- Location: LCCOMB_X23_Y18_N8
\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[77]~92_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[77]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[77]~92_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[77]~81_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[5]~7_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\);

-- Location: LCCOMB_X23_Y18_N10
\Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[78]~80_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[78]~91_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[78]~80_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[78]~91_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[6]~9_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y18_N12
\Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[79]~90_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[79]~79_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[79]~90_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[79]~79_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[7]~11_cout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\);

-- Location: LCCOMB_X23_Y18_N14
\Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ = !\Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_9_result_int[8]~13_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Div2|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~0_combout\ = \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\ $ (VCC)
-- \Div2|auto_generated|divider|op_1~1\ = CARRY(\Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|op_1~0_combout\,
	cout => \Div2|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X23_Y18_N16
\Div2|auto_generated|divider|quotient[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[0]~0_combout\ = (\Add13~18_combout\ & (\Div2|auto_generated|divider|op_1~0_combout\)) # (!\Add13~18_combout\ & ((!\Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datac => \Div2|auto_generated|divider|op_1~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_9_result_int[9]~14_combout\,
	combout => \Div2|auto_generated|divider|quotient[0]~0_combout\);

-- Location: FF_X23_Y18_N17
\digit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div2|auto_generated|divider|quotient[0]~0_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(0));

-- Location: LCCOMB_X23_Y18_N24
\Div2|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & (!\Div2|auto_generated|divider|op_1~1\)) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\ & 
-- ((\Div2|auto_generated|divider|op_1~1\) # (GND)))
-- \Div2|auto_generated|divider|op_1~3\ = CARRY((!\Div2|auto_generated|divider|op_1~1\) # (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~1\,
	combout => \Div2|auto_generated|divider|op_1~2_combout\,
	cout => \Div2|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X23_Y18_N18
\Div2|auto_generated|divider|quotient[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[1]~1_combout\ = (\Add13~18_combout\ & ((\Div2|auto_generated|divider|op_1~2_combout\))) # (!\Add13~18_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_8_result_int[9]~14_combout\,
	datac => \Add13~18_combout\,
	datad => \Div2|auto_generated|divider|op_1~2_combout\,
	combout => \Div2|auto_generated|divider|quotient[1]~1_combout\);

-- Location: FF_X23_Y18_N19
\digit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div2|auto_generated|divider|quotient[1]~1_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(1));

-- Location: LCCOMB_X23_Y18_N26
\Div2|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\Div2|auto_generated|divider|op_1~3\ & VCC))
-- \Div2|auto_generated|divider|op_1~5\ = CARRY((\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\Div2|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|op_1~3\,
	combout => \Div2|auto_generated|divider|op_1~4_combout\,
	cout => \Div2|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X23_Y18_N28
\Div2|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|op_1~6_combout\ = \Div2|auto_generated|divider|op_1~5\ $ (\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	cin => \Div2|auto_generated|divider|op_1~5\,
	combout => \Div2|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X23_Y18_N20
\Div2|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[3]~3_combout\ = (\Add13~18_combout\ & ((\Div2|auto_generated|divider|op_1~6_combout\))) # (!\Add13~18_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \Add13~18_combout\,
	datad => \Div2|auto_generated|divider|op_1~6_combout\,
	combout => \Div2|auto_generated|divider|quotient[3]~3_combout\);

-- Location: FF_X23_Y18_N21
\digit1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div2|auto_generated|divider|quotient[3]~3_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(3));

-- Location: LCCOMB_X24_Y18_N24
\Div2|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|quotient[2]~2_combout\ = (\Add13~18_combout\ & (\Div2|auto_generated|divider|op_1~4_combout\)) # (!\Add13~18_combout\ & ((!\Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~18_combout\,
	datac => \Div2|auto_generated|divider|op_1~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|quotient[2]~2_combout\);

-- Location: FF_X24_Y18_N25
\digit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Div2|auto_generated|divider|quotient[2]~2_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(2));

-- Location: LCCOMB_X24_Y18_N18
\Mux44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux44~0_combout\ = (digit1(3)) # ((digit1(1) & ((!digit1(2)) # (!digit1(0)))) # (!digit1(1) & ((digit1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => digit1(1),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Mux44~0_combout\);

-- Location: LCCOMB_X25_Y19_N2
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = ((\stateCoffeeMachine.Implementation~q\ & \Mux44~0_combout\)) # (!\Selector80~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Selector80~0_combout\,
	datad => \Mux44~0_combout\,
	combout => \Selector80~1_combout\);

-- Location: FF_X25_Y19_N3
\bufferForIndicator1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector80~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(0));

-- Location: LCCOMB_X25_Y19_N0
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\) # ((!indicator(1) & !bufferForIndicator1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => \Mux10~0_combout\,
	datad => bufferForIndicator1(0),
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X28_Y15_N0
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (digit2(1) & ((digit2(0)) # (!digit2(2)))) # (!digit2(1) & (digit2(0) & !digit2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(2),
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X26_Y16_N28
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (procent(4)) # ((procent(3) & ((procent(2)) # (procent(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => procent(2),
	datac => procent(1),
	datad => procent(4),
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X26_Y16_N18
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = (procent(5)) # ((procent(6)) # (\LessThan14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datac => procent(6),
	datad => \LessThan14~0_combout\,
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X28_Y13_N22
\Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\LessThan14~1_combout\ & (\stateCoffeeMachine.Payment~q\ & (!\LessThan13~1_combout\))) # (!\LessThan14~1_combout\ & ((\stateCoffeeMachine.Implementation~q\) # ((\stateCoffeeMachine.Payment~q\ & !\LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \LessThan13~1_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X28_Y15_N26
\Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (\WideOr5~0_combout\ & ((\Selector86~0_combout\) # ((\Selector86~1_combout\ & !digit2(2))))) # (!\WideOr5~0_combout\ & (((\Selector86~1_combout\ & !digit2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \Selector86~0_combout\,
	datac => \Selector86~1_combout\,
	datad => digit2(2),
	combout => \Selector86~2_combout\);

-- Location: LCCOMB_X29_Y15_N0
\Selector86~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~3_combout\ = (\stateCoffeeMachine.Waiting~q\ & ((digit2(3)) # (!\Selector86~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector86~2_combout\,
	datad => digit2(3),
	combout => \Selector86~3_combout\);

-- Location: FF_X29_Y15_N1
\bufferForIndicator2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector86~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(1));

-- Location: LCCOMB_X26_Y15_N10
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!digit3(3) & ((digit3(0) & ((digit3(1)) # (!digit3(2)))) # (!digit3(0) & (digit3(1) & !digit3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(0),
	datac => digit3(1),
	datad => digit3(2),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X29_Y18_N12
\Selector93~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~2_combout\ = (\stateCoffeeMachine.Waiting~q\ & (((!\stateCoffeeMachine.Payment~q\ & !\stateCoffeeMachine.Implementation~q\)) # (!\Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~0_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector93~2_combout\);

-- Location: FF_X29_Y18_N13
\bufferForIndicator3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(1));

-- Location: LCCOMB_X29_Y18_N6
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (indicator(0) & (((indicator(1) & !bufferForIndicator3(1))))) # (!indicator(0) & (((!indicator(1))) # (!bufferForIndicator2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(1),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator3(1),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X24_Y18_N16
\Mux43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~0_combout\ = (!digit1(1) & !digit1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit1(1),
	datad => digit1(2),
	combout => \Mux43~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = ((!procent(3) & (!procent(2) & !procent(4)))) # (!\digit2[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => procent(2),
	datac => procent(4),
	datad => \digit2[0]~0_combout\,
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X24_Y18_N26
\Mux43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux43~1_combout\ = (\Mux43~0_combout\ & (!digit1(3) & ((digit1(0)) # (\LessThan15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => \Mux43~0_combout\,
	datac => \LessThan15~0_combout\,
	datad => digit1(3),
	combout => \Mux43~1_combout\);

-- Location: LCCOMB_X26_Y18_N6
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\stateCoffeeMachine.Waiting~q\ & !\stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	combout => \Selector77~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (digit1(1) & (!digit1(3) & ((digit1(0)) # (!digit1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => digit1(1),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Selector79~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\Selector77~0_combout\ & (((!\Mux43~1_combout\ & !\Selector79~0_combout\)) # (!\stateCoffeeMachine.Implementation~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~1_combout\,
	datab => \Selector77~0_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector79~0_combout\,
	combout => \Selector79~1_combout\);

-- Location: FF_X24_Y18_N5
\bufferForIndicator1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector79~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(1));

-- Location: LCCOMB_X25_Y19_N14
\Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\) # ((!indicator(1) & !bufferForIndicator1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datac => \Mux9~0_combout\,
	datad => bufferForIndicator1(1),
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X24_Y18_N10
\Selector78~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~2_combout\ = (digit1(0)) # ((!digit1(1) & ((\LessThan15~0_combout\) # (digit1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => digit1(1),
	datac => digit1(0),
	datad => digit1(2),
	combout => \Selector78~2_combout\);

-- Location: LCCOMB_X24_Y18_N8
\Selector78~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~3_combout\ = (digit1(0) & ((\Mux43~0_combout\) # ((!digit1(3) & \Selector78~2_combout\)))) # (!digit1(0) & (((!digit1(3) & \Selector78~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => \Mux43~0_combout\,
	datac => digit1(3),
	datad => \Selector78~2_combout\,
	combout => \Selector78~3_combout\);

-- Location: LCCOMB_X25_Y16_N4
\Selector78~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~4_combout\ = (!\stateCoffeeMachine.Payment~q\ & (\stateCoffeeMachine.Waiting~q\ & ((!\Selector78~3_combout\) # (!\stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector78~3_combout\,
	combout => \Selector78~4_combout\);

-- Location: FF_X25_Y16_N5
\bufferForIndicator1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector78~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(2));

-- Location: LCCOMB_X28_Y13_N16
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (\LessThan14~1_combout\ & (((\LessThan13~1_combout\) # (\stateCoffeeMachine.Implementation~q\)))) # (!\LessThan14~1_combout\ & (\stateCoffeeMachine.Payment~q\ & (\LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \LessThan13~1_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X28_Y13_N26
\Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (!digit2(1) & (!digit2(3) & ((digit2(2)) # (!\Selector85~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => \Selector85~0_combout\,
	datac => digit2(1),
	datad => digit2(3),
	combout => \Selector85~1_combout\);

-- Location: LCCOMB_X29_Y14_N30
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = ((!selectionDrink(0) & !selectionDrink(1))) # (!\stateCoffeeMachine.Selection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datac => \stateCoffeeMachine.Selection~q\,
	datad => selectionDrink(1),
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X28_Y13_N20
\Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~2_combout\ = (digit2(0) & (((!digit2(2) & !digit2(1))) # (!digit2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(1),
	datad => digit2(3),
	combout => \Selector85~2_combout\);

-- Location: LCCOMB_X28_Y13_N24
\Selector85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~3_combout\ = ((!\Selector85~1_combout\ & (\WideOr5~0_combout\ & !\Selector85~2_combout\))) # (!\Selector82~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~1_combout\,
	datab => \Selector82~0_combout\,
	datac => \WideOr5~0_combout\,
	datad => \Selector85~2_combout\,
	combout => \Selector85~3_combout\);

-- Location: FF_X28_Y13_N25
\bufferForIndicator2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector85~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(2));

-- Location: LCCOMB_X26_Y15_N20
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (digit3(0)) # ((digit3(2) & !digit3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datac => digit3(1),
	datad => digit3(0),
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X26_Y15_N22
\Selector92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (!\stateCoffeeMachine.Unsuccessful~q\ & (\stateCoffeeMachine.Waiting~q\ & ((!\WideOr5~0_combout\) # (!\Selector92~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Selector92~0_combout\,
	datac => \WideOr5~0_combout\,
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector92~1_combout\);

-- Location: FF_X26_Y15_N23
\bufferForIndicator3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector92~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(2));

-- Location: LCCOMB_X25_Y19_N28
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(2)))) # (!indicator(0) & (!bufferForIndicator2(2))))) # (!indicator(1) & (!indicator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator2(2),
	datad => bufferForIndicator3(2),
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X25_Y16_N2
\Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\) # ((!indicator(1) & !bufferForIndicator1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(1),
	datac => bufferForIndicator1(2),
	datad => \Mux8~0_combout\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X28_Y13_N10
\Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (digit2(2)) # ((!digit2(1) & ((digit2(0)) # (!\LessThan14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => \LessThan14~1_combout\,
	datad => digit2(0),
	combout => \Selector84~1_combout\);

-- Location: LCCOMB_X28_Y13_N4
\Selector84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~2_combout\ = (digit2(2)) # ((!digit2(1) & ((digit2(0)) # (!\LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(1),
	datad => \LessThan13~1_combout\,
	combout => \Selector84~2_combout\);

-- Location: LCCOMB_X28_Y13_N2
\Selector84~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~3_combout\ = (\Selector84~1_combout\ & ((\stateCoffeeMachine.Implementation~q\) # ((\Selector84~2_combout\ & \stateCoffeeMachine.Payment~q\)))) # (!\Selector84~1_combout\ & (\Selector84~2_combout\ & (\stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~1_combout\,
	datab => \Selector84~2_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector84~3_combout\);

-- Location: LCCOMB_X28_Y13_N28
\Selector84~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~4_combout\ = (!digit2(3) & ((digit2(0) $ (!digit2(1))) # (!digit2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(1),
	datad => digit2(3),
	combout => \Selector84~4_combout\);

-- Location: LCCOMB_X28_Y17_N10
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = ((\stateCoffeeMachine.Selection~q\ & selectionDrink(1))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => selectionDrink(1),
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X28_Y17_N0
\Selector84~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~5_combout\ = (!\Selector84~0_combout\ & ((!\Selector84~4_combout\) # (!\Selector84~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~3_combout\,
	datac => \Selector84~4_combout\,
	datad => \Selector84~0_combout\,
	combout => \Selector84~5_combout\);

-- Location: FF_X28_Y17_N1
\bufferForIndicator2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector84~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(3));

-- Location: LCCOMB_X26_Y15_N18
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (!digit3(3) & (!digit3(1) & (digit3(0) $ (digit3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(0),
	datac => digit3(1),
	datad => digit3(2),
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X26_Y15_N16
\Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\stateCoffeeMachine.Waiting~q\ & !\Selector88~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector88~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X26_Y15_N14
\Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = ((digit3(2) & (digit3(1) & digit3(0)))) # (!\Selector88~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => \Selector88~1_combout\,
	datac => digit3(1),
	datad => digit3(0),
	combout => \Selector91~1_combout\);

-- Location: LCCOMB_X29_Y18_N10
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\stateCoffeeMachine.Selection~q\ & ((!selectionDrink(1)) # (!selectionDrink(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \stateCoffeeMachine.Selection~q\,
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X29_Y18_N8
\Selector91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~2_combout\ = (!\Selector91~0_combout\ & ((\stateCoffeeMachine.Unsuccessful~q\) # ((\stateCoffeeMachine.Selection~q\) # (!\Selector91~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => \Selector91~1_combout\,
	datad => \Selector91~0_combout\,
	combout => \Selector91~2_combout\);

-- Location: FF_X29_Y18_N9
\bufferForIndicator3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(3));

-- Location: LCCOMB_X29_Y18_N14
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(3)))) # (!indicator(0) & (!bufferForIndicator2(3))))) # (!indicator(1) & (((!indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(3),
	datab => bufferForIndicator3(3),
	datac => indicator(1),
	datad => indicator(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X24_Y18_N6
\Selector77~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~1_combout\ = (!digit1(3) & (digit1(2) & (digit1(0) $ (!digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => digit1(1),
	datac => digit1(3),
	datad => digit1(2),
	combout => \Selector77~1_combout\);

-- Location: LCCOMB_X24_Y18_N14
\Selector77~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~2_combout\ = (\Selector77~0_combout\ & (((!\Mux43~1_combout\ & !\Selector77~1_combout\)) # (!\stateCoffeeMachine.Implementation~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux43~1_combout\,
	datab => \Selector77~0_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector77~1_combout\,
	combout => \Selector77~2_combout\);

-- Location: FF_X24_Y18_N15
\bufferForIndicator1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector77~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(3));

-- Location: LCCOMB_X25_Y18_N4
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\) # ((!indicator(1) & !bufferForIndicator1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux7~0_combout\,
	datac => indicator(1),
	datad => bufferForIndicator1(3),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X24_Y18_N28
\bufferForIndicator1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator1~0_combout\ = (!digit1(0) & (!digit1(3) & !digit1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datac => digit1(3),
	datad => digit1(2),
	combout => \bufferForIndicator1~0_combout\);

-- Location: LCCOMB_X24_Y18_N0
\bufferForIndicator1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator1~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((!\LessThan15~0_combout\ & !digit1(1))) # (!\bufferForIndicator1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => digit1(1),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \bufferForIndicator1~0_combout\,
	combout => \bufferForIndicator1~1_combout\);

-- Location: FF_X24_Y18_N1
\bufferForIndicator1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bufferForIndicator1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(4));

-- Location: LCCOMB_X25_Y16_N0
\Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((digit2(1)) # (!\LessThan14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan14~1_combout\,
	datac => digit2(1),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector83~1_combout\);

-- Location: LCCOMB_X28_Y13_N18
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (!digit2(0) & (!digit2(2) & !digit2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit2(0),
	datac => digit2(2),
	datad => digit2(3),
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X25_Y16_N10
\Selector83~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~2_combout\ = (\stateCoffeeMachine.Payment~q\ & ((digit2(1)) # (!\LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~1_combout\,
	datac => digit2(1),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector83~2_combout\);

-- Location: LCCOMB_X25_Y16_N24
\Selector83~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~3_combout\ = (\stateCoffeeMachine.Waiting~q\ & (((!\Selector83~1_combout\ & !\Selector83~2_combout\)) # (!\Selector83~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \Selector83~1_combout\,
	datac => \Selector83~0_combout\,
	datad => \Selector83~2_combout\,
	combout => \Selector83~3_combout\);

-- Location: FF_X25_Y16_N25
\bufferForIndicator2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector83~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(4));

-- Location: LCCOMB_X26_Y15_N4
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (!digit3(2) & (\WideOr5~0_combout\ & (digit3(1) & !digit3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => \WideOr5~0_combout\,
	datac => digit3(1),
	datad => digit3(0),
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (!\stateCoffeeMachine.Selection~q\ & (\stateCoffeeMachine.Waiting~q\ & !\Selector90~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector90~0_combout\,
	combout => \Selector90~1_combout\);

-- Location: FF_X25_Y19_N11
\bufferForIndicator3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector90~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(4));

-- Location: LCCOMB_X25_Y19_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(4)))) # (!indicator(0) & (!bufferForIndicator2(4))))) # (!indicator(1) & (!indicator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator2(4),
	datad => bufferForIndicator3(4),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\) # ((!bufferForIndicator1(4) & !indicator(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bufferForIndicator1(4),
	datac => indicator(1),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\bufferForIndicator1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator1~2_combout\ = (digit1(2) & ((digit1(1) $ (digit1(0))))) # (!digit1(2) & (\LessThan15~0_combout\ & (!digit1(1) & !digit1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => digit1(1),
	datac => digit1(0),
	datad => digit1(2),
	combout => \bufferForIndicator1~2_combout\);

-- Location: LCCOMB_X24_Y18_N22
\bufferForIndicator1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator1~3_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((digit1(3)) # (!\bufferForIndicator1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datac => digit1(3),
	datad => \bufferForIndicator1~2_combout\,
	combout => \bufferForIndicator1~3_combout\);

-- Location: FF_X24_Y18_N23
\bufferForIndicator1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bufferForIndicator1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(5));

-- Location: LCCOMB_X28_Y13_N8
\Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (digit2(2) & (digit2(1) $ ((digit2(0))))) # (!digit2(2) & (!digit2(1) & (!digit2(0) & !\Selector85~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => digit2(0),
	datad => \Selector85~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: LCCOMB_X28_Y13_N14
\Selector82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~2_combout\ = ((\WideOr5~0_combout\ & ((digit2(3)) # (!\Selector82~1_combout\)))) # (!\Selector82~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~0_combout\,
	datab => \Selector82~0_combout\,
	datac => \Selector82~1_combout\,
	datad => digit2(3),
	combout => \Selector82~2_combout\);

-- Location: FF_X28_Y13_N15
\bufferForIndicator2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector82~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(5));

-- Location: LCCOMB_X26_Y15_N2
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (digit3(2) & (digit3(1) $ (digit3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datac => digit3(1),
	datad => digit3(0),
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X25_Y19_N18
\Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (\stateCoffeeMachine.Selection~q\ & (((\WideOr5~0_combout\ & !\Selector89~0_combout\)) # (!selectionDrink(0)))) # (!\stateCoffeeMachine.Selection~q\ & (\WideOr5~0_combout\ & ((!\Selector89~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \WideOr5~0_combout\,
	datac => selectionDrink(0),
	datad => \Selector89~0_combout\,
	combout => \Selector89~1_combout\);

-- Location: FF_X25_Y19_N19
\bufferForIndicator3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector89~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(5));

-- Location: LCCOMB_X25_Y19_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(5)))) # (!indicator(0) & (!bufferForIndicator2(5))))) # (!indicator(1) & (!indicator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator2(5),
	datad => bufferForIndicator3(5),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X24_Y19_N14
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\) # ((!bufferForIndicator1(5) & !indicator(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bufferForIndicator1(5),
	datac => indicator(1),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X28_Y13_N12
\Selector81~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((digit2(0)) # (digit2(2))) # (!\LessThan14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~1_combout\,
	datab => digit2(0),
	datac => digit2(2),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector81~1_combout\);

-- Location: LCCOMB_X28_Y13_N30
\Selector81~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (!digit2(1) & (!digit2(3) & ((!digit2(0)) # (!digit2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(1),
	datad => digit2(3),
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X28_Y13_N6
\Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~2_combout\ = (\stateCoffeeMachine.Payment~q\ & (((digit2(2)) # (digit2(0))) # (!\LessThan13~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => digit2(2),
	datad => digit2(0),
	combout => \Selector81~2_combout\);

-- Location: LCCOMB_X28_Y13_N0
\Selector81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~3_combout\ = (\stateCoffeeMachine.Waiting~q\ & (((!\Selector81~1_combout\ & !\Selector81~2_combout\)) # (!\Selector81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector81~1_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector81~0_combout\,
	datad => \Selector81~2_combout\,
	combout => \Selector81~3_combout\);

-- Location: FF_X28_Y13_N1
\bufferForIndicator2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector81~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(6));

-- Location: LCCOMB_X29_Y18_N28
\Selector88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~2_combout\ = (selectionDrink(0) & (selectionDrink(1) & \stateCoffeeMachine.Selection~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \stateCoffeeMachine.Selection~q\,
	combout => \Selector88~2_combout\);

-- Location: LCCOMB_X29_Y18_N24
\Selector88~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~3_combout\ = (!\Selector88~2_combout\ & ((\stateCoffeeMachine.Unsuccessful~q\) # ((\stateCoffeeMachine.Selection~q\) # (\Selector88~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => \Selector88~1_combout\,
	datad => \Selector88~2_combout\,
	combout => \Selector88~3_combout\);

-- Location: FF_X29_Y18_N25
\bufferForIndicator3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector88~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(6));

-- Location: LCCOMB_X29_Y18_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (indicator(1) & ((indicator(0) & ((!bufferForIndicator3(6)))) # (!indicator(0) & (!bufferForIndicator2(6))))) # (!indicator(1) & (!indicator(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator2(6),
	datad => bufferForIndicator3(6),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (!digit1(1) & ((digit1(0) & ((!digit1(2)))) # (!digit1(0) & ((\LessThan15~0_combout\) # (digit1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~0_combout\,
	datab => digit1(1),
	datac => digit1(0),
	datad => digit1(2),
	combout => \Selector76~0_combout\);

-- Location: LCCOMB_X29_Y18_N4
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\Selector91~0_combout\) # ((\stateCoffeeMachine.Implementation~q\ & ((digit1(3)) # (!\Selector76~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector76~0_combout\,
	datab => digit1(3),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector91~0_combout\,
	combout => \Selector76~1_combout\);

-- Location: FF_X29_Y18_N5
\bufferForIndicator1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector76~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(6));

-- Location: LCCOMB_X29_Y18_N18
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\) # ((!bufferForIndicator1(6) & !indicator(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => bufferForIndicator1(6),
	datac => indicator(1),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X25_Y19_N6
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (indicator(0) & indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X25_Y19_N12
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

-- Location: LCCOMB_X24_Y19_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (indicator(1)) # (!indicator(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(1),
	datad => indicator(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (indicator(0)) # (indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => indicator(0),
	datad => indicator(1),
	combout => \Mux10~3_combout\);

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


