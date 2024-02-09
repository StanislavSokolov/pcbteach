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
-- CREATED		"Fri Feb 09 21:40:03 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DTriggerWithRisingEdge IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		nQ :  OUT  STD_LOGIC
	);
END DTriggerWithRisingEdge;

ARCHITECTURE bdf_type OF DTriggerWithRisingEdge IS 

COMPONENT dtrigger
	PORT(D : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 nQ : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : dtrigger
PORT MAP(D => D,
		 C => C,
		 Q => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_1 <= NOT(C AND C);


b2v_inst2 : dtrigger
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 C => SYNTHESIZED_WIRE_1,
		 Q => Q,
		 nQ => nQ);


END bdf_type;