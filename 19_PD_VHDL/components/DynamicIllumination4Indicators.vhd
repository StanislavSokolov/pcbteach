library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DynamicIllumination4Indicators is

Port ( 
	clk : in STD_LOGIC;
	enable : in STD_LOGIC_VECTOR(3 downto 0);
	indicator0 : in STD_LOGIC_VECTOR(6 downto 0);
	indicator1 : in STD_LOGIC_VECTOR(6 downto 0);
	indicator2 : in STD_LOGIC_VECTOR(6 downto 0);
	indicator3 : in STD_LOGIC_VECTOR(6 downto 0);
	segment : out STD_LOGIC_VECTOR(6 downto 0);
	indicator : out STD_LOGIC_VECTOR(3 downto 0)
	);
end DynamicIllumination4Indicators;

architecture Behavioral of DynamicIllumination4Indicators is
	signal clkCounter : natural range 0 to 3 := 0;
begin	
	
	process(clk)
	begin
		if rising_edge(clk) then
			if clkCounter < 3 then
				clkCounter <= clkCounter + 1;
			else
				clkCounter <= 0;		
			end if;
		end if;	
	end process;
	
	process(clkCounter)
	begin
		case clkCounter is
			when 0 => if enable(0) = '1' then indicator <= b"1110"; segment <= indicator0; end if;
			when 1 => if enable(1) = '1' then indicator <= b"1101"; segment <= indicator1; end if;
			when 2 => if enable(2) = '1' then indicator <= b"1011"; segment <= indicator2; end if;
			when 3 => if enable(3) = '1' then indicator <= b"0111"; segment <= indicator3; end if;
			when others => indicator <= b"0000"; segment <= b"0000000";
		end case;	
	end process;
	
end Behavioral;