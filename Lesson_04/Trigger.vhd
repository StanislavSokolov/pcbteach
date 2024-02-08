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
-- CREATED		"Thu Feb  8 13:44:41 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Trigger IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		C :  IN  STD_LOGIC;
		D0 :  OUT  STD_LOGIC;
		D1 :  OUT  STD_LOGIC;
		D2 :  OUT  STD_LOGIC;
		D3 :  OUT  STD_LOGIC
	);
END Trigger;

ARCHITECTURE bdf_type OF Trigger IS 

COMPONENT d-triggerwithrisingedge
	PORT(D : IN STD_LOGIC;
		 C : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 nQ : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT debouncer
	PORT(btn_in : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 btn_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;


BEGIN 



b2v_inst1 : d-triggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 C => SYNTHESIZED_WIRE_29,
		 Q => SYNTHESIZED_WIRE_33,
		 nQ => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_31 <= NOT(SYNTHESIZED_WIRE_30);



SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_31 AND SYNTHESIZED_WIRE_4;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_31 AND SYNTHESIZED_WIRE_6;


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_31 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_30 <= SYNTHESIZED_WIRE_32 AND SYNTHESIZED_WIRE_33;


b2v_inst2 : d-triggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_11,
		 C => SYNTHESIZED_WIRE_12,
		 Q => SYNTHESIZED_WIRE_36,
		 nQ => SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_24 <= SYNTHESIZED_WIRE_34 OR SYNTHESIZED_WIRE_35;


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_36 OR SYNTHESIZED_WIRE_35;


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_33 OR SYNTHESIZED_WIRE_35;


SYNTHESIZED_WIRE_35 <= SYNTHESIZED_WIRE_29 AND SYNTHESIZED_WIRE_30;


b2v_inst3 : d-triggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_21,
		 C => SYNTHESIZED_WIRE_22,
		 Q => SYNTHESIZED_WIRE_34,
		 nQ => SYNTHESIZED_WIRE_6);


b2v_inst4 : d-triggerwithrisingedge
PORT MAP(D => SYNTHESIZED_WIRE_23,
		 C => SYNTHESIZED_WIRE_24,
		 Q => SYNTHESIZED_WIRE_32,
		 nQ => SYNTHESIZED_WIRE_8);


D3 <= NOT(SYNTHESIZED_WIRE_32);



D2 <= NOT(SYNTHESIZED_WIRE_34);



D1 <= NOT(SYNTHESIZED_WIRE_36);



D0 <= NOT(SYNTHESIZED_WIRE_33);



b2v_inst9 : debouncer
PORT MAP(btn_in => C,
		 clk => CLK,
		 btn_out => SYNTHESIZED_WIRE_29);


END bdf_type;