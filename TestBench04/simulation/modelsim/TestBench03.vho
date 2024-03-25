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

-- DATE "03/25/2024 20:56:55"

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

ENTITY 	TestBench03 IS
    PORT (
	clk : IN std_logic;
	en_write : IN std_logic;
	address_write : IN std_logic_vector(3 DOWNTO 0);
	data_write : IN std_logic_vector(15 DOWNTO 0);
	write_enable : IN std_logic;
	en_read : IN std_logic;
	address_read : IN std_logic_vector(3 DOWNTO 0);
	data_read : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END TestBench03;

-- Design Ports Information
-- write_enable	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[0]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[3]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[4]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[5]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[6]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[8]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[9]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[10]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[11]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[12]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[13]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[14]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_read[15]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_read[1]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_read[0]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_read[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_read[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_read	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_write	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[0]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_write[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_write[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_write[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address_write[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[3]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[4]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[5]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[6]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[7]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[8]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[9]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[10]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[11]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[12]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[13]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[14]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_write[15]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestBench03 IS
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
SIGNAL ww_en_write : std_logic;
SIGNAL ww_address_write : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_write : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_write_enable : std_logic;
SIGNAL ww_en_read : std_logic;
SIGNAL ww_address_read : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_data_read : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \write_enable~input_o\ : std_logic;
SIGNAL \data_read[0]~output_o\ : std_logic;
SIGNAL \data_read[1]~output_o\ : std_logic;
SIGNAL \data_read[2]~output_o\ : std_logic;
SIGNAL \data_read[3]~output_o\ : std_logic;
SIGNAL \data_read[4]~output_o\ : std_logic;
SIGNAL \data_read[5]~output_o\ : std_logic;
SIGNAL \data_read[6]~output_o\ : std_logic;
SIGNAL \data_read[7]~output_o\ : std_logic;
SIGNAL \data_read[8]~output_o\ : std_logic;
SIGNAL \data_read[9]~output_o\ : std_logic;
SIGNAL \data_read[10]~output_o\ : std_logic;
SIGNAL \data_read[11]~output_o\ : std_logic;
SIGNAL \data_read[12]~output_o\ : std_logic;
SIGNAL \data_read[13]~output_o\ : std_logic;
SIGNAL \data_read[14]~output_o\ : std_logic;
SIGNAL \data_read[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \address_read[1]~input_o\ : std_logic;
SIGNAL \data_write[0]~input_o\ : std_logic;
SIGNAL \en_write~input_o\ : std_logic;
SIGNAL \address_write[1]~input_o\ : std_logic;
SIGNAL \address_write[3]~input_o\ : std_logic;
SIGNAL \address_write[2]~input_o\ : std_logic;
SIGNAL \address_write[0]~input_o\ : std_logic;
SIGNAL \memory~422_combout\ : std_logic;
SIGNAL \memory~423_combout\ : std_logic;
SIGNAL \memory~176_q\ : std_logic;
SIGNAL \memory~416_combout\ : std_logic;
SIGNAL \memory~417_combout\ : std_logic;
SIGNAL \memory~160_q\ : std_logic;
SIGNAL \address_read[0]~input_o\ : std_logic;
SIGNAL \memory~420_combout\ : std_logic;
SIGNAL \memory~421_combout\ : std_logic;
SIGNAL \memory~128_q\ : std_logic;
SIGNAL \memory~418_combout\ : std_logic;
SIGNAL \memory~419_combout\ : std_logic;
SIGNAL \memory~144_q\ : std_logic;
SIGNAL \memory~256_combout\ : std_logic;
SIGNAL \memory~257_combout\ : std_logic;
SIGNAL \address_read[3]~input_o\ : std_logic;
SIGNAL \memory~208feeder_combout\ : std_logic;
SIGNAL \memory~440_combout\ : std_logic;
SIGNAL \memory~441_combout\ : std_logic;
SIGNAL \memory~208_q\ : std_logic;
SIGNAL \memory~446_combout\ : std_logic;
SIGNAL \memory~447_combout\ : std_logic;
SIGNAL \memory~240_q\ : std_logic;
SIGNAL \memory~444_combout\ : std_logic;
SIGNAL \memory~445_combout\ : std_logic;
SIGNAL \memory~192_q\ : std_logic;
SIGNAL \memory~442_combout\ : std_logic;
SIGNAL \memory~443_combout\ : std_logic;
SIGNAL \memory~224_q\ : std_logic;
SIGNAL \memory~263_combout\ : std_logic;
SIGNAL \memory~264_combout\ : std_logic;
SIGNAL \address_read[2]~input_o\ : std_logic;
SIGNAL \memory~32feeder_combout\ : std_logic;
SIGNAL \memory~432_combout\ : std_logic;
SIGNAL \memory~433_combout\ : std_logic;
SIGNAL \memory~32_q\ : std_logic;
SIGNAL \memory~438_combout\ : std_logic;
SIGNAL \memory~439_combout\ : std_logic;
SIGNAL \memory~48_q\ : std_logic;
SIGNAL \memory~436_combout\ : std_logic;
SIGNAL \memory~437_combout\ : std_logic;
SIGNAL \memory~0_q\ : std_logic;
SIGNAL \memory~434_combout\ : std_logic;
SIGNAL \memory~435_combout\ : std_logic;
SIGNAL \memory~16_q\ : std_logic;
SIGNAL \memory~260_combout\ : std_logic;
SIGNAL \memory~261_combout\ : std_logic;
SIGNAL \memory~80feeder_combout\ : std_logic;
SIGNAL \memory~424_combout\ : std_logic;
SIGNAL \memory~425_combout\ : std_logic;
SIGNAL \memory~80_q\ : std_logic;
SIGNAL \memory~430_combout\ : std_logic;
SIGNAL \memory~431_combout\ : std_logic;
SIGNAL \memory~112_q\ : std_logic;
SIGNAL \memory~428_combout\ : std_logic;
SIGNAL \memory~429_combout\ : std_logic;
SIGNAL \memory~64_q\ : std_logic;
SIGNAL \memory~426_combout\ : std_logic;
SIGNAL \memory~427_combout\ : std_logic;
SIGNAL \memory~96_q\ : std_logic;
SIGNAL \memory~258_combout\ : std_logic;
SIGNAL \memory~259_combout\ : std_logic;
SIGNAL \memory~262_combout\ : std_logic;
SIGNAL \memory~265_combout\ : std_logic;
SIGNAL \en_read~input_o\ : std_logic;
SIGNAL \data_read[0]~0_combout\ : std_logic;
SIGNAL \data_read[0]~reg0_q\ : std_logic;
SIGNAL \data_write[1]~input_o\ : std_logic;
SIGNAL \memory~33_q\ : std_logic;
SIGNAL \memory~161feeder_combout\ : std_logic;
SIGNAL \memory~161_q\ : std_logic;
SIGNAL \memory~266_combout\ : std_logic;
SIGNAL \memory~225_q\ : std_logic;
SIGNAL \memory~97feeder_combout\ : std_logic;
SIGNAL \memory~97_q\ : std_logic;
SIGNAL \memory~267_combout\ : std_logic;
SIGNAL \memory~145_q\ : std_logic;
SIGNAL \memory~209_q\ : std_logic;
SIGNAL \memory~17_q\ : std_logic;
SIGNAL \memory~81_q\ : std_logic;
SIGNAL \memory~268_combout\ : std_logic;
SIGNAL \memory~269_combout\ : std_logic;
SIGNAL \memory~65_q\ : std_logic;
SIGNAL \memory~193_q\ : std_logic;
SIGNAL \memory~1_q\ : std_logic;
SIGNAL \memory~129feeder_combout\ : std_logic;
SIGNAL \memory~129_q\ : std_logic;
SIGNAL \memory~270_combout\ : std_logic;
SIGNAL \memory~271_combout\ : std_logic;
SIGNAL \memory~272_combout\ : std_logic;
SIGNAL \memory~177_q\ : std_logic;
SIGNAL \memory~241_q\ : std_logic;
SIGNAL \memory~49_q\ : std_logic;
SIGNAL \memory~113feeder_combout\ : std_logic;
SIGNAL \memory~113_q\ : std_logic;
SIGNAL \memory~273_combout\ : std_logic;
SIGNAL \memory~274_combout\ : std_logic;
SIGNAL \memory~275_combout\ : std_logic;
SIGNAL \data_read[1]~reg0_q\ : std_logic;
SIGNAL \data_write[2]~input_o\ : std_logic;
SIGNAL \memory~114_q\ : std_logic;
SIGNAL \memory~98_q\ : std_logic;
SIGNAL \memory~66_q\ : std_logic;
SIGNAL \memory~82_q\ : std_logic;
SIGNAL \memory~276_combout\ : std_logic;
SIGNAL \memory~277_combout\ : std_logic;
SIGNAL \memory~226_q\ : std_logic;
SIGNAL \memory~242_q\ : std_logic;
SIGNAL \memory~194_q\ : std_logic;
SIGNAL \memory~210feeder_combout\ : std_logic;
SIGNAL \memory~210_q\ : std_logic;
SIGNAL \memory~283_combout\ : std_logic;
SIGNAL \memory~284_combout\ : std_logic;
SIGNAL \memory~146_q\ : std_logic;
SIGNAL \memory~178_q\ : std_logic;
SIGNAL \memory~130_q\ : std_logic;
SIGNAL \memory~162_q\ : std_logic;
SIGNAL \memory~278_combout\ : std_logic;
SIGNAL \memory~279_combout\ : std_logic;
SIGNAL \memory~18_q\ : std_logic;
SIGNAL \memory~50_q\ : std_logic;
SIGNAL \memory~2_q\ : std_logic;
SIGNAL \memory~34_q\ : std_logic;
SIGNAL \memory~280_combout\ : std_logic;
SIGNAL \memory~281_combout\ : std_logic;
SIGNAL \memory~282_combout\ : std_logic;
SIGNAL \memory~285_combout\ : std_logic;
SIGNAL \data_read[2]~reg0_q\ : std_logic;
SIGNAL \data_write[3]~input_o\ : std_logic;
SIGNAL \memory~115feeder_combout\ : std_logic;
SIGNAL \memory~115_q\ : std_logic;
SIGNAL \memory~243_q\ : std_logic;
SIGNAL \memory~179_q\ : std_logic;
SIGNAL \memory~51feeder_combout\ : std_logic;
SIGNAL \memory~51_q\ : std_logic;
SIGNAL \memory~293_combout\ : std_logic;
SIGNAL \memory~294_combout\ : std_logic;
SIGNAL \memory~211_q\ : std_logic;
SIGNAL \memory~83_q\ : std_logic;
SIGNAL \memory~19_q\ : std_logic;
SIGNAL \memory~147_q\ : std_logic;
SIGNAL \memory~286_combout\ : std_logic;
SIGNAL \memory~287_combout\ : std_logic;
SIGNAL \memory~163feeder_combout\ : std_logic;
SIGNAL \memory~163_q\ : std_logic;
SIGNAL \memory~227_q\ : std_logic;
SIGNAL \memory~35_q\ : std_logic;
SIGNAL \memory~99_q\ : std_logic;
SIGNAL \memory~288_combout\ : std_logic;
SIGNAL \memory~289_combout\ : std_logic;
SIGNAL \memory~131_q\ : std_logic;
SIGNAL \memory~195_q\ : std_logic;
SIGNAL \memory~3_q\ : std_logic;
SIGNAL \memory~67feeder_combout\ : std_logic;
SIGNAL \memory~67_q\ : std_logic;
SIGNAL \memory~290_combout\ : std_logic;
SIGNAL \memory~291_combout\ : std_logic;
SIGNAL \memory~292_combout\ : std_logic;
SIGNAL \memory~295_combout\ : std_logic;
SIGNAL \data_read[3]~reg0_q\ : std_logic;
SIGNAL \data_write[4]~input_o\ : std_logic;
SIGNAL \memory~180_q\ : std_logic;
SIGNAL \memory~164_q\ : std_logic;
SIGNAL \memory~132_q\ : std_logic;
SIGNAL \memory~148_q\ : std_logic;
SIGNAL \memory~296_combout\ : std_logic;
SIGNAL \memory~297_combout\ : std_logic;
SIGNAL \memory~212_q\ : std_logic;
SIGNAL \memory~244_q\ : std_logic;
SIGNAL \memory~228feeder_combout\ : std_logic;
SIGNAL \memory~228_q\ : std_logic;
SIGNAL \memory~196_q\ : std_logic;
SIGNAL \memory~303_combout\ : std_logic;
SIGNAL \memory~304_combout\ : std_logic;
SIGNAL \memory~36_q\ : std_logic;
SIGNAL \memory~52_q\ : std_logic;
SIGNAL \memory~4_q\ : std_logic;
SIGNAL \memory~20_q\ : std_logic;
SIGNAL \memory~300_combout\ : std_logic;
SIGNAL \memory~301_combout\ : std_logic;
SIGNAL \memory~84feeder_combout\ : std_logic;
SIGNAL \memory~84_q\ : std_logic;
SIGNAL \memory~116_q\ : std_logic;
SIGNAL \memory~68_q\ : std_logic;
SIGNAL \memory~100feeder_combout\ : std_logic;
SIGNAL \memory~100_q\ : std_logic;
SIGNAL \memory~298_combout\ : std_logic;
SIGNAL \memory~299_combout\ : std_logic;
SIGNAL \memory~302_combout\ : std_logic;
SIGNAL \memory~305_combout\ : std_logic;
SIGNAL \data_read[4]~reg0_q\ : std_logic;
SIGNAL \data_write[5]~input_o\ : std_logic;
SIGNAL \memory~229feeder_combout\ : std_logic;
SIGNAL \memory~229_q\ : std_logic;
SIGNAL \memory~101_q\ : std_logic;
SIGNAL \memory~37_q\ : std_logic;
SIGNAL \memory~165feeder_combout\ : std_logic;
SIGNAL \memory~165_q\ : std_logic;
SIGNAL \memory~306_combout\ : std_logic;
SIGNAL \memory~307_combout\ : std_logic;
SIGNAL \memory~181_q\ : std_logic;
SIGNAL \memory~245_q\ : std_logic;
SIGNAL \memory~53_q\ : std_logic;
SIGNAL \memory~117_q\ : std_logic;
SIGNAL \memory~313_combout\ : std_logic;
SIGNAL \memory~314_combout\ : std_logic;
SIGNAL \memory~69_q\ : std_logic;
SIGNAL \memory~197_q\ : std_logic;
SIGNAL \memory~5_q\ : std_logic;
SIGNAL \memory~133feeder_combout\ : std_logic;
SIGNAL \memory~133_q\ : std_logic;
SIGNAL \memory~310_combout\ : std_logic;
SIGNAL \memory~311_combout\ : std_logic;
SIGNAL \memory~149_q\ : std_logic;
SIGNAL \memory~213_q\ : std_logic;
SIGNAL \memory~21_q\ : std_logic;
SIGNAL \memory~85feeder_combout\ : std_logic;
SIGNAL \memory~85_q\ : std_logic;
SIGNAL \memory~308_combout\ : std_logic;
SIGNAL \memory~309_combout\ : std_logic;
SIGNAL \memory~312_combout\ : std_logic;
SIGNAL \memory~315_combout\ : std_logic;
SIGNAL \data_read[5]~reg0_q\ : std_logic;
SIGNAL \data_write[6]~input_o\ : std_logic;
SIGNAL \memory~150_q\ : std_logic;
SIGNAL \memory~182_q\ : std_logic;
SIGNAL \memory~134_q\ : std_logic;
SIGNAL \memory~166_q\ : std_logic;
SIGNAL \memory~318_combout\ : std_logic;
SIGNAL \memory~319_combout\ : std_logic;
SIGNAL \memory~54_q\ : std_logic;
SIGNAL \memory~22_q\ : std_logic;
SIGNAL \memory~6_q\ : std_logic;
SIGNAL \memory~38_q\ : std_logic;
SIGNAL \memory~320_combout\ : std_logic;
SIGNAL \memory~321_combout\ : std_logic;
SIGNAL \memory~322_combout\ : std_logic;
SIGNAL \memory~230feeder_combout\ : std_logic;
SIGNAL \memory~230_q\ : std_logic;
SIGNAL \memory~246_q\ : std_logic;
SIGNAL \memory~198_q\ : std_logic;
SIGNAL \memory~214feeder_combout\ : std_logic;
SIGNAL \memory~214_q\ : std_logic;
SIGNAL \memory~323_combout\ : std_logic;
SIGNAL \memory~324_combout\ : std_logic;
SIGNAL \memory~118feeder_combout\ : std_logic;
SIGNAL \memory~118_q\ : std_logic;
SIGNAL \memory~102_q\ : std_logic;
SIGNAL \memory~70_q\ : std_logic;
SIGNAL \memory~86_q\ : std_logic;
SIGNAL \memory~316_combout\ : std_logic;
SIGNAL \memory~317_combout\ : std_logic;
SIGNAL \memory~325_combout\ : std_logic;
SIGNAL \data_read[6]~reg0_q\ : std_logic;
SIGNAL \data_write[7]~input_o\ : std_logic;
SIGNAL \memory~87_q\ : std_logic;
SIGNAL \memory~215feeder_combout\ : std_logic;
SIGNAL \memory~215_q\ : std_logic;
SIGNAL \memory~23_q\ : std_logic;
SIGNAL \memory~151feeder_combout\ : std_logic;
SIGNAL \memory~151_q\ : std_logic;
SIGNAL \memory~326_combout\ : std_logic;
SIGNAL \memory~327_combout\ : std_logic;
SIGNAL \memory~119_q\ : std_logic;
SIGNAL \memory~247_q\ : std_logic;
SIGNAL \memory~55_q\ : std_logic;
SIGNAL \memory~183feeder_combout\ : std_logic;
SIGNAL \memory~183_q\ : std_logic;
SIGNAL \memory~333_combout\ : std_logic;
SIGNAL \memory~334_combout\ : std_logic;
SIGNAL \memory~135feeder_combout\ : std_logic;
SIGNAL \memory~135_q\ : std_logic;
SIGNAL \memory~199_q\ : std_logic;
SIGNAL \memory~7_q\ : std_logic;
SIGNAL \memory~71feeder_combout\ : std_logic;
SIGNAL \memory~71_q\ : std_logic;
SIGNAL \memory~330_combout\ : std_logic;
SIGNAL \memory~331_combout\ : std_logic;
SIGNAL \memory~167feeder_combout\ : std_logic;
SIGNAL \memory~167_q\ : std_logic;
SIGNAL \memory~231_q\ : std_logic;
SIGNAL \memory~39_q\ : std_logic;
SIGNAL \memory~103feeder_combout\ : std_logic;
SIGNAL \memory~103_q\ : std_logic;
SIGNAL \memory~328_combout\ : std_logic;
SIGNAL \memory~329_combout\ : std_logic;
SIGNAL \memory~332_combout\ : std_logic;
SIGNAL \memory~335_combout\ : std_logic;
SIGNAL \data_read[7]~reg0_q\ : std_logic;
SIGNAL \data_write[8]~input_o\ : std_logic;
SIGNAL \memory~184_q\ : std_logic;
SIGNAL \memory~168_q\ : std_logic;
SIGNAL \memory~136_q\ : std_logic;
SIGNAL \memory~152_q\ : std_logic;
SIGNAL \memory~336_combout\ : std_logic;
SIGNAL \memory~337_combout\ : std_logic;
SIGNAL \memory~216_q\ : std_logic;
SIGNAL \memory~248_q\ : std_logic;
SIGNAL \memory~200_q\ : std_logic;
SIGNAL \memory~232feeder_combout\ : std_logic;
SIGNAL \memory~232_q\ : std_logic;
SIGNAL \memory~343_combout\ : std_logic;
SIGNAL \memory~344_combout\ : std_logic;
SIGNAL \memory~40feeder_combout\ : std_logic;
SIGNAL \memory~40_q\ : std_logic;
SIGNAL \memory~56_q\ : std_logic;
SIGNAL \memory~8_q\ : std_logic;
SIGNAL \memory~24_q\ : std_logic;
SIGNAL \memory~340_combout\ : std_logic;
SIGNAL \memory~341_combout\ : std_logic;
SIGNAL \memory~88feeder_combout\ : std_logic;
SIGNAL \memory~88_q\ : std_logic;
SIGNAL \memory~120_q\ : std_logic;
SIGNAL \memory~72_q\ : std_logic;
SIGNAL \memory~104feeder_combout\ : std_logic;
SIGNAL \memory~104_q\ : std_logic;
SIGNAL \memory~338_combout\ : std_logic;
SIGNAL \memory~339_combout\ : std_logic;
SIGNAL \memory~342_combout\ : std_logic;
SIGNAL \memory~345_combout\ : std_logic;
SIGNAL \data_read[8]~reg0_q\ : std_logic;
SIGNAL \data_write[9]~input_o\ : std_logic;
SIGNAL \memory~233feeder_combout\ : std_logic;
SIGNAL \memory~233_q\ : std_logic;
SIGNAL \memory~105_q\ : std_logic;
SIGNAL \memory~41_q\ : std_logic;
SIGNAL \memory~169_q\ : std_logic;
SIGNAL \memory~346_combout\ : std_logic;
SIGNAL \memory~347_combout\ : std_logic;
SIGNAL \memory~73feeder_combout\ : std_logic;
SIGNAL \memory~73_q\ : std_logic;
SIGNAL \memory~201_q\ : std_logic;
SIGNAL \memory~9_q\ : std_logic;
SIGNAL \memory~137feeder_combout\ : std_logic;
SIGNAL \memory~137_q\ : std_logic;
SIGNAL \memory~350_combout\ : std_logic;
SIGNAL \memory~351_combout\ : std_logic;
SIGNAL \memory~153feeder_combout\ : std_logic;
SIGNAL \memory~153_q\ : std_logic;
SIGNAL \memory~217_q\ : std_logic;
SIGNAL \memory~25_q\ : std_logic;
SIGNAL \memory~89_q\ : std_logic;
SIGNAL \memory~348_combout\ : std_logic;
SIGNAL \memory~349_combout\ : std_logic;
SIGNAL \memory~352_combout\ : std_logic;
SIGNAL \memory~185feeder_combout\ : std_logic;
SIGNAL \memory~185_q\ : std_logic;
SIGNAL \memory~249_q\ : std_logic;
SIGNAL \memory~57_q\ : std_logic;
SIGNAL \memory~121_q\ : std_logic;
SIGNAL \memory~353_combout\ : std_logic;
SIGNAL \memory~354_combout\ : std_logic;
SIGNAL \memory~355_combout\ : std_logic;
SIGNAL \data_read[9]~reg0_q\ : std_logic;
SIGNAL \data_write[10]~input_o\ : std_logic;
SIGNAL \memory~234feeder_combout\ : std_logic;
SIGNAL \memory~234_q\ : std_logic;
SIGNAL \memory~250_q\ : std_logic;
SIGNAL \memory~202_q\ : std_logic;
SIGNAL \memory~218_q\ : std_logic;
SIGNAL \memory~363_combout\ : std_logic;
SIGNAL \memory~364_combout\ : std_logic;
SIGNAL \memory~122_q\ : std_logic;
SIGNAL \memory~106_q\ : std_logic;
SIGNAL \memory~74_q\ : std_logic;
SIGNAL \memory~90_q\ : std_logic;
SIGNAL \memory~356_combout\ : std_logic;
SIGNAL \memory~357_combout\ : std_logic;
SIGNAL \memory~154feeder_combout\ : std_logic;
SIGNAL \memory~154_q\ : std_logic;
SIGNAL \memory~186_q\ : std_logic;
SIGNAL \memory~138_q\ : std_logic;
SIGNAL \memory~170_q\ : std_logic;
SIGNAL \memory~358_combout\ : std_logic;
SIGNAL \memory~359_combout\ : std_logic;
SIGNAL \memory~58_q\ : std_logic;
SIGNAL \memory~26_q\ : std_logic;
SIGNAL \memory~10_q\ : std_logic;
SIGNAL \memory~42feeder_combout\ : std_logic;
SIGNAL \memory~42_q\ : std_logic;
SIGNAL \memory~360_combout\ : std_logic;
SIGNAL \memory~361_combout\ : std_logic;
SIGNAL \memory~362_combout\ : std_logic;
SIGNAL \memory~365_combout\ : std_logic;
SIGNAL \data_read[10]~reg0_q\ : std_logic;
SIGNAL \data_write[11]~input_o\ : std_logic;
SIGNAL \memory~219feeder_combout\ : std_logic;
SIGNAL \memory~219_q\ : std_logic;
SIGNAL \memory~91_q\ : std_logic;
SIGNAL \memory~27_q\ : std_logic;
SIGNAL \memory~155_q\ : std_logic;
SIGNAL \memory~366_combout\ : std_logic;
SIGNAL \memory~367_combout\ : std_logic;
SIGNAL \memory~171_q\ : std_logic;
SIGNAL \memory~235_q\ : std_logic;
SIGNAL \memory~43_q\ : std_logic;
SIGNAL \memory~107_q\ : std_logic;
SIGNAL \memory~368_combout\ : std_logic;
SIGNAL \memory~369_combout\ : std_logic;
SIGNAL \memory~139_q\ : std_logic;
SIGNAL \memory~203_q\ : std_logic;
SIGNAL \memory~11_q\ : std_logic;
SIGNAL \memory~75_q\ : std_logic;
SIGNAL \memory~370_combout\ : std_logic;
SIGNAL \memory~371_combout\ : std_logic;
SIGNAL \memory~372_combout\ : std_logic;
SIGNAL \memory~123_q\ : std_logic;
SIGNAL \memory~251_q\ : std_logic;
SIGNAL \memory~59_q\ : std_logic;
SIGNAL \memory~187_q\ : std_logic;
SIGNAL \memory~373_combout\ : std_logic;
SIGNAL \memory~374_combout\ : std_logic;
SIGNAL \memory~375_combout\ : std_logic;
SIGNAL \data_read[11]~reg0_q\ : std_logic;
SIGNAL \data_write[12]~input_o\ : std_logic;
SIGNAL \memory~220feeder_combout\ : std_logic;
SIGNAL \memory~220_q\ : std_logic;
SIGNAL \memory~252_q\ : std_logic;
SIGNAL \memory~204_q\ : std_logic;
SIGNAL \memory~236feeder_combout\ : std_logic;
SIGNAL \memory~236_q\ : std_logic;
SIGNAL \memory~383_combout\ : std_logic;
SIGNAL \memory~384_combout\ : std_logic;
SIGNAL \memory~188_q\ : std_logic;
SIGNAL \memory~172_q\ : std_logic;
SIGNAL \memory~140_q\ : std_logic;
SIGNAL \memory~156feeder_combout\ : std_logic;
SIGNAL \memory~156_q\ : std_logic;
SIGNAL \memory~376_combout\ : std_logic;
SIGNAL \memory~377_combout\ : std_logic;
SIGNAL \memory~92feeder_combout\ : std_logic;
SIGNAL \memory~92_q\ : std_logic;
SIGNAL \memory~124_q\ : std_logic;
SIGNAL \memory~76_q\ : std_logic;
SIGNAL \memory~108feeder_combout\ : std_logic;
SIGNAL \memory~108_q\ : std_logic;
SIGNAL \memory~378_combout\ : std_logic;
SIGNAL \memory~379_combout\ : std_logic;
SIGNAL \memory~44_q\ : std_logic;
SIGNAL \memory~60_q\ : std_logic;
SIGNAL \memory~12_q\ : std_logic;
SIGNAL \memory~28_q\ : std_logic;
SIGNAL \memory~380_combout\ : std_logic;
SIGNAL \memory~381_combout\ : std_logic;
SIGNAL \memory~382_combout\ : std_logic;
SIGNAL \memory~385_combout\ : std_logic;
SIGNAL \data_read[12]~reg0_q\ : std_logic;
SIGNAL \data_write[13]~input_o\ : std_logic;
SIGNAL \memory~109feeder_combout\ : std_logic;
SIGNAL \memory~109_q\ : std_logic;
SIGNAL \memory~237_q\ : std_logic;
SIGNAL \memory~45_q\ : std_logic;
SIGNAL \memory~173_q\ : std_logic;
SIGNAL \memory~386_combout\ : std_logic;
SIGNAL \memory~387_combout\ : std_logic;
SIGNAL \memory~77feeder_combout\ : std_logic;
SIGNAL \memory~77_q\ : std_logic;
SIGNAL \memory~205_q\ : std_logic;
SIGNAL \memory~13_q\ : std_logic;
SIGNAL \memory~141_q\ : std_logic;
SIGNAL \memory~390_combout\ : std_logic;
SIGNAL \memory~391_combout\ : std_logic;
SIGNAL \memory~157_q\ : std_logic;
SIGNAL \memory~221_q\ : std_logic;
SIGNAL \memory~29_q\ : std_logic;
SIGNAL \memory~93_q\ : std_logic;
SIGNAL \memory~388_combout\ : std_logic;
SIGNAL \memory~389_combout\ : std_logic;
SIGNAL \memory~392_combout\ : std_logic;
SIGNAL \memory~189feeder_combout\ : std_logic;
SIGNAL \memory~189_q\ : std_logic;
SIGNAL \memory~253_q\ : std_logic;
SIGNAL \memory~61_q\ : std_logic;
SIGNAL \memory~125feeder_combout\ : std_logic;
SIGNAL \memory~125_q\ : std_logic;
SIGNAL \memory~393_combout\ : std_logic;
SIGNAL \memory~394_combout\ : std_logic;
SIGNAL \memory~395_combout\ : std_logic;
SIGNAL \data_read[13]~reg0_q\ : std_logic;
SIGNAL \data_write[14]~input_o\ : std_logic;
SIGNAL \memory~126feeder_combout\ : std_logic;
SIGNAL \memory~126_q\ : std_logic;
SIGNAL \memory~110_q\ : std_logic;
SIGNAL \memory~78_q\ : std_logic;
SIGNAL \memory~94_q\ : std_logic;
SIGNAL \memory~396_combout\ : std_logic;
SIGNAL \memory~397_combout\ : std_logic;
SIGNAL \memory~206_q\ : std_logic;
SIGNAL \memory~222feeder_combout\ : std_logic;
SIGNAL \memory~222_q\ : std_logic;
SIGNAL \memory~403_combout\ : std_logic;
SIGNAL \memory~254_q\ : std_logic;
SIGNAL \memory~238_q\ : std_logic;
SIGNAL \memory~404_combout\ : std_logic;
SIGNAL \memory~158feeder_combout\ : std_logic;
SIGNAL \memory~158_q\ : std_logic;
SIGNAL \memory~190_q\ : std_logic;
SIGNAL \memory~142_q\ : std_logic;
SIGNAL \memory~174feeder_combout\ : std_logic;
SIGNAL \memory~174_q\ : std_logic;
SIGNAL \memory~398_combout\ : std_logic;
SIGNAL \memory~399_combout\ : std_logic;
SIGNAL \memory~30_q\ : std_logic;
SIGNAL \memory~62_q\ : std_logic;
SIGNAL \memory~14_q\ : std_logic;
SIGNAL \memory~46_q\ : std_logic;
SIGNAL \memory~400_combout\ : std_logic;
SIGNAL \memory~401_combout\ : std_logic;
SIGNAL \memory~402_combout\ : std_logic;
SIGNAL \memory~405_combout\ : std_logic;
SIGNAL \data_read[14]~reg0_q\ : std_logic;
SIGNAL \data_write[15]~input_o\ : std_logic;
SIGNAL \memory~223feeder_combout\ : std_logic;
SIGNAL \memory~223_q\ : std_logic;
SIGNAL \memory~95_q\ : std_logic;
SIGNAL \memory~31_q\ : std_logic;
SIGNAL \memory~159feeder_combout\ : std_logic;
SIGNAL \memory~159_q\ : std_logic;
SIGNAL \memory~406_combout\ : std_logic;
SIGNAL \memory~407_combout\ : std_logic;
SIGNAL \memory~175_q\ : std_logic;
SIGNAL \memory~239_q\ : std_logic;
SIGNAL \memory~47_q\ : std_logic;
SIGNAL \memory~111_q\ : std_logic;
SIGNAL \memory~408_combout\ : std_logic;
SIGNAL \memory~409_combout\ : std_logic;
SIGNAL \memory~143feeder_combout\ : std_logic;
SIGNAL \memory~143_q\ : std_logic;
SIGNAL \memory~207_q\ : std_logic;
SIGNAL \memory~15_q\ : std_logic;
SIGNAL \memory~79feeder_combout\ : std_logic;
SIGNAL \memory~79_q\ : std_logic;
SIGNAL \memory~410_combout\ : std_logic;
SIGNAL \memory~411_combout\ : std_logic;
SIGNAL \memory~412_combout\ : std_logic;
SIGNAL \memory~127feeder_combout\ : std_logic;
SIGNAL \memory~127_q\ : std_logic;
SIGNAL \memory~255_q\ : std_logic;
SIGNAL \memory~63_q\ : std_logic;
SIGNAL \memory~191feeder_combout\ : std_logic;
SIGNAL \memory~191_q\ : std_logic;
SIGNAL \memory~413_combout\ : std_logic;
SIGNAL \memory~414_combout\ : std_logic;
SIGNAL \memory~415_combout\ : std_logic;
SIGNAL \data_read[15]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_en_write <= en_write;
ww_address_write <= address_write;
ww_data_write <= data_write;
ww_write_enable <= write_enable;
ww_en_read <= en_read;
ww_address_read <= address_read;
data_read <= ww_data_read;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X34_Y20_N9
\data_read[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data_read[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\data_read[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\data_read[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[3]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\data_read[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\data_read[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\data_read[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\data_read[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[7]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[7]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\data_read[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[8]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[8]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\data_read[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[9]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[9]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\data_read[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[10]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\data_read[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[11]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[11]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\data_read[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[12]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\data_read[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[13]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[13]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\data_read[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[14]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[14]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\data_read[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data_read[15]~reg0_q\,
	devoe => ww_devoe,
	o => \data_read[15]~output_o\);

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

-- Location: IOIBUF_X16_Y24_N15
\address_read[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_read(1),
	o => \address_read[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\data_write[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(0),
	o => \data_write[0]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\en_write~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_write,
	o => \en_write~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\address_write[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_write(1),
	o => \address_write[1]~input_o\);

-- Location: IOIBUF_X7_Y24_N8
\address_write[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_write(3),
	o => \address_write[3]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\address_write[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_write(2),
	o => \address_write[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\address_write[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_write(0),
	o => \address_write[0]~input_o\);

-- Location: LCCOMB_X10_Y22_N26
\memory~422\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~422_combout\ = (\address_write[1]~input_o\ & (\address_write[3]~input_o\ & (!\address_write[2]~input_o\ & \address_write[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[1]~input_o\,
	datab => \address_write[3]~input_o\,
	datac => \address_write[2]~input_o\,
	datad => \address_write[0]~input_o\,
	combout => \memory~422_combout\);

-- Location: LCCOMB_X9_Y22_N22
\memory~423\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~423_combout\ = (\en_write~input_o\ & \memory~422_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~422_combout\,
	combout => \memory~423_combout\);

-- Location: FF_X8_Y23_N19
\memory~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~176_q\);

-- Location: LCCOMB_X8_Y22_N0
\memory~416\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~416_combout\ = (!\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~416_combout\);

-- Location: LCCOMB_X11_Y23_N30
\memory~417\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~417_combout\ = (\en_write~input_o\ & \memory~416_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_write~input_o\,
	datad => \memory~416_combout\,
	combout => \memory~417_combout\);

-- Location: FF_X9_Y23_N21
\memory~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~160_q\);

-- Location: IOIBUF_X9_Y24_N8
\address_read[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_read(0),
	o => \address_read[0]~input_o\);

-- Location: LCCOMB_X8_Y22_N28
\memory~420\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~420_combout\ = (!\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~420_combout\);

-- Location: LCCOMB_X9_Y22_N16
\memory~421\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~421_combout\ = (\en_write~input_o\ & \memory~420_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~420_combout\,
	combout => \memory~421_combout\);

-- Location: FF_X9_Y23_N3
\memory~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~128_q\);

-- Location: LCCOMB_X8_Y22_N10
\memory~418\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~418_combout\ = (\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~418_combout\);

-- Location: LCCOMB_X9_Y22_N18
\memory~419\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~419_combout\ = (\en_write~input_o\ & \memory~418_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~418_combout\,
	combout => \memory~419_combout\);

-- Location: FF_X8_Y23_N25
\memory~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~144_q\);

-- Location: LCCOMB_X9_Y23_N2
\memory~256\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~256_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~144_q\))) # (!\address_read[0]~input_o\ & (\memory~128_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~128_q\,
	datad => \memory~144_q\,
	combout => \memory~256_combout\);

-- Location: LCCOMB_X9_Y23_N20
\memory~257\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~257_combout\ = (\address_read[1]~input_o\ & ((\memory~256_combout\ & (\memory~176_q\)) # (!\memory~256_combout\ & ((\memory~160_q\))))) # (!\address_read[1]~input_o\ & (((\memory~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~176_q\,
	datac => \memory~160_q\,
	datad => \memory~256_combout\,
	combout => \memory~257_combout\);

-- Location: IOIBUF_X16_Y24_N22
\address_read[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_read(3),
	o => \address_read[3]~input_o\);

-- Location: LCCOMB_X11_Y20_N4
\memory~208feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~208feeder_combout\ = \data_write[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[0]~input_o\,
	combout => \memory~208feeder_combout\);

-- Location: LCCOMB_X11_Y20_N18
\memory~440\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~440_combout\ = (\address_write[2]~input_o\ & (\address_write[0]~input_o\ & (!\address_write[1]~input_o\ & \address_write[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[2]~input_o\,
	datab => \address_write[0]~input_o\,
	datac => \address_write[1]~input_o\,
	datad => \address_write[3]~input_o\,
	combout => \memory~440_combout\);

-- Location: LCCOMB_X11_Y20_N20
\memory~441\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~441_combout\ = (\en_write~input_o\ & \memory~440_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_write~input_o\,
	datad => \memory~440_combout\,
	combout => \memory~441_combout\);

-- Location: FF_X11_Y20_N5
\memory~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~208feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~208_q\);

-- Location: LCCOMB_X8_Y22_N30
\memory~446\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~446_combout\ = (\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~446_combout\);

-- Location: LCCOMB_X9_Y22_N6
\memory~447\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~447_combout\ = (\en_write~input_o\ & \memory~446_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~446_combout\,
	combout => \memory~447_combout\);

-- Location: FF_X14_Y20_N27
\memory~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~240_q\);

-- Location: LCCOMB_X8_Y22_N4
\memory~444\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~444_combout\ = (!\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~444_combout\);

-- Location: LCCOMB_X11_Y23_N12
\memory~445\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~445_combout\ = (\memory~444_combout\ & \en_write~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~444_combout\,
	datad => \en_write~input_o\,
	combout => \memory~445_combout\);

-- Location: FF_X14_Y20_N1
\memory~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~192_q\);

-- Location: LCCOMB_X8_Y22_N14
\memory~442\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~442_combout\ = (!\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~442_combout\);

-- Location: LCCOMB_X9_Y22_N12
\memory~443\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~443_combout\ = (\en_write~input_o\ & \memory~442_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~442_combout\,
	combout => \memory~443_combout\);

-- Location: FF_X14_Y22_N17
\memory~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~224_q\);

-- Location: LCCOMB_X14_Y20_N0
\memory~263\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~263_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~224_q\))) # (!\address_read[1]~input_o\ & (\memory~192_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~192_q\,
	datad => \memory~224_q\,
	combout => \memory~263_combout\);

-- Location: LCCOMB_X14_Y20_N26
\memory~264\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~264_combout\ = (\address_read[0]~input_o\ & ((\memory~263_combout\ & ((\memory~240_q\))) # (!\memory~263_combout\ & (\memory~208_q\)))) # (!\address_read[0]~input_o\ & (((\memory~263_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~208_q\,
	datac => \memory~240_q\,
	datad => \memory~263_combout\,
	combout => \memory~264_combout\);

-- Location: IOIBUF_X11_Y24_N15
\address_read[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address_read(2),
	o => \address_read[2]~input_o\);

-- Location: LCCOMB_X16_Y23_N4
\memory~32feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~32feeder_combout\ = \data_write[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[0]~input_o\,
	combout => \memory~32feeder_combout\);

-- Location: LCCOMB_X8_Y22_N2
\memory~432\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~432_combout\ = (!\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~432_combout\);

-- Location: LCCOMB_X9_Y22_N28
\memory~433\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~433_combout\ = (\en_write~input_o\ & \memory~432_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~432_combout\,
	combout => \memory~433_combout\);

-- Location: FF_X16_Y23_N5
\memory~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~32feeder_combout\,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~32_q\);

-- Location: LCCOMB_X8_Y22_N20
\memory~438\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~438_combout\ = (\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~438_combout\);

-- Location: LCCOMB_X9_Y22_N2
\memory~439\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~439_combout\ = (\en_write~input_o\ & \memory~438_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~438_combout\,
	combout => \memory~439_combout\);

-- Location: FF_X14_Y23_N27
\memory~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~48_q\);

-- Location: LCCOMB_X8_Y22_N6
\memory~436\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~436_combout\ = (!\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~436_combout\);

-- Location: LCCOMB_X9_Y22_N20
\memory~437\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~437_combout\ = (\memory~436_combout\ & \en_write~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \memory~436_combout\,
	datac => \en_write~input_o\,
	combout => \memory~437_combout\);

-- Location: FF_X10_Y22_N11
\memory~0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~0_q\);

-- Location: LCCOMB_X8_Y22_N8
\memory~434\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~434_combout\ = (\address_write[0]~input_o\ & (!\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~434_combout\);

-- Location: LCCOMB_X9_Y22_N26
\memory~435\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~435_combout\ = (\en_write~input_o\ & \memory~434_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~434_combout\,
	combout => \memory~435_combout\);

-- Location: FF_X10_Y22_N29
\memory~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~16_q\);

-- Location: LCCOMB_X10_Y22_N10
\memory~260\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~260_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~16_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~0_q\,
	datad => \memory~16_q\,
	combout => \memory~260_combout\);

-- Location: LCCOMB_X14_Y23_N26
\memory~261\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~261_combout\ = (\address_read[1]~input_o\ & ((\memory~260_combout\ & ((\memory~48_q\))) # (!\memory~260_combout\ & (\memory~32_q\)))) # (!\address_read[1]~input_o\ & (((\memory~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~32_q\,
	datac => \memory~48_q\,
	datad => \memory~260_combout\,
	combout => \memory~261_combout\);

-- Location: LCCOMB_X9_Y21_N12
\memory~80feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~80feeder_combout\ = \data_write[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[0]~input_o\,
	combout => \memory~80feeder_combout\);

-- Location: LCCOMB_X8_Y22_N22
\memory~424\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~424_combout\ = (\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~424_combout\);

-- Location: LCCOMB_X9_Y22_N4
\memory~425\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~425_combout\ = (\en_write~input_o\ & \memory~424_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en_write~input_o\,
	datad => \memory~424_combout\,
	combout => \memory~425_combout\);

-- Location: FF_X9_Y21_N13
\memory~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~80feeder_combout\,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~80_q\);

-- Location: LCCOMB_X8_Y22_N12
\memory~430\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~430_combout\ = (\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~430_combout\);

-- Location: LCCOMB_X9_Y22_N30
\memory~431\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~431_combout\ = (\en_write~input_o\ & \memory~430_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en_write~input_o\,
	datad => \memory~430_combout\,
	combout => \memory~431_combout\);

-- Location: FF_X14_Y21_N7
\memory~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~112_q\);

-- Location: LCCOMB_X8_Y22_N26
\memory~428\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~428_combout\ = (!\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & !\address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~428_combout\);

-- Location: LCCOMB_X9_Y22_N14
\memory~429\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~429_combout\ = (\memory~428_combout\ & \en_write~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~428_combout\,
	datac => \en_write~input_o\,
	combout => \memory~429_combout\);

-- Location: FF_X14_Y21_N25
\memory~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~64_q\);

-- Location: LCCOMB_X8_Y22_N24
\memory~426\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~426_combout\ = (!\address_write[0]~input_o\ & (\address_write[2]~input_o\ & (!\address_write[3]~input_o\ & \address_write[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_write[0]~input_o\,
	datab => \address_write[2]~input_o\,
	datac => \address_write[3]~input_o\,
	datad => \address_write[1]~input_o\,
	combout => \memory~426_combout\);

-- Location: LCCOMB_X13_Y22_N8
\memory~427\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~427_combout\ = (\en_write~input_o\ & \memory~426_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_write~input_o\,
	datad => \memory~426_combout\,
	combout => \memory~427_combout\);

-- Location: FF_X16_Y21_N5
\memory~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[0]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~96_q\);

-- Location: LCCOMB_X14_Y21_N24
\memory~258\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~258_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~96_q\))) # (!\address_read[1]~input_o\ & (\memory~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~64_q\,
	datad => \memory~96_q\,
	combout => \memory~258_combout\);

-- Location: LCCOMB_X14_Y21_N6
\memory~259\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~259_combout\ = (\address_read[0]~input_o\ & ((\memory~258_combout\ & ((\memory~112_q\))) # (!\memory~258_combout\ & (\memory~80_q\)))) # (!\address_read[0]~input_o\ & (((\memory~258_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~80_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~112_q\,
	datad => \memory~258_combout\,
	combout => \memory~259_combout\);

-- Location: LCCOMB_X14_Y23_N28
\memory~262\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~262_combout\ = (\address_read[2]~input_o\ & ((\address_read[3]~input_o\) # ((\memory~259_combout\)))) # (!\address_read[2]~input_o\ & (!\address_read[3]~input_o\ & (\memory~261_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~261_combout\,
	datad => \memory~259_combout\,
	combout => \memory~262_combout\);

-- Location: LCCOMB_X14_Y23_N24
\memory~265\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~265_combout\ = (\address_read[3]~input_o\ & ((\memory~262_combout\ & ((\memory~264_combout\))) # (!\memory~262_combout\ & (\memory~257_combout\)))) # (!\address_read[3]~input_o\ & (((\memory~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~257_combout\,
	datab => \address_read[3]~input_o\,
	datac => \memory~264_combout\,
	datad => \memory~262_combout\,
	combout => \memory~265_combout\);

-- Location: IOIBUF_X0_Y21_N8
\en_read~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en_read,
	o => \en_read~input_o\);

-- Location: LCCOMB_X11_Y23_N18
\data_read[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data_read[0]~0_combout\ = (!\en_write~input_o\ & \en_read~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en_write~input_o\,
	datad => \en_read~input_o\,
	combout => \data_read[0]~0_combout\);

-- Location: FF_X14_Y23_N25
\data_read[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~265_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[0]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N15
\data_write[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(1),
	o => \data_write[1]~input_o\);

-- Location: FF_X12_Y22_N5
\memory~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~33_q\);

-- Location: LCCOMB_X12_Y21_N12
\memory~161feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~161feeder_combout\ = \data_write[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[1]~input_o\,
	combout => \memory~161feeder_combout\);

-- Location: FF_X12_Y21_N13
\memory~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~161feeder_combout\,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~161_q\);

-- Location: LCCOMB_X12_Y22_N4
\memory~266\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~266_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~161_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~33_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~33_q\,
	datad => \memory~161_q\,
	combout => \memory~266_combout\);

-- Location: FF_X12_Y22_N15
\memory~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~225_q\);

-- Location: LCCOMB_X13_Y22_N4
\memory~97feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~97feeder_combout\ = \data_write[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[1]~input_o\,
	combout => \memory~97feeder_combout\);

-- Location: FF_X13_Y22_N5
\memory~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~97feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~97_q\);

-- Location: LCCOMB_X12_Y22_N14
\memory~267\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~267_combout\ = (\address_read[2]~input_o\ & ((\memory~266_combout\ & (\memory~225_q\)) # (!\memory~266_combout\ & ((\memory~97_q\))))) # (!\address_read[2]~input_o\ & (\memory~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~266_combout\,
	datac => \memory~225_q\,
	datad => \memory~97_q\,
	combout => \memory~267_combout\);

-- Location: FF_X10_Y20_N13
\memory~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~145_q\);

-- Location: FF_X10_Y20_N3
\memory~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~209_q\);

-- Location: FF_X9_Y21_N5
\memory~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~17_q\);

-- Location: FF_X9_Y21_N3
\memory~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~81_q\);

-- Location: LCCOMB_X9_Y21_N4
\memory~268\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~268_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~81_q\))) # (!\address_read[2]~input_o\ & (\memory~17_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~17_q\,
	datad => \memory~81_q\,
	combout => \memory~268_combout\);

-- Location: LCCOMB_X10_Y20_N2
\memory~269\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~269_combout\ = (\address_read[3]~input_o\ & ((\memory~268_combout\ & ((\memory~209_q\))) # (!\memory~268_combout\ & (\memory~145_q\)))) # (!\address_read[3]~input_o\ & (((\memory~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~145_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~209_q\,
	datad => \memory~268_combout\,
	combout => \memory~269_combout\);

-- Location: FF_X9_Y20_N13
\memory~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~65_q\);

-- Location: FF_X12_Y20_N11
\memory~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~193_q\);

-- Location: FF_X9_Y20_N15
\memory~1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~1_q\);

-- Location: LCCOMB_X8_Y20_N24
\memory~129feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~129feeder_combout\ = \data_write[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[1]~input_o\,
	combout => \memory~129feeder_combout\);

-- Location: FF_X8_Y20_N25
\memory~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~129feeder_combout\,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~129_q\);

-- Location: LCCOMB_X9_Y20_N14
\memory~270\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~270_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~129_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~1_q\,
	datad => \memory~129_q\,
	combout => \memory~270_combout\);

-- Location: LCCOMB_X12_Y20_N10
\memory~271\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~271_combout\ = (\address_read[2]~input_o\ & ((\memory~270_combout\ & ((\memory~193_q\))) # (!\memory~270_combout\ & (\memory~65_q\)))) # (!\address_read[2]~input_o\ & (((\memory~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~65_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~193_q\,
	datad => \memory~270_combout\,
	combout => \memory~271_combout\);

-- Location: LCCOMB_X12_Y20_N8
\memory~272\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~272_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & (\memory~269_combout\)) # (!\address_read[0]~input_o\ & ((\memory~271_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~269_combout\,
	datad => \memory~271_combout\,
	combout => \memory~272_combout\);

