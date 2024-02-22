library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TestWithCLK is

Port ( 
	clk : in STD_LOGIC;
	led1 : out STD_LOGIC_VECTOR(4 downto 0) := b"10101"
	);
end TestWithCLK;

architecture Behavioral of TestWithCLK is
	signal counter : natural range 0 to 16666667 := 0;
	signal ledBuf : STD_LOGIC_VECTOR(4 downto 0) := b"10101";
begin		

	process(clk)
	begin
		if rising_edge(clk) then
			if counter < 16666667 then
				counter <= counter + 1;
			else
				counter <= 0;
				ledBuf <= not ledBuf;				
			end if;
		end if;	
	end process;
	
	led1 <= ledBuf;
	
end Behavioral;