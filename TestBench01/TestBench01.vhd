library ieee;
use ieee.std_logic_1164.all;

entity TestBench01 is
end TestBench01;

architecture behavior of TestBench01 is

component or_gate
port(
a : in std_logic;
b : in std_logic;
q : out std_logic
);
end component;

signal a_tb : std_logic := '0';
signal b_tb : std_logic := '0';
signal q_tb : std_logic;

begin

	uut: or_gate port map(
	a => a_tb,
	b => b_tb,
	q => q_tb
	);

	process
	begin
		a_tb <= '0';
		b_tb <= '0';
		wait for 100 ns;
		a_tb <= '1';
		wait for 100 ns;
		b_tb <= '1';
		wait for 100 ns;
		a_tb <= '0';
		wait for 100 ns;
	end process;
	
end behavior;