-- Location: FF_X12_Y23_N13
\memory~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~177_q\);

-- Location: FF_X13_Y21_N17
\memory~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~241_q\);

-- Location: FF_X14_Y23_N31
\memory~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[1]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~49_q\);

-- Location: LCCOMB_X16_Y23_N14
\memory~113feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~113feeder_combout\ = \data_write[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[1]~input_o\,
	combout => \memory~113feeder_combout\);

-- Location: FF_X16_Y23_N15
\memory~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~113feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~113_q\);

-- Location: LCCOMB_X14_Y23_N30
\memory~273\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~273_combout\ = (\address_read[2]~input_o\ & ((\address_read[3]~input_o\) # ((\memory~113_q\)))) # (!\address_read[2]~input_o\ & (!\address_read[3]~input_o\ & (\memory~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~49_q\,
	datad => \memory~113_q\,
	combout => \memory~273_combout\);

-- Location: LCCOMB_X13_Y21_N16
\memory~274\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~274_combout\ = (\address_read[3]~input_o\ & ((\memory~273_combout\ & ((\memory~241_q\))) # (!\memory~273_combout\ & (\memory~177_q\)))) # (!\address_read[3]~input_o\ & (((\memory~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~177_q\,
	datac => \memory~241_q\,
	datad => \memory~273_combout\,
	combout => \memory~274_combout\);

-- Location: LCCOMB_X12_Y20_N24
\memory~275\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~275_combout\ = (\address_read[1]~input_o\ & ((\memory~272_combout\ & ((\memory~274_combout\))) # (!\memory~272_combout\ & (\memory~267_combout\)))) # (!\address_read[1]~input_o\ & (((\memory~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~267_combout\,
	datac => \memory~272_combout\,
	datad => \memory~274_combout\,
	combout => \memory~275_combout\);

-- Location: FF_X12_Y20_N25
\data_read[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~275_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[1]~reg0_q\);

-- Location: IOIBUF_X23_Y24_N15
\data_write[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(2),
	o => \data_write[2]~input_o\);

-- Location: FF_X14_Y22_N7
\memory~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~114_q\);

-- Location: FF_X13_Y22_N23
\memory~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~98_q\);

-- Location: FF_X13_Y22_N17
\memory~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~66_q\);

