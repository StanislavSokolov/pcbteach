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
-- CREATED		"Fri Feb  9 10:40:01 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY DTrigger IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		nQ :  OUT  STD_LOGIC
	);
END DTrigger;

ARCHITECTURE bdf_type OF DTrigger IS 

SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_4;
nQ <= SYNTHESIZED_WIRE_1;



SYNTHESIZED_WIRE_5 <= NOT(C AND D);


SYNTHESIZED_WIRE_3 <= NOT(C AND SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_5);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


END bdf_type;