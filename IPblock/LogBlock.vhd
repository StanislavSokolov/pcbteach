library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogBlock is

Port ( 
	clk : in STD_LOGIC;
	input0 : in STD_LOGIC;
	input1 : in STD_LOGIC;
	output : out STD_LOGIC
	);
end LogBlock;

architecture Behavioral of LogBlock is

signal input0Buf : std_logic := '0';
signal input1Buf : std_logic := '0';

begin	
	
	process(clk)
	begin
		if rising_edge(clk) then
			input0Buf <= input0;
			input1Buf <= input1;
		end if;
	end process;
	
	process(clk)
	begin
		if input0 = '1' and input0Buf = '0' then
			output <= '1';
		elsif input1 = '1' and input1Buf = '0' then
			output <= '0';
		end if;	
	end process;

end Behavioral;