-- Location: FF_X9_Y22_N9
\memory~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~82_q\);

-- Location: LCCOMB_X13_Y22_N16
\memory~276\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~276_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~82_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~66_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~66_q\,
	datad => \memory~82_q\,
	combout => \memory~276_combout\);

-- Location: LCCOMB_X13_Y22_N22
\memory~277\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~277_combout\ = (\address_read[1]~input_o\ & ((\memory~276_combout\ & (\memory~114_q\)) # (!\memory~276_combout\ & ((\memory~98_q\))))) # (!\address_read[1]~input_o\ & (((\memory~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~114_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~98_q\,
	datad => \memory~276_combout\,
	combout => \memory~277_combout\);

-- Location: FF_X14_Y22_N29
\memory~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~226_q\);

-- Location: FF_X13_Y21_N19
\memory~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~242_q\);

-- Location: FF_X12_Y20_N3
\memory~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~194_q\);

-- Location: LCCOMB_X11_Y20_N22
\memory~210feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~210feeder_combout\ = \data_write[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[2]~input_o\,
	combout => \memory~210feeder_combout\);

-- Location: FF_X11_Y20_N23
\memory~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~210feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~210_q\);

-- Location: LCCOMB_X12_Y20_N2
\memory~283\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~283_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~210_q\))) # (!\address_read[0]~input_o\ & (\memory~194_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~194_q\,
	datad => \memory~210_q\,
	combout => \memory~283_combout\);

