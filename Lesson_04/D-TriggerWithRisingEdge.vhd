-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 22.1std.0 Build 915 10/25/2022 SC Standard Edition"
-- CREATED		"Thu Feb  8 13:40:53 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY D-TriggerWithRisingEdge IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		nQ :  OUT  STD_LOGIC
	);
END D-TriggerWithRisingEdge;

ARCHITECTURE bdf_type OF D-TriggerWithRisingEdge IS 

COMPONENT d-trigger
	PORT(D : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 nQ : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_1 <= NOT(C AND C);


b2v_inst12 : d-trigger
PORT MAP(D => D,
		 C => C,
		 Q => SYNTHESIZED_WIRE_0);


b2v_inst19 : d-trigger
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 C => SYNTHESIZED_WIRE_1,
		 Q => Q,
		 nQ => nQ);


END bdf_type;