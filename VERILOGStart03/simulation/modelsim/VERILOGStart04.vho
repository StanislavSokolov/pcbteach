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

-- DATE "03/19/2024 14:29:30"

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
	buttonWaitingIN : IN std_logic;
	buttonLeftIN : IN std_logic;
	buttonRightIN : IN std_logic;
	buttonSelectionIN : IN std_logic;
	led1 : OUT std_logic_vector(3 DOWNTO 0);
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	en : OUT std_logic_vector(3 DOWNTO 0)
	);
END VERILOGStart04;

-- Design Ports Information
-- led1[0]	=>  Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[1]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[2]	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- led1[3]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
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
-- buttonWaitingIN	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonSelectionIN	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonLeftIN	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- buttonRightIN	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_buttonWaitingIN : std_logic;
SIGNAL ww_buttonLeftIN : std_logic;
SIGNAL ww_buttonRightIN : std_logic;
SIGNAL ww_buttonSelectionIN : std_logic;
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
SIGNAL \buttonSelectionIN~input_o\ : std_logic;
SIGNAL \countButtonSelectionIN[0]~8_combout\ : std_logic;
SIGNAL \latchButtonSelectionIN~0_combout\ : std_logic;
SIGNAL \latchButtonSelectionIN~q\ : std_logic;
SIGNAL \buttonSelection~0_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[2]~13\ : std_logic;
SIGNAL \countButtonSelectionIN[3]~14_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[3]~15\ : std_logic;
SIGNAL \countButtonSelectionIN[4]~16_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[4]~17\ : std_logic;
SIGNAL \countButtonSelectionIN[5]~18_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[5]~19\ : std_logic;
SIGNAL \countButtonSelectionIN[6]~20_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[6]~21\ : std_logic;
SIGNAL \countButtonSelectionIN[7]~22_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[0]~24_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[0]~9\ : std_logic;
SIGNAL \countButtonSelectionIN[1]~10_combout\ : std_logic;
SIGNAL \countButtonSelectionIN[1]~11\ : std_logic;
SIGNAL \countButtonSelectionIN[2]~12_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \buttonSelection~1_combout\ : std_logic;
SIGNAL \buttonSelection~2_combout\ : std_logic;
SIGNAL \buttonSelection~q\ : std_logic;
SIGNAL \buttonRightIN~input_o\ : std_logic;
SIGNAL \latchButtonRightIN~0_combout\ : std_logic;
SIGNAL \latchButtonRightIN~q\ : std_logic;
SIGNAL \countButtonRightIN[0]~8_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \buttonRight~2_combout\ : std_logic;
SIGNAL \countButtonRightIN[6]~22\ : std_logic;
SIGNAL \countButtonRightIN[7]~23_combout\ : std_logic;
SIGNAL \countButtonRightIN[4]~14_combout\ : std_logic;
SIGNAL \countButtonRightIN[0]~9\ : std_logic;
SIGNAL \countButtonRightIN[1]~10_combout\ : std_logic;
SIGNAL \countButtonRightIN[1]~11\ : std_logic;
SIGNAL \countButtonRightIN[2]~12_combout\ : std_logic;
SIGNAL \countButtonRightIN[2]~13\ : std_logic;
SIGNAL \countButtonRightIN[3]~15_combout\ : std_logic;
SIGNAL \countButtonRightIN[3]~16\ : std_logic;
SIGNAL \countButtonRightIN[4]~17_combout\ : std_logic;
SIGNAL \countButtonRightIN[4]~18\ : std_logic;
SIGNAL \countButtonRightIN[5]~19_combout\ : std_logic;
SIGNAL \countButtonRightIN[5]~20\ : std_logic;
SIGNAL \countButtonRightIN[6]~21_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \buttonRight~3_combout\ : std_logic;
SIGNAL \buttonRight~q\ : std_logic;
SIGNAL \buttonRightPrev~feeder_combout\ : std_logic;
SIGNAL \buttonRightPrev~q\ : std_logic;
SIGNAL \buttonLeftIN~input_o\ : std_logic;
SIGNAL \countButtonLeftIN[0]~8_combout\ : std_logic;
SIGNAL \countButtonLeftIN[3]~15\ : std_logic;
SIGNAL \countButtonLeftIN[4]~16_combout\ : std_logic;
SIGNAL \countButtonLeftIN[4]~17\ : std_logic;
SIGNAL \countButtonLeftIN[5]~18_combout\ : std_logic;
SIGNAL \countButtonLeftIN[5]~19\ : std_logic;
SIGNAL \countButtonLeftIN[6]~20_combout\ : std_logic;
SIGNAL \countButtonLeftIN[6]~21\ : std_logic;
SIGNAL \countButtonLeftIN[7]~22_combout\ : std_logic;
SIGNAL \latchButtonLeftIN~0_combout\ : std_logic;
SIGNAL \latchButtonLeftIN~q\ : std_logic;
SIGNAL \buttonLeft~0_combout\ : std_logic;
SIGNAL \countButtonLeftIN[0]~24_combout\ : std_logic;
SIGNAL \countButtonLeftIN[0]~9\ : std_logic;
SIGNAL \countButtonLeftIN[1]~10_combout\ : std_logic;
SIGNAL \countButtonLeftIN[1]~11\ : std_logic;
SIGNAL \countButtonLeftIN[2]~12_combout\ : std_logic;
SIGNAL \countButtonLeftIN[2]~13\ : std_logic;
SIGNAL \countButtonLeftIN[3]~14_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \buttonLeft~1_combout\ : std_logic;
SIGNAL \buttonLeft~2_combout\ : std_logic;
SIGNAL \buttonLeft~q\ : std_logic;
SIGNAL \buttonLeftPrev~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \buttonSelectionPrev~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \buttonWaitingIN~input_o\ : std_logic;
SIGNAL \latchButtonWaitingIN~q\ : std_logic;
SIGNAL \countButtonWaitingIN[0]~8_combout\ : std_logic;
SIGNAL \buttonWaiting~2_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[6]~22\ : std_logic;
SIGNAL \countButtonWaitingIN[7]~23_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[6]~14_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[0]~9\ : std_logic;
SIGNAL \countButtonWaitingIN[1]~10_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[1]~11\ : std_logic;
SIGNAL \countButtonWaitingIN[2]~12_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[2]~13\ : std_logic;
SIGNAL \countButtonWaitingIN[3]~15_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[3]~16\ : std_logic;
SIGNAL \countButtonWaitingIN[4]~17_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[4]~18\ : std_logic;
SIGNAL \countButtonWaitingIN[5]~19_combout\ : std_logic;
SIGNAL \countButtonWaitingIN[5]~20\ : std_logic;
SIGNAL \countButtonWaitingIN[6]~21_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \buttonWaiting~3_combout\ : std_logic;
SIGNAL \buttonWaiting~q\ : std_logic;
SIGNAL \buttonWaitingPrev~feeder_combout\ : std_logic;
SIGNAL \buttonWaitingPrev~q\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Payment~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector2~7_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \always8~0_combout\ : std_logic;
SIGNAL \selectionDrink~2_combout\ : std_logic;
SIGNAL \selectionDrink[0]~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Unsuccessful~q\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \Selector75~0_combout\ : std_logic;
SIGNAL \Add13~1\ : std_logic;
SIGNAL \Add13~2_combout\ : std_logic;
SIGNAL \Selector78~0_combout\ : std_logic;
SIGNAL \Add13~3\ : std_logic;
SIGNAL \Add13~4_combout\ : std_logic;
SIGNAL \Selector77~0_combout\ : std_logic;
SIGNAL \Add13~5\ : std_logic;
SIGNAL \Add13~6_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~8_combout\ : std_logic;
SIGNAL \Selector75~1_combout\ : std_logic;
SIGNAL \Add13~9\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Selector74~0_combout\ : std_logic;
SIGNAL \Add13~11\ : std_logic;
SIGNAL \Add13~12_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Add13~13\ : std_logic;
SIGNAL \Add13~14_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Add13~15\ : std_logic;
SIGNAL \Add13~16_combout\ : std_logic;
SIGNAL \Selector71~0_combout\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~18_combout\ : std_logic;
SIGNAL \Selector70~0_combout\ : std_logic;
SIGNAL \Add13~19\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Add13~21\ : std_logic;
SIGNAL \Add13~22_combout\ : std_logic;
SIGNAL \Selector68~0_combout\ : std_logic;
SIGNAL \Add13~23\ : std_logic;
SIGNAL \Add13~24_combout\ : std_logic;
SIGNAL \Selector67~0_combout\ : std_logic;
SIGNAL \Add13~25\ : std_logic;
SIGNAL \Add13~26_combout\ : std_logic;
SIGNAL \Selector66~0_combout\ : std_logic;
SIGNAL \LessThan15~2_combout\ : std_logic;
SIGNAL \Add13~27\ : std_logic;
SIGNAL \Add13~28_combout\ : std_logic;
SIGNAL \Selector65~0_combout\ : std_logic;
SIGNAL \Add13~29\ : std_logic;
SIGNAL \Add13~30_combout\ : std_logic;
SIGNAL \Selector64~0_combout\ : std_logic;
SIGNAL \Add13~31\ : std_logic;
SIGNAL \Add13~32_combout\ : std_logic;
SIGNAL \Selector63~0_combout\ : std_logic;
SIGNAL \Add13~33\ : std_logic;
SIGNAL \Add13~34_combout\ : std_logic;
SIGNAL \Selector62~0_combout\ : std_logic;
SIGNAL \LessThan15~1_combout\ : std_logic;
SIGNAL \Add13~35\ : std_logic;
SIGNAL \Add13~36_combout\ : std_logic;
SIGNAL \Selector61~0_combout\ : std_logic;
SIGNAL \LessThan15~3_combout\ : std_logic;
SIGNAL \Add13~37\ : std_logic;
SIGNAL \Add13~38_combout\ : std_logic;
SIGNAL \Selector60~0_combout\ : std_logic;
SIGNAL \Add13~39\ : std_logic;
SIGNAL \Add13~40_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Add13~41\ : std_logic;
SIGNAL \Add13~42_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \LessThan15~4_combout\ : std_logic;
SIGNAL \Add13~43\ : std_logic;
SIGNAL \Add13~44_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Add13~45\ : std_logic;
SIGNAL \Add13~46_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Add13~47\ : std_logic;
SIGNAL \Add13~48_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Add13~49\ : std_logic;
SIGNAL \Add13~50_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \LessThan15~0_combout\ : std_logic;
SIGNAL \Add13~51\ : std_logic;
SIGNAL \Add13~52_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Add13~53\ : std_logic;
SIGNAL \Add13~54_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \LessThan15~5_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Add13~55\ : std_logic;
SIGNAL \Add13~56_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~9_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \selectionDrink~3_combout\ : std_logic;
SIGNAL \selectionDrink[1]~1_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add9~26_combout\ : std_logic;
SIGNAL \always8~1_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~17_combout\ : std_logic;
SIGNAL \Add9~19_combout\ : std_logic;
SIGNAL \Add9~18\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~23_combout\ : std_logic;
SIGNAL \Add9~25_combout\ : std_logic;
SIGNAL \LessThan12~2_combout\ : std_logic;
SIGNAL \LessThan12~3_combout\ : std_logic;
SIGNAL \LessThan16~0_combout\ : std_logic;
SIGNAL \Add9~9_combout\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add9~11_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add9~13_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \LessThan16~1_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \LessThan11~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Add12~9\ : std_logic;
SIGNAL \Add12~10_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add12~11\ : std_logic;
SIGNAL \Add12~12_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add12~13\ : std_logic;
SIGNAL \Add12~14_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add11~78_combout\ : std_logic;
SIGNAL \Add11~19_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \Add11~77_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \Add11~76_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add11~75_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add11~74_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add11~73_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add11~72_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add11~71_combout\ : std_logic;
SIGNAL \Add11~15\ : std_logic;
SIGNAL \Add11~16_combout\ : std_logic;
SIGNAL \Add11~18_combout\ : std_logic;
SIGNAL \Add11~17\ : std_logic;
SIGNAL \Add11~20_combout\ : std_logic;
SIGNAL \Add11~22_combout\ : std_logic;
SIGNAL \Add11~21\ : std_logic;
SIGNAL \Add11~23_combout\ : std_logic;
SIGNAL \Add11~25_combout\ : std_logic;
SIGNAL \Add11~24\ : std_logic;
SIGNAL \Add11~26_combout\ : std_logic;
SIGNAL \Add11~28_combout\ : std_logic;
SIGNAL \Add11~27\ : std_logic;
SIGNAL \Add11~29_combout\ : std_logic;
SIGNAL \Add11~31_combout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~32_combout\ : std_logic;
SIGNAL \Add11~34_combout\ : std_logic;
SIGNAL \Add11~33\ : std_logic;
SIGNAL \Add11~35_combout\ : std_logic;
SIGNAL \Add11~37_combout\ : std_logic;
SIGNAL \Add11~36\ : std_logic;
SIGNAL \Add11~38_combout\ : std_logic;
SIGNAL \Add11~40_combout\ : std_logic;
SIGNAL \Add11~39\ : std_logic;
SIGNAL \Add11~41_combout\ : std_logic;
SIGNAL \Add11~43_combout\ : std_logic;
SIGNAL \Add11~42\ : std_logic;
SIGNAL \Add11~44_combout\ : std_logic;
SIGNAL \Add11~46_combout\ : std_logic;
SIGNAL \Add11~45\ : std_logic;
SIGNAL \Add11~47_combout\ : std_logic;
SIGNAL \Add11~49_combout\ : std_logic;
SIGNAL \Add11~48\ : std_logic;
SIGNAL \Add11~50_combout\ : std_logic;
SIGNAL \Add11~52_combout\ : std_logic;
SIGNAL \Add11~51\ : std_logic;
SIGNAL \Add11~53_combout\ : std_logic;
SIGNAL \Add11~55_combout\ : std_logic;
SIGNAL \Add11~54\ : std_logic;
SIGNAL \Add11~56_combout\ : std_logic;
SIGNAL \Add11~58_combout\ : std_logic;
SIGNAL \Add11~57\ : std_logic;
SIGNAL \Add11~59_combout\ : std_logic;
SIGNAL \Add11~61_combout\ : std_logic;
SIGNAL \Add11~60\ : std_logic;
SIGNAL \Add11~62_combout\ : std_logic;
SIGNAL \Add11~64_combout\ : std_logic;
SIGNAL \Add11~63\ : std_logic;
SIGNAL \Add11~65_combout\ : std_logic;
SIGNAL \Add11~67_combout\ : std_logic;
SIGNAL \Add11~66\ : std_logic;
SIGNAL \Add11~68_combout\ : std_logic;
SIGNAL \Add11~70_combout\ : std_logic;
SIGNAL \LessThan14~5_combout\ : std_logic;
SIGNAL \LessThan14~3_combout\ : std_logic;
SIGNAL \LessThan14~0_combout\ : std_logic;
SIGNAL \LessThan14~1_combout\ : std_logic;
SIGNAL \LessThan14~2_combout\ : std_logic;
SIGNAL \LessThan14~4_combout\ : std_logic;
SIGNAL \LessThan14~6_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Add12~1\ : std_logic;
SIGNAL \Add12~2_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Add12~3\ : std_logic;
SIGNAL \Add12~4_combout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Add12~5\ : std_logic;
SIGNAL \Add12~6_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \procent[3]~feeder_combout\ : std_logic;
SIGNAL \Add12~7\ : std_logic;
SIGNAL \Add12~8_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \digit2[1]~0_combout\ : std_logic;
SIGNAL \LessThan13~0_combout\ : std_logic;
SIGNAL \LessThan13~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Selector2~8_combout\ : std_logic;
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
SIGNAL \clkForIndication[0]~19_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \clkForIndication[15]~50\ : std_logic;
SIGNAL \clkForIndication[16]~51_combout\ : std_logic;
SIGNAL \clkForIndication[16]~52\ : std_logic;
SIGNAL \clkForIndication[17]~53_combout\ : std_logic;
SIGNAL \clkForIndication[17]~54\ : std_logic;
SIGNAL \clkForIndication[18]~55_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
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
SIGNAL \clkForIndication[11]~42\ : std_logic;
SIGNAL \clkForIndication[12]~43_combout\ : std_logic;
SIGNAL \clkForIndication[12]~44\ : std_logic;
SIGNAL \clkForIndication[13]~45_combout\ : std_logic;
SIGNAL \clkForIndication[13]~46\ : std_logic;
SIGNAL \clkForIndication[14]~47_combout\ : std_logic;
SIGNAL \clkForIndication[14]~48\ : std_logic;
SIGNAL \clkForIndication[15]~49_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \indicator[0]~1_combout\ : std_logic;
SIGNAL \indicator[1]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[48]~18_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[48]~17_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ : std_logic;
SIGNAL \Add16~1_cout\ : std_logic;
SIGNAL \Add16~3\ : std_logic;
SIGNAL \Add16~5\ : std_logic;
SIGNAL \Add16~7\ : std_logic;
SIGNAL \Add16~9\ : std_logic;
SIGNAL \Add16~11\ : std_logic;
SIGNAL \Add16~13\ : std_logic;
SIGNAL \Add16~14_combout\ : std_logic;
SIGNAL \Add16~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[210]~93_combout\ : std_logic;
SIGNAL \Add16~10_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[209]~95_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[222]~145_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[222]~97_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[221]~146_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[221]~98_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[220]~99_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[220]~147_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[219]~100_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[219]~148_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[218]~149_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[218]~101_combout\ : std_logic;
SIGNAL \Add16~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[217]~102_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[208]~103_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[217]~105_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ : std_logic;
SIGNAL \digit1[3]~17_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[230]~133_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[230]~106_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[229]~107_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[229]~134_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[228]~108_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[228]~135_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[227]~109_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[227]~136_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[226]~110_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[226]~150_combout\ : std_logic;
SIGNAL \Add16~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[216]~112_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[225]~114_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[225]~111_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ : std_logic;
SIGNAL \digit1[2]~16_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[238]~115_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[238]~137_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[237]~116_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[237]~138_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[236]~117_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[236]~139_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[235]~140_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[235]~118_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[234]~151_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[234]~119_combout\ : std_logic;
SIGNAL \Add16~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[224]~121_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[233]~123_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[233]~120_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[246]~124_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[246]~141_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[245]~142_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[245]~125_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[244]~143_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[244]~126_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[243]~127_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[243]~144_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[242]~152_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[242]~128_combout\ : std_logic;
SIGNAL \Add16~2_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[232]~130_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[241]~132_combout\ : std_logic;
SIGNAL \Div2|auto_generated|divider|divider|StageOut[241]~129_combout\ : std_logic;
SIGNAL \digit1[0]~2_cout\ : std_logic;
SIGNAL \digit1[0]~4_cout\ : std_logic;
SIGNAL \digit1[0]~6_cout\ : std_logic;
SIGNAL \digit1[0]~8_cout\ : std_logic;
SIGNAL \digit1[0]~10_cout\ : std_logic;
SIGNAL \digit1[0]~12_cout\ : std_logic;
SIGNAL \digit1[0]~13_combout\ : std_logic;
SIGNAL \digit1[1]~15_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Selector84~0_combout\ : std_logic;
SIGNAL \bufferForIndicator0[0]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[33]~61_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Selector100~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Selector101~0_combout\ : std_logic;
SIGNAL \digit3[1]~feeder_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ : std_logic;
SIGNAL \Selector99~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \Selector98~2_combout\ : std_logic;
SIGNAL \Selector91~0_combout\ : std_logic;
SIGNAL \digit2[1]~2_combout\ : std_logic;
SIGNAL \digit2[1]~1_combout\ : std_logic;
SIGNAL \digit2[1]~3_combout\ : std_logic;
SIGNAL \Add14~1\ : std_logic;
SIGNAL \Add14~3\ : std_logic;
SIGNAL \Add14~5\ : std_logic;
SIGNAL \Add14~7\ : std_logic;
SIGNAL \Add14~9\ : std_logic;
SIGNAL \Add14~11\ : std_logic;
SIGNAL \Add14~13\ : std_logic;
SIGNAL \Add14~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[123]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ : std_logic;
SIGNAL \Add14~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[127]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\ : std_logic;
SIGNAL \Add14~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\ : std_logic;
SIGNAL \Add14~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ : std_logic;
SIGNAL \Add14~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\ : std_logic;
SIGNAL \Add14~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \digitBuf2[2]~12_combout\ : std_logic;
SIGNAL \Add15~1\ : std_logic;
SIGNAL \Add15~3\ : std_logic;
SIGNAL \Add15~5\ : std_logic;
SIGNAL \Add15~7\ : std_logic;
SIGNAL \Add15~9\ : std_logic;
SIGNAL \Add15~11\ : std_logic;
SIGNAL \Add15~13\ : std_logic;
SIGNAL \Add15~14_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_16~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ : std_logic;
SIGNAL \Add15~12_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ : std_logic;
SIGNAL \Add15~10_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ : std_logic;
SIGNAL \Add15~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\ : std_logic;
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
SIGNAL \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[136]~72_combout\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Selector104~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ : std_logic;
SIGNAL \Add14~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \digitBuf2[1]~11_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~82_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ : std_logic;
SIGNAL \Add15~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Selector105~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\ : std_logic;
SIGNAL \digitBuf2[0]~2_cout\ : std_logic;
SIGNAL \digitBuf2[0]~4_cout\ : std_logic;
SIGNAL \digitBuf2[0]~6_cout\ : std_logic;
SIGNAL \digitBuf2[0]~8_cout\ : std_logic;
SIGNAL \digitBuf2[0]~9_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[152]~88_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ : std_logic;
SIGNAL \Add15~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ : std_logic;
SIGNAL \Selector106~0_combout\ : std_logic;
SIGNAL \digitBuf2[3]~13_combout\ : std_logic;
SIGNAL \Selector103~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Selector91~1_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \led5[0]~reg0_q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Selector97~2_combout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \LessThan17~0_combout\ : std_logic;
SIGNAL \LessThan17~1_combout\ : std_logic;
SIGNAL \Selector90~2_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Selector90~3_combout\ : std_logic;
SIGNAL \LessThan18~0_combout\ : std_logic;
SIGNAL \Selector83~0_combout\ : std_logic;
SIGNAL \Selector81~2_combout\ : std_logic;
SIGNAL \Selector83~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \led5[1]~reg0_q\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Selector96~0_combout\ : std_logic;
SIGNAL \Selector89~0_combout\ : std_logic;
SIGNAL \Selector89~1_combout\ : std_logic;
SIGNAL \Selector89~2_combout\ : std_logic;
SIGNAL \Selector89~3_combout\ : std_logic;
SIGNAL \Selector89~4_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector82~2_combout\ : std_logic;
SIGNAL \Selector82~3_combout\ : std_logic;
SIGNAL \Selector82~4_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \led5[2]~reg0_q\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Selector88~2_combout\ : std_logic;
SIGNAL \Selector88~3_combout\ : std_logic;
SIGNAL \Selector88~4_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Selector81~3_combout\ : std_logic;
SIGNAL \Selector81~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \Selector95~0_combout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector95~1_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \led5[3]~reg0_q\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \bufferForIndicator1[4]~feeder_combout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector87~2_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \led5[4]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \bufferForIndicator3~0_combout\ : std_logic;
SIGNAL \Selector93~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \led5[5]~reg0_q\ : std_logic;
SIGNAL \bufferForIndicator3~1_combout\ : std_logic;
SIGNAL \Selector92~0_combout\ : std_logic;
SIGNAL \Selector92~1_combout\ : std_logic;
SIGNAL \Selector85~0_combout\ : std_logic;
SIGNAL \Selector85~2_combout\ : std_logic;
SIGNAL \Selector85~1_combout\ : std_logic;
SIGNAL \Selector85~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector80~1_combout\ : std_logic;
SIGNAL \Selector80~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \led5[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \en[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \en[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \en[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \en[3]~reg0_q\ : std_logic;
SIGNAL countButtonWaitingIN : std_logic_vector(7 DOWNTO 0);
SIGNAL selectionDrink : std_logic_vector(1 DOWNTO 0);
SIGNAL digit1 : std_logic_vector(3 DOWNTO 0);
SIGNAL bufferForIndicator3 : std_logic_vector(6 DOWNTO 0);
SIGNAL counter : std_logic_vector(23 DOWNTO 0);
SIGNAL bufferForIndicator2 : std_logic_vector(6 DOWNTO 0);
SIGNAL digit3 : std_logic_vector(3 DOWNTO 0);
SIGNAL digitBuf3 : std_logic_vector(3 DOWNTO 0);
SIGNAL money : std_logic_vector(7 DOWNTO 0);
SIGNAL countButtonSelectionIN : std_logic_vector(7 DOWNTO 0);
SIGNAL countButtonRightIN : std_logic_vector(7 DOWNTO 0);
SIGNAL timeForUnsuccessfulMessage : std_logic_vector(28 DOWNTO 0);
SIGNAL clkForIndication : std_logic_vector(18 DOWNTO 0);
SIGNAL bufferForIndicator1 : std_logic_vector(6 DOWNTO 0);
SIGNAL indicator : std_logic_vector(1 DOWNTO 0);
SIGNAL digit2 : std_logic_vector(3 DOWNTO 0);
SIGNAL countButtonLeftIN : std_logic_vector(7 DOWNTO 0);
SIGNAL procentCount : std_logic_vector(25 DOWNTO 0);
SIGNAL procent : std_logic_vector(7 DOWNTO 0);
SIGNAL bufferForIndicator0 : std_logic_vector(6 DOWNTO 0);
SIGNAL digitBuf2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Implementation~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Selection~q\ : std_logic;
SIGNAL \ALT_INV_stateCoffeeMachine.Waiting~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_en[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_en[0]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_buttonWaitingIN <= buttonWaitingIN;
ww_buttonLeftIN <= buttonLeftIN;
ww_buttonRightIN <= buttonRightIN;
ww_buttonSelectionIN <= buttonSelectionIN;
led1 <= ww_led1;
led5 <= ww_led5;
en <= ww_en;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_stateCoffeeMachine.Implementation~q\ <= NOT \stateCoffeeMachine.Implementation~q\;
\ALT_INV_stateCoffeeMachine.Selection~q\ <= NOT \stateCoffeeMachine.Selection~q\;
\ALT_INV_stateCoffeeMachine.Waiting~q\ <= NOT \stateCoffeeMachine.Waiting~q\;
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
\ALT_INV_en[3]~reg0_q\ <= NOT \en[3]~reg0_q\;
\ALT_INV_en[2]~reg0_q\ <= NOT \en[2]~reg0_q\;
\ALT_INV_en[1]~reg0_q\ <= NOT \en[1]~reg0_q\;
\ALT_INV_en[0]~reg0_q\ <= NOT \en[0]~reg0_q\;

-- Location: IOOBUF_X34_Y9_N16
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

-- Location: IOOBUF_X34_Y9_N9
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

-- Location: IOOBUF_X34_Y9_N2
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

-- Location: IOOBUF_X34_Y10_N9
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

-- Location: IOOBUF_X16_Y24_N2
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

-- Location: IOOBUF_X13_Y24_N16
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

-- Location: IOOBUF_X16_Y24_N23
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

-- Location: IOOBUF_X18_Y24_N23
\led5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \led5[4]~reg0_q\,
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
	i => \led5[5]~reg0_q\,
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
	i => \led5[6]~reg0_q\,
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
	i => \ALT_INV_en[0]~reg0_q\,
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
	i => \ALT_INV_en[1]~reg0_q\,
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
	i => \ALT_INV_en[2]~reg0_q\,
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

-- Location: IOIBUF_X34_Y12_N1
\buttonSelectionIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonSelectionIN,
	o => \buttonSelectionIN~input_o\);

-- Location: LCCOMB_X18_Y17_N8
\countButtonSelectionIN[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[0]~8_combout\ = countButtonSelectionIN(0) $ (VCC)
-- \countButtonSelectionIN[0]~9\ = CARRY(countButtonSelectionIN(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countButtonSelectionIN(0),
	datad => VCC,
	combout => \countButtonSelectionIN[0]~8_combout\,
	cout => \countButtonSelectionIN[0]~9\);

-- Location: LCCOMB_X18_Y17_N24
\latchButtonSelectionIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \latchButtonSelectionIN~0_combout\ = !\buttonSelectionIN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonSelectionIN~input_o\,
	combout => \latchButtonSelectionIN~0_combout\);

-- Location: FF_X18_Y17_N25
latchButtonSelectionIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latchButtonSelectionIN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latchButtonSelectionIN~q\);

-- Location: LCCOMB_X18_Y17_N2
\buttonSelection~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonSelection~0_combout\ = \latchButtonSelectionIN~q\ $ (!\buttonSelectionIN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \latchButtonSelectionIN~q\,
	datac => \buttonSelectionIN~input_o\,
	combout => \buttonSelection~0_combout\);

-- Location: LCCOMB_X18_Y17_N12
\countButtonSelectionIN[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[2]~12_combout\ = (countButtonSelectionIN(2) & (\countButtonSelectionIN[1]~11\ $ (GND))) # (!countButtonSelectionIN(2) & (!\countButtonSelectionIN[1]~11\ & VCC))
-- \countButtonSelectionIN[2]~13\ = CARRY((countButtonSelectionIN(2) & !\countButtonSelectionIN[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonSelectionIN(2),
	datad => VCC,
	cin => \countButtonSelectionIN[1]~11\,
	combout => \countButtonSelectionIN[2]~12_combout\,
	cout => \countButtonSelectionIN[2]~13\);

-- Location: LCCOMB_X18_Y17_N14
\countButtonSelectionIN[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[3]~14_combout\ = (countButtonSelectionIN(3) & (!\countButtonSelectionIN[2]~13\)) # (!countButtonSelectionIN(3) & ((\countButtonSelectionIN[2]~13\) # (GND)))
-- \countButtonSelectionIN[3]~15\ = CARRY((!\countButtonSelectionIN[2]~13\) # (!countButtonSelectionIN(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonSelectionIN(3),
	datad => VCC,
	cin => \countButtonSelectionIN[2]~13\,
	combout => \countButtonSelectionIN[3]~14_combout\,
	cout => \countButtonSelectionIN[3]~15\);

-- Location: FF_X18_Y17_N15
\countButtonSelectionIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[3]~14_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(3));

-- Location: LCCOMB_X18_Y17_N16
\countButtonSelectionIN[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[4]~16_combout\ = (countButtonSelectionIN(4) & (\countButtonSelectionIN[3]~15\ $ (GND))) # (!countButtonSelectionIN(4) & (!\countButtonSelectionIN[3]~15\ & VCC))
-- \countButtonSelectionIN[4]~17\ = CARRY((countButtonSelectionIN(4) & !\countButtonSelectionIN[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonSelectionIN(4),
	datad => VCC,
	cin => \countButtonSelectionIN[3]~15\,
	combout => \countButtonSelectionIN[4]~16_combout\,
	cout => \countButtonSelectionIN[4]~17\);

-- Location: FF_X18_Y17_N17
\countButtonSelectionIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[4]~16_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(4));

-- Location: LCCOMB_X18_Y17_N18
\countButtonSelectionIN[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[5]~18_combout\ = (countButtonSelectionIN(5) & (!\countButtonSelectionIN[4]~17\)) # (!countButtonSelectionIN(5) & ((\countButtonSelectionIN[4]~17\) # (GND)))
-- \countButtonSelectionIN[5]~19\ = CARRY((!\countButtonSelectionIN[4]~17\) # (!countButtonSelectionIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonSelectionIN(5),
	datad => VCC,
	cin => \countButtonSelectionIN[4]~17\,
	combout => \countButtonSelectionIN[5]~18_combout\,
	cout => \countButtonSelectionIN[5]~19\);

-- Location: FF_X18_Y17_N19
\countButtonSelectionIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[5]~18_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(5));

-- Location: LCCOMB_X18_Y17_N20
\countButtonSelectionIN[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[6]~20_combout\ = (countButtonSelectionIN(6) & (\countButtonSelectionIN[5]~19\ $ (GND))) # (!countButtonSelectionIN(6) & (!\countButtonSelectionIN[5]~19\ & VCC))
-- \countButtonSelectionIN[6]~21\ = CARRY((countButtonSelectionIN(6) & !\countButtonSelectionIN[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonSelectionIN(6),
	datad => VCC,
	cin => \countButtonSelectionIN[5]~19\,
	combout => \countButtonSelectionIN[6]~20_combout\,
	cout => \countButtonSelectionIN[6]~21\);

-- Location: FF_X18_Y17_N21
\countButtonSelectionIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[6]~20_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(6));

-- Location: LCCOMB_X18_Y17_N22
\countButtonSelectionIN[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[7]~22_combout\ = countButtonSelectionIN(7) $ (\countButtonSelectionIN[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonSelectionIN(7),
	cin => \countButtonSelectionIN[6]~21\,
	combout => \countButtonSelectionIN[7]~22_combout\);

-- Location: FF_X18_Y17_N23
\countButtonSelectionIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[7]~22_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(7));

-- Location: LCCOMB_X18_Y17_N30
\countButtonSelectionIN[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[0]~24_combout\ = (\buttonSelection~0_combout\) # ((countButtonSelectionIN(7)) # ((!\LessThan6~0_combout\ & countButtonSelectionIN(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \buttonSelection~0_combout\,
	datac => countButtonSelectionIN(7),
	datad => countButtonSelectionIN(6),
	combout => \countButtonSelectionIN[0]~24_combout\);

-- Location: FF_X18_Y17_N9
\countButtonSelectionIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[0]~8_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(0));

-- Location: LCCOMB_X18_Y17_N10
\countButtonSelectionIN[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonSelectionIN[1]~10_combout\ = (countButtonSelectionIN(1) & (!\countButtonSelectionIN[0]~9\)) # (!countButtonSelectionIN(1) & ((\countButtonSelectionIN[0]~9\) # (GND)))
-- \countButtonSelectionIN[1]~11\ = CARRY((!\countButtonSelectionIN[0]~9\) # (!countButtonSelectionIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonSelectionIN(1),
	datad => VCC,
	cin => \countButtonSelectionIN[0]~9\,
	combout => \countButtonSelectionIN[1]~10_combout\,
	cout => \countButtonSelectionIN[1]~11\);

-- Location: FF_X18_Y17_N11
\countButtonSelectionIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[1]~10_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(1));

-- Location: FF_X18_Y17_N13
\countButtonSelectionIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonSelectionIN[2]~12_combout\,
	sclr => \countButtonSelectionIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonSelectionIN(2));

-- Location: LCCOMB_X18_Y17_N26
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ((!countButtonSelectionIN(2) & (!countButtonSelectionIN(3) & !countButtonSelectionIN(4)))) # (!countButtonSelectionIN(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonSelectionIN(2),
	datab => countButtonSelectionIN(5),
	datac => countButtonSelectionIN(3),
	datad => countButtonSelectionIN(4),
	combout => \LessThan6~0_combout\);

-- Location: LCCOMB_X18_Y17_N0
\buttonSelection~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonSelection~1_combout\ = (!\buttonSelection~0_combout\ & ((countButtonSelectionIN(7)) # ((!\LessThan6~0_combout\ & countButtonSelectionIN(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0_combout\,
	datab => \buttonSelection~0_combout\,
	datac => countButtonSelectionIN(7),
	datad => countButtonSelectionIN(6),
	combout => \buttonSelection~1_combout\);

-- Location: LCCOMB_X18_Y17_N4
\buttonSelection~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonSelection~2_combout\ = (\buttonSelection~1_combout\ & (!\buttonSelectionIN~input_o\)) # (!\buttonSelection~1_combout\ & ((\buttonSelection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonSelectionIN~input_o\,
	datac => \buttonSelection~q\,
	datad => \buttonSelection~1_combout\,
	combout => \buttonSelection~2_combout\);

-- Location: FF_X18_Y17_N5
buttonSelection : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonSelection~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonSelection~q\);

-- Location: IOIBUF_X34_Y12_N8
\buttonRightIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonRightIN,
	o => \buttonRightIN~input_o\);

-- Location: LCCOMB_X19_Y12_N30
\latchButtonRightIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \latchButtonRightIN~0_combout\ = !\buttonRightIN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonRightIN~input_o\,
	combout => \latchButtonRightIN~0_combout\);

-- Location: FF_X19_Y12_N31
latchButtonRightIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latchButtonRightIN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latchButtonRightIN~q\);

-- Location: LCCOMB_X19_Y12_N12
\countButtonRightIN[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[0]~8_combout\ = countButtonRightIN(0) $ (VCC)
-- \countButtonRightIN[0]~9\ = CARRY(countButtonRightIN(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonRightIN(0),
	datad => VCC,
	combout => \countButtonRightIN[0]~8_combout\,
	cout => \countButtonRightIN[0]~9\);

-- Location: LCCOMB_X19_Y12_N10
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ((!countButtonRightIN(4) & (!countButtonRightIN(3) & !countButtonRightIN(2)))) # (!countButtonRightIN(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonRightIN(4),
	datab => countButtonRightIN(3),
	datac => countButtonRightIN(5),
	datad => countButtonRightIN(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X19_Y12_N28
\buttonRight~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonRight~2_combout\ = \latchButtonRightIN~q\ $ (!\buttonRightIN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \latchButtonRightIN~q\,
	datad => \buttonRightIN~input_o\,
	combout => \buttonRight~2_combout\);

-- Location: LCCOMB_X19_Y12_N24
\countButtonRightIN[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[6]~21_combout\ = (countButtonRightIN(6) & (\countButtonRightIN[5]~20\ $ (GND))) # (!countButtonRightIN(6) & (!\countButtonRightIN[5]~20\ & VCC))
-- \countButtonRightIN[6]~22\ = CARRY((countButtonRightIN(6) & !\countButtonRightIN[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(6),
	datad => VCC,
	cin => \countButtonRightIN[5]~20\,
	combout => \countButtonRightIN[6]~21_combout\,
	cout => \countButtonRightIN[6]~22\);

-- Location: LCCOMB_X19_Y12_N26
\countButtonRightIN[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[7]~23_combout\ = countButtonRightIN(7) $ (\countButtonRightIN[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonRightIN(7),
	cin => \countButtonRightIN[6]~22\,
	combout => \countButtonRightIN[7]~23_combout\);

-- Location: FF_X19_Y12_N27
\countButtonRightIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[7]~23_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(7));

-- Location: LCCOMB_X19_Y12_N2
\countButtonRightIN[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[4]~14_combout\ = (\buttonRight~2_combout\) # ((countButtonRightIN(7)) # ((!\LessThan5~0_combout\ & countButtonRightIN(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~0_combout\,
	datab => \buttonRight~2_combout\,
	datac => countButtonRightIN(7),
	datad => countButtonRightIN(6),
	combout => \countButtonRightIN[4]~14_combout\);

-- Location: FF_X19_Y12_N13
\countButtonRightIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[0]~8_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(0));

-- Location: LCCOMB_X19_Y12_N14
\countButtonRightIN[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[1]~10_combout\ = (countButtonRightIN(1) & (!\countButtonRightIN[0]~9\)) # (!countButtonRightIN(1) & ((\countButtonRightIN[0]~9\) # (GND)))
-- \countButtonRightIN[1]~11\ = CARRY((!\countButtonRightIN[0]~9\) # (!countButtonRightIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(1),
	datad => VCC,
	cin => \countButtonRightIN[0]~9\,
	combout => \countButtonRightIN[1]~10_combout\,
	cout => \countButtonRightIN[1]~11\);

-- Location: FF_X19_Y12_N15
\countButtonRightIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[1]~10_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(1));

-- Location: LCCOMB_X19_Y12_N16
\countButtonRightIN[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[2]~12_combout\ = (countButtonRightIN(2) & (\countButtonRightIN[1]~11\ $ (GND))) # (!countButtonRightIN(2) & (!\countButtonRightIN[1]~11\ & VCC))
-- \countButtonRightIN[2]~13\ = CARRY((countButtonRightIN(2) & !\countButtonRightIN[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(2),
	datad => VCC,
	cin => \countButtonRightIN[1]~11\,
	combout => \countButtonRightIN[2]~12_combout\,
	cout => \countButtonRightIN[2]~13\);

-- Location: FF_X19_Y12_N17
\countButtonRightIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[2]~12_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(2));

-- Location: LCCOMB_X19_Y12_N18
\countButtonRightIN[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[3]~15_combout\ = (countButtonRightIN(3) & (!\countButtonRightIN[2]~13\)) # (!countButtonRightIN(3) & ((\countButtonRightIN[2]~13\) # (GND)))
-- \countButtonRightIN[3]~16\ = CARRY((!\countButtonRightIN[2]~13\) # (!countButtonRightIN(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(3),
	datad => VCC,
	cin => \countButtonRightIN[2]~13\,
	combout => \countButtonRightIN[3]~15_combout\,
	cout => \countButtonRightIN[3]~16\);

-- Location: FF_X19_Y12_N19
\countButtonRightIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[3]~15_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(3));

-- Location: LCCOMB_X19_Y12_N20
\countButtonRightIN[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[4]~17_combout\ = (countButtonRightIN(4) & (\countButtonRightIN[3]~16\ $ (GND))) # (!countButtonRightIN(4) & (!\countButtonRightIN[3]~16\ & VCC))
-- \countButtonRightIN[4]~18\ = CARRY((countButtonRightIN(4) & !\countButtonRightIN[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(4),
	datad => VCC,
	cin => \countButtonRightIN[3]~16\,
	combout => \countButtonRightIN[4]~17_combout\,
	cout => \countButtonRightIN[4]~18\);

-- Location: FF_X19_Y12_N21
\countButtonRightIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[4]~17_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(4));

-- Location: LCCOMB_X19_Y12_N22
\countButtonRightIN[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonRightIN[5]~19_combout\ = (countButtonRightIN(5) & (!\countButtonRightIN[4]~18\)) # (!countButtonRightIN(5) & ((\countButtonRightIN[4]~18\) # (GND)))
-- \countButtonRightIN[5]~20\ = CARRY((!\countButtonRightIN[4]~18\) # (!countButtonRightIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonRightIN(5),
	datad => VCC,
	cin => \countButtonRightIN[4]~18\,
	combout => \countButtonRightIN[5]~19_combout\,
	cout => \countButtonRightIN[5]~20\);

-- Location: FF_X19_Y12_N23
\countButtonRightIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[5]~19_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(5));

-- Location: FF_X19_Y12_N25
\countButtonRightIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonRightIN[6]~21_combout\,
	sclr => \countButtonRightIN[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonRightIN(6));

-- Location: LCCOMB_X19_Y12_N8
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (!countButtonRightIN(7) & ((\LessThan5~0_combout\) # (!countButtonRightIN(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countButtonRightIN(6),
	datac => countButtonRightIN(7),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X19_Y12_N0
\buttonRight~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonRight~3_combout\ = (\latchButtonRightIN~q\ & ((\buttonRight~q\) # ((!\LessThan5~1_combout\ & !\buttonRightIN~input_o\)))) # (!\latchButtonRightIN~q\ & (\buttonRight~q\ & ((\LessThan5~1_combout\) # (!\buttonRightIN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latchButtonRightIN~q\,
	datab => \LessThan5~1_combout\,
	datac => \buttonRight~q\,
	datad => \buttonRightIN~input_o\,
	combout => \buttonRight~3_combout\);

-- Location: FF_X19_Y12_N1
buttonRight : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonRight~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonRight~q\);

-- Location: LCCOMB_X19_Y15_N2
\buttonRightPrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonRightPrev~feeder_combout\ = \buttonRight~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonRight~q\,
	combout => \buttonRightPrev~feeder_combout\);

-- Location: FF_X19_Y15_N3
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

-- Location: IOIBUF_X34_Y12_N15
\buttonLeftIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonLeftIN,
	o => \buttonLeftIN~input_o\);

-- Location: LCCOMB_X18_Y15_N6
\countButtonLeftIN[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[0]~8_combout\ = countButtonLeftIN(0) $ (VCC)
-- \countButtonLeftIN[0]~9\ = CARRY(countButtonLeftIN(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonLeftIN(0),
	datad => VCC,
	combout => \countButtonLeftIN[0]~8_combout\,
	cout => \countButtonLeftIN[0]~9\);

-- Location: LCCOMB_X18_Y15_N12
\countButtonLeftIN[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[3]~14_combout\ = (countButtonLeftIN(3) & (!\countButtonLeftIN[2]~13\)) # (!countButtonLeftIN(3) & ((\countButtonLeftIN[2]~13\) # (GND)))
-- \countButtonLeftIN[3]~15\ = CARRY((!\countButtonLeftIN[2]~13\) # (!countButtonLeftIN(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonLeftIN(3),
	datad => VCC,
	cin => \countButtonLeftIN[2]~13\,
	combout => \countButtonLeftIN[3]~14_combout\,
	cout => \countButtonLeftIN[3]~15\);

-- Location: LCCOMB_X18_Y15_N14
\countButtonLeftIN[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[4]~16_combout\ = (countButtonLeftIN(4) & (\countButtonLeftIN[3]~15\ $ (GND))) # (!countButtonLeftIN(4) & (!\countButtonLeftIN[3]~15\ & VCC))
-- \countButtonLeftIN[4]~17\ = CARRY((countButtonLeftIN(4) & !\countButtonLeftIN[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonLeftIN(4),
	datad => VCC,
	cin => \countButtonLeftIN[3]~15\,
	combout => \countButtonLeftIN[4]~16_combout\,
	cout => \countButtonLeftIN[4]~17\);

-- Location: FF_X18_Y15_N15
\countButtonLeftIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[4]~16_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(4));

-- Location: LCCOMB_X18_Y15_N16
\countButtonLeftIN[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[5]~18_combout\ = (countButtonLeftIN(5) & (!\countButtonLeftIN[4]~17\)) # (!countButtonLeftIN(5) & ((\countButtonLeftIN[4]~17\) # (GND)))
-- \countButtonLeftIN[5]~19\ = CARRY((!\countButtonLeftIN[4]~17\) # (!countButtonLeftIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonLeftIN(5),
	datad => VCC,
	cin => \countButtonLeftIN[4]~17\,
	combout => \countButtonLeftIN[5]~18_combout\,
	cout => \countButtonLeftIN[5]~19\);

-- Location: FF_X18_Y15_N17
\countButtonLeftIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[5]~18_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(5));

-- Location: LCCOMB_X18_Y15_N18
\countButtonLeftIN[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[6]~20_combout\ = (countButtonLeftIN(6) & (\countButtonLeftIN[5]~19\ $ (GND))) # (!countButtonLeftIN(6) & (!\countButtonLeftIN[5]~19\ & VCC))
-- \countButtonLeftIN[6]~21\ = CARRY((countButtonLeftIN(6) & !\countButtonLeftIN[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonLeftIN(6),
	datad => VCC,
	cin => \countButtonLeftIN[5]~19\,
	combout => \countButtonLeftIN[6]~20_combout\,
	cout => \countButtonLeftIN[6]~21\);

-- Location: FF_X18_Y15_N19
\countButtonLeftIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[6]~20_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(6));

-- Location: LCCOMB_X18_Y15_N20
\countButtonLeftIN[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[7]~22_combout\ = \countButtonLeftIN[6]~21\ $ (countButtonLeftIN(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => countButtonLeftIN(7),
	cin => \countButtonLeftIN[6]~21\,
	combout => \countButtonLeftIN[7]~22_combout\);

-- Location: FF_X18_Y15_N21
\countButtonLeftIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[7]~22_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(7));

-- Location: LCCOMB_X18_Y15_N24
\latchButtonLeftIN~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \latchButtonLeftIN~0_combout\ = !\buttonLeftIN~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonLeftIN~input_o\,
	combout => \latchButtonLeftIN~0_combout\);

-- Location: FF_X18_Y15_N25
latchButtonLeftIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \latchButtonLeftIN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latchButtonLeftIN~q\);

-- Location: LCCOMB_X18_Y15_N22
\buttonLeft~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonLeft~0_combout\ = \buttonLeftIN~input_o\ $ (!\latchButtonLeftIN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonLeftIN~input_o\,
	datad => \latchButtonLeftIN~q\,
	combout => \buttonLeft~0_combout\);

-- Location: LCCOMB_X18_Y15_N2
\countButtonLeftIN[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[0]~24_combout\ = (countButtonLeftIN(7)) # ((\buttonLeft~0_combout\) # ((!\LessThan4~0_combout\ & countButtonLeftIN(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => countButtonLeftIN(7),
	datac => \buttonLeft~0_combout\,
	datad => countButtonLeftIN(6),
	combout => \countButtonLeftIN[0]~24_combout\);

-- Location: FF_X18_Y15_N7
\countButtonLeftIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[0]~8_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(0));

-- Location: LCCOMB_X18_Y15_N8
\countButtonLeftIN[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[1]~10_combout\ = (countButtonLeftIN(1) & (!\countButtonLeftIN[0]~9\)) # (!countButtonLeftIN(1) & ((\countButtonLeftIN[0]~9\) # (GND)))
-- \countButtonLeftIN[1]~11\ = CARRY((!\countButtonLeftIN[0]~9\) # (!countButtonLeftIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonLeftIN(1),
	datad => VCC,
	cin => \countButtonLeftIN[0]~9\,
	combout => \countButtonLeftIN[1]~10_combout\,
	cout => \countButtonLeftIN[1]~11\);

-- Location: FF_X18_Y15_N9
\countButtonLeftIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[1]~10_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(1));

-- Location: LCCOMB_X18_Y15_N10
\countButtonLeftIN[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonLeftIN[2]~12_combout\ = (countButtonLeftIN(2) & (\countButtonLeftIN[1]~11\ $ (GND))) # (!countButtonLeftIN(2) & (!\countButtonLeftIN[1]~11\ & VCC))
-- \countButtonLeftIN[2]~13\ = CARRY((countButtonLeftIN(2) & !\countButtonLeftIN[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonLeftIN(2),
	datad => VCC,
	cin => \countButtonLeftIN[1]~11\,
	combout => \countButtonLeftIN[2]~12_combout\,
	cout => \countButtonLeftIN[2]~13\);

-- Location: FF_X18_Y15_N11
\countButtonLeftIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[2]~12_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(2));

-- Location: FF_X18_Y15_N13
\countButtonLeftIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonLeftIN[3]~14_combout\,
	sclr => \countButtonLeftIN[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonLeftIN(3));

-- Location: LCCOMB_X18_Y15_N26
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = ((!countButtonLeftIN(3) & (!countButtonLeftIN(4) & !countButtonLeftIN(2)))) # (!countButtonLeftIN(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonLeftIN(3),
	datab => countButtonLeftIN(5),
	datac => countButtonLeftIN(4),
	datad => countButtonLeftIN(2),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X18_Y15_N28
\buttonLeft~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonLeft~1_combout\ = (!\buttonLeft~0_combout\ & ((countButtonLeftIN(7)) # ((!\LessThan4~0_combout\ & countButtonLeftIN(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => countButtonLeftIN(7),
	datac => \buttonLeft~0_combout\,
	datad => countButtonLeftIN(6),
	combout => \buttonLeft~1_combout\);

-- Location: LCCOMB_X18_Y15_N0
\buttonLeft~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonLeft~2_combout\ = (\buttonLeft~1_combout\ & (!\buttonLeftIN~input_o\)) # (!\buttonLeft~1_combout\ & ((\buttonLeft~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonLeftIN~input_o\,
	datab => \buttonLeft~1_combout\,
	datac => \buttonLeft~q\,
	combout => \buttonLeft~2_combout\);

-- Location: FF_X18_Y15_N1
buttonLeft : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonLeft~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonLeft~q\);

-- Location: FF_X19_Y15_N13
buttonLeftPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonLeft~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonLeftPrev~q\);

-- Location: LCCOMB_X19_Y15_N22
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\buttonRight~q\ & (\buttonRightPrev~q\ & ((\buttonLeftPrev~q\) # (!\buttonLeft~q\)))) # (!\buttonRight~q\ & (((\buttonLeftPrev~q\) # (!\buttonLeft~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonRight~q\,
	datab => \buttonRightPrev~q\,
	datac => \buttonLeft~q\,
	datad => \buttonLeftPrev~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X18_Y16_N15
buttonSelectionPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonSelection~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonSelectionPrev~q\);

-- Location: LCCOMB_X18_Y16_N10
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\buttonSelection~q\ & (!\buttonSelectionPrev~q\ & (\Selector6~0_combout\ & \stateCoffeeMachine.Selection~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~q\,
	datab => \buttonSelectionPrev~q\,
	datac => \Selector6~0_combout\,
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\buttonWaitingIN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_buttonWaitingIN,
	o => \buttonWaitingIN~input_o\);

-- Location: FF_X18_Y16_N27
latchButtonWaitingIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \buttonWaitingIN~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \latchButtonWaitingIN~q\);

-- Location: LCCOMB_X19_Y16_N8
\countButtonWaitingIN[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[0]~8_combout\ = countButtonWaitingIN(0) $ (VCC)
-- \countButtonWaitingIN[0]~9\ = CARRY(countButtonWaitingIN(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(0),
	datad => VCC,
	combout => \countButtonWaitingIN[0]~8_combout\,
	cout => \countButtonWaitingIN[0]~9\);

-- Location: LCCOMB_X18_Y16_N26
\buttonWaiting~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonWaiting~2_combout\ = \buttonWaitingIN~input_o\ $ (\latchButtonWaitingIN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonWaitingIN~input_o\,
	datac => \latchButtonWaitingIN~q\,
	combout => \buttonWaiting~2_combout\);

-- Location: LCCOMB_X19_Y16_N20
\countButtonWaitingIN[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[6]~21_combout\ = (countButtonWaitingIN(6) & (\countButtonWaitingIN[5]~20\ $ (GND))) # (!countButtonWaitingIN(6) & (!\countButtonWaitingIN[5]~20\ & VCC))
-- \countButtonWaitingIN[6]~22\ = CARRY((countButtonWaitingIN(6) & !\countButtonWaitingIN[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(6),
	datad => VCC,
	cin => \countButtonWaitingIN[5]~20\,
	combout => \countButtonWaitingIN[6]~21_combout\,
	cout => \countButtonWaitingIN[6]~22\);

-- Location: LCCOMB_X19_Y16_N22
\countButtonWaitingIN[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[7]~23_combout\ = countButtonWaitingIN(7) $ (\countButtonWaitingIN[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonWaitingIN(7),
	cin => \countButtonWaitingIN[6]~22\,
	combout => \countButtonWaitingIN[7]~23_combout\);

-- Location: FF_X19_Y16_N23
\countButtonWaitingIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[7]~23_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(7));

-- Location: LCCOMB_X19_Y16_N28
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((!countButtonWaitingIN(2) & (!countButtonWaitingIN(3) & !countButtonWaitingIN(4)))) # (!countButtonWaitingIN(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => countButtonWaitingIN(2),
	datab => countButtonWaitingIN(5),
	datac => countButtonWaitingIN(3),
	datad => countButtonWaitingIN(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X19_Y16_N0
\countButtonWaitingIN[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[6]~14_combout\ = (\buttonWaiting~2_combout\) # ((countButtonWaitingIN(7)) # ((countButtonWaitingIN(6) & !\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonWaiting~2_combout\,
	datab => countButtonWaitingIN(6),
	datac => countButtonWaitingIN(7),
	datad => \LessThan3~0_combout\,
	combout => \countButtonWaitingIN[6]~14_combout\);

-- Location: FF_X19_Y16_N9
\countButtonWaitingIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[0]~8_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(0));

-- Location: LCCOMB_X19_Y16_N10
\countButtonWaitingIN[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[1]~10_combout\ = (countButtonWaitingIN(1) & (!\countButtonWaitingIN[0]~9\)) # (!countButtonWaitingIN(1) & ((\countButtonWaitingIN[0]~9\) # (GND)))
-- \countButtonWaitingIN[1]~11\ = CARRY((!\countButtonWaitingIN[0]~9\) # (!countButtonWaitingIN(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonWaitingIN(1),
	datad => VCC,
	cin => \countButtonWaitingIN[0]~9\,
	combout => \countButtonWaitingIN[1]~10_combout\,
	cout => \countButtonWaitingIN[1]~11\);

-- Location: FF_X19_Y16_N11
\countButtonWaitingIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[1]~10_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(1));

-- Location: LCCOMB_X19_Y16_N12
\countButtonWaitingIN[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[2]~12_combout\ = (countButtonWaitingIN(2) & (\countButtonWaitingIN[1]~11\ $ (GND))) # (!countButtonWaitingIN(2) & (!\countButtonWaitingIN[1]~11\ & VCC))
-- \countButtonWaitingIN[2]~13\ = CARRY((countButtonWaitingIN(2) & !\countButtonWaitingIN[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => countButtonWaitingIN(2),
	datad => VCC,
	cin => \countButtonWaitingIN[1]~11\,
	combout => \countButtonWaitingIN[2]~12_combout\,
	cout => \countButtonWaitingIN[2]~13\);

-- Location: FF_X19_Y16_N13
\countButtonWaitingIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[2]~12_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(2));

-- Location: LCCOMB_X19_Y16_N14
\countButtonWaitingIN[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[3]~15_combout\ = (countButtonWaitingIN(3) & (!\countButtonWaitingIN[2]~13\)) # (!countButtonWaitingIN(3) & ((\countButtonWaitingIN[2]~13\) # (GND)))
-- \countButtonWaitingIN[3]~16\ = CARRY((!\countButtonWaitingIN[2]~13\) # (!countButtonWaitingIN(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(3),
	datad => VCC,
	cin => \countButtonWaitingIN[2]~13\,
	combout => \countButtonWaitingIN[3]~15_combout\,
	cout => \countButtonWaitingIN[3]~16\);

-- Location: FF_X19_Y16_N15
\countButtonWaitingIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[3]~15_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(3));

-- Location: LCCOMB_X19_Y16_N16
\countButtonWaitingIN[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[4]~17_combout\ = (countButtonWaitingIN(4) & (\countButtonWaitingIN[3]~16\ $ (GND))) # (!countButtonWaitingIN(4) & (!\countButtonWaitingIN[3]~16\ & VCC))
-- \countButtonWaitingIN[4]~18\ = CARRY((countButtonWaitingIN(4) & !\countButtonWaitingIN[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(4),
	datad => VCC,
	cin => \countButtonWaitingIN[3]~16\,
	combout => \countButtonWaitingIN[4]~17_combout\,
	cout => \countButtonWaitingIN[4]~18\);

-- Location: FF_X19_Y16_N17
\countButtonWaitingIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[4]~17_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(4));

-- Location: LCCOMB_X19_Y16_N18
\countButtonWaitingIN[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \countButtonWaitingIN[5]~19_combout\ = (countButtonWaitingIN(5) & (!\countButtonWaitingIN[4]~18\)) # (!countButtonWaitingIN(5) & ((\countButtonWaitingIN[4]~18\) # (GND)))
-- \countButtonWaitingIN[5]~20\ = CARRY((!\countButtonWaitingIN[4]~18\) # (!countButtonWaitingIN(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(5),
	datad => VCC,
	cin => \countButtonWaitingIN[4]~18\,
	combout => \countButtonWaitingIN[5]~19_combout\,
	cout => \countButtonWaitingIN[5]~20\);

-- Location: FF_X19_Y16_N19
\countButtonWaitingIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[5]~19_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(5));

-- Location: FF_X19_Y16_N21
\countButtonWaitingIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \countButtonWaitingIN[6]~21_combout\,
	sclr => \countButtonWaitingIN[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => countButtonWaitingIN(6));

-- Location: LCCOMB_X19_Y16_N6
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!countButtonWaitingIN(7) & ((\LessThan3~0_combout\) # (!countButtonWaitingIN(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => countButtonWaitingIN(6),
	datac => countButtonWaitingIN(7),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X18_Y16_N30
\buttonWaiting~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonWaiting~3_combout\ = (\latchButtonWaitingIN~q\ & (\buttonWaiting~q\ & ((\LessThan3~1_combout\) # (!\buttonWaitingIN~input_o\)))) # (!\latchButtonWaitingIN~q\ & ((\buttonWaiting~q\) # ((!\buttonWaitingIN~input_o\ & !\LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \latchButtonWaitingIN~q\,
	datab => \buttonWaitingIN~input_o\,
	datac => \buttonWaiting~q\,
	datad => \LessThan3~1_combout\,
	combout => \buttonWaiting~3_combout\);

-- Location: FF_X18_Y16_N31
buttonWaiting : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonWaiting~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonWaiting~q\);

-- Location: LCCOMB_X14_Y16_N28
\buttonWaitingPrev~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \buttonWaitingPrev~feeder_combout\ = \buttonWaiting~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \buttonWaiting~q\,
	combout => \buttonWaitingPrev~feeder_combout\);

-- Location: FF_X14_Y16_N29
buttonWaitingPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buttonWaitingPrev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buttonWaitingPrev~q\);

-- Location: LCCOMB_X18_Y16_N2
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\buttonSelection~q\ & (\buttonSelectionPrev~q\ & ((\buttonWaitingPrev~q\) # (!\buttonWaiting~q\)))) # (!\buttonSelection~q\ & (((\buttonWaitingPrev~q\) # (!\buttonWaiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~q\,
	datab => \buttonSelectionPrev~q\,
	datac => \buttonWaiting~q\,
	datad => \buttonWaitingPrev~q\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X18_Y16_N8
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\stateCoffeeMachine.Payment~q\ & ((\Selector2~5_combout\) # (!\Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \Selector6~0_combout\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector2~5_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X18_Y16_N9
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

-- Location: LCCOMB_X18_Y16_N6
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

-- Location: LCCOMB_X18_Y16_N22
\Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~7_combout\ = (\buttonSelection~q\ & (\Selector6~0_combout\ & (!\buttonSelectionPrev~q\ & !\Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~q\,
	datab => \Selector6~0_combout\,
	datac => \buttonSelectionPrev~q\,
	datad => \Selector1~3_combout\,
	combout => \Selector2~7_combout\);

-- Location: LCCOMB_X18_Y16_N14
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = ((\buttonSelection~q\ & !\buttonSelectionPrev~q\)) # (!\Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~q\,
	datab => \Selector6~0_combout\,
	datac => \buttonSelectionPrev~q\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X19_Y15_N8
\always8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always8~0_combout\ = (\buttonLeft~q\ & !\buttonLeftPrev~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonLeft~q\,
	datad => \buttonLeftPrev~q\,
	combout => \always8~0_combout\);

-- Location: LCCOMB_X19_Y17_N28
\selectionDrink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink~2_combout\ = selectionDrink(0) $ (((\buttonRight~q\ & !\buttonRightPrev~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(0),
	datac => \buttonRight~q\,
	datad => \buttonRightPrev~q\,
	combout => \selectionDrink~2_combout\);

-- Location: LCCOMB_X19_Y17_N8
\selectionDrink[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink[0]~0_combout\ = (\always8~0_combout\ & (!selectionDrink(0))) # (!\always8~0_combout\ & ((\selectionDrink~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always8~0_combout\,
	datac => selectionDrink(0),
	datad => \selectionDrink~2_combout\,
	combout => \selectionDrink[0]~0_combout\);

-- Location: LCCOMB_X18_Y16_N0
\Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\buttonSelection~q\ & (\Selector6~0_combout\ & (!\buttonSelectionPrev~q\ & \stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \buttonSelection~q\,
	datab => \Selector6~0_combout\,
	datac => \buttonSelectionPrev~q\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X18_Y16_N28
\Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (!\Selector2~0_combout\ & ((\Selector6~1_combout\ & (\Mux7~1_combout\)) # (!\Selector6~1_combout\ & ((\stateCoffeeMachine.Unsuccessful~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X18_Y16_N29
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

-- Location: LCCOMB_X22_Y16_N4
\Add13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~0_combout\ = timeForUnsuccessfulMessage(0) $ (VCC)
-- \Add13~1\ = CARRY(timeForUnsuccessfulMessage(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(0),
	datad => VCC,
	combout => \Add13~0_combout\,
	cout => \Add13~1\);

-- Location: LCCOMB_X21_Y16_N6
\Selector79~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~0_combout\,
	combout => \Selector79~0_combout\);

-- Location: LCCOMB_X19_Y15_N6
\Selector75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (((!timeForUnsuccessfulMessage(28) & !\LessThan15~5_combout\)))) # (!\stateCoffeeMachine.Unsuccessful~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan15~5_combout\,
	combout => \Selector75~0_combout\);

-- Location: FF_X21_Y16_N7
\timeForUnsuccessfulMessage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector79~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(0));

-- Location: LCCOMB_X22_Y16_N6
\Add13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~2_combout\ = (timeForUnsuccessfulMessage(1) & (!\Add13~1\)) # (!timeForUnsuccessfulMessage(1) & ((\Add13~1\) # (GND)))
-- \Add13~3\ = CARRY((!\Add13~1\) # (!timeForUnsuccessfulMessage(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(1),
	datad => VCC,
	cin => \Add13~1\,
	combout => \Add13~2_combout\,
	cout => \Add13~3\);

-- Location: LCCOMB_X21_Y16_N16
\Selector78~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector78~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~2_combout\,
	combout => \Selector78~0_combout\);

-- Location: FF_X21_Y16_N17
\timeForUnsuccessfulMessage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector78~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(1));

-- Location: LCCOMB_X22_Y16_N8
\Add13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~4_combout\ = (timeForUnsuccessfulMessage(2) & (\Add13~3\ $ (GND))) # (!timeForUnsuccessfulMessage(2) & (!\Add13~3\ & VCC))
-- \Add13~5\ = CARRY((timeForUnsuccessfulMessage(2) & !\Add13~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(2),
	datad => VCC,
	cin => \Add13~3\,
	combout => \Add13~4_combout\,
	cout => \Add13~5\);

-- Location: LCCOMB_X21_Y16_N30
\Selector77~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector77~0_combout\ = (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~4_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(28),
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add13~4_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector77~0_combout\);

-- Location: FF_X21_Y16_N31
\timeForUnsuccessfulMessage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector77~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(2));

-- Location: LCCOMB_X22_Y16_N10
\Add13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~6_combout\ = (timeForUnsuccessfulMessage(3) & (!\Add13~5\)) # (!timeForUnsuccessfulMessage(3) & ((\Add13~5\) # (GND)))
-- \Add13~7\ = CARRY((!\Add13~5\) # (!timeForUnsuccessfulMessage(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(3),
	datad => VCC,
	cin => \Add13~5\,
	combout => \Add13~6_combout\,
	cout => \Add13~7\);

-- Location: LCCOMB_X22_Y16_N2
\Selector76~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\Add13~6_combout\ & (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~6_combout\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \LessThan15~5_combout\,
	combout => \Selector76~0_combout\);

-- Location: FF_X22_Y16_N3
\timeForUnsuccessfulMessage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector76~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(3));

-- Location: LCCOMB_X22_Y16_N12
\Add13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~8_combout\ = (timeForUnsuccessfulMessage(4) & (\Add13~7\ $ (GND))) # (!timeForUnsuccessfulMessage(4) & (!\Add13~7\ & VCC))
-- \Add13~9\ = CARRY((timeForUnsuccessfulMessage(4) & !\Add13~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(4),
	datad => VCC,
	cin => \Add13~7\,
	combout => \Add13~8_combout\,
	cout => \Add13~9\);

-- Location: LCCOMB_X21_Y16_N28
\Selector75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector75~1_combout\ = (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~8_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(28),
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add13~8_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector75~1_combout\);

-- Location: FF_X21_Y16_N29
\timeForUnsuccessfulMessage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector75~1_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(4));

-- Location: LCCOMB_X22_Y16_N14
\Add13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~10_combout\ = (timeForUnsuccessfulMessage(5) & (!\Add13~9\)) # (!timeForUnsuccessfulMessage(5) & ((\Add13~9\) # (GND)))
-- \Add13~11\ = CARRY((!\Add13~9\) # (!timeForUnsuccessfulMessage(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(5),
	datad => VCC,
	cin => \Add13~9\,
	combout => \Add13~10_combout\,
	cout => \Add13~11\);

-- Location: LCCOMB_X21_Y16_N26
\Selector74~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector74~0_combout\ = (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~10_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(28),
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add13~10_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector74~0_combout\);

-- Location: FF_X21_Y16_N27
\timeForUnsuccessfulMessage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector74~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(5));

-- Location: LCCOMB_X22_Y16_N16
\Add13~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~12_combout\ = (timeForUnsuccessfulMessage(6) & (\Add13~11\ $ (GND))) # (!timeForUnsuccessfulMessage(6) & (!\Add13~11\ & VCC))
-- \Add13~13\ = CARRY((timeForUnsuccessfulMessage(6) & !\Add13~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(6),
	datad => VCC,
	cin => \Add13~11\,
	combout => \Add13~12_combout\,
	cout => \Add13~13\);

-- Location: LCCOMB_X21_Y16_N20
\Selector73~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~12_combout\,
	combout => \Selector73~0_combout\);

-- Location: FF_X21_Y16_N21
\timeForUnsuccessfulMessage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector73~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(6));

-- Location: LCCOMB_X22_Y16_N18
\Add13~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~14_combout\ = (timeForUnsuccessfulMessage(7) & (!\Add13~13\)) # (!timeForUnsuccessfulMessage(7) & ((\Add13~13\) # (GND)))
-- \Add13~15\ = CARRY((!\Add13~13\) # (!timeForUnsuccessfulMessage(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(7),
	datad => VCC,
	cin => \Add13~13\,
	combout => \Add13~14_combout\,
	cout => \Add13~15\);

-- Location: LCCOMB_X21_Y16_N14
\Selector72~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~14_combout\,
	combout => \Selector72~0_combout\);

-- Location: FF_X21_Y16_N15
\timeForUnsuccessfulMessage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector72~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(7));

-- Location: LCCOMB_X22_Y16_N20
\Add13~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~16_combout\ = (timeForUnsuccessfulMessage(8) & (\Add13~15\ $ (GND))) # (!timeForUnsuccessfulMessage(8) & (!\Add13~15\ & VCC))
-- \Add13~17\ = CARRY((timeForUnsuccessfulMessage(8) & !\Add13~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(8),
	datad => VCC,
	cin => \Add13~15\,
	combout => \Add13~16_combout\,
	cout => \Add13~17\);

-- Location: LCCOMB_X21_Y16_N8
\Selector71~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector71~0_combout\ = (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~16_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(28),
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => \Add13~16_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector71~0_combout\);

-- Location: FF_X21_Y16_N9
\timeForUnsuccessfulMessage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector71~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(8));

-- Location: LCCOMB_X22_Y16_N22
\Add13~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~18_combout\ = (timeForUnsuccessfulMessage(9) & (!\Add13~17\)) # (!timeForUnsuccessfulMessage(9) & ((\Add13~17\) # (GND)))
-- \Add13~19\ = CARRY((!\Add13~17\) # (!timeForUnsuccessfulMessage(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(9),
	datad => VCC,
	cin => \Add13~17\,
	combout => \Add13~18_combout\,
	cout => \Add13~19\);

-- Location: LCCOMB_X21_Y16_N24
\Selector70~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector70~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~18_combout\,
	combout => \Selector70~0_combout\);

-- Location: FF_X21_Y16_N25
\timeForUnsuccessfulMessage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector70~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(9));

-- Location: LCCOMB_X22_Y16_N24
\Add13~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~20_combout\ = (timeForUnsuccessfulMessage(10) & (\Add13~19\ $ (GND))) # (!timeForUnsuccessfulMessage(10) & (!\Add13~19\ & VCC))
-- \Add13~21\ = CARRY((timeForUnsuccessfulMessage(10) & !\Add13~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(10),
	datad => VCC,
	cin => \Add13~19\,
	combout => \Add13~20_combout\,
	cout => \Add13~21\);

-- Location: LCCOMB_X21_Y16_N18
\Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~20_combout\,
	combout => \Selector69~0_combout\);

-- Location: FF_X21_Y16_N19
\timeForUnsuccessfulMessage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector69~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(10));

-- Location: LCCOMB_X22_Y16_N26
\Add13~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~22_combout\ = (timeForUnsuccessfulMessage(11) & (!\Add13~21\)) # (!timeForUnsuccessfulMessage(11) & ((\Add13~21\) # (GND)))
-- \Add13~23\ = CARRY((!\Add13~21\) # (!timeForUnsuccessfulMessage(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(11),
	datad => VCC,
	cin => \Add13~21\,
	combout => \Add13~22_combout\,
	cout => \Add13~23\);

-- Location: LCCOMB_X21_Y16_N12
\Selector68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector68~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~22_combout\,
	combout => \Selector68~0_combout\);

-- Location: FF_X21_Y16_N13
\timeForUnsuccessfulMessage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector68~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(11));

-- Location: LCCOMB_X22_Y16_N28
\Add13~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~24_combout\ = (timeForUnsuccessfulMessage(12) & (\Add13~23\ $ (GND))) # (!timeForUnsuccessfulMessage(12) & (!\Add13~23\ & VCC))
-- \Add13~25\ = CARRY((timeForUnsuccessfulMessage(12) & !\Add13~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(12),
	datad => VCC,
	cin => \Add13~23\,
	combout => \Add13~24_combout\,
	cout => \Add13~25\);

-- Location: LCCOMB_X21_Y16_N22
\Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector67~0_combout\ = (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & \Add13~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \Add13~24_combout\,
	combout => \Selector67~0_combout\);

-- Location: FF_X21_Y16_N23
\timeForUnsuccessfulMessage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector67~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(12));

-- Location: LCCOMB_X22_Y16_N30
\Add13~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~26_combout\ = (timeForUnsuccessfulMessage(13) & (!\Add13~25\)) # (!timeForUnsuccessfulMessage(13) & ((\Add13~25\) # (GND)))
-- \Add13~27\ = CARRY((!\Add13~25\) # (!timeForUnsuccessfulMessage(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(13),
	datad => VCC,
	cin => \Add13~25\,
	combout => \Add13~26_combout\,
	cout => \Add13~27\);

-- Location: LCCOMB_X22_Y16_N0
\Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector66~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add13~26_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~26_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector66~0_combout\);

-- Location: FF_X22_Y16_N1
\timeForUnsuccessfulMessage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector66~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(13));

-- Location: LCCOMB_X21_Y16_N4
\LessThan15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~2_combout\ = (!timeForUnsuccessfulMessage(11) & (!timeForUnsuccessfulMessage(10) & (!timeForUnsuccessfulMessage(12) & !timeForUnsuccessfulMessage(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(11),
	datab => timeForUnsuccessfulMessage(10),
	datac => timeForUnsuccessfulMessage(12),
	datad => timeForUnsuccessfulMessage(9),
	combout => \LessThan15~2_combout\);

-- Location: LCCOMB_X22_Y15_N0
\Add13~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~28_combout\ = (timeForUnsuccessfulMessage(14) & (\Add13~27\ $ (GND))) # (!timeForUnsuccessfulMessage(14) & (!\Add13~27\ & VCC))
-- \Add13~29\ = CARRY((timeForUnsuccessfulMessage(14) & !\Add13~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(14),
	datad => VCC,
	cin => \Add13~27\,
	combout => \Add13~28_combout\,
	cout => \Add13~29\);

-- Location: LCCOMB_X21_Y15_N14
\Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector65~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add13~28_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~28_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector65~0_combout\);

-- Location: FF_X21_Y15_N15
\timeForUnsuccessfulMessage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector65~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(14));

-- Location: LCCOMB_X22_Y15_N2
\Add13~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~30_combout\ = (timeForUnsuccessfulMessage(15) & (!\Add13~29\)) # (!timeForUnsuccessfulMessage(15) & ((\Add13~29\) # (GND)))
-- \Add13~31\ = CARRY((!\Add13~29\) # (!timeForUnsuccessfulMessage(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(15),
	datad => VCC,
	cin => \Add13~29\,
	combout => \Add13~30_combout\,
	cout => \Add13~31\);

-- Location: LCCOMB_X21_Y15_N16
\Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector64~0_combout\ = (!\LessThan15~5_combout\ & (!timeForUnsuccessfulMessage(28) & (\Add13~30_combout\ & \stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~30_combout\,
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector64~0_combout\);

-- Location: FF_X21_Y15_N17
\timeForUnsuccessfulMessage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector64~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(15));

-- Location: LCCOMB_X22_Y15_N4
\Add13~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~32_combout\ = (timeForUnsuccessfulMessage(16) & (\Add13~31\ $ (GND))) # (!timeForUnsuccessfulMessage(16) & (!\Add13~31\ & VCC))
-- \Add13~33\ = CARRY((timeForUnsuccessfulMessage(16) & !\Add13~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(16),
	datad => VCC,
	cin => \Add13~31\,
	combout => \Add13~32_combout\,
	cout => \Add13~33\);

-- Location: LCCOMB_X21_Y15_N26
\Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector63~0_combout\ = (!\LessThan15~5_combout\ & (\Add13~32_combout\ & (!timeForUnsuccessfulMessage(28) & \stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \Add13~32_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector63~0_combout\);

-- Location: FF_X21_Y15_N27
\timeForUnsuccessfulMessage[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector63~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(16));

-- Location: LCCOMB_X22_Y15_N6
\Add13~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~34_combout\ = (timeForUnsuccessfulMessage(17) & (!\Add13~33\)) # (!timeForUnsuccessfulMessage(17) & ((\Add13~33\) # (GND)))
-- \Add13~35\ = CARRY((!\Add13~33\) # (!timeForUnsuccessfulMessage(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(17),
	datad => VCC,
	cin => \Add13~33\,
	combout => \Add13~34_combout\,
	cout => \Add13~35\);

-- Location: LCCOMB_X21_Y15_N28
\Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector62~0_combout\ = (!\LessThan15~5_combout\ & (\Add13~34_combout\ & (!timeForUnsuccessfulMessage(28) & \stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \Add13~34_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \stateCoffeeMachine.Unsuccessful~q\,
	combout => \Selector62~0_combout\);

-- Location: FF_X21_Y15_N29
\timeForUnsuccessfulMessage[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector62~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(17));

-- Location: LCCOMB_X21_Y15_N22
\LessThan15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~1_combout\ = (((!timeForUnsuccessfulMessage(15)) # (!timeForUnsuccessfulMessage(14))) # (!timeForUnsuccessfulMessage(17))) # (!timeForUnsuccessfulMessage(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(16),
	datab => timeForUnsuccessfulMessage(17),
	datac => timeForUnsuccessfulMessage(14),
	datad => timeForUnsuccessfulMessage(15),
	combout => \LessThan15~1_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Add13~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~36_combout\ = (timeForUnsuccessfulMessage(18) & (\Add13~35\ $ (GND))) # (!timeForUnsuccessfulMessage(18) & (!\Add13~35\ & VCC))
-- \Add13~37\ = CARRY((timeForUnsuccessfulMessage(18) & !\Add13~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(18),
	datad => VCC,
	cin => \Add13~35\,
	combout => \Add13~36_combout\,
	cout => \Add13~37\);

-- Location: LCCOMB_X21_Y15_N24
\Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector61~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add13~36_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~36_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector61~0_combout\);

-- Location: FF_X21_Y15_N25
\timeForUnsuccessfulMessage[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector61~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(18));

-- Location: LCCOMB_X21_Y15_N10
\LessThan15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~3_combout\ = (!timeForUnsuccessfulMessage(18) & ((\LessThan15~1_combout\) # ((!timeForUnsuccessfulMessage(13) & \LessThan15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(13),
	datab => \LessThan15~2_combout\,
	datac => \LessThan15~1_combout\,
	datad => timeForUnsuccessfulMessage(18),
	combout => \LessThan15~3_combout\);

-- Location: LCCOMB_X22_Y15_N10
\Add13~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~38_combout\ = (timeForUnsuccessfulMessage(19) & (!\Add13~37\)) # (!timeForUnsuccessfulMessage(19) & ((\Add13~37\) # (GND)))
-- \Add13~39\ = CARRY((!\Add13~37\) # (!timeForUnsuccessfulMessage(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(19),
	datad => VCC,
	cin => \Add13~37\,
	combout => \Add13~38_combout\,
	cout => \Add13~39\);

-- Location: LCCOMB_X21_Y15_N4
\Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector60~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add13~38_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~38_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector60~0_combout\);

-- Location: FF_X21_Y15_N5
\timeForUnsuccessfulMessage[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector60~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(19));

-- Location: LCCOMB_X22_Y15_N12
\Add13~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~40_combout\ = (timeForUnsuccessfulMessage(20) & (\Add13~39\ $ (GND))) # (!timeForUnsuccessfulMessage(20) & (!\Add13~39\ & VCC))
-- \Add13~41\ = CARRY((timeForUnsuccessfulMessage(20) & !\Add13~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(20),
	datad => VCC,
	cin => \Add13~39\,
	combout => \Add13~40_combout\,
	cout => \Add13~41\);

-- Location: LCCOMB_X21_Y15_N2
\Selector59~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (!timeForUnsuccessfulMessage(28) & (\Add13~40_combout\ & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \Add13~40_combout\,
	datad => \LessThan15~5_combout\,
	combout => \Selector59~0_combout\);

-- Location: FF_X21_Y15_N3
\timeForUnsuccessfulMessage[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector59~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(20));

-- Location: LCCOMB_X22_Y15_N14
\Add13~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~42_combout\ = (timeForUnsuccessfulMessage(21) & (!\Add13~41\)) # (!timeForUnsuccessfulMessage(21) & ((\Add13~41\) # (GND)))
-- \Add13~43\ = CARRY((!\Add13~41\) # (!timeForUnsuccessfulMessage(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(21),
	datad => VCC,
	cin => \Add13~41\,
	combout => \Add13~42_combout\,
	cout => \Add13~43\);

-- Location: LCCOMB_X19_Y15_N28
\Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (!\LessThan15~5_combout\ & (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & \Add13~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add13~42_combout\,
	combout => \Selector58~0_combout\);

-- Location: FF_X19_Y15_N29
\timeForUnsuccessfulMessage[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector58~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(21));

-- Location: LCCOMB_X21_Y15_N12
\LessThan15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~4_combout\ = (timeForUnsuccessfulMessage(21) & ((timeForUnsuccessfulMessage(20)) # ((!\LessThan15~3_combout\ & timeForUnsuccessfulMessage(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~3_combout\,
	datab => timeForUnsuccessfulMessage(20),
	datac => timeForUnsuccessfulMessage(19),
	datad => timeForUnsuccessfulMessage(21),
	combout => \LessThan15~4_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Add13~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~44_combout\ = (timeForUnsuccessfulMessage(22) & (\Add13~43\ $ (GND))) # (!timeForUnsuccessfulMessage(22) & (!\Add13~43\ & VCC))
-- \Add13~45\ = CARRY((timeForUnsuccessfulMessage(22) & !\Add13~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(22),
	datad => VCC,
	cin => \Add13~43\,
	combout => \Add13~44_combout\,
	cout => \Add13~45\);

-- Location: LCCOMB_X21_Y15_N30
\Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~44_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add13~44_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan15~5_combout\,
	combout => \Selector57~0_combout\);

-- Location: FF_X21_Y15_N31
\timeForUnsuccessfulMessage[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector57~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(22));

-- Location: LCCOMB_X22_Y15_N18
\Add13~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~46_combout\ = (timeForUnsuccessfulMessage(23) & (!\Add13~45\)) # (!timeForUnsuccessfulMessage(23) & ((\Add13~45\) # (GND)))
-- \Add13~47\ = CARRY((!\Add13~45\) # (!timeForUnsuccessfulMessage(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => timeForUnsuccessfulMessage(23),
	datad => VCC,
	cin => \Add13~45\,
	combout => \Add13~46_combout\,
	cout => \Add13~47\);

-- Location: LCCOMB_X21_Y15_N18
\Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~46_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add13~46_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan15~5_combout\,
	combout => \Selector56~0_combout\);

-- Location: FF_X21_Y15_N19
\timeForUnsuccessfulMessage[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector56~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(23));

-- Location: LCCOMB_X22_Y15_N20
\Add13~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~48_combout\ = (timeForUnsuccessfulMessage(24) & (\Add13~47\ $ (GND))) # (!timeForUnsuccessfulMessage(24) & (!\Add13~47\ & VCC))
-- \Add13~49\ = CARRY((timeForUnsuccessfulMessage(24) & !\Add13~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(24),
	datad => VCC,
	cin => \Add13~47\,
	combout => \Add13~48_combout\,
	cout => \Add13~49\);

-- Location: LCCOMB_X22_Y15_N30
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (!timeForUnsuccessfulMessage(28) & (!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & \Add13~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(28),
	datab => \LessThan15~5_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add13~48_combout\,
	combout => \Selector55~0_combout\);

-- Location: FF_X22_Y15_N31
\timeForUnsuccessfulMessage[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector55~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(24));

-- Location: LCCOMB_X22_Y15_N22
\Add13~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~50_combout\ = (timeForUnsuccessfulMessage(25) & (!\Add13~49\)) # (!timeForUnsuccessfulMessage(25) & ((\Add13~49\) # (GND)))
-- \Add13~51\ = CARRY((!\Add13~49\) # (!timeForUnsuccessfulMessage(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(25),
	datad => VCC,
	cin => \Add13~49\,
	combout => \Add13~50_combout\,
	cout => \Add13~51\);

-- Location: LCCOMB_X21_Y15_N8
\Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~50_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add13~50_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan15~5_combout\,
	combout => \Selector54~0_combout\);

-- Location: FF_X21_Y15_N9
\timeForUnsuccessfulMessage[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector54~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(25));

-- Location: LCCOMB_X21_Y15_N20
\LessThan15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~0_combout\ = (timeForUnsuccessfulMessage(22) & (timeForUnsuccessfulMessage(25) & (timeForUnsuccessfulMessage(24) & timeForUnsuccessfulMessage(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(22),
	datab => timeForUnsuccessfulMessage(25),
	datac => timeForUnsuccessfulMessage(24),
	datad => timeForUnsuccessfulMessage(23),
	combout => \LessThan15~0_combout\);

-- Location: LCCOMB_X22_Y15_N24
\Add13~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~52_combout\ = (timeForUnsuccessfulMessage(26) & (\Add13~51\ $ (GND))) # (!timeForUnsuccessfulMessage(26) & (!\Add13~51\ & VCC))
-- \Add13~53\ = CARRY((timeForUnsuccessfulMessage(26) & !\Add13~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(26),
	datad => VCC,
	cin => \Add13~51\,
	combout => \Add13~52_combout\,
	cout => \Add13~53\);

-- Location: LCCOMB_X19_Y15_N26
\Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (!\LessThan15~5_combout\ & (!timeForUnsuccessfulMessage(28) & (\stateCoffeeMachine.Unsuccessful~q\ & \Add13~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => timeForUnsuccessfulMessage(28),
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add13~52_combout\,
	combout => \Selector53~0_combout\);

-- Location: FF_X19_Y15_N27
\timeForUnsuccessfulMessage[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector53~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(26));

-- Location: LCCOMB_X22_Y15_N26
\Add13~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~54_combout\ = (timeForUnsuccessfulMessage(27) & (!\Add13~53\)) # (!timeForUnsuccessfulMessage(27) & ((\Add13~53\) # (GND)))
-- \Add13~55\ = CARRY((!\Add13~53\) # (!timeForUnsuccessfulMessage(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => timeForUnsuccessfulMessage(27),
	datad => VCC,
	cin => \Add13~53\,
	combout => \Add13~54_combout\,
	cout => \Add13~55\);

-- Location: LCCOMB_X21_Y15_N0
\Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & (\Add13~54_combout\ & (!timeForUnsuccessfulMessage(28) & !\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Add13~54_combout\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan15~5_combout\,
	combout => \Selector52~0_combout\);

-- Location: FF_X21_Y15_N1
\timeForUnsuccessfulMessage[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector52~0_combout\,
	ena => \Selector75~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => timeForUnsuccessfulMessage(27));

-- Location: LCCOMB_X21_Y15_N6
\LessThan15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan15~5_combout\ = (timeForUnsuccessfulMessage(27) & ((timeForUnsuccessfulMessage(26)) # ((\LessThan15~4_combout\ & \LessThan15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~4_combout\,
	datab => \LessThan15~0_combout\,
	datac => timeForUnsuccessfulMessage(26),
	datad => timeForUnsuccessfulMessage(27),
	combout => \LessThan15~5_combout\);

-- Location: LCCOMB_X19_Y15_N16
\Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (timeForUnsuccessfulMessage(28) & ((\stateCoffeeMachine.Waiting~q\) # (\stateCoffeeMachine.Unsuccessful~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => timeForUnsuccessfulMessage(28),
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Add13~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add13~56_combout\ = \Add13~55\ $ (!timeForUnsuccessfulMessage(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => timeForUnsuccessfulMessage(28),
	cin => \Add13~55\,
	combout => \Add13~56_combout\);

-- Location: LCCOMB_X19_Y15_N0
\Selector51~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (\Selector51~0_combout\) # ((!\LessThan15~5_combout\ & (\stateCoffeeMachine.Unsuccessful~q\ & \Add13~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan15~5_combout\,
	datab => \Selector51~0_combout\,
	datac => \stateCoffeeMachine.Unsuccessful~q\,
	datad => \Add13~56_combout\,
	combout => \Selector51~1_combout\);

-- Location: FF_X19_Y15_N1
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

-- Location: LCCOMB_X21_Y16_N10
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\ & ((timeForUnsuccessfulMessage(28)) # (\LessThan15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Unsuccessful~q\,
	datac => timeForUnsuccessfulMessage(28),
	datad => \LessThan15~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X18_Y16_N20
\Selector2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~9_combout\ = (!\Selector2~4_combout\ & (!\Selector2~0_combout\ & ((\Selector2~8_combout\) # (\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~8_combout\,
	datab => \Selector2~4_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~9_combout\);

-- Location: FF_X18_Y16_N21
\stateCoffeeMachine.Waiting\ : dffeas
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
	q => \stateCoffeeMachine.Waiting~q\);

-- Location: LCCOMB_X19_Y17_N22
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\stateCoffeeMachine.Waiting~q\ & selectionDrink(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => selectionDrink(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X19_Y17_N9
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

-- Location: LCCOMB_X19_Y17_N12
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = selectionDrink(0) $ (selectionDrink(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => selectionDrink(0),
	datac => selectionDrink(1),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X19_Y17_N18
\selectionDrink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink~3_combout\ = selectionDrink(1) $ (((selectionDrink(0) & (\buttonRight~q\ & !\buttonRightPrev~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(1),
	datab => selectionDrink(0),
	datac => \buttonRight~q\,
	datad => \buttonRightPrev~q\,
	combout => \selectionDrink~3_combout\);

-- Location: LCCOMB_X19_Y17_N30
\selectionDrink[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \selectionDrink[1]~1_combout\ = (\always8~0_combout\ & (!\Selector7~0_combout\)) # (!\always8~0_combout\ & ((\selectionDrink~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \always8~0_combout\,
	datad => \selectionDrink~3_combout\,
	combout => \selectionDrink[1]~1_combout\);

-- Location: LCCOMB_X19_Y17_N4
\Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\stateCoffeeMachine.Waiting~q\ & selectionDrink(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datac => selectionDrink(1),
	combout => \Selector7~1_combout\);

-- Location: FF_X19_Y17_N31
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

-- Location: LCCOMB_X18_Y18_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = money(0) $ (VCC)
-- \Add9~1\ = CARRY(money(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X19_Y18_N14
\Add9~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~26_combout\ = (\Add9~0_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~0_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Add9~26_combout\);

-- Location: LCCOMB_X19_Y17_N0
\always8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always8~1_combout\ = (\buttonRightPrev~q\) # (!\buttonRight~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \buttonRight~q\,
	datad => \buttonRightPrev~q\,
	combout => \always8~1_combout\);

-- Location: LCCOMB_X18_Y18_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (money(3) & ((\always8~0_combout\ & (\Add9~5\ & VCC)) # (!\always8~0_combout\ & (!\Add9~5\)))) # (!money(3) & ((\always8~0_combout\ & (!\Add9~5\)) # (!\always8~0_combout\ & ((\Add9~5\) # (GND)))))
-- \Add9~7\ = CARRY((money(3) & (!\always8~0_combout\ & !\Add9~5\)) # (!money(3) & ((!\Add9~5\) # (!\always8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \always8~0_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X18_Y18_N8
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = ((money(4) $ (\always8~0_combout\ $ (!\Add9~7\)))) # (GND)
-- \Add9~15\ = CARRY((money(4) & ((\always8~0_combout\) # (!\Add9~7\))) # (!money(4) & (\always8~0_combout\ & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \always8~0_combout\,
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X19_Y18_N4
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add9~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datad => \Add9~14_combout\,
	combout => \Add9~16_combout\);

-- Location: FF_X19_Y18_N5
\money[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~16_combout\,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(4));

-- Location: LCCOMB_X18_Y18_N10
\Add9~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~17_combout\ = (money(5) & ((\always8~0_combout\ & (\Add9~15\ & VCC)) # (!\always8~0_combout\ & (!\Add9~15\)))) # (!money(5) & ((\always8~0_combout\ & (!\Add9~15\)) # (!\always8~0_combout\ & ((\Add9~15\) # (GND)))))
-- \Add9~18\ = CARRY((money(5) & (!\always8~0_combout\ & !\Add9~15\)) # (!money(5) & ((!\Add9~15\) # (!\always8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datab => \always8~0_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~17_combout\,
	cout => \Add9~18\);

-- Location: LCCOMB_X19_Y18_N20
\Add9~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~19_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add9~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datad => \Add9~17_combout\,
	combout => \Add9~19_combout\);

-- Location: FF_X21_Y18_N17
\money[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~19_combout\,
	sload => VCC,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(5));

-- Location: LCCOMB_X18_Y18_N12
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ((money(6) $ (\always8~0_combout\ $ (!\Add9~18\)))) # (GND)
-- \Add9~21\ = CARRY((money(6) & ((\always8~0_combout\) # (!\Add9~18\))) # (!money(6) & (\always8~0_combout\ & !\Add9~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datab => \always8~0_combout\,
	datad => VCC,
	cin => \Add9~18\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X18_Y18_N20
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add9~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add9~20_combout\,
	combout => \Add9~22_combout\);

-- Location: FF_X21_Y18_N31
\money[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~22_combout\,
	sload => VCC,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(6));

-- Location: LCCOMB_X18_Y18_N14
\Add9~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~23_combout\ = \always8~0_combout\ $ (money(7) $ (\Add9~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always8~0_combout\,
	datab => money(7),
	cin => \Add9~21\,
	combout => \Add9~23_combout\);

-- Location: LCCOMB_X17_Y18_N2
\Add9~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~25_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add9~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Add9~23_combout\,
	combout => \Add9~25_combout\);

-- Location: FF_X21_Y18_N9
\money[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~25_combout\,
	sload => VCC,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(7));

-- Location: LCCOMB_X18_Y18_N26
\LessThan12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~2_combout\ = (money(4) & ((money(2)) # ((money(3)) # (money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(4),
	datac => money(3),
	datad => money(1),
	combout => \LessThan12~2_combout\);

-- Location: LCCOMB_X18_Y18_N18
\LessThan12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan12~3_combout\ = (money(6)) # ((money(7)) # ((\LessThan12~2_combout\ & money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datab => money(7),
	datac => \LessThan12~2_combout\,
	datad => money(5),
	combout => \LessThan12~3_combout\);

-- Location: LCCOMB_X18_Y18_N28
\LessThan16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~0_combout\ = (!money(6) & (!money(7) & (!money(4) & !money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(6),
	datab => money(7),
	datac => money(4),
	datad => money(5),
	combout => \LessThan16~0_combout\);

-- Location: LCCOMB_X18_Y18_N24
\Add9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~9_combout\ = (((money(0)) # (money(1))) # (!\LessThan16~0_combout\)) # (!\LessThan10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => \LessThan16~0_combout\,
	datac => money(0),
	datad => money(1),
	combout => \Add9~9_combout\);

-- Location: LCCOMB_X18_Y18_N22
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\always8~0_combout\ & (((\Add9~9_combout\)))) # (!\always8~0_combout\ & (!\always8~1_combout\ & (!\LessThan12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always8~1_combout\,
	datab => \LessThan12~3_combout\,
	datac => \always8~0_combout\,
	datad => \Add9~9_combout\,
	combout => \Add9~10_combout\);

-- Location: LCCOMB_X19_Y18_N18
\Add9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~11_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Add9~10_combout\))) # (!\stateCoffeeMachine.Payment~q\ & (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datad => \Add9~10_combout\,
	combout => \Add9~11_combout\);

-- Location: FF_X19_Y18_N15
\money[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~26_combout\,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(0));

-- Location: LCCOMB_X18_Y18_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\always8~0_combout\ & ((money(1) & (\Add9~1\ & VCC)) # (!money(1) & (!\Add9~1\)))) # (!\always8~0_combout\ & ((money(1) & (!\Add9~1\)) # (!money(1) & ((\Add9~1\) # (GND)))))
-- \Add9~3\ = CARRY((\always8~0_combout\ & (!money(1) & !\Add9~1\)) # (!\always8~0_combout\ & ((!\Add9~1\) # (!money(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \always8~0_combout\,
	datab => money(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X19_Y18_N26
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = (\Add9~2_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~2_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Add9~12_combout\);

-- Location: FF_X19_Y18_N27
\money[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~12_combout\,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(1));

-- Location: LCCOMB_X18_Y18_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((money(2) $ (\always8~0_combout\ $ (\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((money(2) & ((!\Add9~3\) # (!\always8~0_combout\))) # (!money(2) & (!\always8~0_combout\ & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => \always8~0_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X19_Y17_N10
\Add9~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~13_combout\ = (\stateCoffeeMachine.Payment~q\ & \Add9~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Add9~4_combout\,
	combout => \Add9~13_combout\);

-- Location: FF_X22_Y18_N25
\money[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add9~13_combout\,
	sload => VCC,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(2));

-- Location: LCCOMB_X19_Y18_N28
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = (\Add9~6_combout\ & \stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add9~6_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Add9~8_combout\);

-- Location: FF_X19_Y18_N29
\money[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add9~8_combout\,
	ena => \Add9~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => money(3));

-- Location: LCCOMB_X18_Y18_N16
\LessThan10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = (!money(3) & !money(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(3),
	datad => money(2),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\LessThan11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = (!money(6) & !money(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(6),
	datad => money(7),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\LessThan10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!money(5) & (\LessThan11~0_combout\ & ((\LessThan10~0_combout\) # (!money(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => money(5),
	datac => money(4),
	datad => \LessThan11~0_combout\,
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X18_Y18_N30
\LessThan16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan16~1_combout\ = ((money(3) & ((money(2)) # (money(1))))) # (!\LessThan16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => \LessThan16~0_combout\,
	datac => money(3),
	datad => money(1),
	combout => \LessThan16~1_combout\);

-- Location: LCCOMB_X18_Y17_N6
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (selectionDrink(1) & (((selectionDrink(0))))) # (!selectionDrink(1) & ((selectionDrink(0) & (\LessThan10~1_combout\)) # (!selectionDrink(0) & ((!\LessThan16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => selectionDrink(1),
	datab => \LessThan10~1_combout\,
	datac => \LessThan16~1_combout\,
	datad => selectionDrink(0),
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\LessThan11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (!money(2) & (!money(3) & ((!money(1)) # (!money(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => money(3),
	datac => money(0),
	datad => money(1),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X19_Y18_N22
\LessThan11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan11~2_combout\ = (\LessThan11~0_combout\ & (((\LessThan11~1_combout\ & !money(4))) # (!money(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => money(4),
	datac => money(5),
	datad => \LessThan11~0_combout\,
	combout => \LessThan11~2_combout\);

-- Location: LCCOMB_X18_Y17_N28
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((!selectionDrink(1))) # (!\LessThan12~3_combout\))) # (!\Mux7~0_combout\ & (((selectionDrink(1) & \LessThan11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \LessThan12~3_combout\,
	datac => selectionDrink(1),
	datad => \LessThan11~2_combout\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X16_Y13_N0
\Add12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~0_combout\ = procent(0) $ (VCC)
-- \Add12~1\ = CARRY(procent(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(0),
	datad => VCC,
	combout => \Add12~0_combout\,
	cout => \Add12~1\);

-- Location: LCCOMB_X16_Y13_N20
\Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Add12~0_combout\,
	combout => \Selector24~2_combout\);

-- Location: LCCOMB_X16_Y13_N8
\Add12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~8_combout\ = (procent(4) & (\Add12~7\ $ (GND))) # (!procent(4) & (!\Add12~7\ & VCC))
-- \Add12~9\ = CARRY((procent(4) & !\Add12~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datad => VCC,
	cin => \Add12~7\,
	combout => \Add12~8_combout\,
	cout => \Add12~9\);

-- Location: LCCOMB_X16_Y13_N10
\Add12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~10_combout\ = (procent(5) & (!\Add12~9\)) # (!procent(5) & ((\Add12~9\) # (GND)))
-- \Add12~11\ = CARRY((!\Add12~9\) # (!procent(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(5),
	datad => VCC,
	cin => \Add12~9\,
	combout => \Add12~10_combout\,
	cout => \Add12~11\);

-- Location: LCCOMB_X16_Y13_N30
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Add12~10_combout\,
	combout => \Selector19~0_combout\);

-- Location: FF_X14_Y13_N19
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

-- Location: LCCOMB_X16_Y13_N12
\Add12~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~12_combout\ = (procent(6) & (\Add12~11\ $ (GND))) # (!procent(6) & (!\Add12~11\ & VCC))
-- \Add12~13\ = CARRY((procent(6) & !\Add12~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datad => VCC,
	cin => \Add12~11\,
	combout => \Add12~12_combout\,
	cout => \Add12~13\);

-- Location: LCCOMB_X16_Y13_N24
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Add12~12_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X14_Y13_N1
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

-- Location: LCCOMB_X16_Y13_N14
\Add12~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~14_combout\ = \Add12~13\ $ (procent(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => procent(7),
	cin => \Add12~13\,
	combout => \Add12~14_combout\);

-- Location: LCCOMB_X13_Y14_N16
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\LessThan13~1_combout\ & (\stateCoffeeMachine.Implementation~q\ & (!\LessThan14~6_combout\ & \Add12~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~1_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \LessThan14~6_combout\,
	datad => \Add12~14_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X13_Y14_N30
\Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\) # ((procent(7) & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X14_Y13_N17
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

-- Location: LCCOMB_X13_Y16_N22
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (!procent(7) & !\LessThan13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => procent(7),
	datad => \LessThan13~1_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X12_Y16_N6
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = procentCount(0) $ (VCC)
-- \Add11~1\ = CARRY(procentCount(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procentCount(0),
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

-- Location: LCCOMB_X12_Y16_N4
\Add11~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~78_combout\ = (\Add11~0_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~78_combout\);

-- Location: LCCOMB_X13_Y16_N30
\Add11~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~19_combout\ = (\stateCoffeeMachine.Implementation~q\ & (!\LessThan13~1_combout\ & (!procent(7)))) # (!\stateCoffeeMachine.Implementation~q\ & (((!\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~1_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => procent(7),
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Add11~19_combout\);

-- Location: FF_X12_Y16_N5
\procentCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~78_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(0));

-- Location: LCCOMB_X12_Y16_N8
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (procentCount(1) & (!\Add11~1\)) # (!procentCount(1) & ((\Add11~1\) # (GND)))
-- \Add11~3\ = CARRY((!\Add11~1\) # (!procentCount(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(1),
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X13_Y16_N4
\Add11~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~77_combout\ = (\Add11~2_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~2_combout\,
	datab => \LessThan14~6_combout\,
	datac => \Selector24~0_combout\,
	combout => \Add11~77_combout\);

-- Location: FF_X13_Y16_N5
\procentCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~77_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(1));

-- Location: LCCOMB_X12_Y16_N10
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (procentCount(2) & (\Add11~3\ $ (GND))) # (!procentCount(2) & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((procentCount(2) & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(2),
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X12_Y16_N2
\Add11~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~76_combout\ = (\Add11~4_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~4_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~76_combout\);

-- Location: FF_X12_Y16_N3
\procentCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~76_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(2));

-- Location: LCCOMB_X12_Y16_N12
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (procentCount(3) & (!\Add11~5\)) # (!procentCount(3) & ((\Add11~5\) # (GND)))
-- \Add11~7\ = CARRY((!\Add11~5\) # (!procentCount(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(3),
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X13_Y16_N18
\Add11~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~75_combout\ = (\Add11~6_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \LessThan14~6_combout\,
	datac => \Selector24~0_combout\,
	combout => \Add11~75_combout\);

-- Location: FF_X13_Y16_N19
\procentCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~75_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(3));

-- Location: LCCOMB_X12_Y16_N14
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (procentCount(4) & (\Add11~7\ $ (GND))) # (!procentCount(4) & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((procentCount(4) & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(4),
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X13_Y16_N0
\Add11~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~74_combout\ = (\Add11~8_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datab => \LessThan14~6_combout\,
	datac => \Selector24~0_combout\,
	combout => \Add11~74_combout\);

-- Location: FF_X13_Y16_N1
\procentCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~74_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(4));

-- Location: LCCOMB_X12_Y16_N16
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (procentCount(5) & (!\Add11~9\)) # (!procentCount(5) & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!procentCount(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(5),
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X12_Y16_N0
\Add11~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~73_combout\ = (\Add11~10_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~10_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~73_combout\);

-- Location: FF_X12_Y16_N1
\procentCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~73_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(5));

-- Location: LCCOMB_X12_Y16_N18
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (procentCount(6) & (\Add11~11\ $ (GND))) # (!procentCount(6) & (!\Add11~11\ & VCC))
-- \Add11~13\ = CARRY((procentCount(6) & !\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(6),
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X13_Y16_N2
\Add11~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~72_combout\ = (\Selector24~0_combout\ & (\Add11~12_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~12_combout\,
	datac => \LessThan14~6_combout\,
	combout => \Add11~72_combout\);

-- Location: FF_X13_Y16_N3
\procentCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~72_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(6));

-- Location: LCCOMB_X12_Y16_N20
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = (procentCount(7) & (!\Add11~13\)) # (!procentCount(7) & ((\Add11~13\) # (GND)))
-- \Add11~15\ = CARRY((!\Add11~13\) # (!procentCount(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(7),
	datad => VCC,
	cin => \Add11~13\,
	combout => \Add11~14_combout\,
	cout => \Add11~15\);

-- Location: LCCOMB_X13_Y16_N12
\Add11~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~71_combout\ = (\Selector24~0_combout\ & (\Add11~14_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~14_combout\,
	datac => \LessThan14~6_combout\,
	combout => \Add11~71_combout\);

-- Location: FF_X13_Y16_N13
\procentCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~71_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(7));

-- Location: LCCOMB_X12_Y16_N22
\Add11~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~16_combout\ = (procentCount(8) & (\Add11~15\ $ (GND))) # (!procentCount(8) & (!\Add11~15\ & VCC))
-- \Add11~17\ = CARRY((procentCount(8) & !\Add11~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(8),
	datad => VCC,
	cin => \Add11~15\,
	combout => \Add11~16_combout\,
	cout => \Add11~17\);

-- Location: LCCOMB_X13_Y16_N24
\Add11~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~18_combout\ = (\Selector24~0_combout\ & (\LessThan14~6_combout\ & \Add11~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Add11~16_combout\,
	combout => \Add11~18_combout\);

-- Location: FF_X13_Y16_N25
\procentCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~18_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(8));

-- Location: LCCOMB_X12_Y16_N24
\Add11~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~20_combout\ = (procentCount(9) & (!\Add11~17\)) # (!procentCount(9) & ((\Add11~17\) # (GND)))
-- \Add11~21\ = CARRY((!\Add11~17\) # (!procentCount(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(9),
	datad => VCC,
	cin => \Add11~17\,
	combout => \Add11~20_combout\,
	cout => \Add11~21\);

-- Location: LCCOMB_X13_Y16_N10
\Add11~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~22_combout\ = (\Selector24~0_combout\ & (\Add11~20_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~20_combout\,
	datac => \LessThan14~6_combout\,
	combout => \Add11~22_combout\);

-- Location: FF_X13_Y16_N11
\procentCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~22_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(9));

-- Location: LCCOMB_X12_Y16_N26
\Add11~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~23_combout\ = (procentCount(10) & (\Add11~21\ $ (GND))) # (!procentCount(10) & (!\Add11~21\ & VCC))
-- \Add11~24\ = CARRY((procentCount(10) & !\Add11~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(10),
	datad => VCC,
	cin => \Add11~21\,
	combout => \Add11~23_combout\,
	cout => \Add11~24\);

-- Location: LCCOMB_X13_Y16_N20
\Add11~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~25_combout\ = (\Selector24~0_combout\ & (\LessThan14~6_combout\ & \Add11~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \LessThan14~6_combout\,
	datac => \Add11~23_combout\,
	combout => \Add11~25_combout\);

-- Location: FF_X13_Y16_N21
\procentCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~25_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(10));

-- Location: LCCOMB_X12_Y16_N28
\Add11~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~26_combout\ = (procentCount(11) & (!\Add11~24\)) # (!procentCount(11) & ((\Add11~24\) # (GND)))
-- \Add11~27\ = CARRY((!\Add11~24\) # (!procentCount(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(11),
	datad => VCC,
	cin => \Add11~24\,
	combout => \Add11~26_combout\,
	cout => \Add11~27\);

-- Location: LCCOMB_X13_Y16_N14
\Add11~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~28_combout\ = (\Selector24~0_combout\ & (\Add11~26_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~26_combout\,
	datac => \LessThan14~6_combout\,
	combout => \Add11~28_combout\);

-- Location: FF_X13_Y16_N15
\procentCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~28_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(11));

-- Location: LCCOMB_X12_Y16_N30
\Add11~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~29_combout\ = (procentCount(12) & (\Add11~27\ $ (GND))) # (!procentCount(12) & (!\Add11~27\ & VCC))
-- \Add11~30\ = CARRY((procentCount(12) & !\Add11~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(12),
	datad => VCC,
	cin => \Add11~27\,
	combout => \Add11~29_combout\,
	cout => \Add11~30\);

-- Location: LCCOMB_X13_Y16_N26
\Add11~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~31_combout\ = (\Selector24~0_combout\ & (\Add11~29_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~29_combout\,
	datac => \LessThan14~6_combout\,
	combout => \Add11~31_combout\);

-- Location: FF_X13_Y16_N27
\procentCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~31_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(12));

-- Location: LCCOMB_X12_Y15_N0
\Add11~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~32_combout\ = (procentCount(13) & (!\Add11~30\)) # (!procentCount(13) & ((\Add11~30\) # (GND)))
-- \Add11~33\ = CARRY((!\Add11~30\) # (!procentCount(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(13),
	datad => VCC,
	cin => \Add11~30\,
	combout => \Add11~32_combout\,
	cout => \Add11~33\);

-- Location: LCCOMB_X12_Y15_N26
\Add11~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~34_combout\ = (\Add11~32_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~32_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~34_combout\);

-- Location: FF_X12_Y15_N27
\procentCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~34_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(13));

-- Location: LCCOMB_X12_Y15_N2
\Add11~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~35_combout\ = (procentCount(14) & (\Add11~33\ $ (GND))) # (!procentCount(14) & (!\Add11~33\ & VCC))
-- \Add11~36\ = CARRY((procentCount(14) & !\Add11~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(14),
	datad => VCC,
	cin => \Add11~33\,
	combout => \Add11~35_combout\,
	cout => \Add11~36\);

-- Location: LCCOMB_X13_Y15_N12
\Add11~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~37_combout\ = (\Add11~35_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~35_combout\,
	datab => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~37_combout\);

-- Location: FF_X13_Y15_N13
\procentCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~37_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(14));

-- Location: LCCOMB_X12_Y15_N4
\Add11~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~38_combout\ = (procentCount(15) & (!\Add11~36\)) # (!procentCount(15) & ((\Add11~36\) # (GND)))
-- \Add11~39\ = CARRY((!\Add11~36\) # (!procentCount(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(15),
	datad => VCC,
	cin => \Add11~36\,
	combout => \Add11~38_combout\,
	cout => \Add11~39\);

-- Location: LCCOMB_X13_Y15_N6
\Add11~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~40_combout\ = (\Selector24~0_combout\ & (\Add11~38_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~38_combout\,
	datad => \LessThan14~6_combout\,
	combout => \Add11~40_combout\);

-- Location: FF_X13_Y15_N7
\procentCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~40_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(15));

-- Location: LCCOMB_X12_Y15_N6
\Add11~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~41_combout\ = (procentCount(16) & (\Add11~39\ $ (GND))) # (!procentCount(16) & (!\Add11~39\ & VCC))
-- \Add11~42\ = CARRY((procentCount(16) & !\Add11~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(16),
	datad => VCC,
	cin => \Add11~39\,
	combout => \Add11~41_combout\,
	cout => \Add11~42\);

-- Location: LCCOMB_X13_Y15_N4
\Add11~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~43_combout\ = (\Selector24~0_combout\ & (\Add11~41_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datac => \Add11~41_combout\,
	datad => \LessThan14~6_combout\,
	combout => \Add11~43_combout\);

-- Location: FF_X13_Y15_N5
\procentCount[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~43_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(16));

-- Location: LCCOMB_X12_Y15_N8
\Add11~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~44_combout\ = (procentCount(17) & (!\Add11~42\)) # (!procentCount(17) & ((\Add11~42\) # (GND)))
-- \Add11~45\ = CARRY((!\Add11~42\) # (!procentCount(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(17),
	datad => VCC,
	cin => \Add11~42\,
	combout => \Add11~44_combout\,
	cout => \Add11~45\);

-- Location: LCCOMB_X13_Y15_N8
\Add11~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~46_combout\ = (\Add11~44_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~44_combout\,
	datab => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~46_combout\);

-- Location: FF_X13_Y15_N9
\procentCount[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~46_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(17));

-- Location: LCCOMB_X12_Y15_N10
\Add11~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~47_combout\ = (procentCount(18) & (\Add11~45\ $ (GND))) # (!procentCount(18) & (!\Add11~45\ & VCC))
-- \Add11~48\ = CARRY((procentCount(18) & !\Add11~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(18),
	datad => VCC,
	cin => \Add11~45\,
	combout => \Add11~47_combout\,
	cout => \Add11~48\);

-- Location: LCCOMB_X13_Y15_N18
\Add11~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~49_combout\ = (\Add11~47_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~47_combout\,
	datab => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~49_combout\);

-- Location: FF_X13_Y15_N19
\procentCount[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~49_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(18));

-- Location: LCCOMB_X12_Y15_N12
\Add11~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~50_combout\ = (procentCount(19) & (!\Add11~48\)) # (!procentCount(19) & ((\Add11~48\) # (GND)))
-- \Add11~51\ = CARRY((!\Add11~48\) # (!procentCount(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(19),
	datad => VCC,
	cin => \Add11~48\,
	combout => \Add11~50_combout\,
	cout => \Add11~51\);

-- Location: LCCOMB_X12_Y15_N28
\Add11~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~52_combout\ = (\Add11~50_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~50_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~52_combout\);

-- Location: FF_X12_Y15_N29
\procentCount[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~52_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(19));

-- Location: LCCOMB_X12_Y15_N14
\Add11~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~53_combout\ = (procentCount(20) & (\Add11~51\ $ (GND))) # (!procentCount(20) & (!\Add11~51\ & VCC))
-- \Add11~54\ = CARRY((procentCount(20) & !\Add11~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(20),
	datad => VCC,
	cin => \Add11~51\,
	combout => \Add11~53_combout\,
	cout => \Add11~54\);

-- Location: LCCOMB_X13_Y15_N10
\Add11~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~55_combout\ = (\Add11~53_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~53_combout\,
	datab => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~55_combout\);

-- Location: FF_X13_Y15_N11
\procentCount[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~55_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(20));

-- Location: LCCOMB_X12_Y15_N16
\Add11~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~56_combout\ = (procentCount(21) & (!\Add11~54\)) # (!procentCount(21) & ((\Add11~54\) # (GND)))
-- \Add11~57\ = CARRY((!\Add11~54\) # (!procentCount(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(21),
	datad => VCC,
	cin => \Add11~54\,
	combout => \Add11~56_combout\,
	cout => \Add11~57\);

-- Location: LCCOMB_X13_Y15_N20
\Add11~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~58_combout\ = (\Add11~56_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~56_combout\,
	datab => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~58_combout\);

-- Location: FF_X13_Y15_N21
\procentCount[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~58_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(21));

-- Location: LCCOMB_X12_Y15_N18
\Add11~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~59_combout\ = (procentCount(22) & (\Add11~57\ $ (GND))) # (!procentCount(22) & (!\Add11~57\ & VCC))
-- \Add11~60\ = CARRY((procentCount(22) & !\Add11~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(22),
	datad => VCC,
	cin => \Add11~57\,
	combout => \Add11~59_combout\,
	cout => \Add11~60\);

-- Location: LCCOMB_X13_Y15_N24
\Add11~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~61_combout\ = (\Selector24~0_combout\ & (\Add11~59_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~59_combout\,
	datad => \LessThan14~6_combout\,
	combout => \Add11~61_combout\);

-- Location: FF_X13_Y15_N25
\procentCount[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~61_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(22));

-- Location: LCCOMB_X12_Y15_N20
\Add11~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~62_combout\ = (procentCount(23) & (!\Add11~60\)) # (!procentCount(23) & ((\Add11~60\) # (GND)))
-- \Add11~63\ = CARRY((!\Add11~60\) # (!procentCount(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procentCount(23),
	datad => VCC,
	cin => \Add11~60\,
	combout => \Add11~62_combout\,
	cout => \Add11~63\);

-- Location: LCCOMB_X13_Y15_N26
\Add11~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~64_combout\ = (\Selector24~0_combout\ & (\Add11~62_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~62_combout\,
	datad => \LessThan14~6_combout\,
	combout => \Add11~64_combout\);

-- Location: FF_X13_Y15_N27
\procentCount[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~64_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(23));

-- Location: LCCOMB_X12_Y15_N22
\Add11~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~65_combout\ = (procentCount(24) & (\Add11~63\ $ (GND))) # (!procentCount(24) & (!\Add11~63\ & VCC))
-- \Add11~66\ = CARRY((procentCount(24) & !\Add11~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(24),
	datad => VCC,
	cin => \Add11~63\,
	combout => \Add11~65_combout\,
	cout => \Add11~66\);

-- Location: LCCOMB_X13_Y15_N2
\Add11~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~67_combout\ = (\Selector24~0_combout\ & (\Add11~65_combout\ & \LessThan14~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~0_combout\,
	datab => \Add11~65_combout\,
	datad => \LessThan14~6_combout\,
	combout => \Add11~67_combout\);

-- Location: FF_X13_Y15_N3
\procentCount[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~67_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(24));

-- Location: LCCOMB_X12_Y15_N24
\Add11~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~68_combout\ = procentCount(25) $ (\Add11~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(25),
	cin => \Add11~66\,
	combout => \Add11~68_combout\);

-- Location: LCCOMB_X12_Y15_N30
\Add11~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~70_combout\ = (\Add11~68_combout\ & (\LessThan14~6_combout\ & \Selector24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add11~68_combout\,
	datac => \LessThan14~6_combout\,
	datad => \Selector24~0_combout\,
	combout => \Add11~70_combout\);

-- Location: FF_X12_Y15_N31
\procentCount[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add11~70_combout\,
	ena => \Add11~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procentCount(25));

-- Location: LCCOMB_X13_Y15_N16
\LessThan14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~5_combout\ = (!procentCount(23) & !procentCount(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procentCount(23),
	datad => procentCount(22),
	combout => \LessThan14~5_combout\);

-- Location: LCCOMB_X13_Y15_N28
\LessThan14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~3_combout\ = (!procentCount(19) & (!procentCount(17) & !procentCount(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procentCount(19),
	datac => procentCount(17),
	datad => procentCount(18),
	combout => \LessThan14~3_combout\);

-- Location: LCCOMB_X13_Y16_N16
\LessThan14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~0_combout\ = (((!procentCount(9) & !procentCount(8))) # (!procentCount(11))) # (!procentCount(10))

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
	combout => \LessThan14~0_combout\);

-- Location: LCCOMB_X13_Y16_N28
\LessThan14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~1_combout\ = ((!procentCount(12) & \LessThan14~0_combout\)) # (!procentCount(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(13),
	datac => procentCount(12),
	datad => \LessThan14~0_combout\,
	combout => \LessThan14~1_combout\);

-- Location: LCCOMB_X13_Y15_N22
\LessThan14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~2_combout\ = ((!procentCount(15) & (\LessThan14~1_combout\ & !procentCount(14)))) # (!procentCount(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(15),
	datab => \LessThan14~1_combout\,
	datac => procentCount(16),
	datad => procentCount(14),
	combout => \LessThan14~2_combout\);

-- Location: LCCOMB_X13_Y15_N14
\LessThan14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~4_combout\ = (((\LessThan14~3_combout\ & \LessThan14~2_combout\)) # (!procentCount(21))) # (!procentCount(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(20),
	datab => \LessThan14~3_combout\,
	datac => \LessThan14~2_combout\,
	datad => procentCount(21),
	combout => \LessThan14~4_combout\);

-- Location: LCCOMB_X13_Y15_N0
\LessThan14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan14~6_combout\ = (!procentCount(25) & (((\LessThan14~5_combout\ & \LessThan14~4_combout\)) # (!procentCount(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procentCount(25),
	datab => \LessThan14~5_combout\,
	datac => \LessThan14~4_combout\,
	datad => procentCount(24),
	combout => \LessThan14~6_combout\);

-- Location: LCCOMB_X13_Y14_N12
\Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\LessThan14~6_combout\ & (!\stateCoffeeMachine.Implementation~q\ & (!\stateCoffeeMachine.Waiting~q\))) # (!\LessThan14~6_combout\ & ((\Selector24~0_combout\) # ((!\stateCoffeeMachine.Implementation~q\ & 
-- !\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan14~6_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: FF_X16_Y13_N21
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

-- Location: LCCOMB_X16_Y13_N2
\Add12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~2_combout\ = (procent(1) & (!\Add12~1\)) # (!procent(1) & ((\Add12~1\) # (GND)))
-- \Add12~3\ = CARRY((!\Add12~1\) # (!procent(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(1),
	datad => VCC,
	cin => \Add12~1\,
	combout => \Add12~2_combout\,
	cout => \Add12~3\);

-- Location: LCCOMB_X16_Y13_N18
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Add12~2_combout\,
	combout => \Selector23~0_combout\);

-- Location: FF_X16_Y13_N19
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

-- Location: LCCOMB_X16_Y13_N4
\Add12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~4_combout\ = (procent(2) & (\Add12~3\ $ (GND))) # (!procent(2) & (!\Add12~3\ & VCC))
-- \Add12~5\ = CARRY((procent(2) & !\Add12~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datad => VCC,
	cin => \Add12~3\,
	combout => \Add12~4_combout\,
	cout => \Add12~5\);

-- Location: LCCOMB_X11_Y13_N0
\Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\Add12~4_combout\ & \stateCoffeeMachine.Implementation~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add12~4_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X11_Y13_N1
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

-- Location: LCCOMB_X16_Y13_N6
\Add12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add12~6_combout\ = (procent(3) & (!\Add12~5\)) # (!procent(3) & ((\Add12~5\) # (GND)))
-- \Add12~7\ = CARRY((!\Add12~5\) # (!procent(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => VCC,
	cin => \Add12~5\,
	combout => \Add12~6_combout\,
	cout => \Add12~7\);

-- Location: LCCOMB_X16_Y13_N26
\Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Add12~6_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X11_Y13_N10
\procent[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \procent[3]~feeder_combout\ = \Selector21~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector21~0_combout\,
	combout => \procent[3]~feeder_combout\);

-- Location: FF_X11_Y13_N11
\procent[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \procent[3]~feeder_combout\,
	ena => \Selector24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => procent(3));

-- Location: LCCOMB_X16_Y13_N16
\Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & \Add12~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datac => \Add12~8_combout\,
	combout => \Selector20~0_combout\);

-- Location: FF_X16_Y13_N17
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

-- Location: LCCOMB_X14_Y18_N22
\digit2[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[1]~0_combout\ = (!procent(4) & !procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datac => procent(3),
	combout => \digit2[1]~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
\LessThan13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~0_combout\ = (procent(2) & ((procent(1)) # (procent(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datac => procent(1),
	datad => procent(0),
	combout => \LessThan13~0_combout\);

-- Location: LCCOMB_X12_Y18_N6
\LessThan13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan13~1_combout\ = (procent(5) & (procent(6) & ((\LessThan13~0_combout\) # (!\digit2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~0_combout\,
	datab => procent(5),
	datac => procent(6),
	datad => \LessThan13~0_combout\,
	combout => \LessThan13~1_combout\);

-- Location: LCCOMB_X14_Y16_N2
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\buttonWaitingPrev~q\ & (!\stateCoffeeMachine.Implementation~q\ & \buttonWaiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \buttonWaitingPrev~q\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \buttonWaiting~q\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X14_Y16_N4
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((\stateCoffeeMachine.Implementation~q\ & ((\LessThan13~1_combout\) # (procent(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan13~1_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => procent(7),
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X18_Y16_N16
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector6~1_combout\ & (!\Mux7~1_combout\)) # (!\Selector6~1_combout\ & (((!\Selector2~2_combout\ & \stateCoffeeMachine.Implementation~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector6~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X18_Y16_N17
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

-- Location: LCCOMB_X18_Y16_N24
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Selector2~2_combout\ & ((\stateCoffeeMachine.Implementation~q\) # ((!\Selector2~3_combout\ & !\Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Selector2~2_combout\,
	datad => \Selector1~3_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X18_Y16_N4
\Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((!\Selector2~5_combout\) # (!\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector6~0_combout\,
	datad => \Selector2~5_combout\,
	combout => \Selector2~6_combout\);

-- Location: LCCOMB_X18_Y16_N12
\Selector2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~8_combout\ = (\Selector2~7_combout\) # ((\Selector2~4_combout\) # (\Selector2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~7_combout\,
	datab => \Selector2~4_combout\,
	datac => \Selector2~6_combout\,
	combout => \Selector2~8_combout\);

-- Location: LCCOMB_X18_Y16_N18
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\Selector2~0_combout\ & ((\Selector2~6_combout\) # ((!\Selector2~8_combout\ & \stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~8_combout\,
	datab => \Selector2~6_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector2~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X18_Y16_N19
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

-- Location: LCCOMB_X14_Y15_N8
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

-- Location: FF_X14_Y15_N9
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

-- Location: LCCOMB_X14_Y15_N10
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

-- Location: FF_X14_Y15_N11
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

-- Location: LCCOMB_X14_Y15_N12
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

-- Location: FF_X14_Y15_N13
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

-- Location: LCCOMB_X14_Y15_N14
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

-- Location: FF_X14_Y15_N15
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

-- Location: LCCOMB_X14_Y15_N16
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

-- Location: FF_X14_Y15_N17
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

-- Location: LCCOMB_X14_Y15_N18
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

-- Location: FF_X14_Y15_N19
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

-- Location: LCCOMB_X14_Y15_N20
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

-- Location: FF_X14_Y15_N21
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

-- Location: LCCOMB_X14_Y15_N22
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

-- Location: FF_X14_Y15_N23
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

-- Location: LCCOMB_X14_Y15_N24
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

-- Location: FF_X14_Y15_N25
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

-- Location: LCCOMB_X14_Y15_N26
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

-- Location: FF_X14_Y15_N27
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

-- Location: LCCOMB_X14_Y15_N28
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

-- Location: FF_X14_Y15_N29
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

-- Location: LCCOMB_X14_Y15_N30
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

-- Location: FF_X14_Y15_N31
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

-- Location: LCCOMB_X14_Y14_N0
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

-- Location: FF_X14_Y14_N1
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

-- Location: LCCOMB_X14_Y14_N2
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

-- Location: FF_X14_Y14_N3
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

-- Location: LCCOMB_X14_Y14_N4
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

-- Location: FF_X14_Y14_N5
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

-- Location: LCCOMB_X14_Y14_N6
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

-- Location: FF_X14_Y14_N7
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

-- Location: LCCOMB_X14_Y14_N8
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

-- Location: FF_X14_Y14_N9
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

-- Location: LCCOMB_X14_Y14_N10
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

-- Location: FF_X14_Y14_N11
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

-- Location: LCCOMB_X14_Y14_N12
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

-- Location: FF_X14_Y14_N13
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

-- Location: LCCOMB_X14_Y14_N14
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

-- Location: FF_X14_Y14_N15
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

-- Location: LCCOMB_X14_Y14_N16
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

-- Location: FF_X14_Y14_N17
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

-- Location: LCCOMB_X14_Y14_N24
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

-- Location: LCCOMB_X14_Y14_N18
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

-- Location: FF_X14_Y14_N19
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

-- Location: LCCOMB_X14_Y14_N20
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

-- Location: FF_X14_Y14_N21
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

-- Location: LCCOMB_X14_Y14_N22
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

-- Location: FF_X14_Y14_N23
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

-- Location: LCCOMB_X14_Y14_N26
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

-- Location: LCCOMB_X14_Y15_N6
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

-- Location: LCCOMB_X14_Y15_N4
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

-- Location: LCCOMB_X14_Y15_N0
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

-- Location: LCCOMB_X14_Y15_N2
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ((\LessThan2~4_combout\ & (!counter(11) & !counter(10)))) # (!counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(12),
	datab => \LessThan2~4_combout\,
	datac => counter(11),
	datad => counter(10),
	combout => \LessThan2~5_combout\);

-- Location: LCCOMB_X14_Y14_N28
\LessThan2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ((\LessThan2~5_combout\ & !counter(13))) # (!counter(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datac => \LessThan2~5_combout\,
	datad => counter(13),
	combout => \LessThan2~6_combout\);

-- Location: LCCOMB_X14_Y14_N30
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

-- Location: LCCOMB_X11_Y13_N12
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

-- Location: FF_X11_Y13_N13
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

-- Location: LCCOMB_X11_Y13_N28
\Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((\led1[0]~reg0_q\ & ((\LessThan2~7_combout\) # (!\latch~q\))) # (!\led1[0]~reg0_q\ & (!\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \led1[0]~reg0_q\,
	datac => \LessThan2~7_combout\,
	datad => \latch~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X11_Y13_N30
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

-- Location: FF_X11_Y13_N31
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

-- Location: LCCOMB_X11_Y13_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((\led1[1]~reg0_q\ & ((\LessThan2~7_combout\) # (!\latch~q\))) # (!\led1[1]~reg0_q\ & (!\LessThan2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \led1[1]~reg0_q\,
	datac => \LessThan2~7_combout\,
	datad => \latch~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X11_Y13_N20
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\stateCoffeeMachine.Selection~q\) # (\Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X11_Y13_N21
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

-- Location: LCCOMB_X11_Y13_N22
\led1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led1~0_combout\ = (!\stateCoffeeMachine.Waiting~q\ & ((\LessThan2~7_combout\ & ((\led1[2]~reg0_q\))) # (!\LessThan2~7_combout\ & ((!\led1[2]~reg0_q\) # (!\latch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~7_combout\,
	datab => \latch~q\,
	datac => \led1[2]~reg0_q\,
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \led1~0_combout\);

-- Location: FF_X11_Y13_N23
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

-- Location: LCCOMB_X17_Y15_N14
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

-- Location: LCCOMB_X17_Y14_N22
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

-- Location: LCCOMB_X17_Y15_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!clkForIndication(6) & (!clkForIndication(4) & !clkForIndication(5)))) # (!clkForIndication(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => clkForIndication(6),
	datab => clkForIndication(7),
	datac => clkForIndication(4),
	datad => clkForIndication(5),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X17_Y14_N28
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!clkForIndication(13) & (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (!clkForIndication(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => clkForIndication(13),
	datac => \LessThan0~0_combout\,
	datad => clkForIndication(12),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y14_N12
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

-- Location: LCCOMB_X17_Y14_N14
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

-- Location: FF_X17_Y14_N15
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

-- Location: LCCOMB_X17_Y14_N16
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

-- Location: FF_X17_Y14_N17
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

-- Location: LCCOMB_X17_Y14_N18
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

-- Location: FF_X17_Y14_N19
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

-- Location: LCCOMB_X17_Y14_N20
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

-- Location: FF_X17_Y15_N15
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

-- Location: LCCOMB_X17_Y15_N16
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

-- Location: FF_X17_Y15_N17
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

-- Location: LCCOMB_X17_Y15_N18
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

-- Location: FF_X17_Y15_N19
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

-- Location: LCCOMB_X17_Y15_N20
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

-- Location: FF_X17_Y15_N21
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

-- Location: LCCOMB_X17_Y15_N22
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

-- Location: FF_X17_Y15_N23
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

-- Location: LCCOMB_X17_Y15_N24
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

-- Location: FF_X17_Y15_N25
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

-- Location: LCCOMB_X17_Y15_N26
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

-- Location: FF_X17_Y15_N27
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

-- Location: LCCOMB_X17_Y15_N28
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

-- Location: FF_X17_Y15_N29
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

-- Location: LCCOMB_X17_Y15_N30
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

-- Location: FF_X17_Y15_N31
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

-- Location: LCCOMB_X17_Y14_N0
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

-- Location: FF_X17_Y14_N1
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

-- Location: LCCOMB_X17_Y14_N2
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

-- Location: FF_X17_Y14_N3
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

-- Location: LCCOMB_X17_Y14_N4
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

-- Location: FF_X17_Y14_N5
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

-- Location: LCCOMB_X17_Y14_N6
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

-- Location: FF_X17_Y14_N7
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

-- Location: LCCOMB_X17_Y14_N8
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

-- Location: FF_X17_Y14_N9
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

-- Location: LCCOMB_X17_Y14_N10
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

-- Location: FF_X17_Y14_N11
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

-- Location: FF_X17_Y14_N13
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

-- Location: LCCOMB_X17_Y14_N26
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

-- Location: LCCOMB_X17_Y14_N24
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

-- Location: FF_X17_Y14_N25
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

-- Location: LCCOMB_X17_Y15_N4
\indicator[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \indicator[1]~0_combout\ = indicator(1) $ (((indicator(0) & !\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(0),
	datac => indicator(1),
	datad => \LessThan0~4_combout\,
	combout => \indicator[1]~0_combout\);

-- Location: FF_X17_Y15_N5
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

-- Location: LCCOMB_X14_Y18_N2
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = procent(3) $ (VCC)
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X14_Y18_N4
\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (procent(4) & (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!procent(4) & (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!procent(4) & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X14_Y18_N6
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

-- Location: LCCOMB_X14_Y18_N8
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

-- Location: LCCOMB_X14_Y18_N10
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

-- Location: LCCOMB_X14_Y18_N12
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

-- Location: LCCOMB_X13_Y18_N6
\Mod2|auto_generated|divider|divider|StageOut[53]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\);

-- Location: LCCOMB_X14_Y18_N30
\Mod2|auto_generated|divider|divider|StageOut[54]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\);

-- Location: LCCOMB_X14_Y18_N0
\Mod2|auto_generated|divider|divider|StageOut[54]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ = (procent(7) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\);

-- Location: LCCOMB_X13_Y18_N4
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

-- Location: LCCOMB_X14_Y18_N20
\Mod2|auto_generated|divider|divider|StageOut[52]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\);

-- Location: LCCOMB_X13_Y18_N28
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

-- Location: LCCOMB_X14_Y18_N24
\Mod2|auto_generated|divider|divider|StageOut[51]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\);

-- Location: LCCOMB_X14_Y18_N18
\Mod2|auto_generated|divider|divider|StageOut[51]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\ = (procent(4) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\);

-- Location: LCCOMB_X13_Y18_N30
\Mod2|auto_generated|divider|divider|StageOut[50]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\ = (procent(3) & \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(3),
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[50]~6_combout\);

-- Location: LCCOMB_X14_Y18_N26
\Mod2|auto_generated|divider|divider|StageOut[50]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ & !\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[50]~7_combout\);

-- Location: LCCOMB_X13_Y18_N26
\Mod2|auto_generated|divider|divider|StageOut[49]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\ = (!\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & procent(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => procent(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\);

-- Location: LCCOMB_X13_Y18_N0
\Mod2|auto_generated|divider|divider|StageOut[49]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & procent(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod2|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => procent(2),
	combout => \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\);

-- Location: LCCOMB_X13_Y18_N12
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\)))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\) # (\Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[49]~9_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[49]~8_combout\,
	datad => VCC,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X13_Y18_N14
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

-- Location: LCCOMB_X13_Y18_N16
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

-- Location: LCCOMB_X13_Y18_N18
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ & (((!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ & (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\ & ((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\ & !\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\)) # 
-- (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X13_Y18_N20
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

-- Location: LCCOMB_X13_Y18_N22
\Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\ & (!\Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\ & 
-- !\Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[54]~11_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[54]~10_combout\,
	datad => VCC,
	cin => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	cout => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X13_Y18_N24
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

-- Location: LCCOMB_X12_Y18_N2
\Mod2|auto_generated|divider|divider|StageOut[62]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[53]~1_combout\,
	datab => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \Mod2|auto_generated|divider|divider|StageOut[53]~0_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\);

-- Location: LCCOMB_X13_Y18_N2
\Mod2|auto_generated|divider|divider|StageOut[61]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[52]~3_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[52]~2_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\);

-- Location: LCCOMB_X13_Y18_N8
\Mod2|auto_generated|divider|divider|StageOut[60]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\) # 
-- ((\Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[51]~5_combout\,
	datab => \Mod2|auto_generated|divider|divider|StageOut[51]~4_combout\,
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\);

-- Location: LCCOMB_X13_Y18_N10
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

-- Location: LCCOMB_X12_Y18_N4
\Mod2|auto_generated|divider|divider|StageOut[58]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (procent(2))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- ((\Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datac => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\);

-- Location: LCCOMB_X14_Y18_N14
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

-- Location: LCCOMB_X14_Y18_N28
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

-- Location: LCCOMB_X14_Y18_N16
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

-- Location: LCCOMB_X12_Y18_N30
\Mod2|auto_generated|divider|divider|StageOut[57]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\ = (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((procent(1)))) # (!\Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	datac => procent(1),
	datad => \Mod2|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\);

-- Location: LCCOMB_X12_Y18_N8
\Add16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~1_cout\ = CARRY((procent(1)) # (!\Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[57]~19_combout\,
	datab => procent(1),
	datad => VCC,
	cout => \Add16~1_cout\);

-- Location: LCCOMB_X12_Y18_N10
\Add16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~2_combout\ = (procent(2) & ((\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & (!\Add16~1_cout\)) # (!\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & (\Add16~1_cout\ & VCC)))) # (!procent(2) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & ((\Add16~1_cout\) # (GND))) # (!\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & (!\Add16~1_cout\))))
-- \Add16~3\ = CARRY((procent(2) & (\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\ & !\Add16~1_cout\)) # (!procent(2) & ((\Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\) # (!\Add16~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datab => \Mod2|auto_generated|divider|divider|StageOut[58]~16_combout\,
	datad => VCC,
	cin => \Add16~1_cout\,
	combout => \Add16~2_combout\,
	cout => \Add16~3\);

-- Location: LCCOMB_X12_Y18_N12
\Add16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~4_combout\ = ((procent(3) $ (\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ $ (\Add16~3\)))) # (GND)
-- \Add16~5\ = CARRY((procent(3) & ((!\Add16~3\) # (!\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\))) # (!procent(3) & (!\Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\ & !\Add16~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => \Mod2|auto_generated|divider|divider|StageOut[59]~15_combout\,
	datad => VCC,
	cin => \Add16~3\,
	combout => \Add16~4_combout\,
	cout => \Add16~5\);

-- Location: LCCOMB_X12_Y18_N14
\Add16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~6_combout\ = (procent(4) & ((\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & (!\Add16~5\)) # (!\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & (\Add16~5\ & VCC)))) # (!procent(4) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & ((\Add16~5\) # (GND))) # (!\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & (!\Add16~5\))))
-- \Add16~7\ = CARRY((procent(4) & (\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\ & !\Add16~5\)) # (!procent(4) & ((\Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\) # (!\Add16~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(4),
	datab => \Mod2|auto_generated|divider|divider|StageOut[60]~14_combout\,
	datad => VCC,
	cin => \Add16~5\,
	combout => \Add16~6_combout\,
	cout => \Add16~7\);

-- Location: LCCOMB_X12_Y18_N16
\Add16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~8_combout\ = ((\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ $ (procent(5) $ (\Add16~7\)))) # (GND)
-- \Add16~9\ = CARRY((\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & (procent(5) & !\Add16~7\)) # (!\Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\ & ((procent(5)) # (!\Add16~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod2|auto_generated|divider|divider|StageOut[61]~13_combout\,
	datab => procent(5),
	datad => VCC,
	cin => \Add16~7\,
	combout => \Add16~8_combout\,
	cout => \Add16~9\);

-- Location: LCCOMB_X12_Y18_N18
\Add16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~10_combout\ = (procent(6) & ((\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & (!\Add16~9\)) # (!\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & (\Add16~9\ & VCC)))) # (!procent(6) & 
-- ((\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & ((\Add16~9\) # (GND))) # (!\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & (!\Add16~9\))))
-- \Add16~11\ = CARRY((procent(6) & (\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\ & !\Add16~9\)) # (!procent(6) & ((\Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\) # (!\Add16~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datab => \Mod2|auto_generated|divider|divider|StageOut[62]~12_combout\,
	datad => VCC,
	cin => \Add16~9\,
	combout => \Add16~10_combout\,
	cout => \Add16~11\);

-- Location: LCCOMB_X12_Y18_N20
\Add16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~12_combout\ = (procent(7) & ((GND) # (!\Add16~11\))) # (!procent(7) & (\Add16~11\ $ (GND)))
-- \Add16~13\ = CARRY((procent(7)) # (!\Add16~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datad => VCC,
	cin => \Add16~11\,
	combout => \Add16~12_combout\,
	cout => \Add16~13\);

-- Location: LCCOMB_X12_Y18_N22
\Add16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add16~14_combout\ = \Add16~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add16~13\,
	combout => \Add16~14_combout\);

-- Location: LCCOMB_X12_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\ = \Add16~12_combout\ $ (VCC)
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ = CARRY(\Add16~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~12_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\);

-- Location: LCCOMB_X12_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\ = (\Add16~14_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\)) # (!\Add16~14_combout\ & 
-- (\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\ & VCC))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ = CARRY((\Add16~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add16~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\);

-- Location: LCCOMB_X12_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\ = (\Add16~14_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\ $ (GND))) # (!\Add16~14_combout\ & ((GND) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\) # (!\Add16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add16~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\);

-- Location: LCCOMB_X12_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\ = (\Add16~14_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\) # (GND))) # (!\Add16~14_combout\ & 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ = CARRY((\Add16~14_combout\) # (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add16~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\);

-- Location: LCCOMB_X12_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ = (\Add16~14_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ & VCC)) # (!\Add16~14_combout\ & 
-- (\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\ $ (GND)))
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\ = CARRY((!\Add16~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add16~14_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~9\);

-- Location: LCCOMB_X12_Y19_N24
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

-- Location: LCCOMB_X12_Y19_N26
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

-- Location: LCCOMB_X12_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[214]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[6]~8_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\);

-- Location: LCCOMB_X11_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[214]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ = (!\Add16~14_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add16~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\);

-- Location: LCCOMB_X12_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[213]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\);

-- Location: LCCOMB_X12_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[212]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\);

-- Location: LCCOMB_X12_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[211]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\);

-- Location: LCCOMB_X12_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[210]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\);

-- Location: LCCOMB_X12_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[210]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[210]~93_combout\ = (\Add16~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[210]~93_combout\);

-- Location: LCCOMB_X11_Y19_N8
\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ = \Add16~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add16~10_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\);

-- Location: LCCOMB_X11_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[209]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\);

-- Location: LCCOMB_X11_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[209]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[209]~95_combout\ = (\Add16~10_combout\ & \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add16~10_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[209]~95_combout\);

-- Location: LCCOMB_X11_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[209]~96_combout\) # (\Div2|auto_generated|divider|divider|StageOut[209]~95_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[209]~96_combout\) # (\Div2|auto_generated|divider|divider|StageOut[209]~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[209]~96_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[209]~95_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\);

-- Location: LCCOMB_X11_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[210]~93_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[210]~93_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[210]~94_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[210]~93_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[210]~94_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[210]~93_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\);

-- Location: LCCOMB_X11_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[211]~92_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[211]~92_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\);

-- Location: LCCOMB_X11_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & !\Div2|auto_generated|divider|divider|StageOut[212]~91_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[212]~91_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\);

-- Location: LCCOMB_X11_Y19_N24
\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[213]~90_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[213]~90_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\);

-- Location: LCCOMB_X11_Y19_N26
\Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[214]~89_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[214]~88_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[214]~89_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[214]~88_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[7]~11_cout\);

-- Location: LCCOMB_X11_Y19_N28
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

-- Location: LCCOMB_X12_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[222]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[222]~145_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (!\Add16~14_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~14_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[5]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[222]~145_combout\);

-- Location: LCCOMB_X11_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[222]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[222]~97_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[222]~97_combout\);

-- Location: LCCOMB_X12_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[221]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[221]~146_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (!\Add16~14_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~14_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[4]~4_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[221]~146_combout\);

-- Location: LCCOMB_X10_Y19_N24
\Div2|auto_generated|divider|divider|StageOut[221]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[221]~98_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[221]~98_combout\);

-- Location: LCCOMB_X10_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[220]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[220]~99_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[220]~99_combout\);

-- Location: LCCOMB_X12_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[220]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[220]~147_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (!\Add16~14_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~14_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[220]~147_combout\);

-- Location: LCCOMB_X11_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[219]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[219]~100_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[219]~100_combout\);

-- Location: LCCOMB_X11_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[219]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[219]~148_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Add16~12_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[219]~148_combout\);

-- Location: LCCOMB_X11_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[218]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[218]~149_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & ((\Add16~10_combout\))) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & (\Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[1]~14_combout\,
	datad => \Add16~10_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[218]~149_combout\);

-- Location: LCCOMB_X11_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[218]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[218]~101_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[218]~101_combout\);

-- Location: LCCOMB_X10_Y19_N26
\Div2|auto_generated|divider|divider|StageOut[217]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[217]~102_combout\ = (\Add16~8_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[217]~102_combout\);

-- Location: LCCOMB_X13_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[208]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Add16~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Add16~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\);

-- Location: LCCOMB_X13_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[208]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[208]~103_combout\ = (\Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\ & \Add16~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_26_result_int[8]~12_combout\,
	datad => \Add16~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[208]~103_combout\);

-- Location: LCCOMB_X13_Y19_N0
\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[208]~104_combout\) # (\Div2|auto_generated|divider|divider|StageOut[208]~103_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[208]~104_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[208]~103_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\);

-- Location: LCCOMB_X10_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[217]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[217]~105_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[217]~105_combout\);

-- Location: LCCOMB_X10_Y19_N4
\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[217]~102_combout\) # (\Div2|auto_generated|divider|divider|StageOut[217]~105_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[217]~102_combout\) # (\Div2|auto_generated|divider|divider|StageOut[217]~105_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[217]~102_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[217]~105_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\);

-- Location: LCCOMB_X10_Y19_N6
\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[218]~149_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[218]~101_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[218]~149_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[218]~101_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[218]~149_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[218]~101_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[218]~149_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[218]~101_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\);

-- Location: LCCOMB_X10_Y19_N8
\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[219]~100_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[219]~148_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[219]~100_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[219]~148_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[219]~100_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[219]~148_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[219]~100_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[219]~148_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\);

-- Location: LCCOMB_X10_Y19_N10
\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[220]~99_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[220]~99_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[220]~147_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[220]~147_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[220]~99_combout\ & !\Div2|auto_generated|divider|divider|StageOut[220]~147_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[220]~99_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[220]~147_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\);

-- Location: LCCOMB_X10_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[221]~146_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~98_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[221]~146_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~98_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[221]~146_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[221]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[221]~146_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[221]~98_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\);

-- Location: LCCOMB_X10_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[222]~145_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[222]~97_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[222]~145_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[222]~97_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[7]~11_cout\);

-- Location: LCCOMB_X10_Y19_N16
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

-- Location: LCCOMB_X16_Y18_N6
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

-- Location: FF_X16_Y18_N7
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

-- Location: LCCOMB_X10_Y19_N20
\Div2|auto_generated|divider|divider|StageOut[230]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[230]~133_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[221]~146_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[5]~6_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[221]~146_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[230]~133_combout\);

-- Location: LCCOMB_X9_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[230]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[230]~106_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[6]~8_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[230]~106_combout\);

-- Location: LCCOMB_X10_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[229]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[229]~107_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[229]~107_combout\);

-- Location: LCCOMB_X10_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[229]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[229]~134_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[220]~147_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[4]~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[220]~147_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[229]~134_combout\);

-- Location: LCCOMB_X9_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[228]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[228]~108_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[228]~108_combout\);

-- Location: LCCOMB_X10_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[228]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[228]~135_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[219]~148_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[219]~148_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[228]~135_combout\);

-- Location: LCCOMB_X9_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[227]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[227]~109_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[227]~109_combout\);

-- Location: LCCOMB_X9_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[227]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[227]~136_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[218]~149_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_27_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[218]~149_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[227]~136_combout\);

-- Location: LCCOMB_X9_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[226]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[226]~110_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[226]~110_combout\);

-- Location: LCCOMB_X10_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[226]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[226]~150_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & (\Add16~8_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~8_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[226]~150_combout\);

-- Location: LCCOMB_X6_Y19_N22
\Div2|auto_generated|divider|divider|StageOut[216]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[216]~112_combout\ = (\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Add16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Add16~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[216]~112_combout\);

-- Location: LCCOMB_X6_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[216]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\ & \Add16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_27_result_int[8]~12_combout\,
	datad => \Add16~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\);

-- Location: LCCOMB_X6_Y19_N24
\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[216]~112_combout\) # (\Div2|auto_generated|divider|divider|StageOut[216]~113_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[216]~112_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[216]~113_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\);

-- Location: LCCOMB_X6_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[225]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[225]~114_combout\ = (\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[225]~114_combout\);

-- Location: LCCOMB_X6_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[225]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[225]~111_combout\ = (\Add16~6_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[225]~111_combout\);

-- Location: LCCOMB_X9_Y19_N14
\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[225]~114_combout\) # (\Div2|auto_generated|divider|divider|StageOut[225]~111_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[225]~114_combout\) # (\Div2|auto_generated|divider|divider|StageOut[225]~111_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[225]~114_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[225]~111_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\);

-- Location: LCCOMB_X9_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[226]~110_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[226]~150_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[226]~110_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[226]~150_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[226]~110_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[226]~150_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[226]~110_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[226]~150_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\);

-- Location: LCCOMB_X9_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[227]~109_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[227]~136_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[227]~109_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[227]~136_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[227]~109_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[227]~136_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[227]~109_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[227]~136_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\);

-- Location: LCCOMB_X9_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[228]~108_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[228]~108_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[228]~135_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[228]~135_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[228]~108_combout\ & !\Div2|auto_generated|divider|divider|StageOut[228]~135_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[228]~108_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[228]~135_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\);

-- Location: LCCOMB_X9_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[229]~107_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~134_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[229]~107_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~134_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[229]~107_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[229]~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[229]~107_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[229]~134_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\);

-- Location: LCCOMB_X9_Y19_N24
\Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[230]~133_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[230]~106_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[230]~133_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[230]~106_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[7]~11_cout\);

-- Location: LCCOMB_X9_Y19_N26
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

-- Location: LCCOMB_X9_Y18_N4
\digit1[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[2]~16_combout\ = !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \digit1[2]~16_combout\);

-- Location: FF_X9_Y18_N5
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

-- Location: LCCOMB_X8_Y19_N12
\Div2|auto_generated|divider|divider|StageOut[238]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[238]~115_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[238]~115_combout\);

-- Location: LCCOMB_X9_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[238]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[238]~137_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[229]~134_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[229]~134_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[238]~137_combout\);

-- Location: LCCOMB_X8_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[237]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[237]~116_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[237]~116_combout\);

-- Location: LCCOMB_X9_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[237]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[237]~138_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[228]~135_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[228]~135_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[237]~138_combout\);

-- Location: LCCOMB_X9_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[236]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[236]~117_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[236]~117_combout\);

-- Location: LCCOMB_X8_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[236]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[236]~139_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[227]~136_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[227]~136_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[236]~139_combout\);

-- Location: LCCOMB_X9_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[235]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[235]~140_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[226]~150_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_28_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[226]~150_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[235]~140_combout\);

-- Location: LCCOMB_X8_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[235]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[235]~118_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[235]~118_combout\);

-- Location: LCCOMB_X6_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[234]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[234]~151_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & (\Add16~6_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[1]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[234]~151_combout\);

-- Location: LCCOMB_X8_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[234]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[234]~119_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[234]~119_combout\);

-- Location: LCCOMB_X6_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[224]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[224]~121_combout\ = (\Add16~4_combout\ & \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add16~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[224]~121_combout\);

-- Location: LCCOMB_X6_Y19_N18
\Div2|auto_generated|divider|divider|StageOut[224]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\ = (\Add16~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add16~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_28_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\);

-- Location: LCCOMB_X6_Y19_N2
\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[224]~121_combout\) # (\Div2|auto_generated|divider|divider|StageOut[224]~122_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|StageOut[224]~121_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[224]~122_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\);

-- Location: LCCOMB_X6_Y19_N20
\Div2|auto_generated|divider|divider|StageOut[233]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[233]~123_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[233]~123_combout\);

-- Location: LCCOMB_X8_Y18_N0
\Div2|auto_generated|divider|divider|StageOut[233]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[233]~120_combout\ = (\Add16~4_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add16~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[233]~120_combout\);

-- Location: LCCOMB_X8_Y19_N16
\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\ = (((\Div2|auto_generated|divider|divider|StageOut[233]~123_combout\) # (\Div2|auto_generated|divider|divider|StageOut[233]~120_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[233]~123_combout\) # (\Div2|auto_generated|divider|divider|StageOut[233]~120_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[233]~123_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[233]~120_combout\,
	datad => VCC,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\);

-- Location: LCCOMB_X8_Y19_N18
\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (((\Div2|auto_generated|divider|divider|StageOut[234]~151_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[234]~119_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\ & (!\Div2|auto_generated|divider|divider|StageOut[234]~151_combout\ & 
-- (!\Div2|auto_generated|divider|divider|StageOut[234]~119_combout\)))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[234]~151_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[234]~119_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[234]~151_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[234]~119_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~1\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\);

-- Location: LCCOMB_X8_Y19_N20
\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((((\Div2|auto_generated|divider|divider|StageOut[235]~140_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[235]~118_combout\))))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\ & ((\Div2|auto_generated|divider|divider|StageOut[235]~140_combout\) # 
-- ((\Div2|auto_generated|divider|divider|StageOut[235]~118_combout\) # (GND))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[235]~140_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[235]~118_combout\) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[235]~140_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[235]~118_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~3\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\);

-- Location: LCCOMB_X8_Y19_N22
\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\ = (\Div2|auto_generated|divider|divider|StageOut[236]~117_combout\ & (((!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)))) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[236]~117_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[236]~139_combout\ & (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\)) # 
-- (!\Div2|auto_generated|divider|divider|StageOut[236]~139_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\) # (GND)))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[236]~117_combout\ & !\Div2|auto_generated|divider|divider|StageOut[236]~139_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[236]~117_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[236]~139_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~5\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\);

-- Location: LCCOMB_X8_Y19_N24
\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & (((\Div2|auto_generated|divider|divider|StageOut[237]~116_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~138_combout\)))) # (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((((\Div2|auto_generated|divider|divider|StageOut[237]~116_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~138_combout\)))))
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\ = CARRY((!\Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\ & ((\Div2|auto_generated|divider|divider|StageOut[237]~116_combout\) # 
-- (\Div2|auto_generated|divider|divider|StageOut[237]~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[237]~116_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[237]~138_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~7\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\);

-- Location: LCCOMB_X8_Y19_N26
\Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[238]~115_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[238]~137_combout\ & 
-- !\Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[238]~115_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[238]~137_combout\,
	datad => VCC,
	cin => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~9\,
	cout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[7]~11_cout\);

-- Location: LCCOMB_X8_Y19_N28
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

-- Location: LCCOMB_X7_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[246]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[246]~124_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[6]~8_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[246]~124_combout\);

-- Location: LCCOMB_X8_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[246]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[246]~141_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[237]~138_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[5]~6_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|StageOut[237]~138_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[246]~141_combout\);

-- Location: LCCOMB_X8_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[245]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[245]~142_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[236]~139_combout\) # 
-- ((!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[236]~139_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[4]~4_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[245]~142_combout\);

-- Location: LCCOMB_X7_Y19_N4
\Div2|auto_generated|divider|divider|StageOut[245]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[245]~125_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[5]~6_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[245]~125_combout\);

-- Location: LCCOMB_X8_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[244]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[244]~143_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[235]~140_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[235]~140_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[3]~2_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[244]~143_combout\);

-- Location: LCCOMB_X8_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[244]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[244]~126_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\ & !\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[4]~4_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[244]~126_combout\);

-- Location: LCCOMB_X7_Y19_N10
\Div2|auto_generated|divider|divider|StageOut[243]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[243]~127_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[3]~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[243]~127_combout\);

-- Location: LCCOMB_X6_Y19_N6
\Div2|auto_generated|divider|divider|StageOut[243]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[243]~144_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|StageOut[234]~151_combout\) # 
-- ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\ & !\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_29_result_int[2]~0_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[234]~151_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[243]~144_combout\);

-- Location: LCCOMB_X6_Y19_N14
\Div2|auto_generated|divider|divider|StageOut[242]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[242]~152_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & (\Add16~4_combout\)) # 
-- (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & ((\Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~4_combout\,
	datab => \Div2|auto_generated|divider|divider|add_sub_29_result_int[1]~14_combout\,
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[242]~152_combout\);

-- Location: LCCOMB_X7_Y19_N8
\Div2|auto_generated|divider|divider|StageOut[242]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[242]~128_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[2]~0_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[242]~128_combout\);

-- Location: LCCOMB_X7_Y19_N28
\Div2|auto_generated|divider|divider|StageOut[232]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\ = (!\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Add16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Add16~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\);

-- Location: LCCOMB_X7_Y19_N0
\Div2|auto_generated|divider|divider|StageOut[232]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[232]~130_combout\ = (\Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\ & \Add16~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div2|auto_generated|divider|divider|add_sub_29_result_int[8]~12_combout\,
	datad => \Add16~2_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[232]~130_combout\);

-- Location: LCCOMB_X7_Y19_N12
\Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\ = (\Div2|auto_generated|divider|divider|StageOut[232]~131_combout\) # (\Div2|auto_generated|divider|divider|StageOut[232]~130_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div2|auto_generated|divider|divider|StageOut[232]~131_combout\,
	datad => \Div2|auto_generated|divider|divider|StageOut[232]~130_combout\,
	combout => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\);

-- Location: LCCOMB_X7_Y19_N30
\Div2|auto_generated|divider|divider|StageOut[241]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[241]~132_combout\ = (\Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\ & !\Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|add_sub_30_result_int[1]~14_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[241]~132_combout\);

-- Location: LCCOMB_X7_Y19_N2
\Div2|auto_generated|divider|divider|StageOut[241]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div2|auto_generated|divider|divider|StageOut[241]~129_combout\ = (\Add16~2_combout\ & \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~2_combout\,
	datad => \Div2|auto_generated|divider|divider|add_sub_30_result_int[8]~12_combout\,
	combout => \Div2|auto_generated|divider|divider|StageOut[241]~129_combout\);

-- Location: LCCOMB_X7_Y19_N14
\digit1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~2_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[241]~132_combout\) # (\Div2|auto_generated|divider|divider|StageOut[241]~129_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[241]~132_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[241]~129_combout\,
	datad => VCC,
	cout => \digit1[0]~2_cout\);

-- Location: LCCOMB_X7_Y19_N16
\digit1[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~4_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[242]~152_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[242]~128_combout\ & !\digit1[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[242]~152_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[242]~128_combout\,
	datad => VCC,
	cin => \digit1[0]~2_cout\,
	cout => \digit1[0]~4_cout\);

-- Location: LCCOMB_X7_Y19_N18
\digit1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~6_cout\ = CARRY((\Div2|auto_generated|divider|divider|StageOut[243]~127_combout\) # ((\Div2|auto_generated|divider|divider|StageOut[243]~144_combout\) # (!\digit1[0]~4_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[243]~127_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[243]~144_combout\,
	datad => VCC,
	cin => \digit1[0]~4_cout\,
	cout => \digit1[0]~6_cout\);

-- Location: LCCOMB_X7_Y19_N20
\digit1[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~8_cout\ = CARRY(((!\Div2|auto_generated|divider|divider|StageOut[244]~143_combout\ & !\Div2|auto_generated|divider|divider|StageOut[244]~126_combout\)) # (!\digit1[0]~6_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[244]~143_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[244]~126_combout\,
	datad => VCC,
	cin => \digit1[0]~6_cout\,
	cout => \digit1[0]~8_cout\);

-- Location: LCCOMB_X7_Y19_N22
\digit1[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~10_cout\ = CARRY((!\digit1[0]~8_cout\ & ((\Div2|auto_generated|divider|divider|StageOut[245]~142_combout\) # (\Div2|auto_generated|divider|divider|StageOut[245]~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[245]~142_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[245]~125_combout\,
	datad => VCC,
	cin => \digit1[0]~8_cout\,
	cout => \digit1[0]~10_cout\);

-- Location: LCCOMB_X7_Y19_N24
\digit1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit1[0]~12_cout\ = CARRY((!\Div2|auto_generated|divider|divider|StageOut[246]~124_combout\ & (!\Div2|auto_generated|divider|divider|StageOut[246]~141_combout\ & !\digit1[0]~10_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div2|auto_generated|divider|divider|StageOut[246]~124_combout\,
	datab => \Div2|auto_generated|divider|divider|StageOut[246]~141_combout\,
	datad => VCC,
	cin => \digit1[0]~10_cout\,
	cout => \digit1[0]~12_cout\);

-- Location: LCCOMB_X7_Y19_N26
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

-- Location: FF_X7_Y19_N27
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

-- Location: LCCOMB_X16_Y18_N24
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

-- Location: FF_X16_Y18_N25
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

-- Location: LCCOMB_X16_Y18_N12
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (digit1(2) & (!digit1(3) & ((!digit1(1)) # (!digit1(0))))) # (!digit1(2) & (digit1(3) $ (((digit1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(1),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X17_Y16_N4
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!selectionDrink(1) & !selectionDrink(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => selectionDrink(1),
	datad => selectionDrink(0),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X16_Y17_N30
\Selector84~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector84~0_combout\ = (\WideOr9~0_combout\ & (!\stateCoffeeMachine.Implementation~q\ & ((!\stateCoffeeMachine.Selection~q\) # (!\Decoder1~0_combout\)))) # (!\WideOr9~0_combout\ & (((!\stateCoffeeMachine.Selection~q\)) # (!\Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr9~0_combout\,
	datab => \Decoder1~0_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector84~0_combout\);

-- Location: FF_X16_Y17_N31
\bufferForIndicator1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector84~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(0));

-- Location: LCCOMB_X17_Y18_N8
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

-- Location: FF_X17_Y18_N9
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

-- Location: LCCOMB_X16_Y17_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (indicator(1) & (indicator(0))) # (!indicator(1) & ((indicator(0) & (bufferForIndicator1(0))) # (!indicator(0) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => indicator(0),
	datac => bufferForIndicator1(0),
	datad => bufferForIndicator0(0),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X14_Y13_N6
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

-- Location: LCCOMB_X14_Y13_N8
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (procent(6) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!procent(6) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!procent(6) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(6),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X14_Y13_N10
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

-- Location: LCCOMB_X14_Y13_N12
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

-- Location: LCCOMB_X14_Y13_N14
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

-- Location: LCCOMB_X14_Y13_N4
\Mod1|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X14_Y13_N0
\Mod1|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\ = (procent(6) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => procent(6),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X14_Y13_N2
\Mod1|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X14_Y13_N16
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

-- Location: LCCOMB_X14_Y13_N18
\Mod1|auto_generated|divider|divider|StageOut[16]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\);

-- Location: LCCOMB_X16_Y13_N28
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

-- Location: LCCOMB_X16_Y13_N22
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

-- Location: LCCOMB_X14_Y13_N22
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X14_Y13_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[16]~40_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[16]~41_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X14_Y13_N26
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

-- Location: LCCOMB_X14_Y13_N28
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~36_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~37_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X14_Y13_N30
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

-- Location: LCCOMB_X13_Y13_N24
\Mod1|auto_generated|divider|divider|StageOut[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(6)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => procent(6),
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X13_Y13_N16
\Mod1|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X14_Y13_N20
\Mod1|auto_generated|divider|divider|StageOut[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((procent(5)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => procent(5),
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X13_Y13_N18
\Mod1|auto_generated|divider|divider|StageOut[22]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~45_combout\);

-- Location: LCCOMB_X13_Y13_N28
\Mod1|auto_generated|divider|divider|StageOut[21]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & procent(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => procent(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~46_combout\);

-- Location: LCCOMB_X13_Y13_N4
\Mod1|auto_generated|divider|divider|StageOut[21]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~47_combout\);

-- Location: LCCOMB_X13_Y13_N26
\Mod1|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & procent(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => procent(3),
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X11_Y13_N4
\Mod1|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\ = (procent(3) & !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X13_Y13_N6
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[20]~48_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[20]~49_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X13_Y13_N8
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

-- Location: LCCOMB_X13_Y13_N10
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

-- Location: LCCOMB_X13_Y13_N12
\Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y13_N14
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

-- Location: LCCOMB_X11_Y13_N26
\Mod1|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\ = (procent(2) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X11_Y13_N24
\Mod1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (procent(2) & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X12_Y13_N0
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

-- Location: LCCOMB_X13_Y13_N20
\Mod1|auto_generated|divider|divider|StageOut[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X13_Y13_N0
\Mod1|auto_generated|divider|divider|StageOut[28]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[28]~50_combout\);

-- Location: LCCOMB_X13_Y13_N30
\Mod1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((procent(4)))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => procent(4),
	combout => \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X13_Y13_N22
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

-- Location: LCCOMB_X11_Y13_N16
\Mod1|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X11_Y13_N6
\Mod1|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\ = (procent(3) & \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X12_Y13_N2
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

-- Location: LCCOMB_X12_Y13_N4
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

-- Location: LCCOMB_X12_Y13_N6
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

-- Location: LCCOMB_X12_Y13_N8
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

-- Location: LCCOMB_X11_Y13_N14
\Mod1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X12_Y13_N16
\Mod1|auto_generated|divider|divider|StageOut[31]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ = (procent(2) & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\);

-- Location: LCCOMB_X12_Y13_N12
\Mod1|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & procent(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => procent(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X12_Y13_N18
\Mod1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & procent(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => procent(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X12_Y13_N20
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X12_Y13_N22
\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X13_Y13_N2
\Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X12_Y13_N14
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

-- Location: LCCOMB_X12_Y13_N30
\Mod1|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (procent(3))) # 
-- (!\Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X12_Y13_N10
\Mod1|auto_generated|divider|divider|StageOut[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\ = (!\Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[32]~56_combout\);

-- Location: LCCOMB_X12_Y13_N24
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

-- Location: LCCOMB_X12_Y13_N26
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

-- Location: LCCOMB_X12_Y13_N28
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

-- Location: LCCOMB_X12_Y14_N14
\Mod1|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\) # 
-- ((\Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = money(5) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(money(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(5),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X21_Y18_N2
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

-- Location: LCCOMB_X21_Y18_N4
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

-- Location: LCCOMB_X21_Y18_N6
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

-- Location: LCCOMB_X21_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[18]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~37_combout\);

-- Location: LCCOMB_X21_Y18_N10
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

-- Location: LCCOMB_X21_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[17]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\);

-- Location: LCCOMB_X21_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[17]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\ = (money(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\);

-- Location: LCCOMB_X19_Y18_N10
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

-- Location: LCCOMB_X19_Y18_N0
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

-- Location: LCCOMB_X19_Y18_N30
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

-- Location: LCCOMB_X19_Y18_N16
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

-- Location: LCCOMB_X21_Y18_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~43_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X21_Y18_N22
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

-- Location: LCCOMB_X21_Y18_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~39_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~38_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X21_Y18_N26
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

-- Location: LCCOMB_X21_Y18_N28
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

-- Location: LCCOMB_X21_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (money(5))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => money(5),
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\);

-- Location: LCCOMB_X21_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[23]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\);

-- Location: LCCOMB_X21_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((money(6)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => money(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\);

-- Location: LCCOMB_X22_Y18_N24
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

-- Location: LCCOMB_X19_Y18_N2
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

-- Location: LCCOMB_X22_Y18_N2
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

-- Location: LCCOMB_X22_Y18_N22
\Mod0|auto_generated|divider|divider|StageOut[20]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\ = (money(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~48_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[20]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\ = (money(3) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~49_combout\);

-- Location: LCCOMB_X22_Y18_N4
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

-- Location: LCCOMB_X22_Y18_N6
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X22_Y18_N8
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

-- Location: LCCOMB_X22_Y18_N10
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~67_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y18_N12
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

-- Location: LCCOMB_X22_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[28]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~65_combout\);

-- Location: LCCOMB_X22_Y18_N30
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

-- Location: LCCOMB_X22_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (money(4))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => money(4),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[27]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~51_combout\);

-- Location: LCCOMB_X19_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[26]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\ = (money(3) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~52_combout\);

-- Location: LCCOMB_X22_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[26]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~53_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\ = (money(2) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[25]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\ = (money(2) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~54_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X23_Y18_N24
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

-- Location: LCCOMB_X23_Y18_N26
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

-- Location: LCCOMB_X23_Y18_N28
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

-- Location: LCCOMB_X23_Y18_N30
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

-- Location: LCCOMB_X25_Y18_N26
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

-- Location: LCCOMB_X23_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[30]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & money(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => money(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\);

-- Location: LCCOMB_X19_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\ = (money(1) & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => money(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X23_Y18_N2
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

-- Location: LCCOMB_X23_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[27]~69_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X23_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[33]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~61_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((money(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => money(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[32]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\);

-- Location: LCCOMB_X23_Y18_N4
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

-- Location: LCCOMB_X23_Y18_N6
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

-- Location: LCCOMB_X23_Y18_N8
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

-- Location: LCCOMB_X24_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~57_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: FF_X24_Y18_N3
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

-- Location: LCCOMB_X17_Y16_N10
\Selector100~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector100~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\)) # (!\stateCoffeeMachine.Implementation~q\ & ((digitBuf3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => digitBuf3(2),
	combout => \Selector100~0_combout\);

-- Location: LCCOMB_X17_Y18_N20
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	combout => \WideOr11~0_combout\);

-- Location: FF_X17_Y16_N11
\digit3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector100~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(2));

-- Location: LCCOMB_X24_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (money(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => money(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: FF_X24_Y18_N1
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

-- Location: LCCOMB_X12_Y14_N0
\Mod1|auto_generated|divider|divider|StageOut[36]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (procent(1))) # (!\Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => procent(1),
	datac => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X16_Y18_N0
\Selector101~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector101~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => digitBuf3(1),
	datad => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\,
	combout => \Selector101~0_combout\);

-- Location: LCCOMB_X17_Y16_N16
\digit3[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit3[1]~feeder_combout\ = \Selector101~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector101~0_combout\,
	combout => \digit3[1]~feeder_combout\);

-- Location: FF_X17_Y16_N17
\digit3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \digit3[1]~feeder_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(1));

-- Location: FF_X18_Y18_N5
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

-- Location: LCCOMB_X17_Y16_N14
\Selector102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((procent(0)))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf3(0),
	datab => \stateCoffeeMachine.Implementation~q\,
	datad => procent(0),
	combout => \Selector102~0_combout\);

-- Location: FF_X17_Y16_N15
\digit3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector102~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit3(0));

-- Location: LCCOMB_X12_Y14_N4
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

-- Location: LCCOMB_X24_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[38]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\);

-- Location: FF_X24_Y18_N29
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

-- Location: LCCOMB_X17_Y18_N6
\Selector99~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector99~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\)) # (!\stateCoffeeMachine.Implementation~q\ & ((digitBuf3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => digitBuf3(3),
	combout => \Selector99~0_combout\);

-- Location: FF_X17_Y18_N7
\digit3[3]\ : dffeas
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
	q => digit3(3));

-- Location: LCCOMB_X17_Y16_N20
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (digit3(2) & (!digit3(3) & ((!digit3(0)) # (!digit3(1))))) # (!digit3(2) & (digit3(1) $ (((digit3(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X17_Y16_N12
\Selector98~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector98~2_combout\ = ((!\WideOr7~0_combout\ & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\)))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \WideOr7~0_combout\,
	combout => \Selector98~2_combout\);

-- Location: FF_X17_Y16_N13
\bufferForIndicator3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector98~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(0));

-- Location: LCCOMB_X16_Y17_N22
\Selector91~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~0_combout\ = (\stateCoffeeMachine.Selection~q\ & (!selectionDrink(1) & selectionDrink(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(1),
	datad => selectionDrink(0),
	combout => \Selector91~0_combout\);

-- Location: LCCOMB_X12_Y18_N24
\digit2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[1]~2_combout\ = (procent(2) & (!procent(7) & (!procent(1) & !procent(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datab => procent(7),
	datac => procent(1),
	datad => procent(0),
	combout => \digit2[1]~2_combout\);

-- Location: LCCOMB_X12_Y18_N0
\digit2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[1]~1_combout\ = (procent(6) & procent(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(6),
	datac => procent(5),
	combout => \digit2[1]~1_combout\);

-- Location: LCCOMB_X11_Y18_N28
\digit2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \digit2[1]~3_combout\ = (\stateCoffeeMachine.Implementation~q\ & (\digit2[1]~2_combout\ & (\digit2[1]~1_combout\ & \digit2[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \digit2[1]~2_combout\,
	datac => \digit2[1]~1_combout\,
	datad => \digit2[1]~0_combout\,
	combout => \digit2[1]~3_combout\);

-- Location: LCCOMB_X24_Y18_N4
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = (money(1) & ((GND) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\))) # (!money(1) & (\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\ $ (GND)))
-- \Add14~1\ = CARRY((money(1)) # (!\Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(1),
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	combout => \Add14~0_combout\,
	cout => \Add14~1\);

-- Location: LCCOMB_X24_Y18_N6
\Add14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~2_combout\ = (money(2) & ((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Add14~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (\Add14~1\ & VCC)))) # (!money(2) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((\Add14~1\) # (GND))) # (!\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Add14~1\))))
-- \Add14~3\ = CARRY((money(2) & (\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\ & !\Add14~1\)) # (!money(2) & ((\Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\) # (!\Add14~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(2),
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datad => VCC,
	cin => \Add14~1\,
	combout => \Add14~2_combout\,
	cout => \Add14~3\);

-- Location: LCCOMB_X24_Y18_N8
\Add14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~4_combout\ = ((money(3) $ (\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ $ (\Add14~3\)))) # (GND)
-- \Add14~5\ = CARRY((money(3) & ((!\Add14~3\) # (!\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\))) # (!money(3) & (!\Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\ & !\Add14~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(3),
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => VCC,
	cin => \Add14~3\,
	combout => \Add14~4_combout\,
	cout => \Add14~5\);

-- Location: LCCOMB_X24_Y18_N10
\Add14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~6_combout\ = (money(4) & (\Add14~5\ & VCC)) # (!money(4) & (!\Add14~5\))
-- \Add14~7\ = CARRY((!money(4) & !\Add14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(4),
	datad => VCC,
	cin => \Add14~5\,
	combout => \Add14~6_combout\,
	cout => \Add14~7\);

-- Location: LCCOMB_X24_Y18_N12
\Add14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~8_combout\ = (money(5) & ((GND) # (!\Add14~7\))) # (!money(5) & (\Add14~7\ $ (GND)))
-- \Add14~9\ = CARRY((money(5)) # (!\Add14~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(5),
	datad => VCC,
	cin => \Add14~7\,
	combout => \Add14~8_combout\,
	cout => \Add14~9\);

-- Location: LCCOMB_X24_Y18_N14
\Add14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~10_combout\ = (money(6) & (\Add14~9\ & VCC)) # (!money(6) & (!\Add14~9\))
-- \Add14~11\ = CARRY((!money(6) & !\Add14~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => money(6),
	datad => VCC,
	cin => \Add14~9\,
	combout => \Add14~10_combout\,
	cout => \Add14~11\);

-- Location: LCCOMB_X24_Y18_N16
\Add14~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~12_combout\ = (money(7) & ((GND) # (!\Add14~11\))) # (!money(7) & (\Add14~11\ $ (GND)))
-- \Add14~13\ = CARRY((money(7)) # (!\Add14~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => money(7),
	datad => VCC,
	cin => \Add14~11\,
	combout => \Add14~12_combout\,
	cout => \Add14~13\);

-- Location: LCCOMB_X24_Y18_N18
\Add14~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~14_combout\ = \Add14~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add14~13\,
	combout => \Add14~14_combout\);

-- Location: LCCOMB_X24_Y18_N20
\Div0|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\Add14~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~14_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X24_Y18_N22
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

-- Location: LCCOMB_X24_Y18_N24
\Div0|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_16~4_combout\ = (\Add14~14_combout\ & (!\Div0|auto_generated|divider|divider|op_16~3\ & VCC)) # (!\Add14~14_combout\ & (\Div0|auto_generated|divider|divider|op_16~3\ $ (GND)))
-- \Div0|auto_generated|divider|divider|op_16~5\ = CARRY((!\Add14~14_combout\ & !\Div0|auto_generated|divider|divider|op_16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add14~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_16~3\,
	combout => \Div0|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div0|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X24_Y18_N26
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

-- Location: LCCOMB_X25_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[121]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ = (!\Add14~14_combout\ & \Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add14~14_combout\,
	datad => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\);

-- Location: LCCOMB_X24_Y18_N30
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

-- Location: LCCOMB_X25_Y18_N16
\Div0|auto_generated|divider|divider|StageOut[121]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ = (!\Div0|auto_generated|divider|divider|op_16~6_combout\ & \Add14~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Add14~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\);

-- Location: LCCOMB_X25_Y18_N30
\Div0|auto_generated|divider|divider|StageOut[120]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\ = (\Add14~12_combout\ & \Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\);

-- Location: LCCOMB_X25_Y18_N28
\Div0|auto_generated|divider|divider|StageOut[120]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\ = (\Add14~12_combout\ & !\Div0|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~12_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\);

-- Location: LCCOMB_X25_Y17_N20
\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[120]~53_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~54_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[120]~53_combout\) # (\Div0|auto_generated|divider|divider|StageOut[120]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[120]~53_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[120]~54_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\);

-- Location: LCCOMB_X25_Y17_N22
\Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[121]~50_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[121]~52_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[121]~52_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X25_Y17_N24
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

-- Location: LCCOMB_X25_Y17_N26
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

-- Location: LCCOMB_X25_Y17_N28
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

-- Location: LCCOMB_X25_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[127]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|op_16~6_combout\ $ (\Add14~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datac => \Add14~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\);

-- Location: LCCOMB_X25_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[128]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\);

-- Location: LCCOMB_X25_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[128]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ = (!\Div0|auto_generated|divider|divider|op_16~6_combout\ & (\Div0|auto_generated|divider|divider|op_16~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|op_16~6_combout\,
	datac => \Div0|auto_generated|divider|divider|op_16~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\);

-- Location: LCCOMB_X25_Y17_N14
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

-- Location: LCCOMB_X24_Y17_N14
\Div0|auto_generated|divider|divider|StageOut[126]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\ = (\Add14~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add14~12_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~59_combout\);

-- Location: LCCOMB_X25_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[126]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[126]~60_combout\);

-- Location: LCCOMB_X24_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[125]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\ = (\Add14~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add14~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~61_combout\);

-- Location: LCCOMB_X24_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[125]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\ = (\Add14~10_combout\ & !\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add14~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[125]~62_combout\);

-- Location: LCCOMB_X25_Y17_N0
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

-- Location: LCCOMB_X25_Y17_N2
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

-- Location: LCCOMB_X25_Y17_N4
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

-- Location: LCCOMB_X25_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[128]~56_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[128]~55_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[128]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[128]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\);

-- Location: LCCOMB_X25_Y17_N8
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

-- Location: LCCOMB_X24_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[133]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\);

-- Location: LCCOMB_X24_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[133]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\);

-- Location: LCCOMB_X24_Y17_N30
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

-- Location: LCCOMB_X24_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[132]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & ((\Add14~12_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	datab => \Add14~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\);

-- Location: LCCOMB_X24_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[131]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~66_combout\);

-- Location: LCCOMB_X24_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[131]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\ = (\Add14~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[131]~65_combout\);

-- Location: LCCOMB_X24_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[130]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add14~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\);

-- Location: LCCOMB_X24_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[130]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add14~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add14~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\);

-- Location: LCCOMB_X24_Y17_N0
\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[130]~68_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~67_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[130]~68_combout\) # (\Div0|auto_generated|divider|divider|StageOut[130]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[130]~68_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[130]~67_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X24_Y17_N2
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

-- Location: LCCOMB_X24_Y17_N4
\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~64_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[132]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X24_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[133]~93_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[133]~63_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[133]~93_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[133]~63_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y17_N8
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

-- Location: LCCOMB_X23_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[138]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[132]~98_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\);

-- Location: LCCOMB_X23_Y17_N16
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

-- Location: LCCOMB_X23_Y17_N30
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

-- Location: LCCOMB_X23_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[137]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & (\Add14~10_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\);

-- Location: LCCOMB_X23_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[136]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ = (\Add14~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\);

-- Location: LCCOMB_X23_Y17_N4
\Div0|auto_generated|divider|divider|StageOut[136]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\);

-- Location: LCCOMB_X23_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[135]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add14~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\);

-- Location: LCCOMB_X23_Y17_N0
\Div0|auto_generated|divider|divider|StageOut[135]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add14~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add14~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\);

-- Location: LCCOMB_X23_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[135]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~74_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[135]~73_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~74_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X23_Y17_N8
\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[136]~71_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~72_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X23_Y17_N10
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

-- Location: LCCOMB_X23_Y17_N12
\Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[138]~94_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[138]~69_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~94_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~69_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y17_N14
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

-- Location: LCCOMB_X22_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[143]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[137]~99_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\);

-- Location: LCCOMB_X23_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[143]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\);

-- Location: LCCOMB_X23_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[142]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\);

-- Location: LCCOMB_X22_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[142]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Add14~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\);

-- Location: LCCOMB_X22_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[141]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\ = (\Add14~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~77_combout\);

-- Location: LCCOMB_X22_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[141]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~78_combout\);

-- Location: LCCOMB_X22_Y17_N26
\Div0|auto_generated|divider|divider|StageOut[140]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Add14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Add14~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~79_combout\);

-- Location: LCCOMB_X23_Y17_N22
\Div0|auto_generated|divider|divider|StageOut[140]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Add14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Add14~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~80_combout\);

-- Location: LCCOMB_X22_Y17_N0
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

-- Location: LCCOMB_X22_Y17_N2
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

-- Location: LCCOMB_X22_Y17_N4
\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~76_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[142]~76_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X22_Y17_N6
\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[143]~95_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[143]~75_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[143]~95_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[143]~75_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y17_N8
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

-- Location: LCCOMB_X19_Y17_N16
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

-- Location: FF_X19_Y17_N17
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

-- Location: LCCOMB_X12_Y14_N16
\Add15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~0_combout\ = (procent(1) & ((GND) # (!\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\))) # (!procent(1) & (\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\ $ (GND)))
-- \Add15~1\ = CARRY((procent(1)) # (!\Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(1),
	datab => \Mod1|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datad => VCC,
	combout => \Add15~0_combout\,
	cout => \Add15~1\);

-- Location: LCCOMB_X12_Y14_N18
\Add15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~2_combout\ = (procent(2) & ((\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Add15~1\)) # (!\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & (\Add15~1\ & VCC)))) # (!procent(2) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & ((\Add15~1\) # (GND))) # (!\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Add15~1\))))
-- \Add15~3\ = CARRY((procent(2) & (\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\ & !\Add15~1\)) # (!procent(2) & ((\Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\) # (!\Add15~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datab => \Mod1|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datad => VCC,
	cin => \Add15~1\,
	combout => \Add15~2_combout\,
	cout => \Add15~3\);

-- Location: LCCOMB_X12_Y14_N20
\Add15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~4_combout\ = ((procent(3) $ (\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ $ (\Add15~3\)))) # (GND)
-- \Add15~5\ = CARRY((procent(3) & ((!\Add15~3\) # (!\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\))) # (!procent(3) & (!\Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\ & !\Add15~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => procent(3),
	datab => \Mod1|auto_generated|divider|divider|StageOut[38]~62_combout\,
	datad => VCC,
	cin => \Add15~3\,
	combout => \Add15~4_combout\,
	cout => \Add15~5\);

-- Location: LCCOMB_X12_Y14_N22
\Add15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~6_combout\ = (procent(4) & (\Add15~5\ & VCC)) # (!procent(4) & (!\Add15~5\))
-- \Add15~7\ = CARRY((!procent(4) & !\Add15~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(4),
	datad => VCC,
	cin => \Add15~5\,
	combout => \Add15~6_combout\,
	cout => \Add15~7\);

-- Location: LCCOMB_X12_Y14_N24
\Add15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~8_combout\ = (procent(5) & ((GND) # (!\Add15~7\))) # (!procent(5) & (\Add15~7\ $ (GND)))
-- \Add15~9\ = CARRY((procent(5)) # (!\Add15~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(5),
	datad => VCC,
	cin => \Add15~7\,
	combout => \Add15~8_combout\,
	cout => \Add15~9\);

-- Location: LCCOMB_X12_Y14_N26
\Add15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~10_combout\ = (procent(6) & (\Add15~9\ & VCC)) # (!procent(6) & (!\Add15~9\))
-- \Add15~11\ = CARRY((!procent(6) & !\Add15~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(6),
	datad => VCC,
	cin => \Add15~9\,
	combout => \Add15~10_combout\,
	cout => \Add15~11\);

-- Location: LCCOMB_X12_Y14_N28
\Add15~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~12_combout\ = (procent(7) & ((GND) # (!\Add15~11\))) # (!procent(7) & (\Add15~11\ $ (GND)))
-- \Add15~13\ = CARRY((procent(7)) # (!\Add15~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => procent(7),
	datad => VCC,
	cin => \Add15~11\,
	combout => \Add15~12_combout\,
	cout => \Add15~13\);

-- Location: LCCOMB_X12_Y14_N30
\Add15~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add15~14_combout\ = \Add15~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add15~13\,
	combout => \Add15~14_combout\);

-- Location: LCCOMB_X12_Y14_N6
\Div1|auto_generated|divider|divider|op_16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~1_cout\ = CARRY(!\Add15~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~14_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_16~1_cout\);

-- Location: LCCOMB_X12_Y14_N8
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

-- Location: LCCOMB_X12_Y14_N10
\Div1|auto_generated|divider|divider|op_16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_16~4_combout\ = (\Add15~14_combout\ & (!\Div1|auto_generated|divider|divider|op_16~3\ & VCC)) # (!\Add15~14_combout\ & (\Div1|auto_generated|divider|divider|op_16~3\ $ (GND)))
-- \Div1|auto_generated|divider|divider|op_16~5\ = CARRY((!\Add15~14_combout\ & !\Div1|auto_generated|divider|divider|op_16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~14_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_16~3\,
	combout => \Div1|auto_generated|divider|divider|op_16~4_combout\,
	cout => \Div1|auto_generated|divider|divider|op_16~5\);

-- Location: LCCOMB_X12_Y14_N12
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

-- Location: LCCOMB_X11_Y14_N26
\Div1|auto_generated|divider|divider|StageOut[123]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\ = (\Div1|auto_generated|divider|divider|op_16~4_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_16~4_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[123]~51_combout\);

-- Location: LCCOMB_X11_Y14_N20
\Div1|auto_generated|divider|divider|StageOut[121]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ = (\Div1|auto_generated|divider|divider|op_16~6_combout\ & !\Add15~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Add15~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\);

-- Location: LCCOMB_X11_Y14_N28
\Div1|auto_generated|divider|divider|StageOut[121]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ = (!\Div1|auto_generated|divider|divider|op_16~6_combout\ & \Add15~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Add15~14_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\);

-- Location: LCCOMB_X12_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[120]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\ = (\Add15~12_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~12_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[120]~54_combout\);

-- Location: LCCOMB_X11_Y14_N16
\Div1|auto_generated|divider|divider|StageOut[120]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\ = (\Div1|auto_generated|divider|divider|op_16~6_combout\ & \Add15~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datad => \Add15~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[120]~53_combout\);

-- Location: LCCOMB_X11_Y14_N6
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

-- Location: LCCOMB_X11_Y14_N8
\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[121]~50_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[121]~52_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[121]~50_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[121]~52_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\);

-- Location: LCCOMB_X11_Y14_N10
\Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & (!\Div1|auto_generated|divider|divider|op_16~6_combout\ & (\Div1|auto_generated|divider|divider|op_16~2_combout\ 
-- & VCC))) # (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\ & ((((!\Div1|auto_generated|divider|divider|op_16~6_combout\ & \Div1|auto_generated|divider|divider|op_16~2_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|op_16~6_combout\ & (\Div1|auto_generated|divider|divider|op_16~2_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	datab => \Div1|auto_generated|divider|divider|op_16~2_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~5\);

-- Location: LCCOMB_X11_Y14_N12
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

-- Location: LCCOMB_X11_Y14_N14
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

-- Location: LCCOMB_X10_Y14_N30
\Div1|auto_generated|divider|divider|StageOut[128]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ = (\Div1|auto_generated|divider|divider|op_16~2_combout\ & (\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & !\Div1|auto_generated|divider|divider|op_16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|op_16~2_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\);

-- Location: LCCOMB_X11_Y14_N22
\Div1|auto_generated|divider|divider|StageOut[128]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[3]~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\);

-- Location: LCCOMB_X11_Y14_N2
\Div1|auto_generated|divider|divider|StageOut[127]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[127]~58_combout\);

-- Location: LCCOMB_X11_Y14_N24
\Div1|auto_generated|divider|divider|StageOut[127]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Add15~14_combout\ $ (\Div1|auto_generated|divider|divider|op_16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~14_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|op_16~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\);

-- Location: LCCOMB_X11_Y14_N4
\Div1|auto_generated|divider|divider|StageOut[126]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Add15~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Add15~12_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\);

-- Location: LCCOMB_X10_Y14_N20
\Div1|auto_generated|divider|divider|StageOut[126]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\);

-- Location: LCCOMB_X10_Y14_N10
\Div1|auto_generated|divider|divider|StageOut[125]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\ = (\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Add15~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Add15~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[125]~61_combout\);

-- Location: LCCOMB_X10_Y14_N28
\Div1|auto_generated|divider|divider|StageOut[125]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Add15~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datad => \Add15~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[125]~62_combout\);

-- Location: LCCOMB_X10_Y14_N0
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

-- Location: LCCOMB_X10_Y14_N2
\Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[126]~59_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[126]~60_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[126]~59_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[126]~60_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~3\);

-- Location: LCCOMB_X10_Y14_N4
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

-- Location: LCCOMB_X10_Y14_N6
\Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[128]~55_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[128]~56_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[128]~55_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[128]~56_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_26_result_int[4]~7_cout\);

-- Location: LCCOMB_X10_Y14_N8
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

-- Location: LCCOMB_X10_Y14_N24
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

-- Location: LCCOMB_X10_Y14_N18
\Div1|auto_generated|divider|divider|StageOut[131]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add15~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add15~10_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\);

-- Location: LCCOMB_X10_Y14_N12
\Div1|auto_generated|divider|divider|StageOut[130]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add15~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add15~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\);

-- Location: LCCOMB_X10_Y14_N22
\Div1|auto_generated|divider|divider|StageOut[130]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Add15~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Add15~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\);

-- Location: LCCOMB_X11_Y17_N0
\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[130]~68_combout\) # (\Div1|auto_generated|divider|divider|StageOut[130]~67_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[130]~68_combout\) # (\Div1|auto_generated|divider|divider|StageOut[130]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[130]~68_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[130]~67_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X11_Y17_N2
\Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[131]~66_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[131]~65_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[131]~66_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[131]~65_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X10_Y14_N14
\Div1|auto_generated|divider|divider|StageOut[133]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[133]~63_combout\);

-- Location: LCCOMB_X11_Y14_N18
\Div1|auto_generated|divider|divider|StageOut[133]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[127]~57_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[127]~57_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_25_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[133]~93_combout\);

-- Location: LCCOMB_X10_Y14_N16
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

-- Location: LCCOMB_X10_Y14_N26
\Div1|auto_generated|divider|divider|StageOut[132]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\ = (\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & (\Add15~12_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~12_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_25_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_25_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\);

-- Location: LCCOMB_X11_Y17_N4
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

-- Location: LCCOMB_X11_Y17_N6
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

-- Location: LCCOMB_X11_Y17_N8
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

-- Location: LCCOMB_X11_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[137]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & ((\Add15~10_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_26_result_int[1]~0_combout\,
	datab => \Add15~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\);

-- Location: LCCOMB_X11_Y17_N22
\Div1|auto_generated|divider|divider|StageOut[138]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\);

-- Location: LCCOMB_X11_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[138]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[132]~98_combout\) # 
-- ((!\Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_26_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[132]~98_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_26_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\);

-- Location: LCCOMB_X11_Y17_N10
\Div1|auto_generated|divider|divider|StageOut[137]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\);

-- Location: LCCOMB_X10_Y17_N8
\Div1|auto_generated|divider|divider|StageOut[136]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add15~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add15~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[136]~71_combout\);

-- Location: LCCOMB_X11_Y17_N28
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

-- Location: LCCOMB_X10_Y17_N16
\Div1|auto_generated|divider|divider|StageOut[135]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add15~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[135]~74_combout\);

-- Location: LCCOMB_X10_Y17_N6
\Div1|auto_generated|divider|divider|StageOut[135]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\ = (\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add15~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[135]~73_combout\);

-- Location: LCCOMB_X11_Y17_N12
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

-- Location: LCCOMB_X11_Y17_N14
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

-- Location: LCCOMB_X11_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[137]~99_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[137]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[137]~99_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[137]~70_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X11_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[138]~69_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[138]~94_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[138]~69_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[138]~94_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

-- Location: LCCOMB_X11_Y17_N20
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

-- Location: LCCOMB_X12_Y17_N30
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

-- Location: LCCOMB_X11_Y17_N30
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

-- Location: LCCOMB_X12_Y17_N26
\Div1|auto_generated|divider|divider|StageOut[142]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Add15~8_combout\))) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	datac => \Add15~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\);

-- Location: LCCOMB_X12_Y17_N28
\Div1|auto_generated|divider|divider|StageOut[142]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\);

-- Location: LCCOMB_X10_Y17_N2
\Div1|auto_generated|divider|divider|StageOut[141]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Add15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Add15~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[141]~77_combout\);

-- Location: LCCOMB_X12_Y17_N2
\Div1|auto_generated|divider|divider|StageOut[141]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\ = (\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[141]~78_combout\);

-- Location: LCCOMB_X10_Y17_N20
\Div1|auto_generated|divider|divider|StageOut[140]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Add15~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Add15~4_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[140]~80_combout\);

-- Location: LCCOMB_X12_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[140]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\ = (\Add15~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[140]~79_combout\);

-- Location: LCCOMB_X12_Y17_N12
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

-- Location: LCCOMB_X12_Y17_N14
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

-- Location: LCCOMB_X12_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\)))))
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[142]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[142]~76_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X12_Y17_N18
\Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[143]~95_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[143]~75_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[143]~95_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[143]~75_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div1|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

-- Location: LCCOMB_X12_Y17_N20
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

-- Location: LCCOMB_X14_Y17_N18
\Selector104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector104~0_combout\ = (!\digit2[1]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~3_combout\,
	datab => digitBuf2(2),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Selector104~0_combout\);

-- Location: FF_X14_Y17_N19
\digit2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector104~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(2));

-- Location: LCCOMB_X22_Y17_N20
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

-- Location: LCCOMB_X22_Y17_N28
\Div0|auto_generated|divider|divider|StageOut[148]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[142]~100_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\);

-- Location: LCCOMB_X21_Y17_N10
\Div0|auto_generated|divider|divider|StageOut[147]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Add14~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\);

-- Location: LCCOMB_X22_Y17_N14
\Div0|auto_generated|divider|divider|StageOut[147]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\);

-- Location: LCCOMB_X22_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[146]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\);

-- Location: LCCOMB_X22_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[146]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Add14~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Add14~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\);

-- Location: LCCOMB_X19_Y17_N24
\Div0|auto_generated|divider|divider|StageOut[145]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\ = (\Add14~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add14~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\);

-- Location: LCCOMB_X22_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[145]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Add14~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Add14~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\);

-- Location: LCCOMB_X21_Y17_N20
\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[145]~85_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~86_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[145]~85_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~85_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~86_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X21_Y17_N22
\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[146]~84_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~83_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~84_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~83_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X21_Y17_N24
\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~82_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X21_Y17_N26
\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[148]~81_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[148]~96_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~81_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~96_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y17_N28
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

-- Location: LCCOMB_X19_Y17_N26
\digitBuf2[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[1]~11_combout\ = !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \digitBuf2[1]~11_combout\);

-- Location: FF_X19_Y17_N27
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

-- Location: LCCOMB_X12_Y17_N10
\Div1|auto_generated|divider|divider|StageOut[148]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~81_combout\);

-- Location: LCCOMB_X12_Y17_N4
\Div1|auto_generated|divider|divider|StageOut[148]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[142]~100_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|StageOut[142]~100_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[148]~96_combout\);

-- Location: LCCOMB_X12_Y17_N8
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

-- Location: LCCOMB_X14_Y17_N12
\Div1|auto_generated|divider|divider|StageOut[147]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Add15~6_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\);

-- Location: LCCOMB_X14_Y17_N4
\Div1|auto_generated|divider|divider|StageOut[146]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ = (\Add15~4_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~4_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\);

-- Location: LCCOMB_X12_Y17_N22
\Div1|auto_generated|divider|divider|StageOut[146]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ = (\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\);

-- Location: LCCOMB_X12_Y17_N0
\Div1|auto_generated|divider|divider|StageOut[145]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\ = (\Add15~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\);

-- Location: LCCOMB_X12_Y17_N6
\Div1|auto_generated|divider|divider|StageOut[145]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\ = (\Add15~2_combout\ & \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add15~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\);

-- Location: LCCOMB_X13_Y17_N0
\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div1|auto_generated|divider|divider|StageOut[145]~86_combout\) # (\Div1|auto_generated|divider|divider|StageOut[145]~85_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div1|auto_generated|divider|divider|StageOut[145]~86_combout\) # (\Div1|auto_generated|divider|divider|StageOut[145]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[145]~86_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[145]~85_combout\,
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X13_Y17_N2
\Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ & 
-- (!\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\)))
-- \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[146]~83_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[146]~84_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[146]~83_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[146]~84_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X13_Y17_N4
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

-- Location: LCCOMB_X13_Y17_N6
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

-- Location: LCCOMB_X13_Y17_N8
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

-- Location: LCCOMB_X14_Y17_N28
\Selector105~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector105~0_combout\ = (!\digit2[1]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~3_combout\,
	datab => digitBuf2(1),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Selector105~0_combout\);

-- Location: FF_X14_Y17_N29
\digit2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector105~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(1));

-- Location: LCCOMB_X21_Y17_N30
\Div0|auto_generated|divider|divider|StageOut[153]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\);

-- Location: LCCOMB_X21_Y17_N14
\Div0|auto_generated|divider|divider|StageOut[153]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\);

-- Location: LCCOMB_X19_Y17_N6
\Div0|auto_generated|divider|divider|StageOut[152]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (\Add14~4_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add14~4_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~102_combout\);

-- Location: LCCOMB_X21_Y17_N16
\Div0|auto_generated|divider|divider|StageOut[152]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~88_combout\);

-- Location: LCCOMB_X21_Y17_N12
\Div0|auto_generated|divider|divider|StageOut[151]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\);

-- Location: LCCOMB_X21_Y17_N18
\Div0|auto_generated|divider|divider|StageOut[151]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ = (\Add14~2_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add14~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\);

-- Location: LCCOMB_X19_Y17_N20
\Div0|auto_generated|divider|divider|StageOut[150]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Add14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Add14~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~92_combout\);

-- Location: LCCOMB_X19_Y17_N2
\Div0|auto_generated|divider|divider|StageOut[150]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Add14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Add14~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~91_combout\);

-- Location: LCCOMB_X21_Y17_N0
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

-- Location: LCCOMB_X21_Y17_N2
\digitBuf2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~4_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[151]~90_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[151]~89_combout\ & !\digitBuf2[0]~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~90_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[151]~89_combout\,
	datad => VCC,
	cin => \digitBuf2[0]~2_cout\,
	cout => \digitBuf2[0]~4_cout\);

-- Location: LCCOMB_X21_Y17_N4
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

-- Location: LCCOMB_X21_Y17_N6
\digitBuf2[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[0]~8_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[153]~87_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[153]~97_combout\ & !\digitBuf2[0]~6_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[153]~87_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[153]~97_combout\,
	datad => VCC,
	cin => \digitBuf2[0]~6_cout\,
	cout => \digitBuf2[0]~8_cout\);

-- Location: LCCOMB_X21_Y17_N8
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

-- Location: FF_X21_Y17_N9
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

-- Location: LCCOMB_X13_Y17_N12
\Div1|auto_generated|divider|divider|StageOut[153]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|StageOut[147]~101_combout\) # 
-- ((\Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[147]~101_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\);

-- Location: LCCOMB_X13_Y17_N28
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

-- Location: LCCOMB_X13_Y17_N30
\Div1|auto_generated|divider|divider|StageOut[152]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\ = (\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (\Add15~4_combout\)) # 
-- (!\Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[152]~102_combout\);

-- Location: LCCOMB_X13_Y17_N24
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

-- Location: LCCOMB_X13_Y17_N10
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

-- Location: LCCOMB_X14_Y17_N10
\Div1|auto_generated|divider|divider|StageOut[151]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ = (\Add15~2_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\);

-- Location: LCCOMB_X14_Y17_N2
\Div1|auto_generated|divider|divider|StageOut[150]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\ = (\Add15~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[150]~92_combout\);

-- Location: LCCOMB_X14_Y17_N24
\Div1|auto_generated|divider|divider|StageOut[150]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\ = (\Add15~0_combout\ & \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add15~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[150]~91_combout\);

-- Location: LCCOMB_X13_Y17_N14
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

-- Location: LCCOMB_X13_Y17_N16
\Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[151]~90_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[151]~89_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[151]~90_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[151]~89_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X13_Y17_N18
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

-- Location: LCCOMB_X13_Y17_N20
\Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|StageOut[153]~97_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[153]~87_combout\ & 
-- !\Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[153]~97_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[153]~87_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X13_Y17_N22
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

-- Location: LCCOMB_X13_Y17_N26
\Selector106~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector106~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((!\Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ & !\digit2[1]~3_combout\)))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digitBuf2(0),
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \Div1|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	datad => \digit2[1]~3_combout\,
	combout => \Selector106~0_combout\);

-- Location: FF_X13_Y17_N27
\digit2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector106~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(0));

-- Location: LCCOMB_X19_Y17_N14
\digitBuf2[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \digitBuf2[3]~13_combout\ = !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \digitBuf2[3]~13_combout\);

-- Location: FF_X19_Y17_N15
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

-- Location: LCCOMB_X14_Y17_N0
\Selector103~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector103~0_combout\ = (!\digit2[1]~3_combout\ & ((\stateCoffeeMachine.Implementation~q\ & ((!\Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (digitBuf2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~3_combout\,
	datab => digitBuf2(3),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Div1|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Selector103~0_combout\);

-- Location: FF_X14_Y17_N1
\digit2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector103~0_combout\,
	ena => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => digit2(3));

-- Location: LCCOMB_X17_Y17_N8
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (digit2(2) & (!digit2(3) & ((!digit2(0)) # (!digit2(1))))) # (!digit2(2) & (digit2(1) $ (((digit2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(3),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X16_Y17_N12
\Selector91~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector91~1_combout\ = (\Selector91~0_combout\) # ((!\stateCoffeeMachine.Selection~q\ & ((!\WideOr8~0_combout\) # (!\stateCoffeeMachine.Waiting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector91~0_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \WideOr8~0_combout\,
	datad => \stateCoffeeMachine.Selection~q\,
	combout => \Selector91~1_combout\);

-- Location: FF_X16_Y17_N13
\bufferForIndicator2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector91~1_combout\,
	sclr => \stateCoffeeMachine.Unsuccessful~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(0));

-- Location: LCCOMB_X16_Y17_N26
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (indicator(1) & ((\Mux6~0_combout\ & (bufferForIndicator3(0))) # (!\Mux6~0_combout\ & ((bufferForIndicator2(0)))))) # (!indicator(1) & (\Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => \Mux6~0_combout\,
	datac => bufferForIndicator3(0),
	datad => bufferForIndicator2(0),
	combout => \Mux6~1_combout\);

-- Location: FF_X16_Y17_N27
\led5[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[0]~reg0_q\);

-- Location: LCCOMB_X17_Y16_N2
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (!digit3(3) & ((digit3(2) & (digit3(1) & digit3(0))) # (!digit3(2) & ((digit3(1)) # (digit3(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X17_Y16_N22
\Selector97~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector97~2_combout\ = ((\WideOr6~0_combout\ & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\)))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \WideOr6~0_combout\,
	combout => \Selector97~2_combout\);

-- Location: FF_X17_Y16_N23
\bufferForIndicator3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector97~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(1));

-- Location: LCCOMB_X17_Y17_N26
\Selector90~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (!digit2(3) & (((digit2(1) & digit2(0))) # (!digit2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(3),
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X16_Y15_N0
\LessThan17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~0_combout\ = (procent(4)) # ((procent(3) & ((procent(2)) # (procent(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(2),
	datab => procent(4),
	datac => procent(1),
	datad => procent(3),
	combout => \LessThan17~0_combout\);

-- Location: LCCOMB_X16_Y15_N6
\LessThan17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan17~1_combout\ = (procent(7)) # ((procent(6)) # ((procent(5)) # (\LessThan17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => procent(7),
	datab => procent(6),
	datac => procent(5),
	datad => \LessThan17~0_combout\,
	combout => \LessThan17~1_combout\);

-- Location: LCCOMB_X17_Y17_N22
\Selector90~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~2_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((digit2(1)) # ((digit2(0)) # (!\LessThan17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(1),
	datab => \LessThan17~1_combout\,
	datac => digit2(0),
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector90~2_combout\);

-- Location: LCCOMB_X17_Y17_N16
\Selector90~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\stateCoffeeMachine.Payment~q\ & ((digit2(1)) # ((digit2(0)) # (!\LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(1),
	datab => \LessThan16~1_combout\,
	datac => digit2(0),
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector90~1_combout\);

-- Location: LCCOMB_X17_Y17_N24
\Selector90~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector90~3_combout\ = ((\Selector90~0_combout\ & ((\Selector90~2_combout\) # (\Selector90~1_combout\)))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector90~0_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector90~2_combout\,
	datad => \Selector90~1_combout\,
	combout => \Selector90~3_combout\);

-- Location: FF_X17_Y17_N25
\bufferForIndicator2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector90~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(1));

-- Location: LCCOMB_X12_Y18_N26
\LessThan18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan18~0_combout\ = (procent(7)) # ((\digit2[1]~1_combout\ & ((procent(2)) # (!\digit2[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2[1]~1_combout\,
	datab => procent(7),
	datac => procent(2),
	datad => \digit2[1]~0_combout\,
	combout => \LessThan18~0_combout\);

-- Location: LCCOMB_X16_Y18_N2
\Selector83~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~0_combout\ = (digit1(2) & (((digit1(0) & digit1(1))))) # (!digit1(2) & (((digit1(0)) # (digit1(1))) # (!\LessThan18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(1),
	combout => \Selector83~0_combout\);

-- Location: LCCOMB_X17_Y18_N0
\Selector81~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~2_combout\ = (\stateCoffeeMachine.Waiting~q\ & !\stateCoffeeMachine.Payment~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	combout => \Selector81~2_combout\);

-- Location: LCCOMB_X17_Y18_N18
\Selector83~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector83~1_combout\ = ((\Selector83~0_combout\ & (!digit1(3) & \stateCoffeeMachine.Implementation~q\))) # (!\Selector81~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector83~0_combout\,
	datab => digit1(3),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector81~2_combout\,
	combout => \Selector83~1_combout\);

-- Location: FF_X17_Y18_N19
\bufferForIndicator1[1]\ : dffeas
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
	q => bufferForIndicator1(1));

-- Location: LCCOMB_X17_Y18_N28
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (indicator(0) & (((indicator(1)) # (bufferForIndicator1(1))))) # (!indicator(0) & (bufferForIndicator0(0) & (!indicator(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator0(0),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator1(1),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X17_Y17_N12
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (indicator(1) & ((\Mux5~0_combout\ & (bufferForIndicator3(1))) # (!\Mux5~0_combout\ & ((bufferForIndicator2(1)))))) # (!indicator(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator3(1),
	datab => bufferForIndicator2(1),
	datac => indicator(1),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X17_Y17_N13
\led5[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[1]~reg0_q\);

-- Location: LCCOMB_X17_Y16_N24
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (digit3(1) & (((digit3(0) & !digit3(3))))) # (!digit3(1) & ((digit3(2) & ((!digit3(3)))) # (!digit3(2) & (digit3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X16_Y16_N0
\Selector96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector96~0_combout\ = (\stateCoffeeMachine.Unsuccessful~q\) # (((\WideOr11~0_combout\ & \WideOr5~0_combout\)) # (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \WideOr11~0_combout\,
	datad => \WideOr5~0_combout\,
	combout => \Selector96~0_combout\);

-- Location: FF_X16_Y16_N1
\bufferForIndicator3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector96~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(2));

-- Location: LCCOMB_X17_Y17_N20
\Selector89~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~0_combout\ = (\LessThan17~1_combout\ & (((!\LessThan16~1_combout\ & !\stateCoffeeMachine.Implementation~q\)))) # (!\LessThan17~1_combout\ & (((!\LessThan16~1_combout\)) # (!\stateCoffeeMachine.Payment~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Payment~q\,
	datab => \LessThan17~1_combout\,
	datac => \LessThan16~1_combout\,
	datad => \stateCoffeeMachine.Implementation~q\,
	combout => \Selector89~0_combout\);

-- Location: LCCOMB_X17_Y17_N2
\Selector89~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~1_combout\ = (!digit2(3) & (!digit2(1) & ((\Selector89~0_combout\) # (digit2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \Selector89~0_combout\,
	datac => digit2(2),
	datad => digit2(1),
	combout => \Selector89~1_combout\);

-- Location: LCCOMB_X14_Y17_N14
\Selector89~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~2_combout\ = (!digit2(2) & !digit2(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit2(2),
	datad => digit2(1),
	combout => \Selector89~2_combout\);

-- Location: LCCOMB_X14_Y17_N8
\Selector89~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~3_combout\ = ((digit2(0) & ((\Selector89~2_combout\) # (!digit2(3))))) # (!\WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(0),
	datab => digit2(3),
	datac => \Selector89~2_combout\,
	datad => \WideOr11~0_combout\,
	combout => \Selector89~3_combout\);

-- Location: LCCOMB_X16_Y17_N8
\Selector89~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector89~4_combout\ = (\Selector89~1_combout\ & (((\Decoder1~0_combout\)) # (!\stateCoffeeMachine.Selection~q\))) # (!\Selector89~1_combout\ & (\Selector89~3_combout\ & ((\Decoder1~0_combout\) # (!\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector89~1_combout\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => \Selector89~3_combout\,
	datad => \Decoder1~0_combout\,
	combout => \Selector89~4_combout\);

-- Location: FF_X16_Y17_N9
\bufferForIndicator2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector89~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(2));

-- Location: LCCOMB_X16_Y17_N14
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (indicator(1) & (((bufferForIndicator2(2)) # (indicator(0))))) # (!indicator(1) & (bufferForIndicator0(0) & ((!indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => bufferForIndicator0(0),
	datac => bufferForIndicator2(2),
	datad => indicator(0),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X16_Y18_N8
\Selector82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~2_combout\ = (digit1(2) & ((digit1(3)))) # (!digit1(2) & (\LessThan18~0_combout\ & !digit1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datac => digit1(2),
	datad => digit1(3),
	combout => \Selector82~2_combout\);

-- Location: LCCOMB_X16_Y18_N30
\Selector82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~3_combout\ = (digit1(3) & ((\Selector82~2_combout\) # ((digit1(1)) # (!digit1(0))))) # (!digit1(3) & (!digit1(0) & ((\Selector82~2_combout\) # (digit1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datab => \Selector82~2_combout\,
	datac => digit1(0),
	datad => digit1(1),
	combout => \Selector82~3_combout\);

-- Location: LCCOMB_X16_Y17_N2
\Selector82~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector82~4_combout\ = (\stateCoffeeMachine.Payment~q\) # (((\stateCoffeeMachine.Implementation~q\ & !\Selector82~3_combout\)) # (!\stateCoffeeMachine.Waiting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Selector82~3_combout\,
	datad => \stateCoffeeMachine.Waiting~q\,
	combout => \Selector82~4_combout\);

-- Location: FF_X16_Y17_N3
\bufferForIndicator1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector82~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(2));

-- Location: LCCOMB_X16_Y17_N4
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (indicator(0) & ((\Mux4~0_combout\ & (bufferForIndicator3(2))) # (!\Mux4~0_combout\ & ((bufferForIndicator1(2)))))) # (!indicator(0) & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator3(2),
	datab => indicator(0),
	datac => \Mux4~0_combout\,
	datad => bufferForIndicator1(2),
	combout => \Mux4~1_combout\);

-- Location: FF_X16_Y17_N5
\led5[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led5[2]~reg0_q\);

-- Location: LCCOMB_X16_Y16_N26
\Selector88~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (\stateCoffeeMachine.Selection~q\ & selectionDrink(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(1),
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\Selector88~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & (((\stateCoffeeMachine.Payment~q\ & !\LessThan16~1_combout\)) # (!\LessThan17~1_combout\))) # (!\stateCoffeeMachine.Implementation~q\ & (\stateCoffeeMachine.Payment~q\ & 
-- (!\LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Implementation~q\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \LessThan16~1_combout\,
	datad => \LessThan17~1_combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X14_Y17_N20
\Selector88~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~2_combout\ = (digit2(2) & (digit2(0) $ (!digit2(1)))) # (!digit2(2) & (digit2(0) & !digit2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit2(2),
	datac => digit2(0),
	datad => digit2(1),
	combout => \Selector88~2_combout\);

-- Location: LCCOMB_X14_Y17_N22
\Selector88~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~3_combout\ = (\Selector88~1_combout\ & ((\Selector89~2_combout\) # ((\Selector88~2_combout\ & \WideOr11~0_combout\)))) # (!\Selector88~1_combout\ & (\Selector88~2_combout\ & ((\WideOr11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~1_combout\,
	datab => \Selector88~2_combout\,
	datac => \Selector89~2_combout\,
	datad => \WideOr11~0_combout\,
	combout => \Selector88~3_combout\);

-- Location: LCCOMB_X16_Y16_N10
\Selector88~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector88~4_combout\ = ((\Selector88~0_combout\) # ((!digit2(3) & \Selector88~3_combout\))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector88~0_combout\,
	datad => \Selector88~3_combout\,
	combout => \Selector88~4_combout\);

-- Location: FF_X16_Y16_N11
\bufferForIndicator2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector88~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(3));

-- Location: LCCOMB_X16_Y18_N26
\Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (digit1(3)) # ((\LessThan18~0_combout\ & (!digit1(2) & !digit1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(3),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X16_Y18_N20
\Selector81~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~3_combout\ = (\stateCoffeeMachine.Implementation~q\ & (digit1(1) $ (((!digit1(2)) # (!digit1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(0),
	datab => digit1(2),
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => digit1(1),
	combout => \Selector81~3_combout\);

-- Location: LCCOMB_X17_Y18_N22
\Selector81~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector81~4_combout\ = ((\stateCoffeeMachine.Payment~q\) # ((!\Mux24~0_combout\ & \Selector81~3_combout\))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Selector81~3_combout\,
	combout => \Selector81~4_combout\);

-- Location: FF_X17_Y18_N23
\bufferForIndicator1[3]\ : dffeas
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
	q => bufferForIndicator1(3));

-- Location: LCCOMB_X17_Y18_N4
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (indicator(0) & ((bufferForIndicator1(3)) # ((indicator(1))))) # (!indicator(0) & (((!indicator(1) & bufferForIndicator0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(3),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator0(0),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X17_Y16_N6
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (!digit3(3) & ((digit3(2) & (digit3(1) $ (!digit3(0)))) # (!digit3(2) & (!digit3(1) & digit3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X16_Y16_N28
\Selector95~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~0_combout\ = (!\stateCoffeeMachine.Selection~q\ & ((\WideOr4~0_combout\) # (!\stateCoffeeMachine.Waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \WideOr4~0_combout\,
	combout => \Selector95~0_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Selector80~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = ((selectionDrink(1) & selectionDrink(0))) # (!\stateCoffeeMachine.Selection~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Selection~q\,
	datac => selectionDrink(1),
	datad => selectionDrink(0),
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X16_Y16_N20
\Selector95~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector95~1_combout\ = (!\stateCoffeeMachine.Unsuccessful~q\ & ((\Selector95~0_combout\) # (!\Selector80~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Selector95~0_combout\,
	datad => \Selector80~0_combout\,
	combout => \Selector95~1_combout\);

-- Location: FF_X16_Y16_N21
\bufferForIndicator3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector95~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(3));

-- Location: LCCOMB_X16_Y16_N4
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (indicator(1) & ((\Mux3~0_combout\ & ((bufferForIndicator3(3)))) # (!\Mux3~0_combout\ & (bufferForIndicator2(3))))) # (!indicator(1) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(3),
	datab => indicator(1),
	datac => \Mux3~0_combout\,
	datad => bufferForIndicator3(3),
	combout => \Mux3~1_combout\);

-- Location: FF_X16_Y16_N5
\led5[3]~reg0\ : dffeas
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
	q => \led5[3]~reg0_q\);

-- Location: LCCOMB_X16_Y18_N28
\Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (!digit1(2) & !digit1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit1(2),
	datac => digit1(0),
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X16_Y18_N22
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (!digit1(3) & (\Mux24~1_combout\ & ((digit1(1)) # (!\LessThan18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit1(3),
	datab => \Mux24~1_combout\,
	datac => \LessThan18~0_combout\,
	datad => digit1(1),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X17_Y18_N12
\bufferForIndicator1[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator1[4]~feeder_combout\ = \Mux23~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux23~0_combout\,
	combout => \bufferForIndicator1[4]~feeder_combout\);

-- Location: FF_X17_Y18_N13
\bufferForIndicator1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bufferForIndicator1[4]~feeder_combout\,
	asdata => VCC,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(4));

-- Location: LCCOMB_X17_Y16_N8
\Selector94~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (!digit3(2) & (!digit3(3) & ((\stateCoffeeMachine.Implementation~q\) # (\stateCoffeeMachine.Payment~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => digit3(3),
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X17_Y16_N26
\Selector94~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (!digit3(0) & digit3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => digit3(0),
	datad => digit3(1),
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X17_Y16_N0
\Selector94~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = ((\stateCoffeeMachine.Selection~q\) # ((\Selector94~0_combout\ & \Selector94~1_combout\))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Waiting~q\,
	datab => \Selector94~0_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \Selector94~1_combout\,
	combout => \Selector94~2_combout\);

-- Location: FF_X17_Y16_N1
\bufferForIndicator3[4]\ : dffeas
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
	q => bufferForIndicator3(4));

-- Location: LCCOMB_X17_Y17_N0
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!digit2(2) & !digit2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datac => digit2(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X17_Y18_N14
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((digit2(1)) # (!\LessThan17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan17~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => digit2(1),
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X17_Y18_N24
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\Selector87~0_combout\) # ((\stateCoffeeMachine.Payment~q\ & ((digit2(1)) # (!\LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan16~1_combout\,
	datab => \stateCoffeeMachine.Payment~q\,
	datac => \Selector87~0_combout\,
	datad => digit2(1),
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X17_Y18_N26
\Selector87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~2_combout\ = ((!digit2(3) & (\Mux16~0_combout\ & \Selector87~1_combout\))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \Mux16~0_combout\,
	datac => \stateCoffeeMachine.Waiting~q\,
	datad => \Selector87~1_combout\,
	combout => \Selector87~2_combout\);

-- Location: FF_X17_Y18_N27
\bufferForIndicator2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector87~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(4));

-- Location: LCCOMB_X17_Y18_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (indicator(0) & (((indicator(1))))) # (!indicator(0) & ((indicator(1) & (bufferForIndicator2(4))) # (!indicator(1) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(4),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator0(0),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X17_Y18_N10
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (indicator(0) & ((\Mux2~0_combout\ & ((bufferForIndicator3(4)))) # (!\Mux2~0_combout\ & (bufferForIndicator1(4))))) # (!indicator(0) & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(4),
	datab => indicator(0),
	datac => bufferForIndicator3(4),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X17_Y18_N11
\led5[4]~reg0\ : dffeas
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
	q => \led5[4]~reg0_q\);

-- Location: LCCOMB_X17_Y17_N6
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (digit2(2) & (digit2(1) $ ((digit2(0))))) # (!digit2(2) & (!digit2(1) & (!digit2(0) & !digit2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(3),
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X16_Y17_N10
\Selector86~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (\Mux10~0_combout\ & ((\Mux16~0_combout\ & ((!\LessThan17~1_combout\))) # (!\Mux16~0_combout\ & (!digit2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \LessThan17~1_combout\,
	datac => \Mux16~0_combout\,
	datad => \Mux10~0_combout\,
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X17_Y17_N4
\Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\Mux10~0_combout\ & ((\Mux16~0_combout\ & ((!\LessThan16~1_combout\))) # (!\Mux16~0_combout\ & (!digit2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \Mux16~0_combout\,
	datac => \LessThan16~1_combout\,
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X16_Y17_N28
\Selector86~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (\Mux10~1_combout\ & (((\Decoder1~0_combout\)) # (!\stateCoffeeMachine.Selection~q\))) # (!\Mux10~1_combout\ & (!\stateCoffeeMachine.Payment~q\ & ((\Decoder1~0_combout\) # (!\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datab => \stateCoffeeMachine.Selection~q\,
	datac => \stateCoffeeMachine.Payment~q\,
	datad => \Decoder1~0_combout\,
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X16_Y17_N24
\Selector86~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (\Selector86~0_combout\ & ((\Selector86~1_combout\) # (!\stateCoffeeMachine.Implementation~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector86~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Selector86~0_combout\,
	combout => \Selector86~2_combout\);

-- Location: FF_X16_Y17_N25
\bufferForIndicator2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector86~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator2(5));

-- Location: LCCOMB_X16_Y18_N4
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (digit1(2) & ((digit1(0) $ (digit1(1))))) # (!digit1(2) & (!\LessThan18~0_combout\ & (!digit1(0) & !digit1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan18~0_combout\,
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(1),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X16_Y18_N16
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & !digit1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~0_combout\,
	datad => digit1(3),
	combout => \Mux22~1_combout\);

-- Location: FF_X16_Y18_N17
\bufferForIndicator1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux22~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_stateCoffeeMachine.Implementation~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator1(5));

-- Location: LCCOMB_X17_Y18_N30
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (indicator(0) & ((bufferForIndicator1(5)) # ((indicator(1))))) # (!indicator(0) & (((!indicator(1) & bufferForIndicator0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator1(5),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator0(0),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X17_Y16_N28
\bufferForIndicator3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator3~0_combout\ = (digit3(2) & (!digit3(3) & (digit3(1) $ (digit3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \bufferForIndicator3~0_combout\);

-- Location: LCCOMB_X17_Y16_N30
\Selector93~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector93~0_combout\ = (\bufferForIndicator3~0_combout\ & (((selectionDrink(0)) # (!\stateCoffeeMachine.Selection~q\)))) # (!\bufferForIndicator3~0_combout\ & (!\WideOr11~0_combout\ & ((selectionDrink(0)) # (!\stateCoffeeMachine.Selection~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bufferForIndicator3~0_combout\,
	datab => \WideOr11~0_combout\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => selectionDrink(0),
	combout => \Selector93~0_combout\);

-- Location: FF_X17_Y16_N31
\bufferForIndicator3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector93~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bufferForIndicator3(5));

-- Location: LCCOMB_X17_Y17_N14
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (indicator(1) & ((\Mux1~0_combout\ & ((bufferForIndicator3(5)))) # (!\Mux1~0_combout\ & (bufferForIndicator2(5))))) # (!indicator(1) & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indicator(1),
	datab => bufferForIndicator2(5),
	datac => \Mux1~0_combout\,
	datad => bufferForIndicator3(5),
	combout => \Mux1~1_combout\);

-- Location: FF_X17_Y17_N15
\led5[5]~reg0\ : dffeas
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
	q => \led5[5]~reg0_q\);

-- Location: LCCOMB_X17_Y16_N18
\bufferForIndicator3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bufferForIndicator3~1_combout\ = (!digit3(1) & (!digit3(3) & (digit3(2) $ (digit3(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit3(2),
	datab => digit3(1),
	datac => digit3(0),
	datad => digit3(3),
	combout => \bufferForIndicator3~1_combout\);

-- Location: LCCOMB_X16_Y16_N24
\Selector92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~0_combout\ = (!\stateCoffeeMachine.Selection~q\ & ((\bufferForIndicator3~1_combout\) # (!\stateCoffeeMachine.Waiting~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \stateCoffeeMachine.Selection~q\,
	datad => \bufferForIndicator3~1_combout\,
	combout => \Selector92~0_combout\);

-- Location: LCCOMB_X16_Y16_N12
\Selector92~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector92~1_combout\ = (!\stateCoffeeMachine.Unsuccessful~q\ & ((\Selector92~0_combout\) # ((\Selector88~0_combout\ & selectionDrink(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stateCoffeeMachine.Unsuccessful~q\,
	datab => \Selector92~0_combout\,
	datac => \Selector88~0_combout\,
	datad => selectionDrink(0),
	combout => \Selector92~1_combout\);

-- Location: FF_X16_Y16_N13
\bufferForIndicator3[6]\ : dffeas
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
	q => bufferForIndicator3(6));

-- Location: LCCOMB_X17_Y17_N10
\Selector85~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~0_combout\ = (!digit2(1) & ((digit2(2) & (!digit2(0))) # (!digit2(2) & ((digit2(0)) # (!digit2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(2),
	datab => digit2(1),
	datac => digit2(0),
	datad => digit2(3),
	combout => \Selector85~0_combout\);

-- Location: LCCOMB_X17_Y17_N30
\Selector85~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~2_combout\ = (\stateCoffeeMachine.Payment~q\ & ((\Mux16~0_combout\ & ((!\LessThan16~1_combout\))) # (!\Mux16~0_combout\ & (!digit2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \Mux16~0_combout\,
	datac => \LessThan16~1_combout\,
	datad => \stateCoffeeMachine.Payment~q\,
	combout => \Selector85~2_combout\);

-- Location: LCCOMB_X17_Y17_N28
\Selector85~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~1_combout\ = (\stateCoffeeMachine.Implementation~q\ & ((\Mux16~0_combout\ & ((!\LessThan17~1_combout\))) # (!\Mux16~0_combout\ & (!digit2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => digit2(3),
	datab => \stateCoffeeMachine.Implementation~q\,
	datac => \LessThan17~1_combout\,
	datad => \Mux16~0_combout\,
	combout => \Selector85~1_combout\);

-- Location: LCCOMB_X17_Y17_N18
\Selector85~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector85~3_combout\ = ((\Selector85~0_combout\ & ((\Selector85~2_combout\) # (\Selector85~1_combout\)))) # (!\stateCoffeeMachine.Waiting~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector85~0_combout\,
	datab => \stateCoffeeMachine.Waiting~q\,
	datac => \Selector85~2_combout\,
	datad => \Selector85~1_combout\,
	combout => \Selector85~3_combout\);

-- Location: FF_X17_Y17_N19
\bufferForIndicator2[6]\ : dffeas
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
	q => bufferForIndicator2(6));

-- Location: LCCOMB_X16_Y16_N18
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (indicator(0) & (((indicator(1))))) # (!indicator(0) & ((indicator(1) & (bufferForIndicator2(6))) # (!indicator(1) & ((bufferForIndicator0(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator2(6),
	datab => indicator(0),
	datac => indicator(1),
	datad => bufferForIndicator0(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X16_Y18_N18
\Selector80~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~1_combout\ = (!digit1(1) & ((!digit1(0)) # (!digit1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => digit1(2),
	datac => digit1(0),
	datad => digit1(1),
	combout => \Selector80~1_combout\);

-- Location: LCCOMB_X16_Y18_N14
\Selector80~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector80~2_combout\ = (\Selector80~0_combout\ & (((\Selector80~1_combout\ & !\Mux24~0_combout\)) # (!\stateCoffeeMachine.Implementation~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector80~0_combout\,
	datab => \Selector80~1_combout\,
	datac => \stateCoffeeMachine.Implementation~q\,
	datad => \Mux24~0_combout\,
	combout => \Selector80~2_combout\);

-- Location: FF_X16_Y18_N15
\bufferForIndicator1[6]\ : dffeas
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
	q => bufferForIndicator1(6));

-- Location: LCCOMB_X16_Y16_N22
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((bufferForIndicator3(6)) # ((!indicator(0))))) # (!\Mux0~0_combout\ & (((bufferForIndicator1(6) & indicator(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bufferForIndicator3(6),
	datab => \Mux0~0_combout\,
	datac => bufferForIndicator1(6),
	datad => indicator(0),
	combout => \Mux0~1_combout\);

-- Location: FF_X16_Y16_N23
\led5[6]~reg0\ : dffeas
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
	q => \led5[6]~reg0_q\);

-- Location: LCCOMB_X16_Y17_N18
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

-- Location: FF_X16_Y17_N19
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

-- Location: LCCOMB_X16_Y17_N16
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

-- Location: FF_X16_Y17_N17
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

-- Location: LCCOMB_X16_Y17_N6
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

-- Location: FF_X16_Y17_N7
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

-- Location: LCCOMB_X16_Y17_N20
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!indicator(0) & !indicator(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indicator(0),
	datad => indicator(1),
	combout => \Decoder0~3_combout\);

-- Location: FF_X16_Y17_N21
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

ww_en(0) <= \en[0]~output_o\;

ww_en(1) <= \en[1]~output_o\;

ww_en(2) <= \en[2]~output_o\;

ww_en(3) <= \en[3]~output_o\;
END structure;