-- Location: LCCOMB_X13_Y21_N18
\memory~284\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~284_combout\ = (\address_read[1]~input_o\ & ((\memory~283_combout\ & ((\memory~242_q\))) # (!\memory~283_combout\ & (\memory~226_q\)))) # (!\address_read[1]~input_o\ & (((\memory~283_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~226_q\,
	datac => \memory~242_q\,
	datad => \memory~283_combout\,
	combout => \memory~284_combout\);

-- Location: FF_X12_Y23_N11
\memory~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~146_q\);

-- Location: FF_X12_Y23_N21
\memory~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~178_q\);

-- Location: FF_X9_Y23_N23
\memory~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~130_q\);

-- Location: FF_X9_Y23_N29
\memory~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~162_q\);

-- Location: LCCOMB_X9_Y23_N22
\memory~278\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~278_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~162_q\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & (\memory~130_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~130_q\,
	datad => \memory~162_q\,
	combout => \memory~278_combout\);

-- Location: LCCOMB_X12_Y23_N20
\memory~279\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~279_combout\ = (\address_read[0]~input_o\ & ((\memory~278_combout\ & ((\memory~178_q\))) # (!\memory~278_combout\ & (\memory~146_q\)))) # (!\address_read[0]~input_o\ & (((\memory~278_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~146_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~178_q\,
	datad => \memory~278_combout\,
	combout => \memory~279_combout\);

-- Location: FF_X10_Y22_N13
\memory~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~18_q\);

-- Location: FF_X14_Y23_N13
\memory~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~50_q\);

-- Location: FF_X10_Y22_N3
\memory~2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~2_q\);

-- Location: FF_X11_Y22_N29
\memory~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[2]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~34_q\);

-- Location: LCCOMB_X10_Y22_N2
\memory~280\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~280_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~34_q\))) # (!\address_read[1]~input_o\ & (\memory~2_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~2_q\,
	datad => \memory~34_q\,
	combout => \memory~280_combout\);

-- Location: LCCOMB_X14_Y23_N12
\memory~281\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~281_combout\ = (\address_read[0]~input_o\ & ((\memory~280_combout\ & ((\memory~50_q\))) # (!\memory~280_combout\ & (\memory~18_q\)))) # (!\address_read[0]~input_o\ & (((\memory~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~18_q\,
	datac => \memory~50_q\,
	datad => \memory~280_combout\,
	combout => \memory~281_combout\);

-- Location: LCCOMB_X14_Y23_N2
\memory~282\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~282_combout\ = (\address_read[2]~input_o\ & (\address_read[3]~input_o\)) # (!\address_read[2]~input_o\ & ((\address_read[3]~input_o\ & (\memory~279_combout\)) # (!\address_read[3]~input_o\ & ((\memory~281_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~279_combout\,
	datad => \memory~281_combout\,
	combout => \memory~282_combout\);

-- Location: LCCOMB_X14_Y23_N10
\memory~285\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~285_combout\ = (\address_read[2]~input_o\ & ((\memory~282_combout\ & ((\memory~284_combout\))) # (!\memory~282_combout\ & (\memory~277_combout\)))) # (!\address_read[2]~input_o\ & (((\memory~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~277_combout\,
	datab => \address_read[2]~input_o\,
	datac => \memory~284_combout\,
	datad => \memory~282_combout\,
	combout => \memory~285_combout\);

-- Location: FF_X14_Y23_N11
\data_read[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~285_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[2]~reg0_q\);

-- Location: IOIBUF_X13_Y24_N15
\data_write[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(3),
	o => \data_write[3]~input_o\);

-- Location: LCCOMB_X14_Y21_N30
\memory~115feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~115feeder_combout\ = \data_write[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[3]~input_o\,
	combout => \memory~115feeder_combout\);

-- Location: FF_X14_Y21_N31
\memory~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~115feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~115_q\);

-- Location: FF_X13_Y23_N3
\memory~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~243_q\);

-- Location: FF_X12_Y23_N27
\memory~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~179_q\);

-- Location: LCCOMB_X14_Y23_N4
\memory~51feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~51feeder_combout\ = \data_write[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[3]~input_o\,
	combout => \memory~51feeder_combout\);

-- Location: FF_X14_Y23_N5
\memory~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~51feeder_combout\,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~51_q\);

-- Location: LCCOMB_X13_Y23_N20
\memory~293\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~293_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~179_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & ((\memory~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~179_q\,
	datad => \memory~51_q\,
	combout => \memory~293_combout\);

-- Location: LCCOMB_X13_Y23_N2
\memory~294\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~294_combout\ = (\address_read[2]~input_o\ & ((\memory~293_combout\ & ((\memory~243_q\))) # (!\memory~293_combout\ & (\memory~115_q\)))) # (!\address_read[2]~input_o\ & (((\memory~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~115_q\,
	datac => \memory~243_q\,
	datad => \memory~293_combout\,
	combout => \memory~294_combout\);

-- Location: FF_X10_Y20_N27
\memory~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~211_q\);

-- Location: FF_X9_Y21_N15
\memory~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~83_q\);

-- Location: FF_X10_Y21_N17
\memory~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~19_q\);

-- Location: FF_X10_Y20_N1
\memory~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~147_q\);

-- Location: LCCOMB_X10_Y21_N16
\memory~286\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~286_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~147_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~19_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~19_q\,
	datad => \memory~147_q\,
	combout => \memory~286_combout\);

-- Location: LCCOMB_X9_Y21_N14
\memory~287\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~287_combout\ = (\address_read[2]~input_o\ & ((\memory~286_combout\ & (\memory~211_q\)) # (!\memory~286_combout\ & ((\memory~83_q\))))) # (!\address_read[2]~input_o\ & (((\memory~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~211_q\,
	datac => \memory~83_q\,
	datad => \memory~286_combout\,
	combout => \memory~287_combout\);

-- Location: LCCOMB_X12_Y21_N10
\memory~163feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~163feeder_combout\ = \data_write[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[3]~input_o\,
	combout => \memory~163feeder_combout\);

-- Location: FF_X12_Y21_N11
\memory~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~163feeder_combout\,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~163_q\);

-- Location: FF_X11_Y22_N9
\memory~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~227_q\);

-- Location: FF_X11_Y22_N11
\memory~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~35_q\);

-- Location: FF_X13_Y22_N27
\memory~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~99_q\);

-- Location: LCCOMB_X11_Y22_N10
\memory~288\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~288_combout\ = (\address_read[2]~input_o\ & ((\address_read[3]~input_o\) # ((\memory~99_q\)))) # (!\address_read[2]~input_o\ & (!\address_read[3]~input_o\ & (\memory~35_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~35_q\,
	datad => \memory~99_q\,
	combout => \memory~288_combout\);

-- Location: LCCOMB_X11_Y22_N8
\memory~289\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~289_combout\ = (\address_read[3]~input_o\ & ((\memory~288_combout\ & ((\memory~227_q\))) # (!\memory~288_combout\ & (\memory~163_q\)))) # (!\address_read[3]~input_o\ & (((\memory~288_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~163_q\,
	datac => \memory~227_q\,
	datad => \memory~288_combout\,
	combout => \memory~289_combout\);

-- Location: FF_X9_Y23_N9
\memory~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~131_q\);

-- Location: FF_X10_Y23_N19
\memory~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~195_q\);

-- Location: FF_X11_Y21_N1
\memory~3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[3]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~3_q\);

-- Location: LCCOMB_X14_Y21_N28
\memory~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~67feeder_combout\ = \data_write[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[3]~input_o\,
	combout => \memory~67feeder_combout\);

-- Location: FF_X14_Y21_N29
\memory~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~67feeder_combout\,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~67_q\);

-- Location: LCCOMB_X11_Y21_N0
\memory~290\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~290_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~67_q\))) # (!\address_read[2]~input_o\ & (\memory~3_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~3_q\,
	datad => \memory~67_q\,
	combout => \memory~290_combout\);

-- Location: LCCOMB_X10_Y23_N18
\memory~291\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~291_combout\ = (\address_read[3]~input_o\ & ((\memory~290_combout\ & ((\memory~195_q\))) # (!\memory~290_combout\ & (\memory~131_q\)))) # (!\address_read[3]~input_o\ & (((\memory~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~131_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~195_q\,
	datad => \memory~290_combout\,
	combout => \memory~291_combout\);

-- Location: LCCOMB_X10_Y23_N12
\memory~292\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~292_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~289_combout\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & ((\memory~291_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~289_combout\,
	datad => \memory~291_combout\,
	combout => \memory~292_combout\);

-- Location: LCCOMB_X10_Y23_N24
\memory~295\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~295_combout\ = (\address_read[0]~input_o\ & ((\memory~292_combout\ & (\memory~294_combout\)) # (!\memory~292_combout\ & ((\memory~287_combout\))))) # (!\address_read[0]~input_o\ & (((\memory~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~294_combout\,
	datac => \memory~287_combout\,
	datad => \memory~292_combout\,
	combout => \memory~295_combout\);

-- Location: FF_X10_Y23_N25
\data_read[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~295_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[3]~reg0_q\);

-- Location: IOIBUF_X18_Y24_N15
\data_write[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(4),
	o => \data_write[4]~input_o\);

-- Location: FF_X8_Y23_N31
\memory~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~180_q\);

-- Location: FF_X9_Y23_N11
\memory~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~164_q\);

-- Location: FF_X9_Y23_N13
\memory~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~132_q\);

-- Location: FF_X8_Y23_N13
\memory~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~148_q\);

-- Location: LCCOMB_X9_Y23_N12
\memory~296\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~296_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~148_q\))) # (!\address_read[0]~input_o\ & (\memory~132_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~132_q\,
	datad => \memory~148_q\,
	combout => \memory~296_combout\);

-- Location: LCCOMB_X9_Y23_N10
\memory~297\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~297_combout\ = (\address_read[1]~input_o\ & ((\memory~296_combout\ & (\memory~180_q\)) # (!\memory~296_combout\ & ((\memory~164_q\))))) # (!\address_read[1]~input_o\ & (((\memory~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~180_q\,
	datac => \memory~164_q\,
	datad => \memory~296_combout\,
	combout => \memory~297_combout\);

-- Location: FF_X11_Y20_N21
\memory~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~212_q\);

-- Location: FF_X13_Y23_N17
\memory~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~244_q\);

-- Location: LCCOMB_X11_Y22_N2
\memory~228feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~228feeder_combout\ = \data_write[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[4]~input_o\,
	combout => \memory~228feeder_combout\);

-- Location: FF_X11_Y22_N3
\memory~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~228feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~228_q\);

-- Location: FF_X10_Y23_N15
\memory~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~196_q\);

-- Location: LCCOMB_X10_Y23_N14
\memory~303\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~303_combout\ = (\address_read[1]~input_o\ & ((\memory~228_q\) # ((\address_read[0]~input_o\)))) # (!\address_read[1]~input_o\ & (((\memory~196_q\ & !\address_read[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~228_q\,
	datac => \memory~196_q\,
	datad => \address_read[0]~input_o\,
	combout => \memory~303_combout\);

-- Location: LCCOMB_X13_Y23_N16
\memory~304\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~304_combout\ = (\address_read[0]~input_o\ & ((\memory~303_combout\ & ((\memory~244_q\))) # (!\memory~303_combout\ & (\memory~212_q\)))) # (!\address_read[0]~input_o\ & (((\memory~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~212_q\,
	datac => \memory~244_q\,
	datad => \memory~303_combout\,
	combout => \memory~304_combout\);

-- Location: FF_X16_Y23_N21
\memory~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~36_q\);

-- Location: FF_X14_Y23_N15
\memory~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~52_q\);

-- Location: FF_X10_Y22_N15
\memory~4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~4_q\);

-- Location: FF_X10_Y22_N17
\memory~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~20_q\);

-- Location: LCCOMB_X10_Y22_N14
\memory~300\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~300_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~20_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~4_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~4_q\,
	datad => \memory~20_q\,
	combout => \memory~300_combout\);

