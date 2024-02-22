library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DigitalFilter8 is
	 port(
		 clk : in STD_LOGIC;
		 input : in STD_LOGIC;
		 output : out STD_LOGIC
	     );
end DigitalFilter8;

architecture Behavioral of DigitalFilter8 is
	signal count : natural range 0 to 7 := 0;
	signal latch : std_logic := '0';
begin	
	
	process(clk)		
	begin		
		if rising_edge(clk) then 
			if input = '1' then	
				if latch = '0' then
					latch <= '1';
					count <= 0;
				else
					if count < 7 then 
						count <= count + 1;
					else 
						output <= '1';
						count <= 0;
					end if;
				end if;	
			else
				if latch = '1' then
					latch <= '0';
					count <= 0;
				else
					if count < 7 then 
						count <= count + 1;
					else 
						output <= '0';
						count <= 0;
					end if;
				end if;	
			end if;
		end if;
	end process;
	
end Behavioral;