library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DigitalFilter is
	generic(		
		PHASE_SHIFT : integer := 200
	);
	 port(
		 clk : in STD_LOGIC;
		 input0 : in STD_LOGIC;
		 output0 : out STD_LOGIC
	     );
end DigitalFilter;

architecture Behavioral of DigitalFilter is
	signal count : natural range 0 to PHASE_SHIFT := 0;
	signal latch : std_logic := '0';
begin	
	
	process(clk)		
	begin		
		if rising_edge(clk) then 
			if input0 = '1' then	
				if latch = '0' then
					latch <= '1';
					count <= 0;
				else
					if count < PHASE_SHIFT then 
						count <= count + 1;
					else 
						output0 <= '1';
						count <= 0;
					end if;
				end if;	
			else
				if latch = '1' then
					latch <= '0';
					count <= 0;
				else
					if count < PHASE_SHIFT then 
						count <= count + 1;
					else 
						output0 <= '0';
						count <= 0;
					end if;
				end if;	
			end if;
		end if;
	end process;
	
end Behavioral;