-- Location: LCCOMB_X14_Y23_N14
\memory~301\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~301_combout\ = (\address_read[1]~input_o\ & ((\memory~300_combout\ & ((\memory~52_q\))) # (!\memory~300_combout\ & (\memory~36_q\)))) # (!\address_read[1]~input_o\ & (((\memory~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~36_q\,
	datac => \memory~52_q\,
	datad => \memory~300_combout\,
	combout => \memory~301_combout\);

-- Location: LCCOMB_X9_Y21_N16
\memory~84feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~84feeder_combout\ = \data_write[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[4]~input_o\,
	combout => \memory~84feeder_combout\);

-- Location: FF_X9_Y21_N17
\memory~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~84feeder_combout\,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~84_q\);

-- Location: FF_X14_Y21_N3
\memory~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~116_q\);

-- Location: FF_X14_Y21_N21
\memory~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[4]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~68_q\);

-- Location: LCCOMB_X16_Y21_N26
\memory~100feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~100feeder_combout\ = \data_write[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[4]~input_o\,
	combout => \memory~100feeder_combout\);

-- Location: FF_X16_Y21_N27
\memory~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~100feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~100_q\);

-- Location: LCCOMB_X14_Y21_N20
\memory~298\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~298_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~100_q\))) # (!\address_read[1]~input_o\ & (\memory~68_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~68_q\,
	datad => \memory~100_q\,
	combout => \memory~298_combout\);

-- Location: LCCOMB_X14_Y21_N2
\memory~299\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~299_combout\ = (\address_read[0]~input_o\ & ((\memory~298_combout\ & ((\memory~116_q\))) # (!\memory~298_combout\ & (\memory~84_q\)))) # (!\address_read[0]~input_o\ & (((\memory~298_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~84_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~116_q\,
	datad => \memory~298_combout\,
	combout => \memory~299_combout\);

-- Location: LCCOMB_X14_Y23_N20
\memory~302\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~302_combout\ = (\address_read[2]~input_o\ & ((\address_read[3]~input_o\) # ((\memory~299_combout\)))) # (!\address_read[2]~input_o\ & (!\address_read[3]~input_o\ & (\memory~301_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~301_combout\,
	datad => \memory~299_combout\,
	combout => \memory~302_combout\);

-- Location: LCCOMB_X14_Y23_N0
\memory~305\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~305_combout\ = (\address_read[3]~input_o\ & ((\memory~302_combout\ & ((\memory~304_combout\))) # (!\memory~302_combout\ & (\memory~297_combout\)))) # (!\address_read[3]~input_o\ & (((\memory~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~297_combout\,
	datab => \address_read[3]~input_o\,
	datac => \memory~304_combout\,
	datad => \memory~302_combout\,
	combout => \memory~305_combout\);

-- Location: FF_X14_Y23_N1
\data_read[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~305_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[4]~reg0_q\);

-- Location: IOIBUF_X13_Y24_N22
\data_write[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(5),
	o => \data_write[5]~input_o\);

-- Location: LCCOMB_X11_Y22_N16
\memory~229feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~229feeder_combout\ = \data_write[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[5]~input_o\,
	combout => \memory~229feeder_combout\);

-- Location: FF_X11_Y22_N17
\memory~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~229feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~229_q\);

-- Location: FF_X13_Y22_N25
\memory~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~101_q\);

-- Location: FF_X12_Y22_N9
\memory~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~37_q\);

-- Location: LCCOMB_X12_Y21_N0
\memory~165feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~165feeder_combout\ = \data_write[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[5]~input_o\,
	combout => \memory~165feeder_combout\);

-- Location: FF_X12_Y21_N1
\memory~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~165feeder_combout\,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~165_q\);

-- Location: LCCOMB_X12_Y22_N8
\memory~306\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~306_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~165_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~37_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~37_q\,
	datad => \memory~165_q\,
	combout => \memory~306_combout\);

-- Location: LCCOMB_X13_Y22_N24
\memory~307\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~307_combout\ = (\address_read[2]~input_o\ & ((\memory~306_combout\ & (\memory~229_q\)) # (!\memory~306_combout\ & ((\memory~101_q\))))) # (!\address_read[2]~input_o\ & (((\memory~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~229_q\,
	datac => \memory~101_q\,
	datad => \memory~306_combout\,
	combout => \memory~307_combout\);

-- Location: FF_X12_Y23_N25
\memory~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~181_q\);

-- Location: FF_X13_Y23_N31
\memory~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~245_q\);

-- Location: FF_X14_Y23_N23
\memory~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~53_q\);

-- Location: FF_X16_Y23_N11
\memory~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~117_q\);

-- Location: LCCOMB_X14_Y23_N22
\memory~313\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~313_combout\ = (\address_read[2]~input_o\ & ((\address_read[3]~input_o\) # ((\memory~117_q\)))) # (!\address_read[2]~input_o\ & (!\address_read[3]~input_o\ & (\memory~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~53_q\,
	datad => \memory~117_q\,
	combout => \memory~313_combout\);

-- Location: LCCOMB_X13_Y23_N30
\memory~314\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~314_combout\ = (\address_read[3]~input_o\ & ((\memory~313_combout\ & ((\memory~245_q\))) # (!\memory~313_combout\ & (\memory~181_q\)))) # (!\address_read[3]~input_o\ & (((\memory~313_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~181_q\,
	datac => \memory~245_q\,
	datad => \memory~313_combout\,
	combout => \memory~314_combout\);

-- Location: FF_X9_Y20_N21
\memory~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~69_q\);

-- Location: FF_X12_Y20_N21
\memory~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~197_q\);

-- Location: FF_X13_Y20_N25
\memory~5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~5_q\);

-- Location: LCCOMB_X11_Y21_N30
\memory~133feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~133feeder_combout\ = \data_write[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[5]~input_o\,
	combout => \memory~133feeder_combout\);

-- Location: FF_X11_Y21_N31
\memory~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~133feeder_combout\,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~133_q\);

-- Location: LCCOMB_X13_Y20_N24
\memory~310\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~310_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~133_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~5_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~5_q\,
	datad => \memory~133_q\,
	combout => \memory~310_combout\);

-- Location: LCCOMB_X12_Y20_N20
\memory~311\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~311_combout\ = (\address_read[2]~input_o\ & ((\memory~310_combout\ & ((\memory~197_q\))) # (!\memory~310_combout\ & (\memory~69_q\)))) # (!\address_read[2]~input_o\ & (((\memory~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~69_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~197_q\,
	datad => \memory~310_combout\,
	combout => \memory~311_combout\);

-- Location: FF_X11_Y20_N27
\memory~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~149_q\);

-- Location: FF_X11_Y20_N29
\memory~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~213_q\);

-- Location: FF_X9_Y21_N29
\memory~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[5]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~21_q\);

-- Location: LCCOMB_X9_Y21_N18
\memory~85feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~85feeder_combout\ = \data_write[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[5]~input_o\,
	combout => \memory~85feeder_combout\);

-- Location: FF_X9_Y21_N19
\memory~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~85feeder_combout\,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~85_q\);

-- Location: LCCOMB_X9_Y21_N28
\memory~308\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~308_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~85_q\))) # (!\address_read[2]~input_o\ & (\memory~21_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~21_q\,
	datad => \memory~85_q\,
	combout => \memory~308_combout\);

-- Location: LCCOMB_X11_Y20_N28
\memory~309\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~309_combout\ = (\address_read[3]~input_o\ & ((\memory~308_combout\ & ((\memory~213_q\))) # (!\memory~308_combout\ & (\memory~149_q\)))) # (!\address_read[3]~input_o\ & (((\memory~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~149_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~213_q\,
	datad => \memory~308_combout\,
	combout => \memory~309_combout\);

-- Location: LCCOMB_X12_Y20_N18
\memory~312\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~312_combout\ = (\address_read[1]~input_o\ & (((\address_read[0]~input_o\)))) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~309_combout\))) # (!\address_read[0]~input_o\ & (\memory~311_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~311_combout\,
	datac => \address_read[0]~input_o\,
	datad => \memory~309_combout\,
	combout => \memory~312_combout\);

-- Location: LCCOMB_X12_Y20_N26
\memory~315\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~315_combout\ = (\address_read[1]~input_o\ & ((\memory~312_combout\ & ((\memory~314_combout\))) # (!\memory~312_combout\ & (\memory~307_combout\)))) # (!\address_read[1]~input_o\ & (((\memory~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~307_combout\,
	datac => \memory~314_combout\,
	datad => \memory~312_combout\,
	combout => \memory~315_combout\);

-- Location: FF_X12_Y20_N27
\data_read[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~315_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[5]~reg0_q\);

-- Location: IOIBUF_X30_Y24_N22
\data_write[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(6),
	o => \data_write[6]~input_o\);

-- Location: FF_X12_Y23_N3
\memory~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~150_q\);

-- Location: FF_X12_Y23_N1
\memory~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~182_q\);

-- Location: FF_X9_Y23_N25
\memory~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~134_q\);

-- Location: FF_X9_Y23_N7
\memory~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~166_q\);

-- Location: LCCOMB_X9_Y23_N24
\memory~318\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~318_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~166_q\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & (\memory~134_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~134_q\,
	datad => \memory~166_q\,
	combout => \memory~318_combout\);

-- Location: LCCOMB_X12_Y23_N0
\memory~319\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~319_combout\ = (\address_read[0]~input_o\ & ((\memory~318_combout\ & ((\memory~182_q\))) # (!\memory~318_combout\ & (\memory~150_q\)))) # (!\address_read[0]~input_o\ & (((\memory~318_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~150_q\,
	datac => \memory~182_q\,
	datad => \memory~318_combout\,
	combout => \memory~319_combout\);

-- Location: FF_X10_Y21_N31
\memory~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~54_q\);

-- Location: FF_X10_Y22_N25
\memory~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~22_q\);

-- Location: FF_X10_Y22_N19
\memory~6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~6_q\);

-- Location: FF_X11_Y22_N23
\memory~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~38_q\);

-- Location: LCCOMB_X10_Y22_N18
\memory~320\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~320_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~38_q\))) # (!\address_read[1]~input_o\ & (\memory~6_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~6_q\,
	datad => \memory~38_q\,
	combout => \memory~320_combout\);

-- Location: LCCOMB_X10_Y22_N24
\memory~321\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~321_combout\ = (\address_read[0]~input_o\ & ((\memory~320_combout\ & (\memory~54_q\)) # (!\memory~320_combout\ & ((\memory~22_q\))))) # (!\address_read[0]~input_o\ & (((\memory~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~54_q\,
	datac => \memory~22_q\,
	datad => \memory~320_combout\,
	combout => \memory~321_combout\);

-- Location: LCCOMB_X11_Y23_N24
\memory~322\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~322_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~319_combout\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & ((\memory~321_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~319_combout\,
	datad => \memory~321_combout\,
	combout => \memory~322_combout\);

-- Location: LCCOMB_X12_Y22_N18
\memory~230feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~230feeder_combout\ = \data_write[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[6]~input_o\,
	combout => \memory~230feeder_combout\);

-- Location: FF_X12_Y22_N19
\memory~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~230feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~230_q\);

-- Location: FF_X13_Y23_N23
\memory~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~246_q\);

-- Location: FF_X12_Y20_N29
\memory~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~198_q\);

-- Location: LCCOMB_X11_Y20_N30
\memory~214feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~214feeder_combout\ = \data_write[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[6]~input_o\,
	combout => \memory~214feeder_combout\);

-- Location: FF_X11_Y20_N31
\memory~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~214feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~214_q\);

-- Location: LCCOMB_X12_Y20_N28
\memory~323\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~323_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~214_q\))) # (!\address_read[0]~input_o\ & (\memory~198_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~198_q\,
	datad => \memory~214_q\,
	combout => \memory~323_combout\);

-- Location: LCCOMB_X13_Y23_N22
\memory~324\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~324_combout\ = (\address_read[1]~input_o\ & ((\memory~323_combout\ & ((\memory~246_q\))) # (!\memory~323_combout\ & (\memory~230_q\)))) # (!\address_read[1]~input_o\ & (((\memory~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~230_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~246_q\,
	datad => \memory~323_combout\,
	combout => \memory~324_combout\);

-- Location: LCCOMB_X14_Y21_N18
\memory~118feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~118feeder_combout\ = \data_write[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[6]~input_o\,
	combout => \memory~118feeder_combout\);

-- Location: FF_X14_Y21_N19
\memory~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~118feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~118_q\);

-- Location: FF_X13_Y23_N25
\memory~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~102_q\);

-- Location: FF_X14_Y21_N1
\memory~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~70_q\);

-- Location: FF_X9_Y21_N27
\memory~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[6]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~86_q\);

-- Location: LCCOMB_X14_Y21_N0
\memory~316\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~316_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~86_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~70_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~70_q\,
	datad => \memory~86_q\,
	combout => \memory~316_combout\);

-- Location: LCCOMB_X13_Y23_N24
\memory~317\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~317_combout\ = (\address_read[1]~input_o\ & ((\memory~316_combout\ & (\memory~118_q\)) # (!\memory~316_combout\ & ((\memory~102_q\))))) # (!\address_read[1]~input_o\ & (((\memory~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~118_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~102_q\,
	datad => \memory~316_combout\,
	combout => \memory~317_combout\);

-- Location: LCCOMB_X11_Y23_N20
\memory~325\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~325_combout\ = (\address_read[2]~input_o\ & ((\memory~322_combout\ & (\memory~324_combout\)) # (!\memory~322_combout\ & ((\memory~317_combout\))))) # (!\address_read[2]~input_o\ & (\memory~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~322_combout\,
	datac => \memory~324_combout\,
	datad => \memory~317_combout\,
	combout => \memory~325_combout\);

-- Location: FF_X11_Y23_N21
\data_read[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~325_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[6]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N22
\data_write[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(7),
	o => \data_write[7]~input_o\);

-- Location: FF_X9_Y22_N11
\memory~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~87_q\);

-- Location: LCCOMB_X10_Y20_N14
\memory~215feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~215feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~215feeder_combout\);

-- Location: FF_X10_Y20_N15
\memory~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~215feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~215_q\);

-- Location: FF_X10_Y22_N21
\memory~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~23_q\);

-- Location: LCCOMB_X10_Y20_N20
\memory~151feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~151feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~151feeder_combout\);

-- Location: FF_X10_Y20_N21
\memory~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~151feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~151_q\);

-- Location: LCCOMB_X10_Y22_N20
\memory~326\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~326_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~151_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~23_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~23_q\,
	datad => \memory~151_q\,
	combout => \memory~326_combout\);

-- Location: LCCOMB_X10_Y22_N22
\memory~327\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~327_combout\ = (\address_read[2]~input_o\ & ((\memory~326_combout\ & ((\memory~215_q\))) # (!\memory~326_combout\ & (\memory~87_q\)))) # (!\address_read[2]~input_o\ & (((\memory~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~87_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~215_q\,
	datad => \memory~326_combout\,
	combout => \memory~327_combout\);

-- Location: FF_X13_Y19_N29
\memory~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~119_q\);

-- Location: FF_X13_Y23_N1
\memory~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~247_q\);

-- Location: FF_X14_Y23_N17
\memory~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~55_q\);

-- Location: LCCOMB_X12_Y23_N6
\memory~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~183feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~183feeder_combout\);

-- Location: FF_X12_Y23_N7
\memory~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~183feeder_combout\,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~183_q\);

-- Location: LCCOMB_X14_Y23_N16
\memory~333\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~333_combout\ = (\address_read[2]~input_o\ & (\address_read[3]~input_o\)) # (!\address_read[2]~input_o\ & ((\address_read[3]~input_o\ & ((\memory~183_q\))) # (!\address_read[3]~input_o\ & (\memory~55_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~55_q\,
	datad => \memory~183_q\,
	combout => \memory~333_combout\);

-- Location: LCCOMB_X13_Y23_N0
\memory~334\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~334_combout\ = (\address_read[2]~input_o\ & ((\memory~333_combout\ & ((\memory~247_q\))) # (!\memory~333_combout\ & (\memory~119_q\)))) # (!\address_read[2]~input_o\ & (((\memory~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~119_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~247_q\,
	datad => \memory~333_combout\,
	combout => \memory~334_combout\);

-- Location: LCCOMB_X9_Y23_N14
\memory~135feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~135feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~135feeder_combout\);

-- Location: FF_X9_Y23_N15
\memory~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~135feeder_combout\,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~135_q\);

-- Location: FF_X10_Y23_N9
\memory~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~199_q\);

-- Location: FF_X10_Y22_N1
\memory~7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~7_q\);

