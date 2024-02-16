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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Full Version"
-- CREATED		"Fri Feb 16 10:14:50 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IndicatorProject IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		button :  IN  STD_LOGIC;
		en5 :  OUT  STD_LOGIC;
		led5 :  OUT  STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END IndicatorProject;

ARCHITECTURE bdf_type OF IndicatorProject IS 

COMPONENT counter
	PORT(clk : IN STD_LOGIC;
		 button : IN STD_LOGIC;
		 output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT digitalfilter
	PORT(CLK : IN STD_LOGIC;
		 INPUT : IN STD_LOGIC;
		 OUTPUT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT indicator
	PORT(en : IN STD_LOGIC;
		 counter : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 en5 : OUT STD_LOGIC;
		 led5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 
SYNTHESIZED_WIRE_1 <= '0';



b2v_inst : counter
PORT MAP(clk => clk,
		 button => SYNTHESIZED_WIRE_0,
		 output => SYNTHESIZED_WIRE_2);


b2v_inst2 : digitalfilter
PORT MAP(CLK => clk,
		 INPUT => button,
		 OUTPUT => SYNTHESIZED_WIRE_0);


b2v_inst3 : indicator
PORT MAP(en => SYNTHESIZED_WIRE_1,
		 counter => SYNTHESIZED_WIRE_2,
		 en5 => en5,
		 led5 => led5);



END bdf_type;