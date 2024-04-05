library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Count250000 is

Port ( 
	clkIn : in STD_LOGIC;
	clkOut : out STD_LOGIC
	);
end Count250000;

architecture Behavioral of Count250000 is
	signal clkCounter : natural range 0 to 100000 := 0;
	signal clkOutBuf : std_logic := '0';
begin	
	
	process(clkIn)
	begin
		if rising_edge(clkIn) then
			if clkCounter < 100000 then
				clkCounter <= clkCounter + 1;
			else
				clkCounter <= 0;
				clkOutBuf <= not clkOutBuf;		
			end if;
		end if;	
	end process;
	
	clkOut <= clkOutBuf;
	
end Behavioral;