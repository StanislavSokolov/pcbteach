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
-- CREATED		"Mon Feb 12 16:33:26 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Count10 IS 
	PORT
	(
		C :  IN  STD_LOGIC;
		D0 :  OUT  STD_LOGIC;
		D1 :  OUT  STD_LOGIC;
		D2 :  OUT  STD_LOGIC;
		D3 :  OUT  STD_LOGIC
	);
END Count10;

ARCHITECTURE bdf_type OF Count10 IS 

COMPONENT dtriggerwithrisingedge
	PORT(D : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 nQ : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;


BEGIN 



b2v_inst : dtriggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 C => SYNTHESIZED_WIRE_1,
		 Q => SYNTHESIZED_WIRE_29,
		 nQ => SYNTHESIZED_WIRE_10);


b2v_inst1 : dtriggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_2,
		 C => SYNTHESIZED_WIRE_3,
		 Q => SYNTHESIZED_WIRE_31,
		 nQ => SYNTHESIZED_WIRE_8);


SYNTHESIZED_WIRE_28 <= NOT(SYNTHESIZED_WIRE_27);



SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_28 AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_28 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_28 AND SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_29 AND SYNTHESIZED_WIRE_30;


b2v_inst2 : dtriggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_13,
		 C => SYNTHESIZED_WIRE_14,
		 Q => SYNTHESIZED_WIRE_33,
		 nQ => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_31 OR SYNTHESIZED_WIRE_32;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_33 OR SYNTHESIZED_WIRE_32;


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_30 OR SYNTHESIZED_WIRE_32;


SYNTHESIZED_WIRE_32 <= C AND SYNTHESIZED_WIRE_27;


b2v_inst3 : dtriggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_22,
		 C => C,
		 Q => SYNTHESIZED_WIRE_30,
		 nQ => SYNTHESIZED_WIRE_22);


D3 <= NOT(SYNTHESIZED_WIRE_29);



D2 <= NOT(SYNTHESIZED_WIRE_31);



D1 <= NOT(SYNTHESIZED_WIRE_33);



D0 <= NOT(SYNTHESIZED_WIRE_30);



END bdf_type;