-- Location: LCCOMB_X13_Y22_N12
\memory~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~71feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~71feeder_combout\);

-- Location: FF_X13_Y22_N13
\memory~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~71feeder_combout\,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~71_q\);

-- Location: LCCOMB_X10_Y22_N0
\memory~330\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~330_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~71_q\))) # (!\address_read[2]~input_o\ & (\memory~7_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~7_q\,
	datad => \memory~71_q\,
	combout => \memory~330_combout\);

-- Location: LCCOMB_X10_Y23_N8
\memory~331\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~331_combout\ = (\address_read[3]~input_o\ & ((\memory~330_combout\ & ((\memory~199_q\))) # (!\memory~330_combout\ & (\memory~135_q\)))) # (!\address_read[3]~input_o\ & (((\memory~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~135_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~199_q\,
	datad => \memory~330_combout\,
	combout => \memory~331_combout\);

-- Location: LCCOMB_X7_Y22_N8
\memory~167feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~167feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~167feeder_combout\);

-- Location: FF_X7_Y22_N9
\memory~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~167feeder_combout\,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~167_q\);

-- Location: FF_X12_Y22_N11
\memory~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~231_q\);

-- Location: FF_X12_Y22_N21
\memory~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[7]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~39_q\);

-- Location: LCCOMB_X13_Y22_N6
\memory~103feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~103feeder_combout\ = \data_write[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[7]~input_o\,
	combout => \memory~103feeder_combout\);

-- Location: FF_X13_Y22_N7
\memory~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~103feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~103_q\);

-- Location: LCCOMB_X12_Y22_N20
\memory~328\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~328_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~103_q\))) # (!\address_read[2]~input_o\ & (\memory~39_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~39_q\,
	datad => \memory~103_q\,
	combout => \memory~328_combout\);

-- Location: LCCOMB_X12_Y22_N10
\memory~329\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~329_combout\ = (\address_read[3]~input_o\ & ((\memory~328_combout\ & ((\memory~231_q\))) # (!\memory~328_combout\ & (\memory~167_q\)))) # (!\address_read[3]~input_o\ & (((\memory~328_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~167_q\,
	datac => \memory~231_q\,
	datad => \memory~328_combout\,
	combout => \memory~329_combout\);

-- Location: LCCOMB_X10_Y23_N2
\memory~332\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~332_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~329_combout\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & (\memory~331_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~331_combout\,
	datad => \memory~329_combout\,
	combout => \memory~332_combout\);

-- Location: LCCOMB_X10_Y23_N10
\memory~335\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~335_combout\ = (\address_read[0]~input_o\ & ((\memory~332_combout\ & ((\memory~334_combout\))) # (!\memory~332_combout\ & (\memory~327_combout\)))) # (!\address_read[0]~input_o\ & (((\memory~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~327_combout\,
	datac => \memory~334_combout\,
	datad => \memory~332_combout\,
	combout => \memory~335_combout\);

-- Location: FF_X10_Y23_N11
\data_read[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~335_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[7]~reg0_q\);

-- Location: IOIBUF_X3_Y24_N22
\data_write[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(8),
	o => \data_write[8]~input_o\);

-- Location: FF_X12_Y23_N5
\memory~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~184_q\);

-- Location: FF_X9_Y23_N17
\memory~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~168_q\);

-- Location: FF_X9_Y23_N19
\memory~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~136_q\);

-- Location: FF_X10_Y20_N9
\memory~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~152_q\);

-- Location: LCCOMB_X9_Y23_N18
\memory~336\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~336_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~152_q\))) # (!\address_read[0]~input_o\ & (\memory~136_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~136_q\,
	datad => \memory~152_q\,
	combout => \memory~336_combout\);

-- Location: LCCOMB_X9_Y23_N16
\memory~337\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~337_combout\ = (\address_read[1]~input_o\ & ((\memory~336_combout\ & (\memory~184_q\)) # (!\memory~336_combout\ & ((\memory~168_q\))))) # (!\address_read[1]~input_o\ & (((\memory~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~184_q\,
	datac => \memory~168_q\,
	datad => \memory~336_combout\,
	combout => \memory~337_combout\);

-- Location: FF_X10_Y20_N31
\memory~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~216_q\);

-- Location: FF_X13_Y23_N27
\memory~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~248_q\);

-- Location: FF_X10_Y23_N17
\memory~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~200_q\);

-- Location: LCCOMB_X11_Y22_N14
\memory~232feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~232feeder_combout\ = \data_write[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[8]~input_o\,
	combout => \memory~232feeder_combout\);

-- Location: FF_X11_Y22_N15
\memory~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~232feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~232_q\);

-- Location: LCCOMB_X10_Y23_N16
\memory~343\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~343_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~232_q\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & (\memory~200_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~200_q\,
	datad => \memory~232_q\,
	combout => \memory~343_combout\);

-- Location: LCCOMB_X13_Y23_N26
\memory~344\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~344_combout\ = (\address_read[0]~input_o\ & ((\memory~343_combout\ & ((\memory~248_q\))) # (!\memory~343_combout\ & (\memory~216_q\)))) # (!\address_read[0]~input_o\ & (((\memory~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~216_q\,
	datac => \memory~248_q\,
	datad => \memory~343_combout\,
	combout => \memory~344_combout\);

-- Location: LCCOMB_X11_Y22_N4
\memory~40feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~40feeder_combout\ = \data_write[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[8]~input_o\,
	combout => \memory~40feeder_combout\);

-- Location: FF_X11_Y22_N5
\memory~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~40feeder_combout\,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~40_q\);

-- Location: FF_X10_Y21_N21
\memory~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~56_q\);

-- Location: FF_X10_Y22_N9
\memory~8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~8_q\);

-- Location: FF_X10_Y22_N7
\memory~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~24_q\);

-- Location: LCCOMB_X10_Y22_N8
\memory~340\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~340_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~24_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~8_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~8_q\,
	datad => \memory~24_q\,
	combout => \memory~340_combout\);

-- Location: LCCOMB_X10_Y21_N20
\memory~341\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~341_combout\ = (\address_read[1]~input_o\ & ((\memory~340_combout\ & ((\memory~56_q\))) # (!\memory~340_combout\ & (\memory~40_q\)))) # (!\address_read[1]~input_o\ & (((\memory~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~40_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~56_q\,
	datad => \memory~340_combout\,
	combout => \memory~341_combout\);

-- Location: LCCOMB_X9_Y21_N24
\memory~88feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~88feeder_combout\ = \data_write[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[8]~input_o\,
	combout => \memory~88feeder_combout\);

-- Location: FF_X9_Y21_N25
\memory~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~88feeder_combout\,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~88_q\);

-- Location: FF_X14_Y21_N23
\memory~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~120_q\);

-- Location: FF_X14_Y21_N17
\memory~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[8]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~72_q\);

-- Location: LCCOMB_X16_Y21_N8
\memory~104feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~104feeder_combout\ = \data_write[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[8]~input_o\,
	combout => \memory~104feeder_combout\);

-- Location: FF_X16_Y21_N9
\memory~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~104feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~104_q\);

-- Location: LCCOMB_X14_Y21_N16
\memory~338\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~338_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~104_q\))) # (!\address_read[1]~input_o\ & (\memory~72_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~72_q\,
	datad => \memory~104_q\,
	combout => \memory~338_combout\);

-- Location: LCCOMB_X14_Y21_N22
\memory~339\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~339_combout\ = (\address_read[0]~input_o\ & ((\memory~338_combout\ & ((\memory~120_q\))) # (!\memory~338_combout\ & (\memory~88_q\)))) # (!\address_read[0]~input_o\ & (((\memory~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~88_q\,
	datac => \memory~120_q\,
	datad => \memory~338_combout\,
	combout => \memory~339_combout\);

-- Location: LCCOMB_X11_Y23_N10
\memory~342\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~342_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~339_combout\))) # (!\address_read[2]~input_o\ & (\memory~341_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~341_combout\,
	datad => \memory~339_combout\,
	combout => \memory~342_combout\);

-- Location: LCCOMB_X11_Y23_N14
\memory~345\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~345_combout\ = (\address_read[3]~input_o\ & ((\memory~342_combout\ & ((\memory~344_combout\))) # (!\memory~342_combout\ & (\memory~337_combout\)))) # (!\address_read[3]~input_o\ & (((\memory~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~337_combout\,
	datac => \memory~344_combout\,
	datad => \memory~342_combout\,
	combout => \memory~345_combout\);

-- Location: FF_X11_Y23_N15
\data_read[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~345_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[8]~reg0_q\);

-- Location: IOIBUF_X0_Y23_N1
\data_write[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(9),
	o => \data_write[9]~input_o\);

-- Location: LCCOMB_X14_Y22_N18
\memory~233feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~233feeder_combout\ = \data_write[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[9]~input_o\,
	combout => \memory~233feeder_combout\);

-- Location: FF_X14_Y22_N19
\memory~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~233feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~233_q\);

-- Location: FF_X13_Y22_N11
\memory~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~105_q\);

-- Location: FF_X12_Y22_N29
\memory~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~41_q\);

-- Location: FF_X12_Y21_N19
\memory~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~169_q\);

-- Location: LCCOMB_X12_Y22_N28
\memory~346\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~346_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~169_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~41_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~41_q\,
	datad => \memory~169_q\,
	combout => \memory~346_combout\);

-- Location: LCCOMB_X13_Y22_N10
\memory~347\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~347_combout\ = (\address_read[2]~input_o\ & ((\memory~346_combout\ & (\memory~233_q\)) # (!\memory~346_combout\ & ((\memory~105_q\))))) # (!\address_read[2]~input_o\ & (((\memory~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~233_q\,
	datac => \memory~105_q\,
	datad => \memory~346_combout\,
	combout => \memory~347_combout\);

-- Location: LCCOMB_X9_Y20_N26
\memory~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~73feeder_combout\ = \data_write[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[9]~input_o\,
	combout => \memory~73feeder_combout\);

-- Location: FF_X9_Y20_N27
\memory~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~73feeder_combout\,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~73_q\);

-- Location: FF_X12_Y20_N15
\memory~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~201_q\);

-- Location: FF_X11_Y21_N15
\memory~9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~9_q\);

-- Location: LCCOMB_X11_Y21_N28
\memory~137feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~137feeder_combout\ = \data_write[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[9]~input_o\,
	combout => \memory~137feeder_combout\);

-- Location: FF_X11_Y21_N29
\memory~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~137feeder_combout\,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~137_q\);

-- Location: LCCOMB_X11_Y21_N14
\memory~350\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~350_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~137_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~9_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~9_q\,
	datad => \memory~137_q\,
	combout => \memory~350_combout\);

-- Location: LCCOMB_X12_Y20_N14
\memory~351\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~351_combout\ = (\address_read[2]~input_o\ & ((\memory~350_combout\ & ((\memory~201_q\))) # (!\memory~350_combout\ & (\memory~73_q\)))) # (!\address_read[2]~input_o\ & (((\memory~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~73_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~201_q\,
	datad => \memory~350_combout\,
	combout => \memory~351_combout\);

-- Location: LCCOMB_X11_Y20_N12
\memory~153feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~153feeder_combout\ = \data_write[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[9]~input_o\,
	combout => \memory~153feeder_combout\);

-- Location: FF_X11_Y20_N13
\memory~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~153feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~153_q\);

-- Location: FF_X11_Y20_N15
\memory~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~217_q\);

-- Location: FF_X9_Y21_N9
\memory~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~25_q\);

-- Location: FF_X9_Y21_N7
\memory~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~89_q\);

-- Location: LCCOMB_X9_Y21_N8
\memory~348\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~348_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~89_q\))) # (!\address_read[2]~input_o\ & (\memory~25_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~25_q\,
	datad => \memory~89_q\,
	combout => \memory~348_combout\);

-- Location: LCCOMB_X11_Y20_N14
\memory~349\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~349_combout\ = (\address_read[3]~input_o\ & ((\memory~348_combout\ & ((\memory~217_q\))) # (!\memory~348_combout\ & (\memory~153_q\)))) # (!\address_read[3]~input_o\ & (((\memory~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~153_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~217_q\,
	datad => \memory~348_combout\,
	combout => \memory~349_combout\);

-- Location: LCCOMB_X12_Y20_N4
\memory~352\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~352_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~349_combout\))) # (!\address_read[0]~input_o\ & (\memory~351_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~351_combout\,
	datad => \memory~349_combout\,
	combout => \memory~352_combout\);

-- Location: LCCOMB_X12_Y23_N22
\memory~185feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~185feeder_combout\ = \data_write[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[9]~input_o\,
	combout => \memory~185feeder_combout\);

-- Location: FF_X12_Y23_N23
\memory~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~185feeder_combout\,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~185_q\);

-- Location: FF_X12_Y21_N29
\memory~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~249_q\);

-- Location: FF_X10_Y21_N11
\memory~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~57_q\);

-- Location: FF_X8_Y21_N17
\memory~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[9]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~121_q\);

-- Location: LCCOMB_X10_Y21_N10
\memory~353\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~353_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~121_q\))) # (!\address_read[2]~input_o\ & (\memory~57_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~57_q\,
	datad => \memory~121_q\,
	combout => \memory~353_combout\);

-- Location: LCCOMB_X12_Y21_N28
\memory~354\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~354_combout\ = (\address_read[3]~input_o\ & ((\memory~353_combout\ & ((\memory~249_q\))) # (!\memory~353_combout\ & (\memory~185_q\)))) # (!\address_read[3]~input_o\ & (((\memory~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~185_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~249_q\,
	datad => \memory~353_combout\,
	combout => \memory~354_combout\);

-- Location: LCCOMB_X12_Y20_N12
\memory~355\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~355_combout\ = (\address_read[1]~input_o\ & ((\memory~352_combout\ & ((\memory~354_combout\))) # (!\memory~352_combout\ & (\memory~347_combout\)))) # (!\address_read[1]~input_o\ & (((\memory~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~347_combout\,
	datab => \address_read[1]~input_o\,
	datac => \memory~352_combout\,
	datad => \memory~354_combout\,
	combout => \memory~355_combout\);

-- Location: FF_X12_Y20_N13
\data_read[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~355_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[9]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N1
\data_write[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(10),
	o => \data_write[10]~input_o\);

-- Location: LCCOMB_X12_Y22_N0
\memory~234feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~234feeder_combout\ = \data_write[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[10]~input_o\,
	combout => \memory~234feeder_combout\);

-- Location: FF_X12_Y22_N1
\memory~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~234feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~234_q\);

-- Location: FF_X13_Y23_N11
\memory~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~250_q\);

-- Location: FF_X12_Y20_N23
\memory~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~202_q\);

-- Location: FF_X11_Y20_N25
\memory~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~218_q\);

-- Location: LCCOMB_X12_Y20_N22
\memory~363\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~363_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~218_q\))) # (!\address_read[0]~input_o\ & (\memory~202_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~202_q\,
	datad => \memory~218_q\,
	combout => \memory~363_combout\);

-- Location: LCCOMB_X13_Y23_N10
\memory~364\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~364_combout\ = (\address_read[1]~input_o\ & ((\memory~363_combout\ & ((\memory~250_q\))) # (!\memory~363_combout\ & (\memory~234_q\)))) # (!\address_read[1]~input_o\ & (((\memory~363_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~234_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~250_q\,
	datad => \memory~363_combout\,
	combout => \memory~364_combout\);

-- Location: FF_X14_Y21_N27
\memory~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~122_q\);

-- Location: FF_X13_Y23_N5
\memory~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~106_q\);

-- Location: FF_X14_Y21_N5
\memory~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~74_q\);

-- Location: FF_X9_Y21_N23
\memory~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~90_q\);

-- Location: LCCOMB_X14_Y21_N4
\memory~356\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~356_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~90_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~74_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~74_q\,
	datad => \memory~90_q\,
	combout => \memory~356_combout\);

-- Location: LCCOMB_X13_Y23_N4
\memory~357\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~357_combout\ = (\address_read[1]~input_o\ & ((\memory~356_combout\ & (\memory~122_q\)) # (!\memory~356_combout\ & ((\memory~106_q\))))) # (!\address_read[1]~input_o\ & (((\memory~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~122_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~106_q\,
	datad => \memory~356_combout\,
	combout => \memory~357_combout\);

-- Location: LCCOMB_X12_Y23_N16
\memory~154feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~154feeder_combout\ = \data_write[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[10]~input_o\,
	combout => \memory~154feeder_combout\);

-- Location: FF_X12_Y23_N17
\memory~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~154feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~154_q\);

-- Location: FF_X12_Y23_N31
\memory~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~186_q\);

