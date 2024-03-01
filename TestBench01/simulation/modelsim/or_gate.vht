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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/01/2024 16:55:50"
                                                            
-- Vhdl Test Bench template for design  :  or_gate
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY or_gate_vhd_tst IS
END or_gate_vhd_tst;
ARCHITECTURE or_gate_arch OF or_gate_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC := '0';
SIGNAL b : STD_LOGIC := '0';
SIGNAL q : STD_LOGIC;
COMPONENT or_gate
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : or_gate
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	q => q
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
		a_tb <= '0';
		b_tb <= '0';
		wait for 100 ns;
		a_tb <= '1';
		wait for 100 ns;
		b_tb <= '1';
		wait for 100 ns;
		a_tb <= '0';
		wait for 100 ns;                                                        
END PROCESS always;                                          
END or_gate_arch;
