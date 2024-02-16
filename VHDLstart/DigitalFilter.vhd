library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DigitalFilter is
	 port(
		 CLK : in STD_LOGIC;
		 INPUT : in STD_LOGIC;
		 OUTPUT : out STD_LOGIC
	     );
end DgitalFilter;

architecture Behavioral of DigitalFilter is 

signal count : natural range 0 to 9 := 0;
signal latch : std_logic := '0';

begin

	process(CLK)
		
	begin
		
		if rising_edge(CLK) then 
			if INPUT = '1' then	
				if latch = '0' then
					latch <= '1';
					count <= 0;
				else
					if count < 9 then 
						count <= count + 1;
					else 
						OUTPUT <= '1';
						count <= 0;
					end if;
				end if;	
			else
				if latch = '1' then
					latch <= '0';
					count <= 0;
				else
					if count < 9 then 
						count <= count + 1;
					else 
						OUTPUT <= '0';
						count <= 0;
					end if;
				end if;	
			end if;
		end if;			
				
	
	end process;	 

end Behavioral;