-- Location: FF_X11_Y21_N17
\memory~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~138_q\);

-- Location: FF_X12_Y21_N7
\memory~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~170_q\);

-- Location: LCCOMB_X11_Y21_N16
\memory~358\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~358_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~170_q\))) # (!\address_read[1]~input_o\ & (\memory~138_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~138_q\,
	datad => \memory~170_q\,
	combout => \memory~358_combout\);

-- Location: LCCOMB_X12_Y23_N30
\memory~359\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~359_combout\ = (\address_read[0]~input_o\ & ((\memory~358_combout\ & ((\memory~186_q\))) # (!\memory~358_combout\ & (\memory~154_q\)))) # (!\address_read[0]~input_o\ & (((\memory~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~154_q\,
	datac => \memory~186_q\,
	datad => \memory~358_combout\,
	combout => \memory~359_combout\);

-- Location: FF_X10_Y21_N27
\memory~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~58_q\);

-- Location: FF_X10_Y21_N29
\memory~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~26_q\);

-- Location: FF_X11_Y21_N23
\memory~10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[10]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~10_q\);

-- Location: LCCOMB_X12_Y22_N6
\memory~42feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~42feeder_combout\ = \data_write[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[10]~input_o\,
	combout => \memory~42feeder_combout\);

-- Location: FF_X12_Y22_N7
\memory~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~42feeder_combout\,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~42_q\);

-- Location: LCCOMB_X11_Y21_N22
\memory~360\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~360_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~42_q\))) # (!\address_read[1]~input_o\ & (\memory~10_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~10_q\,
	datad => \memory~42_q\,
	combout => \memory~360_combout\);

-- Location: LCCOMB_X10_Y21_N28
\memory~361\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~361_combout\ = (\address_read[0]~input_o\ & ((\memory~360_combout\ & (\memory~58_q\)) # (!\memory~360_combout\ & ((\memory~26_q\))))) # (!\address_read[0]~input_o\ & (((\memory~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~58_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~26_q\,
	datad => \memory~360_combout\,
	combout => \memory~361_combout\);

-- Location: LCCOMB_X11_Y23_N0
\memory~362\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~362_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~359_combout\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & ((\memory~361_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~359_combout\,
	datad => \memory~361_combout\,
	combout => \memory~362_combout\);

-- Location: LCCOMB_X11_Y23_N28
\memory~365\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~365_combout\ = (\address_read[2]~input_o\ & ((\memory~362_combout\ & (\memory~364_combout\)) # (!\memory~362_combout\ & ((\memory~357_combout\))))) # (!\address_read[2]~input_o\ & (((\memory~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \memory~364_combout\,
	datac => \memory~357_combout\,
	datad => \memory~362_combout\,
	combout => \memory~365_combout\);

-- Location: FF_X11_Y23_N29
\data_read[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~365_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[10]~reg0_q\);

-- Location: IOIBUF_X5_Y24_N8
\data_write[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(11),
	o => \data_write[11]~input_o\);

-- Location: LCCOMB_X10_Y20_N4
\memory~219feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~219feeder_combout\ = \data_write[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[11]~input_o\,
	combout => \memory~219feeder_combout\);

-- Location: FF_X10_Y20_N5
\memory~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~219feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~219_q\);

-- Location: FF_X9_Y21_N1
\memory~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~91_q\);

-- Location: FF_X10_Y21_N5
\memory~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~27_q\);

-- Location: FF_X7_Y21_N9
\memory~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~155_q\);

-- Location: LCCOMB_X10_Y21_N4
\memory~366\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~366_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~155_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~27_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~27_q\,
	datad => \memory~155_q\,
	combout => \memory~366_combout\);

-- Location: LCCOMB_X9_Y21_N0
\memory~367\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~367_combout\ = (\address_read[2]~input_o\ & ((\memory~366_combout\ & (\memory~219_q\)) # (!\memory~366_combout\ & ((\memory~91_q\))))) # (!\address_read[2]~input_o\ & (((\memory~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~219_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~91_q\,
	datad => \memory~366_combout\,
	combout => \memory~367_combout\);

-- Location: FF_X12_Y21_N9
\memory~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~171_q\);

-- Location: FF_X11_Y22_N1
\memory~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~235_q\);

-- Location: FF_X12_Y22_N23
\memory~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~43_q\);

-- Location: FF_X13_Y22_N29
\memory~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~107_q\);

-- Location: LCCOMB_X12_Y22_N22
\memory~368\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~368_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~107_q\))) # (!\address_read[2]~input_o\ & (\memory~43_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~43_q\,
	datad => \memory~107_q\,
	combout => \memory~368_combout\);

-- Location: LCCOMB_X11_Y22_N0
\memory~369\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~369_combout\ = (\address_read[3]~input_o\ & ((\memory~368_combout\ & ((\memory~235_q\))) # (!\memory~368_combout\ & (\memory~171_q\)))) # (!\address_read[3]~input_o\ & (((\memory~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~171_q\,
	datac => \memory~235_q\,
	datad => \memory~368_combout\,
	combout => \memory~369_combout\);

-- Location: FF_X11_Y21_N5
\memory~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~139_q\);

-- Location: FF_X10_Y23_N7
\memory~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~203_q\);

-- Location: FF_X11_Y21_N3
\memory~11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~11_q\);

-- Location: FF_X8_Y21_N27
\memory~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~75_q\);

-- Location: LCCOMB_X11_Y21_N2
\memory~370\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~370_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~75_q\))) # (!\address_read[2]~input_o\ & (\memory~11_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~11_q\,
	datad => \memory~75_q\,
	combout => \memory~370_combout\);

-- Location: LCCOMB_X10_Y23_N6
\memory~371\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~371_combout\ = (\address_read[3]~input_o\ & ((\memory~370_combout\ & ((\memory~203_q\))) # (!\memory~370_combout\ & (\memory~139_q\)))) # (!\address_read[3]~input_o\ & (((\memory~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~139_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~203_q\,
	datad => \memory~370_combout\,
	combout => \memory~371_combout\);

-- Location: LCCOMB_X10_Y23_N4
\memory~372\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~372_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~369_combout\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & ((\memory~371_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~369_combout\,
	datad => \memory~371_combout\,
	combout => \memory~372_combout\);

-- Location: FF_X8_Y21_N21
\memory~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~123_q\);

-- Location: FF_X12_Y21_N23
\memory~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~251_q\);

-- Location: FF_X10_Y21_N3
\memory~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~59_q\);

-- Location: FF_X7_Y21_N3
\memory~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[11]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~187_q\);

-- Location: LCCOMB_X10_Y21_N2
\memory~373\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~373_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~187_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~59_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~59_q\,
	datad => \memory~187_q\,
	combout => \memory~373_combout\);

-- Location: LCCOMB_X12_Y21_N22
\memory~374\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~374_combout\ = (\address_read[2]~input_o\ & ((\memory~373_combout\ & ((\memory~251_q\))) # (!\memory~373_combout\ & (\memory~123_q\)))) # (!\address_read[2]~input_o\ & (((\memory~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~123_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~251_q\,
	datad => \memory~373_combout\,
	combout => \memory~374_combout\);

-- Location: LCCOMB_X10_Y23_N20
\memory~375\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~375_combout\ = (\address_read[0]~input_o\ & ((\memory~372_combout\ & ((\memory~374_combout\))) # (!\memory~372_combout\ & (\memory~367_combout\)))) # (!\address_read[0]~input_o\ & (((\memory~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~367_combout\,
	datab => \address_read[0]~input_o\,
	datac => \memory~372_combout\,
	datad => \memory~374_combout\,
	combout => \memory~375_combout\);

-- Location: FF_X10_Y23_N21
\data_read[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~375_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[11]~reg0_q\);

-- Location: IOIBUF_X18_Y24_N22
\data_write[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(12),
	o => \data_write[12]~input_o\);

-- Location: LCCOMB_X11_Y20_N0
\memory~220feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~220feeder_combout\ = \data_write[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[12]~input_o\,
	combout => \memory~220feeder_combout\);

-- Location: FF_X11_Y20_N1
\memory~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~220feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~220_q\);

-- Location: FF_X13_Y21_N1
\memory~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~252_q\);

-- Location: FF_X13_Y20_N3
\memory~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~204_q\);

-- Location: LCCOMB_X14_Y22_N24
\memory~236feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~236feeder_combout\ = \data_write[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[12]~input_o\,
	combout => \memory~236feeder_combout\);

-- Location: FF_X14_Y22_N25
\memory~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~236feeder_combout\,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~236_q\);

-- Location: LCCOMB_X13_Y21_N10
\memory~383\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~383_combout\ = (\address_read[0]~input_o\ & (((\address_read[1]~input_o\)))) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~236_q\))) # (!\address_read[1]~input_o\ & (\memory~204_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~204_q\,
	datac => \address_read[1]~input_o\,
	datad => \memory~236_q\,
	combout => \memory~383_combout\);

-- Location: LCCOMB_X13_Y21_N0
\memory~384\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~384_combout\ = (\address_read[0]~input_o\ & ((\memory~383_combout\ & ((\memory~252_q\))) # (!\memory~383_combout\ & (\memory~220_q\)))) # (!\address_read[0]~input_o\ & (((\memory~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~220_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~252_q\,
	datad => \memory~383_combout\,
	combout => \memory~384_combout\);

-- Location: FF_X12_Y23_N29
\memory~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~188_q\);

-- Location: FF_X12_Y21_N17
\memory~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~172_q\);

-- Location: FF_X11_Y21_N9
\memory~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~140_q\);

-- Location: LCCOMB_X11_Y20_N10
\memory~156feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~156feeder_combout\ = \data_write[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[12]~input_o\,
	combout => \memory~156feeder_combout\);

-- Location: FF_X11_Y20_N11
\memory~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~156feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~156_q\);

-- Location: LCCOMB_X11_Y21_N8
\memory~376\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~376_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~156_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~140_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~140_q\,
	datad => \memory~156_q\,
	combout => \memory~376_combout\);

-- Location: LCCOMB_X12_Y21_N16
\memory~377\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~377_combout\ = (\address_read[1]~input_o\ & ((\memory~376_combout\ & (\memory~188_q\)) # (!\memory~376_combout\ & ((\memory~172_q\))))) # (!\address_read[1]~input_o\ & (((\memory~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~188_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~172_q\,
	datad => \memory~376_combout\,
	combout => \memory~377_combout\);

-- Location: LCCOMB_X9_Y21_N10
\memory~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~92feeder_combout\ = \data_write[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[12]~input_o\,
	combout => \memory~92feeder_combout\);

-- Location: FF_X9_Y21_N11
\memory~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~92feeder_combout\,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~92_q\);

-- Location: FF_X14_Y21_N11
\memory~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~124_q\);

-- Location: FF_X14_Y21_N13
\memory~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~76_q\);

-- Location: LCCOMB_X16_Y21_N22
\memory~108feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~108feeder_combout\ = \data_write[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[12]~input_o\,
	combout => \memory~108feeder_combout\);

-- Location: FF_X16_Y21_N23
\memory~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~108feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~108_q\);

-- Location: LCCOMB_X14_Y21_N12
\memory~378\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~378_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~108_q\))) # (!\address_read[1]~input_o\ & (\memory~76_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~76_q\,
	datad => \memory~108_q\,
	combout => \memory~378_combout\);

-- Location: LCCOMB_X14_Y21_N10
\memory~379\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~379_combout\ = (\address_read[0]~input_o\ & ((\memory~378_combout\ & ((\memory~124_q\))) # (!\memory~378_combout\ & (\memory~92_q\)))) # (!\address_read[0]~input_o\ & (((\memory~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~92_q\,
	datac => \memory~124_q\,
	datad => \memory~378_combout\,
	combout => \memory~379_combout\);

-- Location: FF_X11_Y22_N31
\memory~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~44_q\);

-- Location: FF_X10_Y21_N7
\memory~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~60_q\);

-- Location: FF_X11_Y21_N7
\memory~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~12_q\);

-- Location: FF_X10_Y21_N13
\memory~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[12]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~28_q\);

-- Location: LCCOMB_X11_Y21_N6
\memory~380\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~380_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~28_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~12_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~12_q\,
	datad => \memory~28_q\,
	combout => \memory~380_combout\);

-- Location: LCCOMB_X10_Y21_N6
\memory~381\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~381_combout\ = (\address_read[1]~input_o\ & ((\memory~380_combout\ & ((\memory~60_q\))) # (!\memory~380_combout\ & (\memory~44_q\)))) # (!\address_read[1]~input_o\ & (((\memory~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~44_q\,
	datac => \memory~60_q\,
	datad => \memory~380_combout\,
	combout => \memory~381_combout\);

-- Location: LCCOMB_X13_Y21_N24
\memory~382\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~382_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & (\memory~379_combout\)) # (!\address_read[2]~input_o\ & ((\memory~381_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~379_combout\,
	datad => \memory~381_combout\,
	combout => \memory~382_combout\);

-- Location: LCCOMB_X13_Y21_N12
\memory~385\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~385_combout\ = (\address_read[3]~input_o\ & ((\memory~382_combout\ & (\memory~384_combout\)) # (!\memory~382_combout\ & ((\memory~377_combout\))))) # (!\address_read[3]~input_o\ & (((\memory~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~384_combout\,
	datac => \memory~377_combout\,
	datad => \memory~382_combout\,
	combout => \memory~385_combout\);

-- Location: FF_X13_Y21_N13
\data_read[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~385_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[12]~reg0_q\);

-- Location: IOIBUF_X1_Y24_N8
\data_write[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(13),
	o => \data_write[13]~input_o\);

-- Location: LCCOMB_X13_Y22_N2
\memory~109feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~109feeder_combout\ = \data_write[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[13]~input_o\,
	combout => \memory~109feeder_combout\);

-- Location: FF_X13_Y22_N3
\memory~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~109feeder_combout\,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~109_q\);

-- Location: FF_X12_Y22_N27
\memory~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~237_q\);

-- Location: FF_X12_Y22_N13
\memory~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~45_q\);

-- Location: FF_X12_Y21_N31
\memory~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~173_q\);

-- Location: LCCOMB_X12_Y22_N12
\memory~386\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~386_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~173_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~45_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~45_q\,
	datad => \memory~173_q\,
	combout => \memory~386_combout\);

-- Location: LCCOMB_X12_Y22_N26
\memory~387\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~387_combout\ = (\address_read[2]~input_o\ & ((\memory~386_combout\ & ((\memory~237_q\))) # (!\memory~386_combout\ & (\memory~109_q\)))) # (!\address_read[2]~input_o\ & (((\memory~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~109_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~237_q\,
	datad => \memory~386_combout\,
	combout => \memory~387_combout\);

-- Location: LCCOMB_X13_Y22_N0
\memory~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~77feeder_combout\ = \data_write[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[13]~input_o\,
	combout => \memory~77feeder_combout\);

-- Location: FF_X13_Y22_N1
\memory~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~77feeder_combout\,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~77_q\);

-- Location: FF_X11_Y23_N27
\memory~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~205_q\);

-- Location: FF_X11_Y21_N11
\memory~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~13_q\);

-- Location: FF_X11_Y21_N13
\memory~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~141_q\);

-- Location: LCCOMB_X11_Y21_N10
\memory~390\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~390_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~141_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~13_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~13_q\,
	datad => \memory~141_q\,
	combout => \memory~390_combout\);

-- Location: LCCOMB_X11_Y23_N26
\memory~391\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~391_combout\ = (\address_read[2]~input_o\ & ((\memory~390_combout\ & ((\memory~205_q\))) # (!\memory~390_combout\ & (\memory~77_q\)))) # (!\address_read[2]~input_o\ & (((\memory~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~77_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~205_q\,
	datad => \memory~390_combout\,
	combout => \memory~391_combout\);

-- Location: FF_X10_Y20_N7
\memory~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~157_q\);

-- Location: FF_X10_Y20_N25
\memory~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~221_q\);

-- Location: FF_X9_Y21_N31
\memory~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~29_q\);

-- Location: FF_X9_Y21_N21
\memory~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~93_q\);

-- Location: LCCOMB_X9_Y21_N30
\memory~388\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~388_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~93_q\))) # (!\address_read[2]~input_o\ & (\memory~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~29_q\,
	datad => \memory~93_q\,
	combout => \memory~388_combout\);

