library ieee;
use ieee.std_logic_1164.all;

entity TestBench01 is
	generic (tp: time := 10ns);
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
signal expected : std_logic;

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
	
	process
	begin
		expected <= '0';
		wait for 100 ns;
		expected <= '1';
		wait for 300 ns;
	end process;
	
	process
	begin
		wait for tp;
		if now < 800ns then
			assert (q_tb = expected)
			report "Mismatch at t = " & time'image(now) & " q_tb = " & std_logic'image(q_tb) & " but expected = " & std_logic'image(expected)
			severity failure;
		else 
			assert false
			report "No error found (t = " & time'image(now) & ")"
			severity note;
		end if;		
	end process;
	
end behavior;