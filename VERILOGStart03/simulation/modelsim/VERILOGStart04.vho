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

-- DATE "03/19/2024 00:27:01"

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

ENTITY 	VERILOGStart04 IS
    PORT (
	clk : IN std_logic;
	buttonWaiting : IN std_logic;
	buttonLeft : IN std_logic;
	buttonRight : IN std_logic;
	buttonSelection : IN std_logic;
	led1 : OUT std_logic_vector(3 DOWNTO 0);
	led5 : OUT std_logic_vector(7 DOWNTO 0);
	en : OUT std_logic_vector(3 DOWNTO 0)
	);
END VERILOGStart04;

-- Design Ports Information
-- led1[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[7]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonWaiting	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonSelection	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonRight	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- buttonLeft	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VERILOGStart04 IS
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
SIGNAL ww_led5 : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \led5[7]~output_o\ : std_logic;
SIGNAL \en[0]~output_o\ : std_logic;
SIGNAL \en[1]~output_o\ : std_logic;
SIGNAL \en[2]~output_o\ : std_logic;
SIGNAL \en[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \buttonRight~input_o\ : std_logic;
SIGNAL \buttonRightPrev~feeder_combout\ : std_logic;
SIGNAL \buttonRightPrev~q\ : std_logic;
SIGNAL \buttonLeft~input_o\ : std_logic;
SIGNAL \buttonLeftPrev~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \buttonSelection~input_o\ : std_logic;
SIGNAL \buttonSelectionPrev~feeder_combout\ : std_logic;
SIGNAL \buttonSelectionPrev~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \buttonWaiting~input_o\ : std_logic;
SIGNAL \buttonWaitingPrev~q\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Payment~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \always4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~26_combout\ : std_logic;
SIGNAL \LessThan12~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \always4~1_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~22_combout\ : std_logic;
SIGNAL \Add5~21\ : std_logic;
SIGNAL \Add5~23_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \LessThan8~3_combout\ : std_logic;
SIGNAL \LessThan7~1_combout\ : std_logic;
SIGNAL \LessThan7~0_combout\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \selectionDrink~2_combout\ : std_logic;
SIGNAL \selectionDrink[0]~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \selectionDrink~3_combout\ : std_logic;
SIGNAL \selectionDrink[1]~1_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \LessThan12~1_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Add7~78_combout\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add7~77_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~76_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~75_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~74_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add7~73_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~72_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add7~71_combout\ : std_logic;
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
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan10~2_combout\ : std_logic;
SIGNAL \LessThan10~3_combout\ : std_logic;
SIGNAL \Add7~54\ : std_logic;
SIGNAL \Add7~56_combout\ : std_logic;
SIGNAL \Add7~58_combout\ : std_logic;
SIGNAL \LessThan10~4_combout\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add7~59_combout\ : std_logic;
SIGNAL \Add7~61_combout\ : std_logic;
SIGNAL \Add7~60\ : std_logic;
SIGNAL \Add7~62_combout\ : std_logic;
SIGNAL \Add7~64_combout\ : std_logic;
SIGNAL \LessThan10~5_combout\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~65_combout\ : std_logic;
SIGNAL \Add7~67_combout\ : std_logic;
SIGNAL \Add7~66\ : std_logic;
SIGNAL \Add7~68_combout\ : std_logic;
SIGNAL \Add7~70_combout\ : std_logic;
SIGNAL \LessThan10~6_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \digit2[2]~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~8_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Unsuccessful~q\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Selector76~1_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Add9~25\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \Add9~27\ : std_logic;
SIGNAL \Add9~28_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Add9~29\ : std_logic;
SIGNAL \Add9~30_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Add9~31\ : std_logic;
SIGNAL \Add9~32_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Add9~33\ : std_logic;
SIGNAL \Add9~34_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \Add9~35\ : std_logic;
SIGNAL \Add9~36_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \Add9~37\ : std_logic;
SIGNAL \Add9~38_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Add9~39\ : std_logic;
SIGNAL \Add9~40_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Add9~41\ : std_logic;
SIGNAL \Add9~42_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \LessThan11~3_combout\ : std_logic;
SIGNAL \LessThan11~4_combout\ : std_logic;
SIGNAL \Add9~43\ : std_logic;
SIGNAL \Add9~44_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add9~45\ : std_logic;
SIGNAL \Add9~46_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add9~47\ : std_logic;
SIGNAL \Add9~48_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Add9~49\ : std_logic;
SIGNAL \Add9~50_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \Add9~51\ : std_logic;
SIGNAL \Add9~52_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \LessThan11~5_combout\ : std_logic;
SIGNAL \Add9~53\ : std_logic;
SIGNAL \Add9~54_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Add9~55\ : std_logic;
SIGNAL \Add9~56_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~9_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.000~q\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Selection~q\ : std_logic;
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
SIGNAL \led1[0]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \led1[1]~reg0_q\ : std_logic;
SIGNAL \led1~0_combout\ : std_logic;
SIGNAL \led1[2]~reg0_q\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add12~1_cout\ : std_logic;
SIGNAL \Add12~3_cout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~15\ : std_logic;
SIGNAL \Add12~17\ : std_logic;
SIGNAL \Add12~18_combout\ : std_logic;
SIGNAL \Add12~16_combout\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[211]~93_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[210]~95_combout\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[209]~97_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[220]~148_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[222]~146_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[222]~98_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[221]~99_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[221]~147_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[220]~100_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[219]~101_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[219]~149_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[218]~150_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[218]~102_combout\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[208]~105_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[217]~106_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[217]~103_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[229]~135_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[230]~134_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[230]~107_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[229]~108_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[228]~136_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[228]~109_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[227]~110_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[227]~137_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[226]~111_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[226]~151_combout\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[216]~114_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[225]~115_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[225]~112_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[238]~138_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[238]~116_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[237]~139_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[237]~117_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[236]~118_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[236]~140_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[235]~141_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[235]~119_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[234]~152_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[234]~120_combout\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[224]~123_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[233]~124_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[233]~121_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ : std_logic;
SIGNAL \digit1[1]~15_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[246]~142_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[246]~125_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[245]~143_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[245]~126_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[244]~127_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[244]~144_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[243]~145_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[243]~128_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[242]~129_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[242]~153_combout\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[232]~132_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[241]~133_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[241]~130_combout\ : std_logic;
SIGNAL \digit1[0]~2_cout\ : std_logic;
SIGNAL \digit1[0]~4_cout\ : std_logic;
SIGNAL \digit1[0]~6_cout\ : std_logic;
SIGNAL \digit1[0]~8_cout\ : std_logic;
SIGNAL \digit1[0]~10_cout\ : std_logic;
SIGNAL \digit1[0]~12_cout\ : std_logic;
SIGNAL \digit1[0]~13_combout\ : std_logic;
SIGNAL \digit1[2]~16_combout\ : std_logic;
SIGNAL \digit1[3]~17_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \clkForIndication[0]~19_combout\ : std_logic;
SIGNAL \clkForIndication[0]~20\ : std_logic;
SIGNAL \clkForIndication[1]~21_combout\ : std_logic;
SIGNAL \clkForIndication[1]~22\ : std_logic;
SIGNAL \clkForIndication[2]~23_combout\ : std_logic;
SIGNAL \clkForIndication[2]~24\ : std_logic;
SIGNAL \clkForIndication[3]~25_combout\ : std_logic;
SIGNAL \clkForIndication[3]~26\ : std_logic;
SIGNAL \clkForIndication[4]~27_combout\ : std_logic;
SIGNAL \clkForIndication[4]~28\ : std_logic;
SIGNAL \clkForIndication[5]~29_combout\ : std_logic;
SIGNAL \clkForIndication[5]~30\ : std_logic;
SIGNAL \clkForIndication[6]~31_combout\ : std_logic;
SIGNAL \clkForIndication[6]~32\ : std_logic;
SIGNAL \clkForIndication[7]~33_combout\ : std_logic;
SIGNAL \clkForIndication[7]~34\ : std_logic;
SIGNAL \clkForIndication[8]~35_combout\ : std_logic;
SIGNAL \clkForIndication[8]~36\ : std_logic;
SIGNAL \clkForIndication[9]~37_combout\ : std_logic;
SIGNAL \clkForIndication[9]~38\ : std_logic;
SIGNAL \clkForIndication[10]~39_combout\ : std_logic;
SIGNAL \clkForIndication[10]~40\ : std_logic;
SIGNAL \clkForIndication[11]~41_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \clkForIndication[11]~42\ : std_logic;
SIGNAL \clkForIndication[12]~43_combout\ : std_logic;
SIGNAL \clkForIndication[12]~44\ : std_logic;
SIGNAL \clkForIndication[13]~45_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clkForIndication[13]~46\ : std_logic;
SIGNAL \clkForIndication[14]~47_combout\ : std_logic;
SIGNAL \clkForIndication[14]~48\ : std_logic;
SIGNAL \clkForIndication[15]~49_combout\ : std_logic;
SIGNAL \clkForIndication[15]~50\ : std_logic;
SIGNAL \clkForIndication[16]~51_combout\ : std_logic;
SIGNAL \clkForIndication[16]~52\ : std_logic;
SIGNAL \clkForIndication[17]~53_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \clkForIndication[17]~54\ : std_logic;
SIGNAL \clkForIndication[18]~55_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \indicator[0]~1_combout\ : std_logic;
SIGNAL \indicator[1]~0_combout\ : std_logic;
SIGNAL \bufferForIndicator0[0]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \digitBuf2[2]~12_combout\ : std_logic;
SIGNAL \digit2[2]~2_combout\ : std_logic;
SIGNAL \digit2[2]~1_combout\ : std_logic;
SIGNAL \digit2[2]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[132]~64_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[136]~72_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Selector97~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\ : std_logic;
SIGNAL \digitBuf2[0]~2_cout\ : std_logic;
SIGNAL \digitBuf2[0]~4_cout\ : std_logic;
SIGNAL \digitBuf2[0]~6_cout\ : std_logic;
SIGNAL \digitBuf2[0]~8_cout\ : std_logic;
SIGNAL \digitBuf2[0]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~82_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[152]~88_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \digitBuf2[3]~13_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \digitBuf2[1]~11_combout\ : std_logic;
SIGNAL \Selector98~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Selector91~2_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \led5[0]~reg0_q\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Selector86~3_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector90~2_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \led5[1]~reg0_q\ : std_logic;
SIGNAL \Selector81~2_combout\ : std_logic;
SIGNAL \Selector81~3_combout\ : std_logic;
SIGNAL \Selector81~4_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector85~3_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \Selector85~2_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \led5[2]~reg0_q\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \Selector84~3_combout\ : std_logic;
SIGNAL \Selector84~2_combout\ : std_logic;
SIGNAL \Selector84~1_combout\ : std_logic;
SIGNAL \Selector84~4_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \led5[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \en[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \en[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \en[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \en[3]~reg0_q\ : std_logic;
SIGNAL procentCount : std_logic_vector(25 DOWNTO 0);
SIGNAL timeForUnsuccessfulMessage : std_logic_vector(28 DOWNTO 0);
SIGNAL digitBuf2 : std_logic_vector(3 DOWNTO 0);
SIGNAL selectionDrink : std_logic_vector(1 DOWNTO 0);
SIGNAL digit3 : std_logic_vector(3 DOWNTO 0);
SIGNAL bufferForIndicator3 : std_logic_vector(3 DOWNTO 0);
SIGNAL procent : std_logic_vector(7 DOWNTO 0);
SIGNAL money : std_logic_vector(7 DOWNTO 0);
SIGNAL bufferForIndicator0 : std_logic_vector(3 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL digitBuf3 : std_logic_vector(3 DOWNTO 0);
SIGNAL clkForIndication : std_logic_vector(18 DOWNTO 0);
SIGNAL bufferForIndicator1 : std_logic_vector(3 DOWNTO 0);
SIGNAL digit2 : std_logic_vector(3 DOWNTO 0);
SIGNAL bufferForIndicator2 : std_logic_vector(3 DOWNTO 0);
SIGNAL indicator : std_logic_vector(1 DOWNTO 0);
SIGNAL digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Selection~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.000~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_en[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[0]~reg0_q\ : std_logic;

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
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_stateCoffeeMachine.Selection~q\ <= NOT \stateCoffeeMachine.Selection~q\;
\ALT_INV_stateCoffeeMachine.000~q\ <= NOT \stateCoffeeMachine.000~q\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_en[3]~reg0_q\ <= NOT \en[3]~reg0_q\;
\ALT_INV_en[2]~reg0_q\ <= NOT \en[2]~reg0_q\;
\ALT_INV_en[1]~reg0_q\ <= NOT \en[1]~reg0_q\;
\ALT_INV_en[0]~reg0_q\ <= NOT \en[0]~reg0_q\;

-- Location: IOOBUF_X23_Y24_N9
\led1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\led1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\led1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\led1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led1[2]~reg0_q\,
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
	i => \led5[0]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\led5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\led5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\led5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\led5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\led5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\led5[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led5[7]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\en[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[0]~reg0_q\,
	devoe => ww_devoe,
	o => \en[0]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\en[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[1]~reg0_q\,
	devoe => ww_devoe,
	o => \en[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\en[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[2]~reg0_q\,
	devoe => ww_devoe,
	o => \en[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\en[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_en[3]~reg0_q\,
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

-- Location: IOIBUF_X18_Y24_N22
\buttonRight~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonRight,
	o => \buttonRight~input_o\);

-- Location: LCCOMB_X17_Y15_N24
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

-- Location: FF_X17_Y15_N25
buttonRightPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonRightPrev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonRightPrev~q\);

-- Location: IOIBUF_X16_Y24_N22
\buttonLeft~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonLeft,
	o => \buttonLeft~input_o\);

-- Location: FF_X17_Y15_N3
buttonLeftPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonLeft~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonLeftPrev~q\);

-- Location: LCCOMB_X17_Y15_N26
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\buttonRightPrev~q\ & (\buttonRight~input_o\ & ((\buttonLeft~input_o\) # (!\buttonLeftPrev~q\)))) # (!\buttonRightPrev~q\ & (((\buttonLeft~input_o\)) # (!\buttonLeftPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonRightPrev~q\,
	datab => \buttonLeftPrev~q\,
	datac => \buttonLeft~input_o\,
	datad => \buttonRight~input_o\,
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\buttonSelection~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonSelection,
	o => \buttonSelection~input_o\);

-- Location: LCCOMB_X17_Y15_N20
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

-- Location: FF_X17_Y15_N21
buttonSelectionPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonSelectionPrev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonSelectionPrev~q\);

-- Location: LCCOMB_X17_Y15_N18
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\stateCoffeeMachine.Selection~q\ & (\buttonSelectionPrev~q\ & (\Selector6~0_combout\ & !\buttonSelection~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datab => \buttonSelectionPrev~q\,
	datac => \Selector6~0_combout\,
	datad => \buttonSelection~input_o\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X16_Y24_N15
\buttonWaiting~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonWaiting,
	o => \buttonWaiting~input_o\);

-- Location: FF_X17_Y15_N9
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonWaitingPrev~q\);

-- Location: LCCOMB_X17_Y15_N10
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\buttonWaiting~input_o\ & (((\buttonSelection~input_o\)) # (!\buttonSelectionPrev~q\))) # (!\buttonWaiting~input_o\ & (!\buttonWaitingPrev~q\ & ((\buttonSelection~input_o\) # (!\buttonSelectionPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonWaiting~input_o\,
	datab => \buttonSelectionPrev~q\,
	datac => \buttonWaitingPrev~q\,
	datad => \buttonSelection~input_o\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X17_Y15_N4
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\stateCoffeeMachine.Payment~q\ & ((\Selector2~5_combout\) # (!\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector2~5_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X17_Y15_N5
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

-- Location: LCCOMB_X17_Y15_N22
\Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (!\stateCoffeeMachine.Payment~q\ & !\stateCoffeeMachine.Selection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X17_Y15_N12
\Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (!\Selector1~3_combout\ & (!\buttonSelection~input_o\ & (\Selector6~0_combout\ & \buttonSelectionPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \buttonSelection~input_o\,
	datac => \Selector6~0_combout\,
	datad => \buttonSelectionPrev~q\,
	combout => \Selector2~7_combout\);

-- Location: LCCOMB_X17_Y15_N16
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ((!\buttonSelection~input_o\ & \buttonSelectionPrev~q\)) # (!\Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonSelection~input_o\,
	datac => \Selector6~0_combout\,
	datad => \buttonSelectionPrev~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X17_Y15_N14
\always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always4~0_combout\ = (!\buttonLeft~input_o\ & \buttonLeftPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonLeft~input_o\,
	datad => \buttonLeftPrev~q\,
	combout => \always4~0_combout\);

-- Location: LCCOMB_X11_Y7_N14
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

-- Location: LCCOMB_X12_Y7_N24
\Add5~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~26_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~0_combout\,
	combout => \Add5~26_combout\);

-- Location: LCCOMB_X14_Y7_N24
\LessThan12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~0_combout\ = (!money(5) & (!money(6) & (!money(4) & !money(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => money(6),
	datac => money(4),
	datad => money(7),
	combout => \LessThan12~0_combout\);

-- Location: LCCOMB_X14_Y7_N10
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (!money(3) & !money(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(3),
	datad => money(2),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\Add5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (money(0)) # (((money(1)) # (!\LessThan6~0_combout\)) # (!\LessThan12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(0),
	datab => \LessThan12~0_combout\,
	datac => money(1),
	datad => \LessThan6~0_combout\,
	combout => \Add5~9_combout\);

-- Location: LCCOMB_X17_Y11_N4
\always4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always4~1_combout\ = (\buttonRight~input_o\) # (!\buttonRightPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonRightPrev~q\,
	datad => \buttonRight~input_o\,
	combout => \always4~1_combout\);

-- Location: LCCOMB_X12_Y7_N10
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\always4~0_combout\ & (\Add5~9_combout\)) # (!\always4~0_combout\ & (((!\LessThan8~3_combout\ & !\always4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~9_combout\,
	datab => \LessThan8~3_combout\,
	datac => \always4~1_combout\,
	datad => \always4~0_combout\,
	combout => \Add5~10_combout\);

-- Location: LCCOMB_X14_Y7_N18
\Add5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Add5~10_combout\))) # (!\stateCoffeeMachine.Payment~q\ & (!\stateCoffeeMachine.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.000~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~10_combout\,
	combout => \Add5~11_combout\);

-- Location: FF_X12_Y7_N25
\money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~26_combout\,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(0));

-- Location: LCCOMB_X11_Y7_N16
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\always4~0_combout\ & ((money(1) & (\Add5~1\ & VCC)) # (!money(1) & (!\Add5~1\)))) # (!\always4~0_combout\ & ((money(1) & (!\Add5~1\)) # (!money(1) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\always4~0_combout\ & (!money(1) & !\Add5~1\)) # (!\always4~0_combout\ & ((!\Add5~1\) # (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always4~0_combout\,
	datab => money(1),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X12_Y7_N12
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~2_combout\,
	combout => \Add5~12_combout\);

-- Location: FF_X12_Y7_N13
\money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~12_combout\,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(1));

-- Location: LCCOMB_X11_Y7_N18
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((money(2) $ (\always4~0_combout\ $ (\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((money(2) & ((!\Add5~3\) # (!\always4~0_combout\))) # (!money(2) & (!\always4~0_combout\ & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => \always4~0_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X12_Y7_N8
\Add5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~4_combout\,
	combout => \Add5~13_combout\);

-- Location: FF_X12_Y8_N5
\money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~13_combout\,
	sload => VCC,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(2));

-- Location: LCCOMB_X11_Y7_N20
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (money(3) & ((\always4~0_combout\ & (\Add5~5\ & VCC)) # (!\always4~0_combout\ & (!\Add5~5\)))) # (!money(3) & ((\always4~0_combout\ & (!\Add5~5\)) # (!\always4~0_combout\ & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((money(3) & (!\always4~0_combout\ & !\Add5~5\)) # (!money(3) & ((!\Add5~5\) # (!\always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \always4~0_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X12_Y7_N0
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

-- Location: FF_X13_Y8_N9
\money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~8_combout\,
	sload => VCC,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(3));

-- Location: LCCOMB_X11_Y7_N22
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = ((\always4~0_combout\ $ (money(4) $ (!\Add5~7\)))) # (GND)
-- \Add5~15\ = CARRY((\always4~0_combout\ & ((money(4)) # (!\Add5~7\))) # (!\always4~0_combout\ & (money(4) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always4~0_combout\,
	datab => money(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X12_Y7_N22
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~14_combout\,
	combout => \Add5~16_combout\);

-- Location: FF_X12_Y7_N23
\money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~16_combout\,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(4));

-- Location: LCCOMB_X11_Y7_N24
\Add5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (money(5) & ((\always4~0_combout\ & (\Add5~15\ & VCC)) # (!\always4~0_combout\ & (!\Add5~15\)))) # (!money(5) & ((\always4~0_combout\ & (!\Add5~15\)) # (!\always4~0_combout\ & ((\Add5~15\) # (GND)))))
-- \Add5~18\ = CARRY((money(5) & (!\always4~0_combout\ & !\Add5~15\)) # (!money(5) & ((!\Add5~15\) # (!\always4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => \always4~0_combout\,
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~17_combout\,
	cout => \Add5~18\);

-- Location: LCCOMB_X12_Y7_N18
\Add5~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~17_combout\,
	combout => \Add5~19_combout\);

-- Location: FF_X13_Y7_N11
\money[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~19_combout\,
	sload => VCC,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(5));

-- Location: LCCOMB_X11_Y7_N26
\Add5~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~20_combout\ = ((money(6) $ (\always4~0_combout\ $ (!\Add5~18\)))) # (GND)
-- \Add5~21\ = CARRY((money(6) & ((\always4~0_combout\) # (!\Add5~18\))) # (!money(6) & (\always4~0_combout\ & !\Add5~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datab => \always4~0_combout\,
	datad => VCC,
	cin => \Add5~18\,
	combout => \Add5~20_combout\,
	cout => \Add5~21\);

-- Location: LCCOMB_X12_Y7_N4
\Add5~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~22_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Add5~20_combout\,
	combout => \Add5~22_combout\);

-- Location: FF_X13_Y7_N13
\money[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~22_combout\,
	sload => VCC,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(6));

-- Location: LCCOMB_X11_Y7_N28
\Add5~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~23_combout\ = \always4~0_combout\ $ (\Add5~21\ $ (money(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \always4~0_combout\,
	datad => money(7),
	cin => \Add5~21\,
	combout => \Add5~23_combout\);

-- Location: LCCOMB_X12_Y7_N26
\Add5~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~25_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add5~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add5~23_combout\,
	combout => \Add5~25_combout\);

-- Location: FF_X13_Y7_N15
\money[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~25_combout\,
	sload => VCC,
	ena => \Add5~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(7));

-- Location: LCCOMB_X12_Y7_N2
\LessThan8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (money(4) & ((money(3)) # ((money(2)) # (money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(4),
	datac => money(2),
	datad => money(1),
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X12_Y7_N28
\LessThan8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan8~3_combout\ = (money(7)) # ((money(6)) # ((money(5) & \LessThan8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(7),
	datab => money(5),
	datac => money(6),
	datad => \LessThan8~2_combout\,
	combout => \LessThan8~3_combout\);

-- Location: LCCOMB_X14_Y7_N2
\LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~1_combout\ = (!money(3) & (!money(2) & ((!money(0)) # (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => money(1),
	datac => money(0),
	datad => money(2),
	combout => \LessThan7~1_combout\);

-- Location: LCCOMB_X14_Y7_N0
\LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~0_combout\ = (!money(6) & !money(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(6),
	datad => money(7),
	combout => \LessThan7~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan7~2_combout\ = (\LessThan7~0_combout\ & (((\LessThan7~1_combout\ & !money(4))) # (!money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => \LessThan7~1_combout\,
	datac => money(4),
	datad => \LessThan7~0_combout\,
	combout => \LessThan7~2_combout\);

-- Location: LCCOMB_X17_Y11_N10
\selectionDrink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink~2_combout\ = selectionDrink(0) $ (((\buttonRightPrev~q\ & !\buttonRight~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonRightPrev~q\,
	datac => selectionDrink(0),
	datad => \buttonRight~input_o\,
	combout => \selectionDrink~2_combout\);

-- Location: LCCOMB_X17_Y11_N0
\selectionDrink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink[0]~0_combout\ = (\always4~0_combout\ & ((!selectionDrink(0)))) # (!\always4~0_combout\ & (\selectionDrink~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selectionDrink~2_combout\,
	datac => selectionDrink(0),
	datad => \always4~0_combout\,
	combout => \selectionDrink[0]~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (selectionDrink(0) & \stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.000~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X17_Y11_N1
\selectionDrink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \selectionDrink[0]~0_combout\,
	asdata => \Selector8~0_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Selection~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selectionDrink(0));

-- Location: LCCOMB_X17_Y11_N26
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = selectionDrink(1) $ (selectionDrink(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datac => selectionDrink(0),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X17_Y11_N28
\selectionDrink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink~3_combout\ = selectionDrink(1) $ (((selectionDrink(0) & (\buttonRightPrev~q\ & !\buttonRight~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \buttonRightPrev~q\,
	datad => \buttonRight~input_o\,
	combout => \selectionDrink~3_combout\);

-- Location: LCCOMB_X17_Y11_N2
\selectionDrink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink[1]~1_combout\ = (\always4~0_combout\ & (!\Selector7~0_combout\)) # (!\always4~0_combout\ & ((\selectionDrink~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \selectionDrink~3_combout\,
	datad => \always4~0_combout\,
	combout => \selectionDrink[1]~1_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (selectionDrink(1) & \stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datad => \stateCoffeeMachine.000~q\,
	combout => \Selector7~1_combout\);

-- Location: FF_X17_Y11_N3
\selectionDrink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \selectionDrink[1]~1_combout\,
	asdata => \Selector7~1_combout\,
	sload => \ALT_INV_stateCoffeeMachine.Selection~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => selectionDrink(1));

-- Location: LCCOMB_X14_Y7_N22
\LessThan12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~1_combout\ = ((money(3) & ((money(1)) # (money(2))))) # (!\LessThan12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datab => money(2),
	datac => money(3),
	datad => \LessThan12~0_combout\,
	combout => \LessThan12~1_combout\);

-- Location: LCCOMB_X14_Y7_N20
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!money(5) & (\LessThan7~0_combout\ & ((\LessThan6~0_combout\) # (!money(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => \LessThan7~0_combout\,
	datac => money(4),
	datad => \LessThan6~0_combout\,
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X14_Y11_N0
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (selectionDrink(0) & ((selectionDrink(1)) # ((\LessThan6~1_combout\)))) # (!selectionDrink(0) & (!selectionDrink(1) & (!\LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(0),
	datab => selectionDrink(1),
	datac => \LessThan12~1_combout\,
	datad => \LessThan6~1_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X14_Y11_N14
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (selectionDrink(1) & ((\Mux4~0_combout\ & (!\LessThan8~3_combout\)) # (!\Mux4~0_combout\ & ((\LessThan7~2_combout\))))) # (!selectionDrink(1) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan8~3_combout\,
	datab => \LessThan7~2_combout\,
	datac => selectionDrink(1),
	datad => \Mux4~0_combout\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X17_Y15_N28
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\ & (!\buttonSelection~input_o\ & (\stateCoffeeMachine.Payment~q\ & \buttonSelectionPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \buttonSelection~input_o\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \buttonSelectionPrev~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X17_Y12_N6
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = procent(0) $ (VCC)
-- \Add8~1\ = CARRY(procent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X17_Y12_N26
\Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\Add8~0_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X17_Y12_N18
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = (procent(6) & (\Add8~11\ $ (GND))) # (!procent(6) & (!\Add8~11\ & VCC))
-- \Add8~13\ = CARRY((procent(6) & !\Add8~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X17_Y12_N20
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = procent(7) $ (\Add8~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(7),
	cin => \Add8~13\,
	combout => \Add8~14_combout\);

-- Location: LCCOMB_X16_Y12_N0
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Add8~14_combout\ & (!\LessThan10~6_combout\ & (\stateCoffeeMachine.Implementation~q\ & !\LessThan9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datab => \LessThan10~6_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \LessThan9~1_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X16_Y12_N18
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # ((procent(7) & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \stateCoffeeMachine.000~q\,
	datac => procent(7),
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X16_Y10_N29
\procent[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector17~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(7));

-- Location: LCCOMB_X14_Y15_N26
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (!\LessThan9~1_combout\ & (!procent(7) & \stateCoffeeMachine.Implementation~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~1_combout\,
	datac => procent(7),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X13_Y15_N6
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

-- Location: LCCOMB_X13_Y15_N0
\Add7~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~78_combout\ = (\Selector24~0_combout\ & (\LessThan10~6_combout\ & \Add7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \LessThan10~6_combout\,
	datad => \Add7~0_combout\,
	combout => \Add7~78_combout\);

-- Location: LCCOMB_X14_Y15_N30
\Add7~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~19_combout\ = (\stateCoffeeMachine.Implementation~q\ & (!\LessThan9~1_combout\ & (!procent(7)))) # (!\stateCoffeeMachine.Implementation~q\ & (((!\stateCoffeeMachine.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~1_combout\,
	datab => procent(7),
	datac => \stateCoffeeMachine.000~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Add7~19_combout\);

-- Location: FF_X13_Y15_N1
\procentCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~78_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(0));

-- Location: LCCOMB_X13_Y15_N8
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

-- Location: LCCOMB_X13_Y15_N2
\Add7~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~77_combout\ = (\Selector24~0_combout\ & (\LessThan10~6_combout\ & \Add7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \LessThan10~6_combout\,
	datac => \Add7~2_combout\,
	combout => \Add7~77_combout\);

-- Location: FF_X13_Y15_N3
\procentCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~77_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(1));

-- Location: LCCOMB_X13_Y15_N10
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (procentCount(2) & (\Add7~3\ $ (GND))) # (!procentCount(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((procentCount(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X14_Y15_N4
\Add7~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~76_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~4_combout\,
	combout => \Add7~76_combout\);

-- Location: FF_X14_Y15_N5
\procentCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~76_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(2));

-- Location: LCCOMB_X13_Y15_N12
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (procentCount(3) & (!\Add7~5\)) # (!procentCount(3) & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!procentCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X13_Y15_N4
\Add7~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~75_combout\ = (\Selector24~0_combout\ & (\LessThan10~6_combout\ & \Add7~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \LessThan10~6_combout\,
	datad => \Add7~6_combout\,
	combout => \Add7~75_combout\);

-- Location: FF_X13_Y15_N5
\procentCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~75_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(3));

-- Location: LCCOMB_X13_Y15_N14
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (procentCount(4) & (\Add7~7\ $ (GND))) # (!procentCount(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((procentCount(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X14_Y15_N6
\Add7~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~74_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~8_combout\,
	combout => \Add7~74_combout\);

-- Location: FF_X14_Y15_N7
\procentCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~74_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(4));

-- Location: LCCOMB_X13_Y15_N16
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

-- Location: LCCOMB_X14_Y15_N28
\Add7~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~73_combout\ = (\Add7~10_combout\ & (\Selector24~0_combout\ & \LessThan10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datac => \Selector24~0_combout\,
	datad => \LessThan10~6_combout\,
	combout => \Add7~73_combout\);

-- Location: FF_X14_Y15_N29
\procentCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~73_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(5));

-- Location: LCCOMB_X13_Y15_N18
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

-- Location: LCCOMB_X14_Y15_N2
\Add7~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~72_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~12_combout\,
	combout => \Add7~72_combout\);

-- Location: FF_X14_Y15_N3
\procentCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~72_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(6));

-- Location: LCCOMB_X13_Y15_N20
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

-- Location: LCCOMB_X14_Y15_N12
\Add7~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~71_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~14_combout\,
	combout => \Add7~71_combout\);

-- Location: FF_X14_Y15_N13
\procentCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~71_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(7));

-- Location: LCCOMB_X13_Y15_N22
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (procentCount(8) & (\Add7~15\ $ (GND))) # (!procentCount(8) & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((procentCount(8) & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(8),
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X14_Y15_N16
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~16_combout\,
	combout => \Add7~18_combout\);

-- Location: FF_X14_Y15_N17
\procentCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~18_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(8));

-- Location: LCCOMB_X13_Y15_N24
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

-- Location: LCCOMB_X14_Y15_N10
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~20_combout\,
	combout => \Add7~22_combout\);

-- Location: FF_X14_Y15_N11
\procentCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~22_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(9));

-- Location: LCCOMB_X13_Y15_N26
\Add7~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~23_combout\ = (procentCount(10) & (\Add7~21\ $ (GND))) # (!procentCount(10) & (!\Add7~21\ & VCC))
-- \Add7~24\ = CARRY((procentCount(10) & !\Add7~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(10),
	datad => VCC,
	cin => \Add7~21\,
	combout => \Add7~23_combout\,
	cout => \Add7~24\);

-- Location: LCCOMB_X14_Y15_N24
\Add7~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~25_combout\ = (\Add7~23_combout\ & (\Selector24~0_combout\ & \LessThan10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~23_combout\,
	datac => \Selector24~0_combout\,
	datad => \LessThan10~6_combout\,
	combout => \Add7~25_combout\);

-- Location: FF_X14_Y15_N25
\procentCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~25_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(10));

-- Location: LCCOMB_X13_Y15_N28
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

-- Location: LCCOMB_X14_Y15_N14
\Add7~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~28_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~26_combout\,
	combout => \Add7~28_combout\);

-- Location: FF_X14_Y15_N15
\procentCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~28_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(11));

-- Location: LCCOMB_X13_Y15_N30
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

-- Location: LCCOMB_X14_Y15_N22
\Add7~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~31_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~29_combout\,
	combout => \Add7~31_combout\);

-- Location: FF_X14_Y15_N23
\procentCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~31_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(12));

-- Location: LCCOMB_X13_Y14_N0
\Add7~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~32_combout\ = (procentCount(13) & (!\Add7~30\)) # (!procentCount(13) & ((\Add7~30\) # (GND)))
-- \Add7~33\ = CARRY((!\Add7~30\) # (!procentCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(13),
	datad => VCC,
	cin => \Add7~30\,
	combout => \Add7~32_combout\,
	cout => \Add7~33\);

-- Location: LCCOMB_X13_Y14_N30
\Add7~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~34_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datab => \Selector24~0_combout\,
	datad => \Add7~32_combout\,
	combout => \Add7~34_combout\);

-- Location: FF_X13_Y14_N31
\procentCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~34_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(13));

-- Location: LCCOMB_X13_Y14_N2
\Add7~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~35_combout\ = (procentCount(14) & (\Add7~33\ $ (GND))) # (!procentCount(14) & (!\Add7~33\ & VCC))
-- \Add7~36\ = CARRY((procentCount(14) & !\Add7~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(14),
	datad => VCC,
	cin => \Add7~33\,
	combout => \Add7~35_combout\,
	cout => \Add7~36\);

-- Location: LCCOMB_X14_Y14_N12
\Add7~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~37_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~35_combout\,
	combout => \Add7~37_combout\);

-- Location: FF_X14_Y14_N13
\procentCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~37_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(14));

-- Location: LCCOMB_X13_Y14_N4
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

-- Location: LCCOMB_X13_Y14_N28
\Add7~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~40_combout\ = (\LessThan10~6_combout\ & (\Add7~38_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datac => \Add7~38_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add7~40_combout\);

-- Location: FF_X13_Y14_N29
\procentCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~40_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(15));

-- Location: LCCOMB_X13_Y14_N6
\Add7~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~41_combout\ = (procentCount(16) & (\Add7~39\ $ (GND))) # (!procentCount(16) & (!\Add7~39\ & VCC))
-- \Add7~42\ = CARRY((procentCount(16) & !\Add7~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(16),
	datad => VCC,
	cin => \Add7~39\,
	combout => \Add7~41_combout\,
	cout => \Add7~42\);

-- Location: LCCOMB_X14_Y14_N6
\Add7~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~43_combout\ = (\Selector24~0_combout\ & (\Add7~41_combout\ & \LessThan10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \Add7~41_combout\,
	datad => \LessThan10~6_combout\,
	combout => \Add7~43_combout\);

-- Location: FF_X14_Y14_N7
\procentCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~43_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(16));

-- Location: LCCOMB_X13_Y14_N8
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

-- Location: LCCOMB_X14_Y14_N2
\Add7~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~46_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~44_combout\,
	combout => \Add7~46_combout\);

-- Location: FF_X14_Y14_N3
\procentCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~46_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(17));

-- Location: LCCOMB_X13_Y14_N10
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

-- Location: LCCOMB_X14_Y14_N4
\Add7~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~49_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~47_combout\,
	combout => \Add7~49_combout\);

-- Location: FF_X14_Y14_N5
\procentCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~49_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(18));

-- Location: LCCOMB_X13_Y14_N12
\Add7~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~50_combout\ = (procentCount(19) & (!\Add7~48\)) # (!procentCount(19) & ((\Add7~48\) # (GND)))
-- \Add7~51\ = CARRY((!\Add7~48\) # (!procentCount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(19),
	datad => VCC,
	cin => \Add7~48\,
	combout => \Add7~50_combout\,
	cout => \Add7~51\);

-- Location: LCCOMB_X14_Y14_N18
\Add7~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~52_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~50_combout\,
	combout => \Add7~52_combout\);

-- Location: FF_X14_Y14_N19
\procentCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~52_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(19));

-- Location: LCCOMB_X13_Y14_N14
\Add7~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~53_combout\ = (procentCount(20) & (\Add7~51\ $ (GND))) # (!procentCount(20) & (!\Add7~51\ & VCC))
-- \Add7~54\ = CARRY((procentCount(20) & !\Add7~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(20),
	datad => VCC,
	cin => \Add7~51\,
	combout => \Add7~53_combout\,
	cout => \Add7~54\);

-- Location: LCCOMB_X14_Y14_N22
\Add7~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~55_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~53_combout\,
	combout => \Add7~55_combout\);

-- Location: FF_X14_Y14_N23
\procentCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~55_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(20));

-- Location: LCCOMB_X14_Y15_N20
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (((!procentCount(9) & !procentCount(8))) # (!procentCount(11))) # (!procentCount(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(9),
	datab => procentCount(10),
	datac => procentCount(11),
	datad => procentCount(8),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X14_Y15_N0
\LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = ((!procentCount(12) & \LessThan10~0_combout\)) # (!procentCount(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procentCount(13),
	datac => procentCount(12),
	datad => \LessThan10~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X14_Y14_N28
\LessThan10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~2_combout\ = ((!procentCount(15) & (\LessThan10~1_combout\ & !procentCount(14)))) # (!procentCount(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(16),
	datab => procentCount(15),
	datac => \LessThan10~1_combout\,
	datad => procentCount(14),
	combout => \LessThan10~2_combout\);

-- Location: LCCOMB_X14_Y14_N8
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

-- Location: LCCOMB_X13_Y14_N16
\Add7~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~56_combout\ = (procentCount(21) & (!\Add7~54\)) # (!procentCount(21) & ((\Add7~54\) # (GND)))
-- \Add7~57\ = CARRY((!\Add7~54\) # (!procentCount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(21),
	datad => VCC,
	cin => \Add7~54\,
	combout => \Add7~56_combout\,
	cout => \Add7~57\);

-- Location: LCCOMB_X14_Y14_N24
\Add7~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~58_combout\ = (\Selector24~0_combout\ & (\Add7~56_combout\ & \LessThan10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \Add7~56_combout\,
	datad => \LessThan10~6_combout\,
	combout => \Add7~58_combout\);

-- Location: FF_X14_Y14_N25
\procentCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~58_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(21));

-- Location: LCCOMB_X14_Y14_N26
\LessThan10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~4_combout\ = (((\LessThan10~2_combout\ & \LessThan10~3_combout\)) # (!procentCount(21))) # (!procentCount(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(20),
	datab => \LessThan10~2_combout\,
	datac => \LessThan10~3_combout\,
	datad => procentCount(21),
	combout => \LessThan10~4_combout\);

-- Location: LCCOMB_X13_Y14_N18
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

-- Location: LCCOMB_X14_Y14_N0
\Add7~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~61_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~59_combout\,
	combout => \Add7~61_combout\);

-- Location: FF_X14_Y14_N1
\procentCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~61_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(22));

-- Location: LCCOMB_X13_Y14_N20
\Add7~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~62_combout\ = (procentCount(23) & (!\Add7~60\)) # (!procentCount(23) & ((\Add7~60\) # (GND)))
-- \Add7~63\ = CARRY((!\Add7~60\) # (!procentCount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(23),
	datad => VCC,
	cin => \Add7~60\,
	combout => \Add7~62_combout\,
	cout => \Add7~63\);

-- Location: LCCOMB_X14_Y14_N14
\Add7~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~64_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~62_combout\,
	combout => \Add7~64_combout\);

-- Location: FF_X14_Y14_N15
\procentCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~64_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(23));

-- Location: LCCOMB_X14_Y14_N16
\LessThan10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~5_combout\ = (!procentCount(23) & !procentCount(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procentCount(23),
	datad => procentCount(22),
	combout => \LessThan10~5_combout\);

-- Location: LCCOMB_X13_Y14_N22
\Add7~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~65_combout\ = (procentCount(24) & (\Add7~63\ $ (GND))) # (!procentCount(24) & (!\Add7~63\ & VCC))
-- \Add7~66\ = CARRY((procentCount(24) & !\Add7~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(24),
	datad => VCC,
	cin => \Add7~63\,
	combout => \Add7~65_combout\,
	cout => \Add7~66\);

-- Location: LCCOMB_X14_Y14_N30
\Add7~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~67_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan10~6_combout\,
	datac => \Selector24~0_combout\,
	datad => \Add7~65_combout\,
	combout => \Add7~67_combout\);

-- Location: FF_X14_Y14_N31
\procentCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~67_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(24));

-- Location: LCCOMB_X13_Y14_N24
\Add7~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~68_combout\ = procentCount(25) $ (\Add7~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(25),
	cin => \Add7~66\,
	combout => \Add7~68_combout\);

-- Location: LCCOMB_X13_Y14_N26
\Add7~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~70_combout\ = (\LessThan10~6_combout\ & (\Selector24~0_combout\ & \Add7~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datab => \Selector24~0_combout\,
	datad => \Add7~68_combout\,
	combout => \Add7~70_combout\);

-- Location: FF_X13_Y14_N27
\procentCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add7~70_combout\,
	ena => \Add7~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(25));

-- Location: LCCOMB_X14_Y14_N20
\LessThan10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~6_combout\ = (!procentCount(25) & (((\LessThan10~4_combout\ & \LessThan10~5_combout\)) # (!procentCount(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~4_combout\,
	datab => \LessThan10~5_combout\,
	datac => procentCount(25),
	datad => procentCount(24),
	combout => \LessThan10~6_combout\);

-- Location: LCCOMB_X16_Y14_N20
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\LessThan10~6_combout\ & (!\stateCoffeeMachine.000~q\ & (!\stateCoffeeMachine.Implementation~q\))) # (!\LessThan10~6_combout\ & ((\Selector24~0_combout\) # ((!\stateCoffeeMachine.000~q\ & 
-- !\stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~6_combout\,
	datab => \stateCoffeeMachine.000~q\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X17_Y12_N27
\procent[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector24~2_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(0));

-- Location: LCCOMB_X17_Y12_N8
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (procent(1) & (!\Add8~1\)) # (!procent(1) & ((\Add8~1\) # (GND)))
-- \Add8~3\ = CARRY((!\Add8~1\) # (!procent(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X18_Y12_N0
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\Add8~2_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector23~0_combout\);

-- Location: FF_X18_Y12_N1
\procent[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector23~0_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(1));

-- Location: LCCOMB_X17_Y12_N10
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (procent(2) & (\Add8~3\ $ (GND))) # (!procent(2) & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((procent(2) & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X17_Y10_N20
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datad => \Add8~4_combout\,
	combout => \Selector22~0_combout\);

-- Location: FF_X17_Y10_N21
\procent[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(2));

-- Location: LCCOMB_X17_Y12_N12
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (procent(3) & (!\Add8~5\)) # (!procent(3) & ((\Add8~5\) # (GND)))
-- \Add8~7\ = CARRY((!\Add8~5\) # (!procent(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X17_Y10_N22
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\Add8~6_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector21~0_combout\);

-- Location: FF_X17_Y10_N23
\procent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector21~0_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(3));

-- Location: LCCOMB_X17_Y12_N14
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (procent(4) & (\Add8~7\ $ (GND))) # (!procent(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((procent(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X17_Y10_N24
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\Add8~8_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~8_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector20~0_combout\);

-- Location: FF_X17_Y10_N25
\procent[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector20~0_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(4));

-- Location: LCCOMB_X17_Y12_N16
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (procent(5) & (!\Add8~9\)) # (!procent(5) & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!procent(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X16_Y12_N20
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\Add8~10_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~10_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X16_Y10_N25
\procent[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector19~0_combout\,
	sload => VCC,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(5));

-- Location: LCCOMB_X17_Y12_N24
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\Add8~12_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~12_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector18~0_combout\);

-- Location: FF_X16_Y10_N23
\procent[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector18~0_combout\,
	sload => VCC,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(6));

-- Location: LCCOMB_X17_Y12_N4
\digit2[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[2]~0_combout\ = (!procent(4) & !procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => procent(3),
	combout => \digit2[2]~0_combout\);

-- Location: LCCOMB_X18_Y12_N10
\LessThan9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (procent(2) & ((procent(0)) # (procent(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(0),
	datab => procent(2),
	datad => procent(1),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X18_Y12_N20
\LessThan9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (procent(6) & (procent(5) & ((\LessThan9~0_combout\) # (!\digit2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datab => \digit2[2]~0_combout\,
	datac => procent(5),
	datad => \LessThan9~0_combout\,
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X17_Y15_N6
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\buttonWaitingPrev~q\ & (!\buttonWaiting~input_o\ & !\stateCoffeeMachine.Implementation~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonWaitingPrev~q\,
	datac => \buttonWaiting~input_o\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((\stateCoffeeMachine.Implementation~q\ & ((\LessThan9~1_combout\) # (procent(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan9~1_combout\,
	datab => \Selector2~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => procent(7),
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X18_Y15_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector6~1_combout\ & (!\Mux4~1_combout\)) # (!\Selector6~1_combout\ & (((\stateCoffeeMachine.Implementation~q\ & !\Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X18_Y15_N3
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

-- Location: LCCOMB_X18_Y15_N6
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~2_combout\ & ((\stateCoffeeMachine.Implementation~q\) # ((!\Selector2~3_combout\ & !\Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector1~3_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X17_Y15_N8
\Selector2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~8_combout\ = (\Selector2~6_combout\) # ((\Selector2~7_combout\) # (\Selector2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~6_combout\,
	datab => \Selector2~7_combout\,
	datad => \Selector2~4_combout\,
	combout => \Selector2~8_combout\);

-- Location: LCCOMB_X18_Y15_N8
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (!\Selector2~0_combout\ & ((\Selector6~1_combout\ & (\Mux4~1_combout\)) # (!\Selector6~1_combout\ & ((\stateCoffeeMachine.Unsuccessful~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X18_Y15_N9
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

-- Location: LCCOMB_X18_Y17_N4
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

-- Location: LCCOMB_X19_Y17_N4
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add9~0_combout\ & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add9~0_combout\,
	datad => \LessThan11~5_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (((!\LessThan11~5_combout\ & !timeForUnsuccessfulMessage(28))))) # (!\stateCoffeeMachine.Unsuccessful~q\ & (!\stateCoffeeMachine.000~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \LessThan11~5_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector76~0_combout\);

-- Location: FF_X19_Y17_N5
\timeForUnsuccessfulMessage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(0));

-- Location: LCCOMB_X18_Y17_N6
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (timeForUnsuccessfulMessage(1) & (!\Add9~1\)) # (!timeForUnsuccessfulMessage(1) & ((\Add9~1\) # (GND)))
-- \Add9~3\ = CARRY((!\Add9~1\) # (!timeForUnsuccessfulMessage(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X19_Y17_N6
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add9~2_combout\ & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add9~2_combout\,
	datad => \LessThan11~5_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X19_Y17_N7
\timeForUnsuccessfulMessage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(1));

-- Location: LCCOMB_X18_Y17_N8
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

-- Location: LCCOMB_X19_Y17_N20
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (!timeForUnsuccessfulMessage(28) & \Add9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~4_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X19_Y17_N21
\timeForUnsuccessfulMessage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(2));

-- Location: LCCOMB_X18_Y17_N10
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

-- Location: LCCOMB_X19_Y17_N30
\Selector76~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~1_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (!timeForUnsuccessfulMessage(28) & \Add9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~6_combout\,
	combout => \Selector76~1_combout\);

-- Location: FF_X19_Y17_N31
\timeForUnsuccessfulMessage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector76~1_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(3));

-- Location: LCCOMB_X18_Y17_N12
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

-- Location: LCCOMB_X19_Y17_N28
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (!timeForUnsuccessfulMessage(28) & \Add9~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~8_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X19_Y17_N29
\timeForUnsuccessfulMessage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector75~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(4));

-- Location: LCCOMB_X18_Y17_N14
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

-- Location: LCCOMB_X19_Y17_N14
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (!timeForUnsuccessfulMessage(28) & \Add9~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~10_combout\,
	combout => \Selector74~0_combout\);

-- Location: FF_X19_Y17_N15
\timeForUnsuccessfulMessage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(5));

-- Location: LCCOMB_X18_Y17_N16
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

-- Location: LCCOMB_X19_Y17_N0
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add9~12_combout\ & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add9~12_combout\,
	datad => \LessThan11~5_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X19_Y17_N1
\timeForUnsuccessfulMessage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(6));

-- Location: LCCOMB_X18_Y17_N18
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

-- Location: LCCOMB_X18_Y17_N2
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (!\LessThan11~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add9~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~14_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X18_Y17_N3
\timeForUnsuccessfulMessage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(7));

-- Location: LCCOMB_X18_Y17_N20
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

-- Location: LCCOMB_X19_Y17_N2
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~16_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~16_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan11~5_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X19_Y17_N3
\timeForUnsuccessfulMessage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(8));

-- Location: LCCOMB_X18_Y17_N22
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (timeForUnsuccessfulMessage(9) & (!\Add9~17\)) # (!timeForUnsuccessfulMessage(9) & ((\Add9~17\) # (GND)))
-- \Add9~19\ = CARRY((!\Add9~17\) # (!timeForUnsuccessfulMessage(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X19_Y17_N16
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~18_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~18_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan11~5_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X19_Y17_N17
\timeForUnsuccessfulMessage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(9));

-- Location: LCCOMB_X18_Y17_N24
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = (timeForUnsuccessfulMessage(10) & (\Add9~19\ $ (GND))) # (!timeForUnsuccessfulMessage(10) & (!\Add9~19\ & VCC))
-- \Add9~21\ = CARRY((timeForUnsuccessfulMessage(10) & !\Add9~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(10),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X19_Y17_N10
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~20_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~20_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan11~5_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X19_Y17_N11
\timeForUnsuccessfulMessage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(10));

-- Location: LCCOMB_X18_Y17_N26
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (timeForUnsuccessfulMessage(11) & (!\Add9~21\)) # (!timeForUnsuccessfulMessage(11) & ((\Add9~21\) # (GND)))
-- \Add9~23\ = CARRY((!\Add9~21\) # (!timeForUnsuccessfulMessage(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(11),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X19_Y17_N24
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add9~22_combout\ & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add9~22_combout\,
	datad => \LessThan11~5_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X19_Y17_N25
\timeForUnsuccessfulMessage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(11));

-- Location: LCCOMB_X18_Y17_N28
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

-- Location: LCCOMB_X19_Y17_N26
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~24_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~24_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan11~5_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X19_Y17_N27
\timeForUnsuccessfulMessage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(12));

-- Location: LCCOMB_X18_Y17_N30
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

-- Location: LCCOMB_X19_Y17_N22
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~26_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~26_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan11~5_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X19_Y17_N23
\timeForUnsuccessfulMessage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(13));

-- Location: LCCOMB_X18_Y16_N0
\Add9~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~28_combout\ = (timeForUnsuccessfulMessage(14) & (\Add9~27\ $ (GND))) # (!timeForUnsuccessfulMessage(14) & (!\Add9~27\ & VCC))
-- \Add9~29\ = CARRY((timeForUnsuccessfulMessage(14) & !\Add9~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(14),
	datad => VCC,
	cin => \Add9~27\,
	combout => \Add9~28_combout\,
	cout => \Add9~29\);

-- Location: LCCOMB_X19_Y16_N2
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (\Add9~28_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => \Add9~28_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector65~0_combout\);

-- Location: FF_X19_Y16_N3
\timeForUnsuccessfulMessage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(14));

-- Location: LCCOMB_X18_Y16_N2
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

-- Location: LCCOMB_X19_Y16_N4
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (!\LessThan11~5_combout\ & \Add9~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \LessThan11~5_combout\,
	datad => \Add9~30_combout\,
	combout => \Selector64~0_combout\);

-- Location: FF_X19_Y16_N5
\timeForUnsuccessfulMessage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(15));

-- Location: LCCOMB_X18_Y16_N4
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

-- Location: LCCOMB_X19_Y16_N14
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (\Add9~32_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => \Add9~32_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector63~0_combout\);

-- Location: FF_X19_Y16_N15
\timeForUnsuccessfulMessage[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(16));

-- Location: LCCOMB_X18_Y16_N6
\Add9~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~34_combout\ = (timeForUnsuccessfulMessage(17) & (!\Add9~33\)) # (!timeForUnsuccessfulMessage(17) & ((\Add9~33\) # (GND)))
-- \Add9~35\ = CARRY((!\Add9~33\) # (!timeForUnsuccessfulMessage(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(17),
	datad => VCC,
	cin => \Add9~33\,
	combout => \Add9~34_combout\,
	cout => \Add9~35\);

-- Location: LCCOMB_X18_Y17_N0
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (!\LessThan11~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add9~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add9~34_combout\,
	combout => \Selector62~0_combout\);

-- Location: FF_X18_Y17_N1
\timeForUnsuccessfulMessage[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(17));

-- Location: LCCOMB_X18_Y16_N8
\Add9~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~36_combout\ = (timeForUnsuccessfulMessage(18) & (\Add9~35\ $ (GND))) # (!timeForUnsuccessfulMessage(18) & (!\Add9~35\ & VCC))
-- \Add9~37\ = CARRY((timeForUnsuccessfulMessage(18) & !\Add9~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(18),
	datad => VCC,
	cin => \Add9~35\,
	combout => \Add9~36_combout\,
	cout => \Add9~37\);

-- Location: LCCOMB_X19_Y16_N0
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (!\LessThan11~5_combout\ & \Add9~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \LessThan11~5_combout\,
	datad => \Add9~36_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X19_Y16_N1
\timeForUnsuccessfulMessage[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(18));

-- Location: LCCOMB_X18_Y16_N10
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

-- Location: LCCOMB_X19_Y16_N30
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (!\LessThan11~5_combout\ & \Add9~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \LessThan11~5_combout\,
	datad => \Add9~38_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X19_Y16_N31
\timeForUnsuccessfulMessage[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(19));

-- Location: LCCOMB_X18_Y16_N12
\Add9~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~40_combout\ = (timeForUnsuccessfulMessage(20) & (\Add9~39\ $ (GND))) # (!timeForUnsuccessfulMessage(20) & (!\Add9~39\ & VCC))
-- \Add9~41\ = CARRY((timeForUnsuccessfulMessage(20) & !\Add9~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(20),
	datad => VCC,
	cin => \Add9~39\,
	combout => \Add9~40_combout\,
	cout => \Add9~41\);

-- Location: LCCOMB_X19_Y16_N24
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (!\LessThan11~5_combout\ & \Add9~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \LessThan11~5_combout\,
	datad => \Add9~40_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X19_Y16_N25
\timeForUnsuccessfulMessage[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(20));

-- Location: LCCOMB_X18_Y16_N14
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

-- Location: LCCOMB_X19_Y16_N18
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (!\LessThan11~5_combout\ & \Add9~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \LessThan11~5_combout\,
	datad => \Add9~42_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X19_Y16_N19
\timeForUnsuccessfulMessage[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(21));

-- Location: LCCOMB_X18_Y16_N30
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (((!timeForUnsuccessfulMessage(14)) # (!timeForUnsuccessfulMessage(16))) # (!timeForUnsuccessfulMessage(17))) # (!timeForUnsuccessfulMessage(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(15),
	datab => timeForUnsuccessfulMessage(17),
	datac => timeForUnsuccessfulMessage(16),
	datad => timeForUnsuccessfulMessage(14),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X19_Y17_N12
\LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (!timeForUnsuccessfulMessage(10) & (!timeForUnsuccessfulMessage(11) & (!timeForUnsuccessfulMessage(12) & !timeForUnsuccessfulMessage(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(10),
	datab => timeForUnsuccessfulMessage(11),
	datac => timeForUnsuccessfulMessage(12),
	datad => timeForUnsuccessfulMessage(9),
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X19_Y17_N8
\LessThan11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~3_combout\ = (!timeForUnsuccessfulMessage(18) & ((\LessThan11~1_combout\) # ((!timeForUnsuccessfulMessage(13) & \LessThan11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(13),
	datab => timeForUnsuccessfulMessage(18),
	datac => \LessThan11~1_combout\,
	datad => \LessThan11~2_combout\,
	combout => \LessThan11~3_combout\);

-- Location: LCCOMB_X19_Y16_N16
\LessThan11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~4_combout\ = (timeForUnsuccessfulMessage(21) & ((timeForUnsuccessfulMessage(20)) # ((timeForUnsuccessfulMessage(19) & !\LessThan11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(19),
	datab => timeForUnsuccessfulMessage(21),
	datac => timeForUnsuccessfulMessage(20),
	datad => \LessThan11~3_combout\,
	combout => \LessThan11~4_combout\);

-- Location: LCCOMB_X18_Y16_N16
\Add9~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~44_combout\ = (timeForUnsuccessfulMessage(22) & (\Add9~43\ $ (GND))) # (!timeForUnsuccessfulMessage(22) & (!\Add9~43\ & VCC))
-- \Add9~45\ = CARRY((timeForUnsuccessfulMessage(22) & !\Add9~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(22),
	datad => VCC,
	cin => \Add9~43\,
	combout => \Add9~44_combout\,
	cout => \Add9~45\);

-- Location: LCCOMB_X19_Y16_N12
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (\Add9~44_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => \Add9~44_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector57~0_combout\);

-- Location: FF_X19_Y16_N13
\timeForUnsuccessfulMessage[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(22));

-- Location: LCCOMB_X18_Y16_N18
\Add9~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~46_combout\ = (timeForUnsuccessfulMessage(23) & (!\Add9~45\)) # (!timeForUnsuccessfulMessage(23) & ((\Add9~45\) # (GND)))
-- \Add9~47\ = CARRY((!\Add9~45\) # (!timeForUnsuccessfulMessage(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(23),
	datad => VCC,
	cin => \Add9~45\,
	combout => \Add9~46_combout\,
	cout => \Add9~47\);

-- Location: LCCOMB_X19_Y16_N28
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~46_combout\ & (!\LessThan11~5_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~46_combout\,
	datac => \LessThan11~5_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector56~0_combout\);

-- Location: FF_X19_Y16_N29
\timeForUnsuccessfulMessage[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(23));

-- Location: LCCOMB_X18_Y16_N20
\Add9~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~48_combout\ = (timeForUnsuccessfulMessage(24) & (\Add9~47\ $ (GND))) # (!timeForUnsuccessfulMessage(24) & (!\Add9~47\ & VCC))
-- \Add9~49\ = CARRY((timeForUnsuccessfulMessage(24) & !\Add9~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(24),
	datad => VCC,
	cin => \Add9~47\,
	combout => \Add9~48_combout\,
	cout => \Add9~49\);

-- Location: LCCOMB_X19_Y16_N26
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~48_combout\ & (!\LessThan11~5_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~48_combout\,
	datac => \LessThan11~5_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector55~0_combout\);

-- Location: FF_X19_Y16_N27
\timeForUnsuccessfulMessage[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(24));

-- Location: LCCOMB_X18_Y16_N22
\Add9~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~50_combout\ = (timeForUnsuccessfulMessage(25) & (!\Add9~49\)) # (!timeForUnsuccessfulMessage(25) & ((\Add9~49\) # (GND)))
-- \Add9~51\ = CARRY((!\Add9~49\) # (!timeForUnsuccessfulMessage(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(25),
	datad => VCC,
	cin => \Add9~49\,
	combout => \Add9~50_combout\,
	cout => \Add9~51\);

-- Location: LCCOMB_X19_Y16_N22
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~50_combout\ & (!\LessThan11~5_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~50_combout\,
	datac => \LessThan11~5_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector54~0_combout\);

-- Location: FF_X19_Y16_N23
\timeForUnsuccessfulMessage[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(25));

-- Location: LCCOMB_X19_Y16_N8
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (timeForUnsuccessfulMessage(24) & (timeForUnsuccessfulMessage(23) & (timeForUnsuccessfulMessage(25) & timeForUnsuccessfulMessage(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(24),
	datab => timeForUnsuccessfulMessage(23),
	datac => timeForUnsuccessfulMessage(25),
	datad => timeForUnsuccessfulMessage(22),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X18_Y16_N24
\Add9~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~52_combout\ = (timeForUnsuccessfulMessage(26) & (\Add9~51\ $ (GND))) # (!timeForUnsuccessfulMessage(26) & (!\Add9~51\ & VCC))
-- \Add9~53\ = CARRY((timeForUnsuccessfulMessage(26) & !\Add9~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(26),
	datad => VCC,
	cin => \Add9~51\,
	combout => \Add9~52_combout\,
	cout => \Add9~53\);

-- Location: LCCOMB_X19_Y16_N10
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add9~52_combout\ & (!\LessThan11~5_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add9~52_combout\,
	datac => \LessThan11~5_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector53~0_combout\);

-- Location: FF_X19_Y16_N11
\timeForUnsuccessfulMessage[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(26));

-- Location: LCCOMB_X19_Y16_N6
\LessThan11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~5_combout\ = (timeForUnsuccessfulMessage(27) & ((timeForUnsuccessfulMessage(26)) # ((\LessThan11~4_combout\ & \LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(27),
	datab => \LessThan11~4_combout\,
	datac => \LessThan11~0_combout\,
	datad => timeForUnsuccessfulMessage(26),
	combout => \LessThan11~5_combout\);

-- Location: LCCOMB_X18_Y16_N26
\Add9~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~54_combout\ = (timeForUnsuccessfulMessage(27) & (!\Add9~53\)) # (!timeForUnsuccessfulMessage(27) & ((\Add9~53\) # (GND)))
-- \Add9~55\ = CARRY((!\Add9~53\) # (!timeForUnsuccessfulMessage(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(27),
	datad => VCC,
	cin => \Add9~53\,
	combout => \Add9~54_combout\,
	cout => \Add9~55\);

-- Location: LCCOMB_X19_Y16_N20
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!\LessThan11~5_combout\ & (\Add9~54_combout\ & !timeForUnsuccessfulMessage(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \LessThan11~5_combout\,
	datac => \Add9~54_combout\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector52~0_combout\);

-- Location: FF_X19_Y16_N21
\timeForUnsuccessfulMessage[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \Selector76~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(27));

-- Location: LCCOMB_X18_Y16_N28
\Add9~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~56_combout\ = timeForUnsuccessfulMessage(28) $ (!\Add9~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(28),
	cin => \Add9~55\,
	combout => \Add9~56_combout\);

-- Location: LCCOMB_X18_Y15_N4
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (timeForUnsuccessfulMessage(28) & ((\stateCoffeeMachine.000~q\) # (\stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X18_Y15_N18
\Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\Selector51~0_combout\) # ((\Add9~56_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & !\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~56_combout\,
	datab => \Selector51~0_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan11~5_combout\,
	combout => \Selector51~1_combout\);

-- Location: FF_X18_Y15_N19
\timeForUnsuccessfulMessage[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector51~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(28));

-- Location: LCCOMB_X18_Y15_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & ((timeForUnsuccessfulMessage(28)) # (\LessThan11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan11~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X17_Y15_N0
\Selector2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~9_combout\ = (!\Selector2~0_combout\ & (!\Selector2~4_combout\ & ((\Selector2~8_combout\) # (\stateCoffeeMachine.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~8_combout\,
	datab => \Selector2~0_combout\,
	datac => \stateCoffeeMachine.000~q\,
	datad => \Selector2~4_combout\,
	combout => \Selector2~9_combout\);

-- Location: FF_X17_Y15_N1
\stateCoffeeMachine.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stateCoffeeMachine.000~q\);

-- Location: LCCOMB_X17_Y15_N2
\Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (!\stateCoffeeMachine.000~q\ & ((!\Selector2~5_combout\) # (!\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \stateCoffeeMachine.000~q\,
	datad => \Selector2~5_combout\,
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X17_Y15_N30
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector2~0_combout\ & ((\Selector2~6_combout\) # ((!\Selector2~8_combout\ & \stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~6_combout\,
	datab => \Selector2~8_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X17_Y15_N31
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

-- Location: LCCOMB_X21_Y17_N8
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

-- Location: FF_X21_Y17_N9
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X21_Y17_N10
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

-- Location: FF_X21_Y17_N11
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X21_Y17_N12
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

-- Location: FF_X21_Y17_N13
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X21_Y17_N14
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

-- Location: FF_X21_Y17_N15
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X21_Y17_N16
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

-- Location: FF_X21_Y17_N17
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X21_Y17_N18
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

-- Location: FF_X21_Y17_N19
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X21_Y17_N20
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

-- Location: FF_X21_Y17_N21
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X21_Y17_N22
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

-- Location: FF_X21_Y17_N23
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X21_Y17_N24
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

-- Location: FF_X21_Y17_N25
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X21_Y17_N26
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

-- Location: FF_X21_Y17_N27
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X21_Y17_N28
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

-- Location: FF_X21_Y17_N29
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X21_Y17_N30
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

-- Location: FF_X21_Y17_N31
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X21_Y16_N0
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

-- Location: FF_X21_Y16_N1
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X21_Y16_N2
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

-- Location: FF_X21_Y16_N3
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X21_Y16_N4
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

-- Location: FF_X21_Y16_N5
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X21_Y16_N6
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

-- Location: FF_X21_Y16_N7
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X21_Y16_N8
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

-- Location: FF_X21_Y16_N9
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X21_Y16_N10
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

-- Location: FF_X21_Y16_N11
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X21_Y16_N12
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

-- Location: FF_X21_Y16_N13
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X21_Y16_N14
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

-- Location: FF_X21_Y16_N15
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X21_Y16_N16
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

-- Location: FF_X21_Y16_N17
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X21_Y16_N24
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

-- Location: LCCOMB_X21_Y16_N18
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

-- Location: FF_X21_Y16_N19
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X21_Y16_N20
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

-- Location: FF_X21_Y16_N21
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X21_Y16_N22
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

-- Location: FF_X21_Y16_N23
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
	ena => \ALT_INV_stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X21_Y16_N26
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\LessThan2~0_combout\) # (((!counter(22)) # (!counter(23))) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => counter(21),
	datac => counter(23),
	datad => counter(22),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X21_Y17_N6
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

-- Location: LCCOMB_X21_Y17_N4
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!counter(7) & (!counter(6) & (!counter(9) & !counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datab => counter(6),
	datac => counter(9),
	datad => counter(8),
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X21_Y17_N0
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

-- Location: LCCOMB_X21_Y17_N2
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((!counter(11) & (\LessThan2~4_combout\ & !counter(10)))) # (!counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datab => \LessThan2~4_combout\,
	datac => counter(12),
	datad => counter(10),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X21_Y16_N28
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

-- Location: LCCOMB_X21_Y16_N30
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

-- Location: LCCOMB_X23_Y16_N4
\latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \latch~1_combout\ = (\latch~q\) # (!\LessThan2~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \latch~q\,
	datad => \LessThan2~7_combout\,
	combout => \latch~1_combout\);

-- Location: FF_X23_Y16_N5
latch : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latch~1_combout\,
	sclr => \stateCoffeeMachine.000~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latch~q\);

-- Location: LCCOMB_X23_Y14_N18
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\stateCoffeeMachine.000~q\ & ((\led1[0]~reg0_q\ & ((\LessThan2~7_combout\) # (!\latch~q\))) # (!\led1[0]~reg0_q\ & (!\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \led1[0]~reg0_q\,
	datac => \LessThan2~7_combout\,
	datad => \latch~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X23_Y14_N4
\Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\stateCoffeeMachine.Selection~q\) # ((\stateCoffeeMachine.Payment~q\) # (\Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector1~2_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X23_Y14_N5
\led1[0]~reg0\ : dffeas
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
	q => \led1[0]~reg0_q\);

-- Location: LCCOMB_X23_Y14_N28
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\stateCoffeeMachine.000~q\ & ((\led1[1]~reg0_q\ & ((\LessThan2~7_combout\) # (!\latch~q\))) # (!\led1[1]~reg0_q\ & (!\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \led1[1]~reg0_q\,
	datac => \LessThan2~7_combout\,
	datad => \latch~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\stateCoffeeMachine.Selection~q\) # (\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X23_Y14_N15
\led1[1]~reg0\ : dffeas
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
	q => \led1[1]~reg0_q\);

-- Location: LCCOMB_X23_Y14_N8
\led1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = (!\stateCoffeeMachine.000~q\ & ((\LessThan2~7_combout\ & ((\led1[2]~reg0_q\))) # (!\LessThan2~7_combout\ & ((!\led1[2]~reg0_q\) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \latch~q\,
	datac => \led1[2]~reg0_q\,
	datad => \stateCoffeeMachine.000~q\,
	combout => \led1~0_combout\);

-- Location: FF_X23_Y14_N9
\led1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \led1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led1[2]~reg0_q\);

-- Location: LCCOMB_X17_Y11_N30
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (selectionDrink(1)) # ((selectionDrink(0)) # (!\stateCoffeeMachine.Selection~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X16_Y10_N14
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = procent(5) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(procent(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X16_Y10_N16
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (procent(6) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!procent(6) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!procent(6) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X16_Y10_N18
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (procent(7) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!procent(7) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((procent(7) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(7),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X16_Y10_N20
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

-- Location: LCCOMB_X16_Y10_N24
\Mod1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (procent(6) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X16_Y10_N12
\Mod1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X16_Y10_N28
\Mod1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X16_Y10_N22
\Mod1|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ = (procent(5) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X17_Y10_N4
\Mod1|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\ = (procent(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X17_Y10_N26
\Mod1|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\ = (procent(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X16_Y10_N2
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X16_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X16_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X16_Y10_N26
\Mod1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X16_Y10_N0
\Mod1|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\ = (procent(7) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(7),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X16_Y10_N8
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X16_Y10_N10
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X16_Y10_N30
\Mod1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X17_Y10_N18
\Mod1|auto_generated|divider|divider|StageOut[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (procent(6))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X17_Y10_N12
\Mod1|auto_generated|divider|divider|StageOut[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(5)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => procent(5),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X17_Y10_N30
\Mod1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X17_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (procent(4) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X17_Y10_N6
\Mod1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X17_Y10_N14
\Mod1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (procent(3) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X17_Y10_N28
\Mod1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (procent(3) & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X18_Y10_N0
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X18_Y10_N2
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X18_Y10_N4
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X18_Y10_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y10_N8
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Mod1|auto_generated|divider|divider|StageOut[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Mod1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X19_Y10_N4
\Mod1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (procent(4))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X18_Y10_N16
\Mod1|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X18_Y10_N12
\Mod1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X18_Y10_N14
\Mod1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => procent(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X17_Y10_N16
\Mod1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & procent(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => procent(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X18_Y10_N10
\Mod1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & procent(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => procent(2),
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X18_Y10_N22
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X18_Y10_N24
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X18_Y10_N26
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y10_N28
\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y10_N26
\Mod1|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (procent(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => procent(3),
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X19_Y10_N0
\Mod1|auto_generated|divider|divider|StageOut[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\);

-- Location: LCCOMB_X19_Y10_N22
\Mod1|auto_generated|divider|divider|StageOut[31]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ = (procent(2) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\);

-- Location: LCCOMB_X19_Y10_N8
\Mod1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X19_Y10_N6
\Mod1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (procent(1) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X19_Y10_N24
\Mod1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (procent(1) & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X19_Y10_N10
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X19_Y10_N12
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X19_Y10_N14
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X19_Y10_N30
\Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X19_Y10_N20
\Mod1|auto_generated|divider|divider|StageOut[33]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\);

-- Location: LCCOMB_X19_Y10_N16
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y10_N18
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y10_N2
\Mod1|auto_generated|divider|divider|StageOut[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\);

-- Location: LCCOMB_X19_Y10_N28
\Mod1|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X19_Y13_N20
\Mod1|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (procent(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X19_Y13_N4
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = (procent(1) & ((GND) # (!\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\))) # (!procent(1) & (\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ $ (GND)))
-- \Add11~1\ = CARRY((procent(1)) # (!\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X19_Y13_N6
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((procent(2) & (!\Add11~1\)) # (!procent(2) & ((\Add11~1\) # (GND))))) # (!\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((procent(2) & (\Add11~1\ & 
-- VCC)) # (!procent(2) & (!\Add11~1\))))
-- \Add11~3\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((!\Add11~1\) # (!procent(2)))) # (!\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!procent(2) & !\Add11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datab => procent(2),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X19_Y13_N8
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = ((\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ $ (procent(3) $ (\Add11~3\)))) # (GND)
-- \Add11~5\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ & (procent(3) & !\Add11~3\)) # (!\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ & ((procent(3)) # (!\Add11~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datab => procent(3),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X19_Y13_N10
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (procent(4) & (\Add11~5\ & VCC)) # (!procent(4) & (!\Add11~5\))
-- \Add11~7\ = CARRY((!procent(4) & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X19_Y13_N12
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (procent(5) & ((GND) # (!\Add11~7\))) # (!procent(5) & (\Add11~7\ $ (GND)))
-- \Add11~9\ = CARRY((procent(5)) # (!\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(5),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X19_Y13_N14
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (procent(6) & (\Add11~9\ & VCC)) # (!procent(6) & (!\Add11~9\))
-- \Add11~11\ = CARRY((!procent(6) & !\Add11~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X19_Y13_N16
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (procent(7) & ((GND) # (!\Add11~11\))) # (!procent(7) & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((procent(7)) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(7),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X19_Y13_N18
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = \Add11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add11~13\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X16_Y13_N20
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = procent(3) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X16_Y13_N22
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (procent(4) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!procent(4) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!procent(4) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X16_Y13_N24
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (procent(5) & ((GND) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!procent(5) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ 
-- (GND)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((procent(5)) # (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X16_Y13_N26
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (procent(6) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!procent(6) & ((\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!procent(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(6),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X16_Y13_N28
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (procent(7) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!procent(7) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((procent(7) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X16_Y13_N30
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

-- Location: LCCOMB_X16_Y13_N14
\Mod2|auto_generated|divider|divider|StageOut[53]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X16_Y13_N4
\Mod2|auto_generated|divider|divider|StageOut[53]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & procent(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => procent(6),
	combout => \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\);

-- Location: LCCOMB_X16_Y13_N8
\Mod2|auto_generated|divider|divider|StageOut[52]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & procent(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => procent(5),
	combout => \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\);

-- Location: LCCOMB_X16_Y13_N6
\Mod2|auto_generated|divider|divider|StageOut[52]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\);

-- Location: LCCOMB_X16_Y13_N0
\Mod2|auto_generated|divider|divider|StageOut[51]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Mod2|auto_generated|divider|divider|StageOut[51]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\ = (procent(4) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X17_Y13_N30
\Mod2|auto_generated|divider|divider|StageOut[50]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ = (procent(3) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X16_Y13_N18
\Mod2|auto_generated|divider|divider|StageOut[50]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\);

-- Location: LCCOMB_X17_Y12_N2
\Mod2|auto_generated|divider|divider|StageOut[49]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\ = (procent(2) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X17_Y13_N20
\Mod2|auto_generated|divider|divider|StageOut[49]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\ = (procent(2) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X17_Y13_N8
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ & 
-- (!\Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X17_Y13_N10
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\))))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\) # (GND))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\) # ((\Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X17_Y13_N12
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ & (((!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\)) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X17_Y13_N14
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\)))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\) # 
-- (\Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X16_Y13_N16
\Mod2|auto_generated|divider|divider|StageOut[54]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ = (procent(7) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\);

-- Location: LCCOMB_X16_Y13_N2
\Mod2|auto_generated|divider|divider|StageOut[54]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\);

-- Location: LCCOMB_X17_Y13_N16
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X17_Y13_N18
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X17_Y13_N28
\Mod2|auto_generated|divider|divider|StageOut[62]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\);

-- Location: LCCOMB_X17_Y13_N22
\Mod2|auto_generated|divider|divider|StageOut[61]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Mod2|auto_generated|divider|divider|StageOut[60]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\);

-- Location: LCCOMB_X17_Y13_N2
\Mod2|auto_generated|divider|divider|StageOut[59]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\);

-- Location: LCCOMB_X17_Y13_N24
\Mod2|auto_generated|divider|divider|StageOut[58]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((procent(2)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => procent(2),
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\);

-- Location: LCCOMB_X17_Y12_N22
\Mod2|auto_generated|divider|divider|StageOut[48]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\ = (procent(1) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\);

-- Location: LCCOMB_X17_Y12_N28
\Mod2|auto_generated|divider|divider|StageOut[48]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\ = (procent(1) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X17_Y13_N26
\Mod2|auto_generated|divider|divider|StageOut[57]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (procent(1))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\);

-- Location: LCCOMB_X21_Y13_N0
\Add12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~1_cout\ = CARRY(!procent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(0),
	datad => VCC,
	cout => \Add12~1_cout\);

-- Location: LCCOMB_X21_Y13_N2
\Add12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~3_cout\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ & ((!\Add12~1_cout\) # (!\Add11~0_combout\))) # (!\Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ & (!\Add11~0_combout\ & !\Add12~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\,
	datab => \Add11~0_combout\,
	datad => VCC,
	cin => \Add12~1_cout\,
	cout => \Add12~3_cout\);

-- Location: LCCOMB_X21_Y13_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = ((\Add11~2_combout\ $ (\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ $ (\Add12~3_cout\)))) # (GND)
-- \Add12~5\ = CARRY((\Add11~2_combout\ & ((!\Add12~3_cout\) # (!\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\))) # (!\Add11~2_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & !\Add12~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\,
	datad => VCC,
	cin => \Add12~3_cout\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X21_Y13_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (\Add11~4_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & (!\Add12~5\)) # (!\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & (\Add12~5\ & VCC)))) # (!\Add11~4_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & ((\Add12~5\) # (GND))) # (!\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & (!\Add12~5\))))
-- \Add12~7\ = CARRY((\Add11~4_combout\ & (\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & !\Add12~5\)) # (!\Add11~4_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\) # (!\Add12~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\,
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X21_Y13_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = ((\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ $ (\Add11~6_combout\ $ (\Add12~7\)))) # (GND)
-- \Add12~9\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & (\Add11~6_combout\ & !\Add12~7\)) # (!\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & ((\Add11~6_combout\) # (!\Add12~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\,
	datab => \Add11~6_combout\,
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X21_Y13_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & ((\Add11~8_combout\ & (!\Add12~9\)) # (!\Add11~8_combout\ & ((\Add12~9\) # (GND))))) # (!\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & 
-- ((\Add11~8_combout\ & (\Add12~9\ & VCC)) # (!\Add11~8_combout\ & (!\Add12~9\))))
-- \Add12~11\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & ((!\Add12~9\) # (!\Add11~8_combout\))) # (!\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & (!\Add11~8_combout\ & !\Add12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\,
	datab => \Add11~8_combout\,
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X21_Y13_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = ((\Add11~10_combout\ $ (\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ $ (\Add12~11\)))) # (GND)
-- \Add12~13\ = CARRY((\Add11~10_combout\ & ((!\Add12~11\) # (!\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\))) # (!\Add11~10_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & !\Add12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\,
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X21_Y13_N14
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = (\Add11~12_combout\ & (\Add12~13\ & VCC)) # (!\Add11~12_combout\ & (!\Add12~13\))
-- \Add12~15\ = CARRY((!\Add11~12_combout\ & !\Add12~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~12_combout\,
	datad => VCC,
	cin => \Add12~13\,
	combout => \Add12~14_combout\,
	cout => \Add12~15\);

-- Location: LCCOMB_X21_Y13_N16
\Add12~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~16_combout\ = (\Add11~14_combout\ & (\Add12~15\ $ (GND))) # (!\Add11~14_combout\ & ((GND) # (!\Add12~15\)))
-- \Add12~17\ = CARRY((!\Add12~15\) # (!\Add11~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~14_combout\,
	datad => VCC,
	cin => \Add12~15\,
	combout => \Add12~16_combout\,
	cout => \Add12~17\);

-- Location: LCCOMB_X21_Y13_N18
\Add12~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~18_combout\ = \Add12~17\ $ (\Add11~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add11~14_combout\,
	cin => \Add12~17\,
	combout => \Add12~18_combout\);

-- Location: LCCOMB_X22_Y13_N0
\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\ = \Add12~14_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ = CARRY(\Add12~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~14_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\);

-- Location: LCCOMB_X22_Y13_N2
\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\ = (\Add12~16_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ & VCC)) # (!\Add12~16_combout\ & 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ = CARRY((!\Add12~16_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~16_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\);

-- Location: LCCOMB_X22_Y13_N4
\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\ = (\Add12~18_combout\ & ((GND) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\))) # (!\Add12~18_combout\ & 
-- (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ $ (GND)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\ = CARRY((\Add12~18_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~18_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\);

-- Location: LCCOMB_X22_Y13_N6
\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\ = (\Add12~18_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\)) # (!\Add12~18_combout\ & 
-- ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\) # (GND)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\) # (!\Add12~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~18_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\);

-- Location: LCCOMB_X22_Y13_N8
\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ = (\Add12~18_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ $ (GND))) # (!\Add12~18_combout\ & 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\ = CARRY((\Add12~18_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add12~18_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\);

-- Location: LCCOMB_X22_Y13_N10
\Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\ = CARRY(!\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\);

-- Location: LCCOMB_X22_Y13_N12
\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y13_N4
\Div2|auto_generated|divider|divider|StageOut[214]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ = (\Add12~18_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~18_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Div2|auto_generated|divider|divider|StageOut[214]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\);

-- Location: LCCOMB_X22_Y13_N28
\Div2|auto_generated|divider|divider|StageOut[213]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\);

-- Location: LCCOMB_X22_Y13_N26
\Div2|auto_generated|divider|divider|StageOut[212]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\);

-- Location: LCCOMB_X22_Y13_N16
\Div2|auto_generated|divider|divider|StageOut[211]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[211]~93_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[211]~93_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Div2|auto_generated|divider|divider|StageOut[211]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\ = (\Add12~16_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~16_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\);

-- Location: LCCOMB_X23_Y13_N6
\Div2|auto_generated|divider|divider|StageOut[210]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ = (\Add12~14_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Div2|auto_generated|divider|divider|StageOut[210]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[210]~95_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[210]~95_combout\);

-- Location: LCCOMB_X22_Y13_N14
\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ = \Add12~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add12~12_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Div2|auto_generated|divider|divider|StageOut[209]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[209]~97_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[209]~97_combout\);

-- Location: LCCOMB_X23_Y13_N8
\Div2|auto_generated|divider|divider|StageOut[209]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\ = (\Add12~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\);

-- Location: LCCOMB_X23_Y13_N10
\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[209]~97_combout\) # (\Div2|auto_generated|divider|divider|StageOut[209]~96_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[209]~97_combout\) # (\Div2|auto_generated|divider|divider|StageOut[209]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[209]~97_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\);

-- Location: LCCOMB_X23_Y13_N12
\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[210]~95_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[210]~95_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[210]~95_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[210]~95_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\);

-- Location: LCCOMB_X23_Y13_N14
\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[211]~93_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[211]~93_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[211]~93_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[211]~93_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\);

-- Location: LCCOMB_X23_Y13_N16
\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ & !\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\);

-- Location: LCCOMB_X23_Y13_N18
\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\);

-- Location: LCCOMB_X23_Y13_N20
\Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y13_N22
\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\);

-- Location: LCCOMB_X22_Y13_N30
\Div2|auto_generated|divider|divider|StageOut[220]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[220]~148_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add12~16_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	datac => \Add12~16_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[220]~148_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Div2|auto_generated|divider|divider|StageOut[222]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[222]~146_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add12~18_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	datac => \Add12~18_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[222]~146_combout\);

-- Location: LCCOMB_X23_Y12_N0
\Div2|auto_generated|divider|divider|StageOut[222]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[222]~98_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[222]~98_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Div2|auto_generated|divider|divider|StageOut[221]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[221]~99_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[221]~99_combout\);

-- Location: LCCOMB_X23_Y12_N24
\Div2|auto_generated|divider|divider|StageOut[221]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[221]~147_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add12~18_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	datac => \Add12~18_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[221]~147_combout\);

-- Location: LCCOMB_X23_Y12_N22
\Div2|auto_generated|divider|divider|StageOut[220]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[220]~100_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[220]~100_combout\);

-- Location: LCCOMB_X23_Y13_N28
\Div2|auto_generated|divider|divider|StageOut[219]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[219]~101_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[219]~101_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Div2|auto_generated|divider|divider|StageOut[219]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[219]~149_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add12~14_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	datac => \Add12~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[219]~149_combout\);

-- Location: LCCOMB_X23_Y13_N30
\Div2|auto_generated|divider|divider|StageOut[218]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[218]~150_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add12~12_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\,
	datab => \Add12~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[218]~150_combout\);

-- Location: LCCOMB_X22_Y12_N20
\Div2|auto_generated|divider|divider|StageOut[218]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[218]~102_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[218]~102_combout\);

-- Location: LCCOMB_X22_Y12_N26
\Div2|auto_generated|divider|divider|StageOut[208]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[208]~105_combout\ = (\Add12~10_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[208]~105_combout\);

-- Location: LCCOMB_X22_Y12_N28
\Div2|auto_generated|divider|divider|StageOut[208]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\ = (\Add12~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\);

-- Location: LCCOMB_X22_Y12_N8
\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[208]~105_combout\) # (\Div2|auto_generated|divider|divider|StageOut[208]~104_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[208]~105_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\);

-- Location: LCCOMB_X22_Y12_N16
\Div2|auto_generated|divider|divider|StageOut[217]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[217]~106_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[217]~106_combout\);

-- Location: LCCOMB_X22_Y12_N6
\Div2|auto_generated|divider|divider|StageOut[217]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[217]~103_combout\ = (\Add12~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[217]~103_combout\);

-- Location: LCCOMB_X23_Y12_N2
\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[217]~106_combout\) # (\Div2|auto_generated|divider|divider|StageOut[217]~103_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[217]~106_combout\) # (\Div2|auto_generated|divider|divider|StageOut[217]~103_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[217]~106_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[217]~103_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\);

-- Location: LCCOMB_X23_Y12_N4
\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[218]~150_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[218]~102_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[218]~150_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[218]~102_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[218]~150_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[218]~102_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[218]~150_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[218]~102_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\);

-- Location: LCCOMB_X23_Y12_N6
\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[219]~101_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[219]~149_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[219]~101_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[219]~149_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[219]~101_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[219]~149_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[219]~101_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[219]~149_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\);

-- Location: LCCOMB_X23_Y12_N8
\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[220]~100_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[220]~100_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[220]~148_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[220]~148_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[220]~100_combout\ & !\Div2|auto_generated|divider|divider|StageOut[220]~148_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[220]~100_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[220]~148_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\);

-- Location: LCCOMB_X23_Y12_N10
\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[221]~99_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~147_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[221]~99_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~147_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[221]~99_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~147_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[221]~99_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[221]~147_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\);

-- Location: LCCOMB_X23_Y12_N12
\Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[222]~146_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[222]~98_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[222]~146_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[222]~98_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y12_N14
\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\);

-- Location: LCCOMB_X22_Y11_N8
\Div2|auto_generated|divider|divider|StageOut[229]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[229]~135_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[220]~148_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[220]~148_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[229]~135_combout\);

-- Location: LCCOMB_X22_Y11_N30
\Div2|auto_generated|divider|divider|StageOut[230]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[230]~134_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[221]~147_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[221]~147_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[230]~134_combout\);

-- Location: LCCOMB_X23_Y12_N20
\Div2|auto_generated|divider|divider|StageOut[230]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[230]~107_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[230]~107_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Div2|auto_generated|divider|divider|StageOut[229]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[229]~108_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[229]~108_combout\);

-- Location: LCCOMB_X22_Y11_N10
\Div2|auto_generated|divider|divider|StageOut[228]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[228]~136_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[219]~149_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[219]~149_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[228]~136_combout\);

-- Location: LCCOMB_X22_Y11_N0
\Div2|auto_generated|divider|divider|StageOut[228]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[228]~109_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[228]~109_combout\);

-- Location: LCCOMB_X22_Y11_N26
\Div2|auto_generated|divider|divider|StageOut[227]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[227]~110_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[227]~110_combout\);

-- Location: LCCOMB_X22_Y12_N14
\Div2|auto_generated|divider|divider|StageOut[227]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[227]~137_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[218]~150_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[218]~150_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[227]~137_combout\);

-- Location: LCCOMB_X23_Y12_N16
\Div2|auto_generated|divider|divider|StageOut[226]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[226]~111_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[226]~111_combout\);

-- Location: LCCOMB_X22_Y12_N2
\Div2|auto_generated|divider|divider|StageOut[226]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[226]~151_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & (\Add12~10_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~10_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[226]~151_combout\);

-- Location: LCCOMB_X22_Y12_N22
\Div2|auto_generated|divider|divider|StageOut[216]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[216]~114_combout\ = (\Add12~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[216]~114_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Div2|auto_generated|divider|divider|StageOut[216]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\ = (\Add12~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\);

-- Location: LCCOMB_X22_Y12_N10
\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[216]~114_combout\) # (\Div2|auto_generated|divider|divider|StageOut[216]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[216]~114_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\);

-- Location: LCCOMB_X22_Y12_N12
\Div2|auto_generated|divider|divider|StageOut[225]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[225]~115_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[225]~115_combout\);

-- Location: LCCOMB_X22_Y12_N30
\Div2|auto_generated|divider|divider|StageOut[225]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[225]~112_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Add12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Add12~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[225]~112_combout\);

-- Location: LCCOMB_X22_Y11_N12
\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[225]~115_combout\) # (\Div2|auto_generated|divider|divider|StageOut[225]~112_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[225]~115_combout\) # (\Div2|auto_generated|divider|divider|StageOut[225]~112_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[225]~115_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[225]~112_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\);

-- Location: LCCOMB_X22_Y11_N14
\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[226]~111_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[226]~151_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[226]~111_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[226]~151_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[226]~111_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[226]~151_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[226]~111_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[226]~151_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\);

-- Location: LCCOMB_X22_Y11_N16
\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[227]~110_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[227]~137_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[227]~110_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[227]~137_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[227]~110_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[227]~137_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[227]~110_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[227]~137_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\);

-- Location: LCCOMB_X22_Y11_N18
\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[228]~136_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[228]~136_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[228]~109_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[228]~109_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[228]~136_combout\ & !\Div2|auto_generated|divider|divider|StageOut[228]~109_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[228]~136_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[228]~109_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\);

-- Location: LCCOMB_X22_Y11_N20
\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[229]~108_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~135_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[229]~108_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~135_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[229]~108_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[229]~108_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[229]~135_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\);

-- Location: LCCOMB_X22_Y11_N22
\Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[230]~134_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[230]~107_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[230]~134_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[230]~107_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\);

-- Location: LCCOMB_X22_Y11_N24
\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\);

-- Location: LCCOMB_X23_Y11_N30
\Div2|auto_generated|divider|divider|StageOut[238]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[238]~138_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[229]~135_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[229]~135_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[238]~138_combout\);

-- Location: LCCOMB_X22_Y11_N4
\Div2|auto_generated|divider|divider|StageOut[238]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[238]~116_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[238]~116_combout\);

-- Location: LCCOMB_X23_Y11_N12
\Div2|auto_generated|divider|divider|StageOut[237]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[237]~139_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[228]~136_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[228]~136_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[237]~139_combout\);

-- Location: LCCOMB_X22_Y11_N6
\Div2|auto_generated|divider|divider|StageOut[237]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[237]~117_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[237]~117_combout\);

-- Location: LCCOMB_X23_Y11_N8
\Div2|auto_generated|divider|divider|StageOut[236]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[236]~118_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[236]~118_combout\);

-- Location: LCCOMB_X23_Y11_N0
\Div2|auto_generated|divider|divider|StageOut[236]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[236]~140_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[227]~137_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[227]~137_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[236]~140_combout\);

-- Location: LCCOMB_X22_Y12_N4
\Div2|auto_generated|divider|divider|StageOut[235]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[235]~141_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[226]~151_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[226]~151_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[235]~141_combout\);

-- Location: LCCOMB_X23_Y11_N2
\Div2|auto_generated|divider|divider|StageOut[235]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[235]~119_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[235]~119_combout\);

-- Location: LCCOMB_X22_Y12_N24
\Div2|auto_generated|divider|divider|StageOut[234]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[234]~152_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Add12~8_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\,
	datab => \Add12~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[234]~152_combout\);

-- Location: LCCOMB_X22_Y11_N28
\Div2|auto_generated|divider|divider|StageOut[234]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[234]~120_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[234]~120_combout\);

-- Location: LCCOMB_X25_Y11_N30
\Div2|auto_generated|divider|divider|StageOut[224]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\ = (\Add12~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\);

-- Location: LCCOMB_X25_Y11_N20
\Div2|auto_generated|divider|divider|StageOut[224]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[224]~123_combout\ = (\Add12~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[224]~123_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[224]~122_combout\) # (\Div2|auto_generated|divider|divider|StageOut[224]~123_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[224]~123_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\);

-- Location: LCCOMB_X25_Y11_N22
\Div2|auto_generated|divider|divider|StageOut[233]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[233]~124_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[233]~124_combout\);

-- Location: LCCOMB_X23_Y11_N4
\Div2|auto_generated|divider|divider|StageOut[233]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[233]~121_combout\ = (\Add12~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[233]~121_combout\);

-- Location: LCCOMB_X23_Y11_N14
\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[233]~124_combout\) # (\Div2|auto_generated|divider|divider|StageOut[233]~121_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[233]~124_combout\) # (\Div2|auto_generated|divider|divider|StageOut[233]~121_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[233]~124_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[233]~121_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\);

-- Location: LCCOMB_X23_Y11_N16
\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[234]~152_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[234]~120_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[234]~152_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[234]~120_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[234]~152_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[234]~120_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[234]~152_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[234]~120_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\);

-- Location: LCCOMB_X23_Y11_N18
\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[235]~141_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[235]~119_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[235]~141_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[235]~119_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[235]~141_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[235]~119_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[235]~141_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[235]~119_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\);

-- Location: LCCOMB_X23_Y11_N20
\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[236]~118_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[236]~118_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[236]~140_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[236]~140_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[236]~118_combout\ & !\Div2|auto_generated|divider|divider|StageOut[236]~140_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[236]~118_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[236]~140_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\);

-- Location: LCCOMB_X23_Y11_N22
\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[237]~139_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~117_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[237]~139_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~117_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[237]~139_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~117_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[237]~139_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[237]~117_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\);

-- Location: LCCOMB_X23_Y11_N24
\Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[238]~138_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[238]~116_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[238]~138_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[238]~116_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\);

-- Location: LCCOMB_X23_Y11_N26
\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ = \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\);

-- Location: LCCOMB_X25_Y11_N6
\digit1[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[1]~15_combout\ = !\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \digit1[1]~15_combout\);

-- Location: FF_X25_Y11_N7
\digit1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit1[1]~15_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(1));

-- Location: LCCOMB_X24_Y11_N30
\Div2|auto_generated|divider|divider|StageOut[246]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[246]~142_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[237]~139_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[237]~139_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[246]~142_combout\);

-- Location: LCCOMB_X24_Y11_N2
\Div2|auto_generated|divider|divider|StageOut[246]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[246]~125_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[246]~125_combout\);

-- Location: LCCOMB_X23_Y11_N10
\Div2|auto_generated|divider|divider|StageOut[245]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[245]~143_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[236]~140_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[236]~140_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[245]~143_combout\);

-- Location: LCCOMB_X23_Y11_N6
\Div2|auto_generated|divider|divider|StageOut[245]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[245]~126_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[245]~126_combout\);

-- Location: LCCOMB_X24_Y11_N8
\Div2|auto_generated|divider|divider|StageOut[244]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[244]~127_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[244]~127_combout\);

-- Location: LCCOMB_X24_Y11_N4
\Div2|auto_generated|divider|divider|StageOut[244]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[244]~144_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[235]~141_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[235]~141_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[244]~144_combout\);

-- Location: LCCOMB_X24_Y11_N6
\Div2|auto_generated|divider|divider|StageOut[243]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[243]~145_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[234]~152_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[234]~152_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[243]~145_combout\);

-- Location: LCCOMB_X23_Y11_N28
\Div2|auto_generated|divider|divider|StageOut[243]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[243]~128_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[243]~128_combout\);

-- Location: LCCOMB_X24_Y11_N26
\Div2|auto_generated|divider|divider|StageOut[242]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[242]~129_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[242]~129_combout\);

-- Location: LCCOMB_X25_Y11_N10
\Div2|auto_generated|divider|divider|StageOut[242]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[242]~153_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & (\Add12~6_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[242]~153_combout\);

-- Location: LCCOMB_X22_Y11_N2
\Div2|auto_generated|divider|divider|StageOut[232]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[232]~132_combout\ = (\Add12~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add12~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[232]~132_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Div2|auto_generated|divider|divider|StageOut[232]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\ = (\Add12~4_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\);

-- Location: LCCOMB_X24_Y11_N0
\Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[232]~132_combout\) # (\Div2|auto_generated|divider|divider|StageOut[232]~131_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[232]~132_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\);

-- Location: LCCOMB_X24_Y11_N24
\Div2|auto_generated|divider|divider|StageOut[241]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[241]~133_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[241]~133_combout\);

-- Location: LCCOMB_X24_Y11_N28
\Div2|auto_generated|divider|divider|StageOut[241]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[241]~130_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Add12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Add12~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[241]~130_combout\);

-- Location: LCCOMB_X24_Y11_N10
\digit1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~2_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[241]~133_combout\) # (\Div2|auto_generated|divider|divider|StageOut[241]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[241]~133_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[241]~130_combout\,
	datad => VCC,
	cout => \digit1[0]~2_cout\);

-- Location: LCCOMB_X24_Y11_N12
\digit1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~4_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[242]~129_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[242]~153_combout\ & !\digit1[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[242]~129_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[242]~153_combout\,
	datad => VCC,
	cin => \digit1[0]~2_cout\,
	cout => \digit1[0]~4_cout\);

-- Location: LCCOMB_X24_Y11_N14
\digit1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~6_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[243]~145_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[243]~128_combout\) # (!\digit1[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[243]~145_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[243]~128_combout\,
	datad => VCC,
	cin => \digit1[0]~4_cout\,
	cout => \digit1[0]~6_cout\);

-- Location: LCCOMB_X24_Y11_N16
\digit1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~8_cout\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[244]~127_combout\ & !\Div2|auto_generated|divider|divider|StageOut[244]~144_combout\)) # (!\digit1[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[244]~127_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[244]~144_combout\,
	datad => VCC,
	cin => \digit1[0]~6_cout\,
	cout => \digit1[0]~8_cout\);

-- Location: LCCOMB_X24_Y11_N18
\digit1[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~10_cout\ = CARRY((!\digit1[0]~8_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[245]~143_combout\) # (\Div2|auto_generated|divider|divider|StageOut[245]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[245]~143_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[245]~126_combout\,
	datad => VCC,
	cin => \digit1[0]~8_cout\,
	cout => \digit1[0]~10_cout\);

-- Location: LCCOMB_X24_Y11_N20
\digit1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~12_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[246]~142_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[246]~125_combout\ & !\digit1[0]~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[246]~142_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[246]~125_combout\,
	datad => VCC,
	cin => \digit1[0]~10_cout\,
	cout => \digit1[0]~12_cout\);

-- Location: LCCOMB_X24_Y11_N22
\digit1[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~13_combout\ = !\digit1[0]~12_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digit1[0]~12_cout\,
	combout => \digit1[0]~13_combout\);

-- Location: FF_X24_Y11_N23
\digit1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit1[0]~13_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(0));

-- Location: LCCOMB_X25_Y11_N8
\digit1[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[2]~16_combout\ = !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \digit1[2]~16_combout\);

-- Location: FF_X25_Y11_N9
\digit1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit1[2]~16_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(2));

-- Location: LCCOMB_X25_Y11_N2
\digit1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[3]~17_combout\ = !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \digit1[3]~17_combout\);

-- Location: FF_X25_Y11_N3
\digit1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit1[3]~17_combout\,
	ena => \stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit1(3));

-- Location: LCCOMB_X25_Y11_N0
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (digit1(1) & (!digit1(3) & ((!digit1(2)) # (!digit1(0))))) # (!digit1(1) & ((digit1(2) $ (digit1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X18_Y11_N12
\Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = (\Selector83~0_combout\ & ((!\stateCoffeeMachine.Implementation~q\) # (!\WideOr9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector83~0_combout\,
	datac => \WideOr9~0_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector83~1_combout\);

-- Location: FF_X18_Y11_N13
\bufferForIndicator1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector83~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(0));

-- Location: LCCOMB_X14_Y9_N14
\clkForIndication[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[0]~19_combout\ = clkForIndication(0) $ (VCC)
-- \clkForIndication[0]~20\ = CARRY(clkForIndication(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(0),
	datad => VCC,
	combout => \clkForIndication[0]~19_combout\,
	cout => \clkForIndication[0]~20\);

-- Location: FF_X14_Y9_N15
\clkForIndication[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[0]~19_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(0));

-- Location: LCCOMB_X14_Y9_N16
\clkForIndication[1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[1]~21_combout\ = (clkForIndication(1) & (!\clkForIndication[0]~20\)) # (!clkForIndication(1) & ((\clkForIndication[0]~20\) # (GND)))
-- \clkForIndication[1]~22\ = CARRY((!\clkForIndication[0]~20\) # (!clkForIndication(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(1),
	datad => VCC,
	cin => \clkForIndication[0]~20\,
	combout => \clkForIndication[1]~21_combout\,
	cout => \clkForIndication[1]~22\);

-- Location: FF_X14_Y9_N17
\clkForIndication[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[1]~21_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(1));

-- Location: LCCOMB_X14_Y9_N18
\clkForIndication[2]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[2]~23_combout\ = (clkForIndication(2) & (\clkForIndication[1]~22\ $ (GND))) # (!clkForIndication(2) & (!\clkForIndication[1]~22\ & VCC))
-- \clkForIndication[2]~24\ = CARRY((clkForIndication(2) & !\clkForIndication[1]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(2),
	datad => VCC,
	cin => \clkForIndication[1]~22\,
	combout => \clkForIndication[2]~23_combout\,
	cout => \clkForIndication[2]~24\);

-- Location: FF_X14_Y9_N19
\clkForIndication[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[2]~23_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(2));

-- Location: LCCOMB_X14_Y9_N20
\clkForIndication[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[3]~25_combout\ = (clkForIndication(3) & (!\clkForIndication[2]~24\)) # (!clkForIndication(3) & ((\clkForIndication[2]~24\) # (GND)))
-- \clkForIndication[3]~26\ = CARRY((!\clkForIndication[2]~24\) # (!clkForIndication(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(3),
	datad => VCC,
	cin => \clkForIndication[2]~24\,
	combout => \clkForIndication[3]~25_combout\,
	cout => \clkForIndication[3]~26\);

-- Location: FF_X14_Y9_N21
\clkForIndication[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[3]~25_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(3));

-- Location: LCCOMB_X14_Y9_N22
\clkForIndication[4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[4]~27_combout\ = (clkForIndication(4) & (\clkForIndication[3]~26\ $ (GND))) # (!clkForIndication(4) & (!\clkForIndication[3]~26\ & VCC))
-- \clkForIndication[4]~28\ = CARRY((clkForIndication(4) & !\clkForIndication[3]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(4),
	datad => VCC,
	cin => \clkForIndication[3]~26\,
	combout => \clkForIndication[4]~27_combout\,
	cout => \clkForIndication[4]~28\);

-- Location: FF_X14_Y9_N23
\clkForIndication[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[4]~27_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(4));

-- Location: LCCOMB_X14_Y9_N24
\clkForIndication[5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[5]~29_combout\ = (clkForIndication(5) & (!\clkForIndication[4]~28\)) # (!clkForIndication(5) & ((\clkForIndication[4]~28\) # (GND)))
-- \clkForIndication[5]~30\ = CARRY((!\clkForIndication[4]~28\) # (!clkForIndication(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(5),
	datad => VCC,
	cin => \clkForIndication[4]~28\,
	combout => \clkForIndication[5]~29_combout\,
	cout => \clkForIndication[5]~30\);

-- Location: FF_X14_Y9_N25
\clkForIndication[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[5]~29_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(5));

-- Location: LCCOMB_X14_Y9_N26
\clkForIndication[6]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[6]~31_combout\ = (clkForIndication(6) & (\clkForIndication[5]~30\ $ (GND))) # (!clkForIndication(6) & (!\clkForIndication[5]~30\ & VCC))
-- \clkForIndication[6]~32\ = CARRY((clkForIndication(6) & !\clkForIndication[5]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(6),
	datad => VCC,
	cin => \clkForIndication[5]~30\,
	combout => \clkForIndication[6]~31_combout\,
	cout => \clkForIndication[6]~32\);

-- Location: FF_X14_Y9_N27
\clkForIndication[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[6]~31_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(6));

-- Location: LCCOMB_X14_Y9_N28
\clkForIndication[7]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[7]~33_combout\ = (clkForIndication(7) & (!\clkForIndication[6]~32\)) # (!clkForIndication(7) & ((\clkForIndication[6]~32\) # (GND)))
-- \clkForIndication[7]~34\ = CARRY((!\clkForIndication[6]~32\) # (!clkForIndication(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(7),
	datad => VCC,
	cin => \clkForIndication[6]~32\,
	combout => \clkForIndication[7]~33_combout\,
	cout => \clkForIndication[7]~34\);

-- Location: FF_X14_Y9_N29
\clkForIndication[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[7]~33_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(7));

-- Location: LCCOMB_X14_Y9_N30
\clkForIndication[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[8]~35_combout\ = (clkForIndication(8) & (\clkForIndication[7]~34\ $ (GND))) # (!clkForIndication(8) & (!\clkForIndication[7]~34\ & VCC))
-- \clkForIndication[8]~36\ = CARRY((clkForIndication(8) & !\clkForIndication[7]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(8),
	datad => VCC,
	cin => \clkForIndication[7]~34\,
	combout => \clkForIndication[8]~35_combout\,
	cout => \clkForIndication[8]~36\);

-- Location: FF_X14_Y9_N31
\clkForIndication[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[8]~35_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(8));

-- Location: LCCOMB_X14_Y8_N0
\clkForIndication[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[9]~37_combout\ = (clkForIndication(9) & (!\clkForIndication[8]~36\)) # (!clkForIndication(9) & ((\clkForIndication[8]~36\) # (GND)))
-- \clkForIndication[9]~38\ = CARRY((!\clkForIndication[8]~36\) # (!clkForIndication(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(9),
	datad => VCC,
	cin => \clkForIndication[8]~36\,
	combout => \clkForIndication[9]~37_combout\,
	cout => \clkForIndication[9]~38\);

-- Location: FF_X14_Y8_N1
\clkForIndication[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[9]~37_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(9));

-- Location: LCCOMB_X14_Y8_N2
\clkForIndication[10]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[10]~39_combout\ = (clkForIndication(10) & (\clkForIndication[9]~38\ $ (GND))) # (!clkForIndication(10) & (!\clkForIndication[9]~38\ & VCC))
-- \clkForIndication[10]~40\ = CARRY((clkForIndication(10) & !\clkForIndication[9]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(10),
	datad => VCC,
	cin => \clkForIndication[9]~38\,
	combout => \clkForIndication[10]~39_combout\,
	cout => \clkForIndication[10]~40\);

-- Location: FF_X14_Y8_N3
\clkForIndication[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[10]~39_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(10));

-- Location: LCCOMB_X14_Y8_N4
\clkForIndication[11]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[11]~41_combout\ = (clkForIndication(11) & (!\clkForIndication[10]~40\)) # (!clkForIndication(11) & ((\clkForIndication[10]~40\) # (GND)))
-- \clkForIndication[11]~42\ = CARRY((!\clkForIndication[10]~40\) # (!clkForIndication(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(11),
	datad => VCC,
	cin => \clkForIndication[10]~40\,
	combout => \clkForIndication[11]~41_combout\,
	cout => \clkForIndication[11]~42\);

-- Location: FF_X14_Y8_N5
\clkForIndication[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[11]~41_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(11));

-- Location: LCCOMB_X14_Y8_N22
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

-- Location: LCCOMB_X14_Y9_N12
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!clkForIndication(4) & (!clkForIndication(6) & !clkForIndication(5)))) # (!clkForIndication(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(4),
	datab => clkForIndication(7),
	datac => clkForIndication(6),
	datad => clkForIndication(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y8_N6
\clkForIndication[12]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[12]~43_combout\ = (clkForIndication(12) & (\clkForIndication[11]~42\ $ (GND))) # (!clkForIndication(12) & (!\clkForIndication[11]~42\ & VCC))
-- \clkForIndication[12]~44\ = CARRY((clkForIndication(12) & !\clkForIndication[11]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(12),
	datad => VCC,
	cin => \clkForIndication[11]~42\,
	combout => \clkForIndication[12]~43_combout\,
	cout => \clkForIndication[12]~44\);

-- Location: FF_X14_Y8_N7
\clkForIndication[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[12]~43_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(12));

-- Location: LCCOMB_X14_Y8_N8
\clkForIndication[13]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[13]~45_combout\ = (clkForIndication(13) & (!\clkForIndication[12]~44\)) # (!clkForIndication(13) & ((\clkForIndication[12]~44\) # (GND)))
-- \clkForIndication[13]~46\ = CARRY((!\clkForIndication[12]~44\) # (!clkForIndication(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(13),
	datad => VCC,
	cin => \clkForIndication[12]~44\,
	combout => \clkForIndication[13]~45_combout\,
	cout => \clkForIndication[13]~46\);

-- Location: FF_X14_Y8_N9
\clkForIndication[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[13]~45_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(13));

-- Location: LCCOMB_X14_Y8_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkForIndication(13) & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (!clkForIndication(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => clkForIndication(13),
	datad => clkForIndication(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y8_N10
\clkForIndication[14]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[14]~47_combout\ = (clkForIndication(14) & (\clkForIndication[13]~46\ $ (GND))) # (!clkForIndication(14) & (!\clkForIndication[13]~46\ & VCC))
-- \clkForIndication[14]~48\ = CARRY((clkForIndication(14) & !\clkForIndication[13]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(14),
	datad => VCC,
	cin => \clkForIndication[13]~46\,
	combout => \clkForIndication[14]~47_combout\,
	cout => \clkForIndication[14]~48\);

-- Location: FF_X14_Y8_N11
\clkForIndication[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[14]~47_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(14));

-- Location: LCCOMB_X14_Y8_N12
\clkForIndication[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[15]~49_combout\ = (clkForIndication(15) & (!\clkForIndication[14]~48\)) # (!clkForIndication(15) & ((\clkForIndication[14]~48\) # (GND)))
-- \clkForIndication[15]~50\ = CARRY((!\clkForIndication[14]~48\) # (!clkForIndication(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(15),
	datad => VCC,
	cin => \clkForIndication[14]~48\,
	combout => \clkForIndication[15]~49_combout\,
	cout => \clkForIndication[15]~50\);

-- Location: FF_X14_Y8_N13
\clkForIndication[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[15]~49_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(15));

-- Location: LCCOMB_X14_Y8_N14
\clkForIndication[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[16]~51_combout\ = (clkForIndication(16) & (\clkForIndication[15]~50\ $ (GND))) # (!clkForIndication(16) & (!\clkForIndication[15]~50\ & VCC))
-- \clkForIndication[16]~52\ = CARRY((clkForIndication(16) & !\clkForIndication[15]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(16),
	datad => VCC,
	cin => \clkForIndication[15]~50\,
	combout => \clkForIndication[16]~51_combout\,
	cout => \clkForIndication[16]~52\);

-- Location: FF_X14_Y8_N15
\clkForIndication[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[16]~51_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(16));

-- Location: LCCOMB_X14_Y8_N16
\clkForIndication[17]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[17]~53_combout\ = (clkForIndication(17) & (!\clkForIndication[16]~52\)) # (!clkForIndication(17) & ((\clkForIndication[16]~52\) # (GND)))
-- \clkForIndication[17]~54\ = CARRY((!\clkForIndication[16]~52\) # (!clkForIndication(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => clkForIndication(17),
	datad => VCC,
	cin => \clkForIndication[16]~52\,
	combout => \clkForIndication[17]~53_combout\,
	cout => \clkForIndication[17]~54\);

-- Location: FF_X14_Y8_N17
\clkForIndication[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[17]~53_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(17));

-- Location: LCCOMB_X14_Y8_N26
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

-- Location: LCCOMB_X14_Y8_N18
\clkForIndication[18]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkForIndication[18]~55_combout\ = \clkForIndication[17]~54\ $ (!clkForIndication(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => clkForIndication(18),
	cin => \clkForIndication[17]~54\,
	combout => \clkForIndication[18]~55_combout\);

-- Location: FF_X14_Y8_N19
\clkForIndication[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clkForIndication[18]~55_combout\,
	sclr => \ALT_INV_LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clkForIndication(18));

-- Location: LCCOMB_X14_Y8_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!clkForIndication(18) & ((\LessThan0~2_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~3_combout\,
	datad => clkForIndication(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y8_N24
\indicator[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[0]~1_combout\ = indicator(0) $ (((clkForIndication(18)) # ((!\LessThan0~3_combout\ & !\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~2_combout\,
	datac => indicator(0),
	datad => clkForIndication(18),
	combout => \indicator[0]~1_combout\);

-- Location: FF_X14_Y8_N25
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

-- Location: LCCOMB_X18_Y11_N30
\indicator[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[1]~0_combout\ = indicator(1) $ (((!\LessThan0~4_combout\ & indicator(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~4_combout\,
	datac => indicator(1),
	datad => indicator(0),
	combout => \indicator[1]~0_combout\);

-- Location: FF_X18_Y11_N31
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

-- Location: LCCOMB_X21_Y11_N4
\bufferForIndicator0[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator0[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \bufferForIndicator0[0]~feeder_combout\);

-- Location: FF_X21_Y11_N5
\bufferForIndicator0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bufferForIndicator0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator0(0));

-- Location: LCCOMB_X19_Y11_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (indicator(1) & (((indicator(0))))) # (!indicator(1) & ((indicator(0) & (bufferForIndicator1(0))) # (!indicator(0) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(0),
	datab => indicator(1),
	datac => bufferForIndicator0(0),
	datad => indicator(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (!selectionDrink(1) & (selectionDrink(0) & \stateCoffeeMachine.Selection~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X13_Y7_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = money(5) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(money(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X13_Y7_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (money(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!money(6) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!money(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X13_Y7_N26
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (money(7) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!money(7) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((money(7) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(7),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X13_Y7_N28
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

-- Location: LCCOMB_X13_Y7_N30
\Mod0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X13_Y7_N16
\Mod0|auto_generated|divider|divider|StageOut[18]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ = (money(7) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\);

-- Location: LCCOMB_X13_Y7_N14
\Mod0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (money(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X13_Y7_N12
\Mod0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X12_Y7_N16
\Mod0|auto_generated|divider|divider|StageOut[16]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ = (money(5) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\);

-- Location: LCCOMB_X12_Y7_N6
\Mod0|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X12_Y7_N14
\Mod0|auto_generated|divider|divider|StageOut[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ = (money(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\);

-- Location: LCCOMB_X12_Y7_N20
\Mod0|auto_generated|divider|divider|StageOut[15]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ = (money(4) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\);

-- Location: LCCOMB_X13_Y7_N0
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X13_Y7_N2
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X13_Y7_N4
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X13_Y7_N6
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y7_N8
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y7_N18
\Mod0|auto_generated|divider|divider|StageOut[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (money(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X13_Y7_N20
\Mod0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X13_Y7_N10
\Mod0|auto_generated|divider|divider|StageOut[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((money(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => money(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X13_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X13_Y8_N12
\Mod0|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X13_Y8_N2
\Mod0|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ = (money(4) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X13_Y8_N10
\Mod0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (money(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X13_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (money(3) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X13_Y8_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X13_Y8_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X13_Y8_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X13_Y8_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y8_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y8_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & money(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => money(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X13_Y8_N28
\Mod0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X11_Y8_N12
\Mod0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & money(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => money(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X11_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & money(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => money(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X12_Y8_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X12_Y8_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X12_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X13_Y8_N14
\Mod0|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X13_Y8_N6
\Mod0|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (money(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X13_Y8_N16
\Mod0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X12_Y8_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X12_Y8_N26
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y8_N28
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\);

-- Location: LCCOMB_X11_Y8_N14
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((money(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => money(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X12_Y8_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\ = (money(2) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\);

-- Location: LCCOMB_X12_Y8_N0
\Mod0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X11_Y8_N16
\Mod0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (money(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X12_Y8_N2
\Mod0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (money(1) & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X12_Y8_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X12_Y8_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X12_Y8_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X13_Y8_N4
\Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X12_Y8_N8
\Mod0|auto_generated|divider|divider|StageOut[33]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\);

-- Location: LCCOMB_X12_Y8_N16
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y8_N18
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y9_N16
\Mod0|auto_generated|divider|divider|StageOut[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\);

-- Location: LCCOMB_X12_Y9_N30
\Mod0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X12_Y9_N28
\Mod0|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (money(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X12_Y9_N0
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (money(1) & ((GND) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\))) # (!money(1) & (\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ $ (GND)))
-- \Add10~1\ = CARRY((money(1)) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X12_Y9_N2
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((money(2) & (!\Add10~1\)) # (!money(2) & ((\Add10~1\) # (GND))))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((money(2) & (\Add10~1\ & VCC)) # 
-- (!money(2) & (!\Add10~1\))))
-- \Add10~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((!\Add10~1\) # (!money(2)))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!money(2) & !\Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datab => money(2),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X12_Y9_N4
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = ((money(3) $ (\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ $ (\Add10~3\)))) # (GND)
-- \Add10~5\ = CARRY((money(3) & ((!\Add10~3\) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\))) # (!money(3) & (!\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X12_Y9_N6
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (money(4) & (\Add10~5\ & VCC)) # (!money(4) & (!\Add10~5\))
-- \Add10~7\ = CARRY((!money(4) & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(4),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X12_Y9_N8
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (money(5) & ((GND) # (!\Add10~7\))) # (!money(5) & (\Add10~7\ $ (GND)))
-- \Add10~9\ = CARRY((money(5)) # (!\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(5),
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X12_Y9_N10
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (money(6) & (\Add10~9\ & VCC)) # (!money(6) & (!\Add10~9\))
-- \Add10~11\ = CARRY((!money(6) & !\Add10~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(6),
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X12_Y9_N12
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (money(7) & ((GND) # (!\Add10~11\))) # (!money(7) & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((money(7)) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(7),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X12_Y9_N14
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = \Add10~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add10~13\,
	combout => \Add10~14_combout\);

-- Location: LCCOMB_X12_Y9_N20
\Div0|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\Add10~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~14_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X12_Y9_N22
\Div0|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~2_combout\ = !\Div0|auto_generated|divider|divider|op_16~1_cout\
-- \Div0|auto_generated|divider|divider|op_16~3\ = CARRY(!\Div0|auto_generated|divider|divider|op_16~1_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~1_cout\,
	combout => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X12_Y9_N24
\Div0|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~4_combout\ = (\Add10~14_combout\ & (!\Div0|auto_generated|divider|divider|op_16~3\ & VCC)) # (!\Add10~14_combout\ & (\Div0|auto_generated|divider|divider|op_16~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_16~5\ = CARRY((!\Add10~14_combout\ & !\Div0|auto_generated|divider|divider|op_16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~3\,
	combout => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X12_Y9_N26
\Div0|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~6_combout\ = !\Div0|auto_generated|divider|divider|op_16~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_16~5\,
	combout => \Div0|auto_generated|divider|divider|op_16~6_combout\);

-- Location: LCCOMB_X13_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[121]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ = (\Div0|auto_generated|divider|divider|op_16~6_combout\ & !\Add10~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Add10~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\);

-- Location: LCCOMB_X12_Y9_N18
\Div0|auto_generated|divider|divider|StageOut[123]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ = (!\Div0|auto_generated|divider|divider|op_16~6_combout\ & \Div0|auto_generated|divider|divider|op_16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[123]~51_combout\);

-- Location: LCCOMB_X11_Y9_N24
\Div0|auto_generated|divider|divider|StageOut[121]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ = (\Add10~14_combout\ & !\Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\);

-- Location: LCCOMB_X14_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[120]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\ = (\Add10~12_combout\ & !\Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\);

-- Location: LCCOMB_X11_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[120]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\ = (\Add10~12_combout\ & \Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~12_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\);

-- Location: LCCOMB_X13_Y9_N6
\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[120]~54_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~53_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[120]~54_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\);

-- Location: LCCOMB_X13_Y9_N8
\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X13_Y9_N10
\Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & (!\Div0|auto_generated|divider|divider|op_16~6_combout\ & (\Div0|auto_generated|divider|divider|op_16~2_combout\ 
-- & VCC))) # (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((((!\Div0|auto_generated|divider|divider|op_16~6_combout\ & \Div0|auto_generated|divider|divider|op_16~2_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|op_16~6_combout\ & (\Div0|auto_generated|divider|divider|op_16~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datab => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\);

-- Location: LCCOMB_X13_Y9_N12
\Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[123]~51_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y9_N14
\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y9_N26
\Div0|auto_generated|divider|divider|StageOut[127]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|op_16~6_combout\ $ (\Add10~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Add10~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\);

-- Location: LCCOMB_X13_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[127]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~58_combout\);

-- Location: LCCOMB_X14_Y9_N4
\Div0|auto_generated|divider|divider|StageOut[126]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ = (\Add10~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\);

-- Location: LCCOMB_X13_Y9_N2
\Div0|auto_generated|divider|divider|StageOut[126]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\);

-- Location: LCCOMB_X14_Y9_N6
\Div0|auto_generated|divider|divider|StageOut[125]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\ = (\Add10~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\);

-- Location: LCCOMB_X14_Y9_N0
\Div0|auto_generated|divider|divider|StageOut[125]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\ = (\Add10~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\);

-- Location: LCCOMB_X13_Y9_N16
\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[125]~61_combout\) # (\Div0|auto_generated|divider|divider|StageOut[125]~62_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[125]~61_combout\) # (\Div0|auto_generated|divider|divider|StageOut[125]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X13_Y9_N18
\Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[126]~59_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[126]~60_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[126]~60_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[126]~60_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X13_Y9_N20
\Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~58_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~58_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[127]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X13_Y9_N30
\Div0|auto_generated|divider|divider|StageOut[128]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ = (!\Div0|auto_generated|divider|divider|op_16~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|op_16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\);

-- Location: LCCOMB_X13_Y9_N28
\Div0|auto_generated|divider|divider|StageOut[128]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\);

-- Location: LCCOMB_X13_Y9_N22
\Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y9_N24
\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[133]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\);

-- Location: LCCOMB_X13_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[133]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\);

-- Location: LCCOMB_X13_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[132]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Add10~12_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datab => \Add10~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\);

-- Location: LCCOMB_X13_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[132]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\);

-- Location: LCCOMB_X13_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[131]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\);

-- Location: LCCOMB_X13_Y10_N18
\Div0|auto_generated|divider|divider|StageOut[131]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\ = (\Add10~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\);

-- Location: LCCOMB_X13_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[130]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\ = (\Add10~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\);

-- Location: LCCOMB_X13_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[130]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ = (\Add10~8_combout\ & !\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\);

-- Location: LCCOMB_X13_Y10_N0
\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[130]~67_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~68_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~67_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X13_Y10_N2
\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[131]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[131]~65_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[131]~65_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[131]~65_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X13_Y10_N4
\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X13_Y10_N6
\Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\);

-- Location: LCCOMB_X13_Y10_N16
\Div0|auto_generated|divider|divider|StageOut[137]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~70_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~70_combout\);

-- Location: LCCOMB_X14_Y10_N16
\Div0|auto_generated|divider|divider|StageOut[137]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Add10~10_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datac => \Add10~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\);

-- Location: LCCOMB_X13_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[136]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\);

-- Location: LCCOMB_X14_Y10_N20
\Div0|auto_generated|divider|divider|StageOut[136]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ = (\Add10~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\);

-- Location: LCCOMB_X14_Y10_N30
\Div0|auto_generated|divider|divider|StageOut[135]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\ = (\Add10~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\);

-- Location: LCCOMB_X14_Y10_N28
\Div0|auto_generated|divider|divider|StageOut[135]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\ = (\Add10~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\);

-- Location: LCCOMB_X14_Y10_N2
\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[135]~74_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~73_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[135]~74_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X14_Y10_N4
\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X14_Y10_N6
\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~70_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X13_Y10_N10
\Div0|auto_generated|divider|divider|StageOut[138]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\);

-- Location: LCCOMB_X14_Y10_N0
\Div0|auto_generated|divider|divider|StageOut[138]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\);

-- Location: LCCOMB_X14_Y10_N8
\Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[138]~69_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y10_N10
\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y10_N24
\Div0|auto_generated|divider|divider|StageOut[143]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\);

-- Location: LCCOMB_X14_Y12_N16
\Div0|auto_generated|divider|divider|StageOut[143]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\);

-- Location: LCCOMB_X14_Y10_N14
\Div0|auto_generated|divider|divider|StageOut[142]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Add10~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Add10~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\);

-- Location: LCCOMB_X14_Y10_N22
\Div0|auto_generated|divider|divider|StageOut[142]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\);

-- Location: LCCOMB_X14_Y10_N12
\Div0|auto_generated|divider|divider|StageOut[141]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ = (\Add10~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\);

-- Location: LCCOMB_X14_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[141]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\);

-- Location: LCCOMB_X14_Y12_N26
\Div0|auto_generated|divider|divider|StageOut[140]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\ = (\Add10~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\);

-- Location: LCCOMB_X14_Y10_N18
\Div0|auto_generated|divider|divider|StageOut[140]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ = (\Add10~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\);

-- Location: LCCOMB_X14_Y12_N4
\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[140]~79_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~80_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[140]~79_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X14_Y12_N6
\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[141]~77_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[141]~78_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[141]~78_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~78_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X14_Y12_N8
\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X14_Y12_N10
\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y12_N12
\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\);

-- Location: LCCOMB_X12_Y12_N6
\digitBuf2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[2]~12_combout\ = !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \digitBuf2[2]~12_combout\);

-- Location: FF_X12_Y12_N7
\digitBuf2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digitBuf2[2]~12_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(2));

-- Location: LCCOMB_X18_Y12_N26
\digit2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[2]~2_combout\ = (!procent(7) & (procent(2) & (!procent(0) & !procent(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datab => procent(2),
	datac => procent(0),
	datad => procent(1),
	combout => \digit2[2]~2_combout\);

-- Location: LCCOMB_X18_Y12_N2
\digit2[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[2]~1_combout\ = (procent(6) & procent(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datac => procent(5),
	combout => \digit2[2]~1_combout\);

-- Location: LCCOMB_X18_Y12_N16
\digit2[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[2]~3_combout\ = (\digit2[2]~2_combout\ & (\stateCoffeeMachine.Implementation~q\ & (\digit2[2]~0_combout\ & \digit2[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[2]~2_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \digit2[2]~0_combout\,
	datad => \digit2[2]~1_combout\,
	combout => \digit2[2]~3_combout\);

-- Location: LCCOMB_X19_Y13_N22
\Div1|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\Add11~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X19_Y13_N24
\Div1|auto_generated|divider|divider|op_16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~2_combout\ = !\Div1|auto_generated|divider|divider|op_16~1_cout\
-- \Div1|auto_generated|divider|divider|op_16~3\ = CARRY(!\Div1|auto_generated|divider|divider|op_16~1_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_16~1_cout\,
	combout => \Div1|auto_generated|divider|divider|op_16~2_combout\,
	cout => \Div1|auto_generated|divider|divider|op_16~3\);

-- Location: LCCOMB_X19_Y13_N26
\Div1|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~4_combout\ = (\Add11~14_combout\ & (!\Div1|auto_generated|divider|divider|op_16~3\ & VCC)) # (!\Add11~14_combout\ & (\Div1|auto_generated|divider|divider|op_16~3\ $ (GND)))
-- \Div1|auto_generated|divider|divider|op_16~5\ = CARRY((!\Add11~14_combout\ & !\Div1|auto_generated|divider|divider|op_16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_16~3\,
	combout => \Div1|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X19_Y13_N28
\Div1|auto_generated|divider|divider|op_16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~6_combout\ = !\Div1|auto_generated|divider|divider|op_16~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|op_16~5\,
	combout => \Div1|auto_generated|divider|divider|op_16~6_combout\);

-- Location: LCCOMB_X19_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[121]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ = (\Add11~14_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\);

-- Location: LCCOMB_X18_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[121]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ = (!\Add11~14_combout\ & \Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\);

-- Location: LCCOMB_X19_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[120]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\ = (\Add11~12_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~12_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\);

-- Location: LCCOMB_X19_Y13_N0
\Div1|auto_generated|divider|divider|StageOut[120]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\ = (\Add11~12_combout\ & \Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~12_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\);

-- Location: LCCOMB_X18_Y13_N16
\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[120]~54_combout\) # (\Div1|auto_generated|divider|divider|StageOut[120]~53_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[120]~54_combout\) # (\Div1|auto_generated|divider|divider|StageOut[120]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\);

-- Location: LCCOMB_X18_Y13_N18
\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X18_Y13_N20
\Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & (\Div1|auto_generated|divider|divider|op_16~2_combout\ & (!\Div1|auto_generated|divider|divider|op_16~6_combout\ 
-- & VCC))) # (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|op_16~2_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ = CARRY((\Div1|auto_generated|divider|divider|op_16~2_combout\ & (!\Div1|auto_generated|divider|divider|op_16~6_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_16~2_combout\,
	datab => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\);

-- Location: LCCOMB_X18_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[123]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\ = (!\Div1|auto_generated|divider|divider|op_16~6_combout\ & \Div1|auto_generated|divider|divider|op_16~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\);

-- Location: LCCOMB_X18_Y13_N22
\Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[123]~51_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y13_N24
\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y13_N28
\Div1|auto_generated|divider|divider|StageOut[128]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[128]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ = (\Div1|auto_generated|divider|divider|op_16~2_combout\ & (!\Div1|auto_generated|divider|divider|op_16~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_16~2_combout\,
	datac => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\);

-- Location: LCCOMB_X18_Y13_N26
\Div1|auto_generated|divider|divider|StageOut[127]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Div1|auto_generated|divider|divider|StageOut[127]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Add11~14_combout\ $ (\Div1|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~14_combout\,
	datac => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\);

-- Location: LCCOMB_X18_Y13_N2
\Div1|auto_generated|divider|divider|StageOut[126]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\);

-- Location: LCCOMB_X18_Y13_N12
\Div1|auto_generated|divider|divider|StageOut[126]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ = (\Add11~12_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~12_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\);

-- Location: LCCOMB_X18_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[125]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\ = (\Add11~10_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Div1|auto_generated|divider|divider|StageOut[125]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\ = (\Add11~10_combout\ & !\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[125]~61_combout\) # (\Div1|auto_generated|divider|divider|StageOut[125]~62_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[125]~61_combout\) # (\Div1|auto_generated|divider|divider|StageOut[125]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\);

-- Location: LCCOMB_X19_Y14_N20
\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X19_Y14_N22
\Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[127]~58_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[127]~57_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[127]~58_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[127]~57_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[127]~58_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[127]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\);

-- Location: LCCOMB_X19_Y14_N24
\Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\);

-- Location: LCCOMB_X19_Y14_N26
\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Div1|auto_generated|divider|divider|StageOut[131]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add11~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\);

-- Location: LCCOMB_X19_Y14_N12
\Div1|auto_generated|divider|divider|StageOut[131]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\);

-- Location: LCCOMB_X19_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[130]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add11~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Div1|auto_generated|divider|divider|StageOut[130]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add11~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[130]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[130]~68_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[130]~67_combout\) # (\Div1|auto_generated|divider|divider|StageOut[130]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X18_Y14_N8
\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X19_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[133]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\);

-- Location: LCCOMB_X19_Y14_N28
\Div1|auto_generated|divider|divider|StageOut[133]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\);

-- Location: LCCOMB_X19_Y14_N4
\Div1|auto_generated|divider|divider|StageOut[132]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[132]~64_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[132]~64_combout\);

-- Location: LCCOMB_X18_Y13_N14
\Div1|auto_generated|divider|divider|StageOut[132]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & ((\Add11~12_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datab => \Add11~12_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[132]~98_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[132]~98_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[132]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[132]~64_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X18_Y14_N12
\Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[133]~63_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[133]~93_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y14_N14
\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Div1|auto_generated|divider|divider|StageOut[137]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\);

-- Location: LCCOMB_X19_Y14_N10
\Div1|auto_generated|divider|divider|StageOut[137]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & (\Add11~10_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\);

-- Location: LCCOMB_X17_Y14_N12
\Div1|auto_generated|divider|divider|StageOut[136]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add11~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\);

-- Location: LCCOMB_X18_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[136]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[136]~72_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[136]~72_combout\);

-- Location: LCCOMB_X17_Y14_N14
\Div1|auto_generated|divider|divider|StageOut[135]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\ = (\Add11~6_combout\ & !\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\);

-- Location: LCCOMB_X18_Y14_N0
\Div1|auto_generated|divider|divider|StageOut[135]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add11~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[135]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[135]~73_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[135]~74_combout\) # (\Div1|auto_generated|divider|divider|StageOut[135]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X18_Y14_N22
\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[136]~71_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[136]~72_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[136]~72_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[136]~72_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[136]~72_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X18_Y14_N24
\Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X18_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[138]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\);

-- Location: LCCOMB_X18_Y14_N4
\Div1|auto_generated|divider|divider|StageOut[138]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

-- Location: LCCOMB_X18_Y14_N28
\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[143]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\);

-- Location: LCCOMB_X21_Y14_N4
\Div1|auto_generated|divider|divider|StageOut[143]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\);

-- Location: LCCOMB_X21_Y14_N28
\Div1|auto_generated|divider|divider|StageOut[142]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\);

-- Location: LCCOMB_X21_Y14_N0
\Div1|auto_generated|divider|divider|StageOut[142]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Add11~8_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Div1|auto_generated|divider|divider|StageOut[141]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ = (\Add11~6_combout\ & \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~6_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\);

-- Location: LCCOMB_X21_Y14_N24
\Div1|auto_generated|divider|divider|StageOut[141]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\);

-- Location: LCCOMB_X21_Y14_N22
\Div1|auto_generated|divider|divider|StageOut[140]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\ = (\Add11~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\);

-- Location: LCCOMB_X21_Y14_N20
\Div1|auto_generated|divider|divider|StageOut[140]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\ = (\Add11~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\);

-- Location: LCCOMB_X21_Y14_N6
\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[140]~80_combout\) # (\Div1|auto_generated|divider|divider|StageOut[140]~79_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[140]~80_combout\) # (\Div1|auto_generated|divider|divider|StageOut[140]~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X21_Y14_N8
\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[141]~77_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[141]~78_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[141]~78_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[141]~78_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X21_Y14_N10
\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X21_Y14_N12
\Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[143]~75_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[143]~95_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y14_N14
\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y11_N26
\Selector97~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~0_combout\ = (!\digit2[2]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => digitBuf2(2),
	datac => \digit2[2]~3_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Selector97~0_combout\);

-- Location: LCCOMB_X21_Y11_N22
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\stateCoffeeMachine.Payment~q\) # (\stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \WideOr11~0_combout\);

-- Location: FF_X21_Y11_N27
\digit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(2));

-- Location: LCCOMB_X14_Y12_N24
\Div0|auto_generated|divider|divider|StageOut[147]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Add10~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datab => \Add10~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Div0|auto_generated|divider|divider|StageOut[148]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\);

-- Location: LCCOMB_X14_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[148]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\);

-- Location: LCCOMB_X12_Y12_N16
\Div0|auto_generated|divider|divider|StageOut[147]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\);

-- Location: LCCOMB_X14_Y12_N20
\Div0|auto_generated|divider|divider|StageOut[146]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ = (\Add10~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\);

-- Location: LCCOMB_X14_Y12_N22
\Div0|auto_generated|divider|divider|StageOut[146]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Div0|auto_generated|divider|divider|StageOut[145]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\ = (\Add10~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\);

-- Location: LCCOMB_X14_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[145]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\ = (\Add10~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add10~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\);

-- Location: LCCOMB_X13_Y12_N18
\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[145]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~85_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[145]~86_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X13_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X13_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X13_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[148]~81_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y12_N26
\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\);

-- Location: LCCOMB_X14_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[153]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\);

-- Location: LCCOMB_X13_Y12_N4
\Div0|auto_generated|divider|divider|StageOut[153]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\);

-- Location: LCCOMB_X14_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[152]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (\Add10~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\);

-- Location: LCCOMB_X13_Y12_N2
\Div0|auto_generated|divider|divider|StageOut[152]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\);

-- Location: LCCOMB_X13_Y12_N28
\Div0|auto_generated|divider|divider|StageOut[151]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ = (\Add10~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\);

-- Location: LCCOMB_X13_Y12_N0
\Div0|auto_generated|divider|divider|StageOut[151]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\);

-- Location: LCCOMB_X13_Y12_N30
\Div0|auto_generated|divider|divider|StageOut[150]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\ = (\Add10~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\);

-- Location: LCCOMB_X13_Y12_N16
\Div0|auto_generated|divider|divider|StageOut[150]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\ = (\Add10~0_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\);

-- Location: LCCOMB_X13_Y12_N6
\digitBuf2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~2_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[150]~92_combout\) # (\Div0|auto_generated|divider|divider|StageOut[150]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\,
	datad => VCC,
	cout => \digitBuf2[0]~2_cout\);

-- Location: LCCOMB_X13_Y12_N8
\digitBuf2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ & !\digitBuf2[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\,
	datad => VCC,
	cin => \digitBuf2[0]~2_cout\,
	cout => \digitBuf2[0]~4_cout\);

-- Location: LCCOMB_X13_Y12_N10
\digitBuf2[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~6_cout\ = CARRY((!\digitBuf2[0]~4_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[152]~102_combout\) # (\Div0|auto_generated|divider|divider|StageOut[152]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\,
	datad => VCC,
	cin => \digitBuf2[0]~4_cout\,
	cout => \digitBuf2[0]~6_cout\);

-- Location: LCCOMB_X13_Y12_N12
\digitBuf2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ & !\digitBuf2[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\,
	datad => VCC,
	cin => \digitBuf2[0]~6_cout\,
	cout => \digitBuf2[0]~8_cout\);

-- Location: LCCOMB_X13_Y12_N14
\digitBuf2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~9_combout\ = !\digitBuf2[0]~8_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \digitBuf2[0]~8_cout\,
	combout => \digitBuf2[0]~9_combout\);

-- Location: FF_X13_Y12_N15
\digitBuf2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digitBuf2[0]~9_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(0));

-- Location: LCCOMB_X22_Y14_N12
\Div1|auto_generated|divider|divider|StageOut[147]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[147]~82_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[147]~82_combout\);

-- Location: LCCOMB_X21_Y14_N18
\Div1|auto_generated|divider|divider|StageOut[147]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Add11~6_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datab => \Add11~6_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\);

-- Location: LCCOMB_X21_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[146]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Div1|auto_generated|divider|divider|StageOut[146]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ = (\Add11~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\);

-- Location: LCCOMB_X23_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[145]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\ = (\Add11~2_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\);

-- Location: LCCOMB_X23_Y14_N0
\Div1|auto_generated|divider|divider|StageOut[145]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\ = (\Add11~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[145]~85_combout\) # (\Div1|auto_generated|divider|divider|StageOut[145]~86_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[145]~85_combout\) # (\Div1|auto_generated|divider|divider|StageOut[145]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X22_Y14_N2
\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X22_Y14_N4
\Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[147]~101_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[147]~101_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[147]~82_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[147]~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[147]~82_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X21_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[148]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\);

-- Location: LCCOMB_X21_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[148]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\);

-- Location: LCCOMB_X22_Y14_N6
\Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[148]~81_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[148]~96_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y14_N8
\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[153]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Div1|auto_generated|divider|divider|StageOut[153]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\);

-- Location: LCCOMB_X23_Y14_N20
\Div1|auto_generated|divider|divider|StageOut[152]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (\Add11~4_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datab => \Add11~4_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\);

-- Location: LCCOMB_X22_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[152]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[152]~88_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[152]~88_combout\);

-- Location: LCCOMB_X23_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[151]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ = (\Add11~2_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Div1|auto_generated|divider|divider|StageOut[151]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\);

-- Location: LCCOMB_X23_Y14_N6
\Div1|auto_generated|divider|divider|StageOut[150]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\ = (\Add11~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\);

-- Location: LCCOMB_X23_Y14_N12
\Div1|auto_generated|divider|divider|StageOut[150]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\ = (\Add11~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add11~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[150]~92_combout\) # (\Div1|auto_generated|divider|divider|StageOut[150]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X22_Y14_N22
\Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[151]~90_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X22_Y14_N24
\Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[152]~102_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[152]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[152]~88_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X22_Y14_N26
\Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[153]~87_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y14_N28
\Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ = \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y14_N10
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((!\digit2[2]~3_combout\ & !\Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\)))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => digitBuf2(0),
	datac => \digit2[2]~3_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	combout => \Selector99~0_combout\);

-- Location: FF_X22_Y14_N11
\digit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector99~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(0));

-- Location: LCCOMB_X14_Y11_N28
\digitBuf2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[3]~13_combout\ = !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \digitBuf2[3]~13_combout\);

-- Location: FF_X14_Y11_N29
\digitBuf2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digitBuf2[3]~13_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(3));

-- Location: LCCOMB_X18_Y11_N0
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (!\digit2[2]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[2]~3_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf2(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Selector96~0_combout\);

-- Location: FF_X18_Y11_N1
\digit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(3));

-- Location: LCCOMB_X12_Y12_N20
\digitBuf2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[1]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \digitBuf2[1]~11_combout\);

-- Location: FF_X12_Y12_N21
\digitBuf2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digitBuf2[1]~11_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf2(1));

-- Location: LCCOMB_X23_Y14_N10
\Selector98~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~0_combout\ = (!\digit2[2]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \digit2[2]~3_combout\,
	datac => digitBuf2(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Selector98~0_combout\);

-- Location: FF_X23_Y14_N11
\digit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(1));

-- Location: LCCOMB_X21_Y11_N8
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (digit2(2) & (!digit2(3) & ((!digit2(1)) # (!digit2(0))))) # (!digit2(2) & ((digit2(3) $ (digit2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(3),
	datad => digit2(1),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((!\stateCoffeeMachine.Selection~q\ & ((!\WideOr8~0_combout\) # (!\stateCoffeeMachine.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => \Selector87~0_combout\,
	datad => \WideOr8~0_combout\,
	combout => \Selector87~1_combout\);

-- Location: FF_X18_Y11_N17
\bufferForIndicator2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector87~1_combout\,
	sclr => \stateCoffeeMachine.Unsuccessful~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(0));

-- Location: FF_X12_Y9_N17
\digitBuf3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(3));

-- Location: LCCOMB_X18_Y11_N22
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(3),
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector92~0_combout\);

-- Location: FF_X18_Y11_N23
\digit3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector92~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(3));

-- Location: FF_X12_Y9_N29
\digitBuf3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(1));

-- Location: LCCOMB_X18_Y12_N14
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\)) # (!\stateCoffeeMachine.Implementation~q\ & ((digitBuf3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datab => digitBuf3(1),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector94~0_combout\);

-- Location: FF_X18_Y12_N15
\digit3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector94~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(1));

-- Location: FF_X12_Y9_N31
\digitBuf3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(2));

-- Location: LCCOMB_X18_Y11_N8
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(2),
	datac => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector93~0_combout\);

-- Location: FF_X18_Y11_N9
\digit3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(2));

-- Location: FF_X14_Y7_N15
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
	ena => \stateCoffeeMachine.Payment~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digitBuf3(0));

-- Location: LCCOMB_X18_Y11_N6
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (procent(0))) # (!\stateCoffeeMachine.Implementation~q\ & ((digitBuf3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(0),
	datac => digitBuf3(0),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector95~0_combout\);

-- Location: FF_X18_Y11_N7
\digit3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(0));

-- Location: LCCOMB_X18_Y11_N24
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (digit3(1) & (!digit3(3) & ((!digit3(0)) # (!digit3(2))))) # (!digit3(1) & (digit3(3) $ ((digit3(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(1),
	datac => digit3(2),
	datad => digit3(0),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X19_Y11_N24
\Selector91~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~2_combout\ = ((!\WideOr7~0_combout\ & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\)))) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \WideOr7~0_combout\,
	combout => \Selector91~2_combout\);

-- Location: FF_X19_Y11_N25
\bufferForIndicator3[0]\ : dffeas
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
	q => bufferForIndicator3(0));

-- Location: LCCOMB_X19_Y11_N8
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & (((bufferForIndicator3(0))) # (!indicator(1)))) # (!\Mux3~0_combout\ & (indicator(1) & (bufferForIndicator2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => indicator(1),
	datac => bufferForIndicator2(0),
	datad => bufferForIndicator3(0),
	combout => \Mux3~1_combout\);

-- Location: FF_X19_Y11_N9
\led5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[0]~reg0_q\);

-- Location: LCCOMB_X17_Y12_N30
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (procent(4)) # ((procent(3) & ((procent(2)) # (procent(1)))))

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
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (procent(7)) # ((procent(5)) # ((procent(6)) # (\LessThan13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datab => procent(5),
	datac => procent(6),
	datad => \LessThan13~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X21_Y11_N14
\Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((\stateCoffeeMachine.Payment~q\ & !\LessThan12~1_combout\)) # (!\LessThan13~1_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (\stateCoffeeMachine.Payment~q\ & 
-- (!\LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \LessThan12~1_combout\,
	datad => \LessThan13~1_combout\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X21_Y11_N0
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\WideOr11~0_combout\ & ((digit2(2) & (digit2(0) & digit2(1))) # (!digit2(2) & ((digit2(0)) # (digit2(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => \WideOr11~0_combout\,
	datac => digit2(0),
	datad => digit2(1),
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (!digit2(3) & ((\Selector86~0_combout\) # ((!digit2(2) & \Selector86~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => \Selector86~1_combout\,
	datac => digit2(3),
	datad => \Selector86~0_combout\,
	combout => \Selector86~2_combout\);

-- Location: LCCOMB_X19_Y11_N30
\Selector86~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~3_combout\ = (\Selector86~2_combout\) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datad => \Selector86~2_combout\,
	combout => \Selector86~3_combout\);

-- Location: FF_X19_Y11_N31
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

-- Location: LCCOMB_X18_Y11_N14
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (!digit3(3) & ((digit3(1) & ((digit3(0)) # (!digit3(2)))) # (!digit3(1) & (!digit3(2) & digit3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(1),
	datac => digit3(2),
	datad => digit3(0),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\Selector90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~2_combout\ = ((\WideOr6~0_combout\ & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\)))) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \WideOr6~0_combout\,
	combout => \Selector90~2_combout\);

-- Location: FF_X19_Y11_N29
\bufferForIndicator3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector90~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(1));

-- Location: LCCOMB_X19_Y11_N10
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (!\stateCoffeeMachine.Payment~q\ & \stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datad => \stateCoffeeMachine.000~q\,
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X25_Y11_N18
\Selector82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (digit1(1) & (!digit1(3) & ((digit1(0)) # (!digit1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X18_Y12_N4
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (procent(7)) # ((\digit2[2]~1_combout\ & ((procent(2)) # (!\digit2[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datab => procent(2),
	datac => \digit2[2]~0_combout\,
	datad => \digit2[2]~1_combout\,
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X25_Y11_N14
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (!digit1(2) & !digit1(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit1(2),
	datad => digit1(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X25_Y11_N24
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (!digit1(3) & ((digit1(0)) # (!\LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~0_combout\,
	datab => digit1(0),
	datac => \Mux14~0_combout\,
	datad => digit1(3),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X19_Y11_N12
\Selector82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = ((\stateCoffeeMachine.Implementation~q\ & ((\Selector82~0_combout\) # (\Mux14~1_combout\)))) # (!\Selector80~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~0_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Selector82~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Selector82~1_combout\);

-- Location: FF_X19_Y11_N13
\bufferForIndicator1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector82~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(1));

-- Location: LCCOMB_X19_Y11_N22
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (indicator(1) & (((indicator(0))))) # (!indicator(1) & ((indicator(0) & (bufferForIndicator1(1))) # (!indicator(0) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(1),
	datab => indicator(1),
	datac => bufferForIndicator0(0),
	datad => indicator(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N14
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((bufferForIndicator3(1)) # (!indicator(1))))) # (!\Mux2~0_combout\ & (bufferForIndicator2(1) & ((indicator(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(1),
	datab => bufferForIndicator3(1),
	datac => \Mux2~0_combout\,
	datad => indicator(1),
	combout => \Mux2~1_combout\);

-- Location: FF_X19_Y11_N15
\led5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[1]~reg0_q\);

-- Location: LCCOMB_X25_Y11_N12
\Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~2_combout\ = (digit1(0)) # ((!digit1(1) & ((digit1(2)) # (!\LessThan14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => \LessThan14~0_combout\,
	combout => \Selector81~2_combout\);

-- Location: LCCOMB_X25_Y11_N26
\Selector81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~3_combout\ = (\Selector81~2_combout\ & (((\Mux14~0_combout\ & digit1(0))) # (!digit1(3)))) # (!\Selector81~2_combout\ & (((\Mux14~0_combout\ & digit1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector81~2_combout\,
	datab => digit1(3),
	datac => \Mux14~0_combout\,
	datad => digit1(0),
	combout => \Selector81~3_combout\);

-- Location: LCCOMB_X19_Y11_N2
\Selector81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~4_combout\ = ((\stateCoffeeMachine.Payment~q\) # ((\stateCoffeeMachine.Implementation~q\ & \Selector81~3_combout\))) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Selector81~3_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector81~4_combout\);

-- Location: FF_X19_Y11_N3
\bufferForIndicator1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector81~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(2));

-- Location: LCCOMB_X18_Y11_N4
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (digit3(1) & (!digit3(3) & ((digit3(0))))) # (!digit3(1) & ((digit3(2) & (!digit3(3))) # (!digit3(2) & ((digit3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(1),
	datac => digit3(2),
	datad => digit3(0),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = ((\stateCoffeeMachine.Unsuccessful~q\) # ((\WideOr5~0_combout\ & \WideOr11~0_combout\))) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \WideOr5~0_combout\,
	datad => \WideOr11~0_combout\,
	combout => \Selector89~0_combout\);

-- Location: FF_X18_Y11_N3
\bufferForIndicator3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector89~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(2));

-- Location: LCCOMB_X21_Y11_N6
\Selector85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~3_combout\ = (digit2(0) & (((!digit2(2) & !digit2(1))) # (!digit2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(3),
	datad => digit2(1),
	combout => \Selector85~3_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\LessThan12~1_combout\ & (((\stateCoffeeMachine.Payment~q\) # (\LessThan13~1_combout\)))) # (!\LessThan12~1_combout\ & (\stateCoffeeMachine.Implementation~q\ & ((\LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \LessThan12~1_combout\,
	datad => \LessThan13~1_combout\,
	combout => \Selector85~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~2_combout\ = (!digit2(3) & (!digit2(1) & ((digit2(2)) # (!\Selector85~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~1_combout\,
	datab => digit2(3),
	datac => digit2(2),
	datad => digit2(1),
	combout => \Selector85~2_combout\);

-- Location: LCCOMB_X17_Y11_N20
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = ((!selectionDrink(1) & !selectionDrink(0))) # (!\stateCoffeeMachine.Selection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X21_Y11_N2
\Selector85~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~4_combout\ = (\Selector85~0_combout\ & ((\Selector85~3_combout\) # ((\Selector85~2_combout\) # (!\WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~3_combout\,
	datab => \Selector85~2_combout\,
	datac => \Selector85~0_combout\,
	datad => \WideOr11~0_combout\,
	combout => \Selector85~4_combout\);

-- Location: FF_X21_Y11_N3
\bufferForIndicator2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector85~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(2));

-- Location: LCCOMB_X19_Y11_N0
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (indicator(1) & ((bufferForIndicator2(2)) # ((indicator(0))))) # (!indicator(1) & (((bufferForIndicator0(0) & !indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(2),
	datab => indicator(1),
	datac => bufferForIndicator0(0),
	datad => indicator(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((bufferForIndicator3(2)) # (!indicator(0))))) # (!\Mux1~0_combout\ & (bufferForIndicator1(2) & ((indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(2),
	datab => bufferForIndicator3(2),
	datac => \Mux1~0_combout\,
	datad => indicator(0),
	combout => \Mux1~1_combout\);

-- Location: FF_X18_Y11_N21
\led5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[2]~reg0_q\);

-- Location: LCCOMB_X25_Y11_N16
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (digit1(2) & (!digit1(3) & (digit1(1) $ (!digit1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(1),
	datab => digit1(0),
	datac => digit1(2),
	datad => digit1(3),
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X19_Y11_N6
\Selector80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = ((\stateCoffeeMachine.Implementation~q\ & ((\Selector80~1_combout\) # (\Mux14~1_combout\)))) # (!\Selector80~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~0_combout\,
	datab => \Selector80~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Mux14~1_combout\,
	combout => \Selector80~2_combout\);

-- Location: FF_X19_Y11_N7
\bufferForIndicator1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector80~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(3));

-- Location: LCCOMB_X19_Y11_N20
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (indicator(1) & (((indicator(0))))) # (!indicator(1) & ((indicator(0) & (bufferForIndicator1(3))) # (!indicator(0) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(3),
	datab => indicator(1),
	datac => bufferForIndicator0(0),
	datad => indicator(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\stateCoffeeMachine.Selection~q\ & ((!selectionDrink(0)) # (!selectionDrink(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(1),
	datac => selectionDrink(0),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!digit3(3) & ((digit3(1) & (digit3(2) & digit3(0))) # (!digit3(1) & (digit3(2) $ (digit3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(3),
	datab => digit3(1),
	datac => digit3(2),
	datad => digit3(0),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X18_Y11_N18
\Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\Selector88~0_combout\) # ((!\stateCoffeeMachine.Selection~q\ & ((\WideOr4~0_combout\) # (!\stateCoffeeMachine.000~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => \Selector88~0_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \WideOr4~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: FF_X18_Y11_N19
\bufferForIndicator3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector88~1_combout\,
	sclr => \stateCoffeeMachine.Unsuccessful~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(3));

-- Location: LCCOMB_X17_Y11_N18
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = ((selectionDrink(1) & \stateCoffeeMachine.Selection~q\)) # (!\stateCoffeeMachine.000~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.000~q\,
	datab => selectionDrink(1),
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector84~0_combout\);

-- Location: LCCOMB_X21_Y11_N16
\Selector84~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~3_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((digit2(2)) # ((digit2(0)) # (!\LessThan13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => \LessThan13~1_combout\,
	datac => digit2(0),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector84~3_combout\);

-- Location: LCCOMB_X21_Y11_N30
\Selector84~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~2_combout\ = (\stateCoffeeMachine.Payment~q\ & (((digit2(0)) # (digit2(2))) # (!\LessThan12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan12~1_combout\,
	datab => digit2(0),
	datac => digit2(2),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector84~2_combout\);

-- Location: LCCOMB_X21_Y11_N28
\Selector84~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~1_combout\ = (!digit2(3) & (digit2(1) $ (((!digit2(0)) # (!digit2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(0),
	datac => digit2(3),
	datad => digit2(1),
	combout => \Selector84~1_combout\);

-- Location: LCCOMB_X21_Y11_N12
\Selector84~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~4_combout\ = (\Selector84~0_combout\) # ((\Selector84~1_combout\ & ((\Selector84~3_combout\) # (\Selector84~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector84~0_combout\,
	datab => \Selector84~3_combout\,
	datac => \Selector84~2_combout\,
	datad => \Selector84~1_combout\,
	combout => \Selector84~4_combout\);

-- Location: FF_X21_Y11_N13
\bufferForIndicator2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector84~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(3));

-- Location: LCCOMB_X18_Y11_N26
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((bufferForIndicator3(3)) # ((!indicator(1))))) # (!\Mux0~0_combout\ & (((indicator(1) & bufferForIndicator2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => bufferForIndicator3(3),
	datac => indicator(1),
	datad => bufferForIndicator2(3),
	combout => \Mux0~1_combout\);

-- Location: FF_X18_Y11_N27
\led5[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[3]~reg0_q\);

-- Location: LCCOMB_X19_Y11_N16
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (indicator(0) & indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(0),
	datad => indicator(1),
	combout => \Decoder0~0_combout\);

-- Location: FF_X19_Y11_N17
\en[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[0]~reg0_q\);

-- Location: LCCOMB_X19_Y11_N18
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!indicator(0) & indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(0),
	datad => indicator(1),
	combout => \Decoder0~1_combout\);

-- Location: FF_X19_Y11_N19
\en[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[1]~reg0_q\);

-- Location: LCCOMB_X19_Y11_N4
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (indicator(0) & !indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(0),
	datad => indicator(1),
	combout => \Decoder0~2_combout\);

-- Location: FF_X19_Y11_N5
\en[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[2]~reg0_q\);

-- Location: LCCOMB_X18_Y11_N28
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!indicator(0) & !indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(0),
	datac => indicator(1),
	combout => \Decoder0~3_combout\);

-- Location: FF_X18_Y11_N29
\en[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \en[3]~reg0_q\);

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

ww_led5(7) <= \led5[7]~output_o\;

ww_en(0) <= \en[0]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(3) <= \en[3]~output_o\;
END structure;