-- Location: LCCOMB_X10_Y20_N24
\memory~389\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~389_combout\ = (\address_read[3]~input_o\ & ((\memory~388_combout\ & ((\memory~221_q\))) # (!\memory~388_combout\ & (\memory~157_q\)))) # (!\address_read[3]~input_o\ & (((\memory~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~157_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~221_q\,
	datad => \memory~388_combout\,
	combout => \memory~389_combout\);

-- Location: LCCOMB_X11_Y23_N4
\memory~392\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~392_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~389_combout\))) # (!\address_read[0]~input_o\ & (\memory~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~391_combout\,
	datad => \memory~389_combout\,
	combout => \memory~392_combout\);

-- Location: LCCOMB_X12_Y23_N14
\memory~189feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~189feeder_combout\ = \data_write[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[13]~input_o\,
	combout => \memory~189feeder_combout\);

-- Location: FF_X12_Y23_N15
\memory~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~189feeder_combout\,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~189_q\);

-- Location: FF_X12_Y21_N21
\memory~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~253_q\);

-- Location: FF_X10_Y21_N9
\memory~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[13]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~61_q\);

-- Location: LCCOMB_X8_Y21_N6
\memory~125feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~125feeder_combout\ = \data_write[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[13]~input_o\,
	combout => \memory~125feeder_combout\);

-- Location: FF_X8_Y21_N7
\memory~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~125feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~125_q\);

-- Location: LCCOMB_X10_Y21_N8
\memory~393\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~393_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~125_q\))) # (!\address_read[2]~input_o\ & (\memory~61_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~61_q\,
	datad => \memory~125_q\,
	combout => \memory~393_combout\);

-- Location: LCCOMB_X12_Y21_N20
\memory~394\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~394_combout\ = (\address_read[3]~input_o\ & ((\memory~393_combout\ & ((\memory~253_q\))) # (!\memory~393_combout\ & (\memory~189_q\)))) # (!\address_read[3]~input_o\ & (((\memory~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~189_q\,
	datab => \address_read[3]~input_o\,
	datac => \memory~253_q\,
	datad => \memory~393_combout\,
	combout => \memory~394_combout\);

-- Location: LCCOMB_X11_Y23_N22
\memory~395\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~395_combout\ = (\address_read[1]~input_o\ & ((\memory~392_combout\ & ((\memory~394_combout\))) # (!\memory~392_combout\ & (\memory~387_combout\)))) # (!\address_read[1]~input_o\ & (((\memory~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~387_combout\,
	datac => \memory~392_combout\,
	datad => \memory~394_combout\,
	combout => \memory~395_combout\);

-- Location: FF_X11_Y23_N23
\data_read[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~395_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[13]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N15
\data_write[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(14),
	o => \data_write[14]~input_o\);

-- Location: LCCOMB_X14_Y22_N30
\memory~126feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~126feeder_combout\ = \data_write[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[14]~input_o\,
	combout => \memory~126feeder_combout\);

-- Location: FF_X14_Y22_N31
\memory~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~126feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~126_q\);

-- Location: FF_X13_Y22_N31
\memory~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~110_q\);

-- Location: FF_X13_Y22_N21
\memory~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~78_q\);

-- Location: FF_X9_Y22_N25
\memory~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~94_q\);

-- Location: LCCOMB_X13_Y22_N20
\memory~396\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~396_combout\ = (\address_read[0]~input_o\ & ((\address_read[1]~input_o\) # ((\memory~94_q\)))) # (!\address_read[0]~input_o\ & (!\address_read[1]~input_o\ & (\memory~78_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~78_q\,
	datad => \memory~94_q\,
	combout => \memory~396_combout\);

-- Location: LCCOMB_X13_Y22_N30
\memory~397\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~397_combout\ = (\address_read[1]~input_o\ & ((\memory~396_combout\ & (\memory~126_q\)) # (!\memory~396_combout\ & ((\memory~110_q\))))) # (!\address_read[1]~input_o\ & (((\memory~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~126_q\,
	datab => \address_read[1]~input_o\,
	datac => \memory~110_q\,
	datad => \memory~396_combout\,
	combout => \memory~397_combout\);

-- Location: FF_X12_Y20_N1
\memory~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~206_q\);

-- Location: LCCOMB_X11_Y20_N8
\memory~222feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~222feeder_combout\ = \data_write[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[14]~input_o\,
	combout => \memory~222feeder_combout\);

-- Location: FF_X11_Y20_N9
\memory~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~222feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~222_q\);

-- Location: LCCOMB_X12_Y20_N0
\memory~403\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~403_combout\ = (\address_read[1]~input_o\ & (\address_read[0]~input_o\)) # (!\address_read[1]~input_o\ & ((\address_read[0]~input_o\ & ((\memory~222_q\))) # (!\address_read[0]~input_o\ & (\memory~206_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~206_q\,
	datad => \memory~222_q\,
	combout => \memory~403_combout\);

-- Location: FF_X13_Y21_N3
\memory~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~254_q\);

-- Location: FF_X12_Y22_N3
\memory~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~238_q\);

-- Location: LCCOMB_X13_Y21_N2
\memory~404\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~404_combout\ = (\address_read[1]~input_o\ & ((\memory~403_combout\ & (\memory~254_q\)) # (!\memory~403_combout\ & ((\memory~238_q\))))) # (!\address_read[1]~input_o\ & (\memory~403_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \memory~403_combout\,
	datac => \memory~254_q\,
	datad => \memory~238_q\,
	combout => \memory~404_combout\);

-- Location: LCCOMB_X11_Y20_N6
\memory~158feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~158feeder_combout\ = \data_write[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[14]~input_o\,
	combout => \memory~158feeder_combout\);

-- Location: FF_X11_Y20_N7
\memory~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~158feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~158_q\);

-- Location: FF_X9_Y22_N31
\memory~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~190_q\);

-- Location: FF_X11_Y21_N25
\memory~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~142_q\);

-- Location: LCCOMB_X12_Y21_N26
\memory~174feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~174feeder_combout\ = \data_write[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[14]~input_o\,
	combout => \memory~174feeder_combout\);

-- Location: FF_X12_Y21_N27
\memory~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~174feeder_combout\,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~174_q\);

-- Location: LCCOMB_X11_Y21_N24
\memory~398\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~398_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~174_q\))) # (!\address_read[1]~input_o\ & (\memory~142_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~142_q\,
	datad => \memory~174_q\,
	combout => \memory~398_combout\);

-- Location: LCCOMB_X13_Y21_N26
\memory~399\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~399_combout\ = (\address_read[0]~input_o\ & ((\memory~398_combout\ & ((\memory~190_q\))) # (!\memory~398_combout\ & (\memory~158_q\)))) # (!\address_read[0]~input_o\ & (((\memory~398_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~158_q\,
	datac => \memory~190_q\,
	datad => \memory~398_combout\,
	combout => \memory~399_combout\);

-- Location: FF_X10_Y21_N23
\memory~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~30_q\);

-- Location: FF_X10_Y21_N25
\memory~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~62_q\);

-- Location: FF_X11_Y21_N19
\memory~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~14_q\);

-- Location: FF_X12_Y22_N25
\memory~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[14]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~46_q\);

-- Location: LCCOMB_X11_Y21_N18
\memory~400\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~400_combout\ = (\address_read[0]~input_o\ & (\address_read[1]~input_o\)) # (!\address_read[0]~input_o\ & ((\address_read[1]~input_o\ & ((\memory~46_q\))) # (!\address_read[1]~input_o\ & (\memory~14_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \address_read[1]~input_o\,
	datac => \memory~14_q\,
	datad => \memory~46_q\,
	combout => \memory~400_combout\);

-- Location: LCCOMB_X10_Y21_N24
\memory~401\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~401_combout\ = (\address_read[0]~input_o\ & ((\memory~400_combout\ & ((\memory~62_q\))) # (!\memory~400_combout\ & (\memory~30_q\)))) # (!\address_read[0]~input_o\ & (((\memory~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~30_q\,
	datab => \address_read[0]~input_o\,
	datac => \memory~62_q\,
	datad => \memory~400_combout\,
	combout => \memory~401_combout\);

-- Location: LCCOMB_X13_Y21_N20
\memory~402\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~402_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~399_combout\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & ((\memory~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~399_combout\,
	datad => \memory~401_combout\,
	combout => \memory~402_combout\);

-- Location: LCCOMB_X13_Y21_N6
\memory~405\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~405_combout\ = (\address_read[2]~input_o\ & ((\memory~402_combout\ & ((\memory~404_combout\))) # (!\memory~402_combout\ & (\memory~397_combout\)))) # (!\address_read[2]~input_o\ & (((\memory~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~397_combout\,
	datab => \memory~404_combout\,
	datac => \address_read[2]~input_o\,
	datad => \memory~402_combout\,
	combout => \memory~405_combout\);

-- Location: FF_X13_Y21_N7
\data_read[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~405_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[14]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N22
\data_write[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_write(15),
	o => \data_write[15]~input_o\);

-- Location: LCCOMB_X10_Y20_N10
\memory~223feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~223feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~223feeder_combout\);

-- Location: FF_X10_Y20_N11
\memory~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~223feeder_combout\,
	ena => \memory~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~223_q\);

-- Location: FF_X9_Y22_N1
\memory~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~425_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~95_q\);

-- Location: FF_X8_Y22_N19
\memory~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~31_q\);

-- Location: LCCOMB_X8_Y22_N16
\memory~159feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~159feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~159feeder_combout\);

-- Location: FF_X8_Y22_N17
\memory~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~159feeder_combout\,
	ena => \memory~419_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~159_q\);

-- Location: LCCOMB_X8_Y22_N18
\memory~406\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~406_combout\ = (\address_read[2]~input_o\ & (\address_read[3]~input_o\)) # (!\address_read[2]~input_o\ & ((\address_read[3]~input_o\ & ((\memory~159_q\))) # (!\address_read[3]~input_o\ & (\memory~31_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[2]~input_o\,
	datab => \address_read[3]~input_o\,
	datac => \memory~31_q\,
	datad => \memory~159_q\,
	combout => \memory~406_combout\);

-- Location: LCCOMB_X9_Y22_N0
\memory~407\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~407_combout\ = (\address_read[2]~input_o\ & ((\memory~406_combout\ & (\memory~223_q\)) # (!\memory~406_combout\ & ((\memory~95_q\))))) # (!\address_read[2]~input_o\ & (((\memory~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~223_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~95_q\,
	datad => \memory~406_combout\,
	combout => \memory~407_combout\);

-- Location: FF_X12_Y21_N5
\memory~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~417_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~175_q\);

-- Location: FF_X12_Y22_N31
\memory~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~239_q\);

-- Location: FF_X12_Y22_N17
\memory~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~47_q\);

-- Location: FF_X13_Y22_N19
\memory~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~427_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~111_q\);

-- Location: LCCOMB_X12_Y22_N16
\memory~408\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~408_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~111_q\))) # (!\address_read[2]~input_o\ & (\memory~47_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~47_q\,
	datad => \memory~111_q\,
	combout => \memory~408_combout\);

-- Location: LCCOMB_X12_Y22_N30
\memory~409\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~409_combout\ = (\address_read[3]~input_o\ & ((\memory~408_combout\ & ((\memory~239_q\))) # (!\memory~408_combout\ & (\memory~175_q\)))) # (!\address_read[3]~input_o\ & (((\memory~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~175_q\,
	datac => \memory~239_q\,
	datad => \memory~408_combout\,
	combout => \memory~409_combout\);

-- Location: LCCOMB_X11_Y21_N20
\memory~143feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~143feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~143feeder_combout\);

-- Location: FF_X11_Y21_N21
\memory~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~143feeder_combout\,
	ena => \memory~421_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~143_q\);

-- Location: FF_X11_Y23_N7
\memory~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~207_q\);

-- Location: FF_X11_Y21_N27
\memory~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~15_q\);

-- Location: LCCOMB_X8_Y21_N4
\memory~79feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~79feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~79feeder_combout\);

-- Location: FF_X8_Y21_N5
\memory~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~79feeder_combout\,
	ena => \memory~429_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~79_q\);

-- Location: LCCOMB_X11_Y21_N26
\memory~410\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~410_combout\ = (\address_read[3]~input_o\ & (\address_read[2]~input_o\)) # (!\address_read[3]~input_o\ & ((\address_read[2]~input_o\ & ((\memory~79_q\))) # (!\address_read[2]~input_o\ & (\memory~15_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~15_q\,
	datad => \memory~79_q\,
	combout => \memory~410_combout\);

-- Location: LCCOMB_X11_Y23_N6
\memory~411\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~411_combout\ = (\address_read[3]~input_o\ & ((\memory~410_combout\ & ((\memory~207_q\))) # (!\memory~410_combout\ & (\memory~143_q\)))) # (!\address_read[3]~input_o\ & (((\memory~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \memory~143_q\,
	datac => \memory~207_q\,
	datad => \memory~410_combout\,
	combout => \memory~411_combout\);

-- Location: LCCOMB_X11_Y23_N8
\memory~412\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~412_combout\ = (\address_read[1]~input_o\ & ((\address_read[0]~input_o\) # ((\memory~409_combout\)))) # (!\address_read[1]~input_o\ & (!\address_read[0]~input_o\ & ((\memory~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[1]~input_o\,
	datab => \address_read[0]~input_o\,
	datac => \memory~409_combout\,
	datad => \memory~411_combout\,
	combout => \memory~412_combout\);

-- Location: LCCOMB_X8_Y21_N10
\memory~127feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~127feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~127feeder_combout\);

-- Location: FF_X8_Y21_N11
\memory~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~127feeder_combout\,
	ena => \memory~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~127_q\);

-- Location: FF_X12_Y21_N3
\memory~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~255_q\);

-- Location: FF_X10_Y21_N15
\memory~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \data_write[15]~input_o\,
	sload => VCC,
	ena => \memory~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~63_q\);

-- Location: LCCOMB_X7_Y21_N24
\memory~191feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~191feeder_combout\ = \data_write[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_write[15]~input_o\,
	combout => \memory~191feeder_combout\);

-- Location: FF_X7_Y21_N25
\memory~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~191feeder_combout\,
	ena => \memory~423_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \memory~191_q\);

-- Location: LCCOMB_X10_Y21_N14
\memory~413\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~413_combout\ = (\address_read[3]~input_o\ & ((\address_read[2]~input_o\) # ((\memory~191_q\)))) # (!\address_read[3]~input_o\ & (!\address_read[2]~input_o\ & (\memory~63_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[3]~input_o\,
	datab => \address_read[2]~input_o\,
	datac => \memory~63_q\,
	datad => \memory~191_q\,
	combout => \memory~413_combout\);

-- Location: LCCOMB_X12_Y21_N2
\memory~414\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~414_combout\ = (\address_read[2]~input_o\ & ((\memory~413_combout\ & ((\memory~255_q\))) # (!\memory~413_combout\ & (\memory~127_q\)))) # (!\address_read[2]~input_o\ & (((\memory~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory~127_q\,
	datab => \address_read[2]~input_o\,
	datac => \memory~255_q\,
	datad => \memory~413_combout\,
	combout => \memory~414_combout\);

-- Location: LCCOMB_X11_Y23_N16
\memory~415\ : cycloneive_lcell_comb
-- Equation(s):
-- \memory~415_combout\ = (\address_read[0]~input_o\ & ((\memory~412_combout\ & ((\memory~414_combout\))) # (!\memory~412_combout\ & (\memory~407_combout\)))) # (!\address_read[0]~input_o\ & (((\memory~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address_read[0]~input_o\,
	datab => \memory~407_combout\,
	datac => \memory~412_combout\,
	datad => \memory~414_combout\,
	combout => \memory~415_combout\);

-- Location: FF_X11_Y23_N17
\data_read[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \memory~415_combout\,
	ena => \data_read[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_read[15]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\write_enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_write_enable,
	o => \write_enable~input_o\);

ww_data_read(0) <= \data_read[0]~output_o\;

ww_data_read(1) <= \data_read[1]~output_o\;

ww_data_read(2) <= \data_read[2]~output_o\;

ww_data_read(3) <= \data_read[3]~output_o\;

ww_data_read(4) <= \data_read[4]~output_o\;

ww_data_read(5) <= \data_read[5]~output_o\;

ww_data_read(6) <= \data_read[6]~output_o\;

ww_data_read(7) <= \data_read[7]~output_o\;

ww_data_read(8) <= \data_read[8]~output_o\;

ww_data_read(9) <= \data_read[9]~output_o\;

ww_data_read(10) <= \data_read[10]~output_o\;

ww_data_read(11) <= \data_read[11]~output_o\;

ww_data_read(12) <= \data_read[12]~output_o\;

ww_data_read(13) <= \data_read[13]~output_o\;

ww_data_read(14) <= \data_read[14]~output_o\;

ww_data_read(15) <= \data_read[15]~output_o\;
END structure;


