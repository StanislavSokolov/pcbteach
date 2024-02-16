library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Indicator is

Port ( 
	counter : in STD_LOGIC_VECTOR(3 downto 0);
	led5 : out STD_LOGIC_VECTOR(6 downto 0) := b"0000001";
	en : in std_LOGIC;
	en5 : out STD_LOGIC := '1'
	);
end Indicator;

architecture Behavioral of Indicator is
	signal buttonPrev : std_logic := '1';
begin		

	en5 <= en;	
	
	process(counter)
	begin
		case counter is
			when b"0000" => led5 <= b"0000001";
			when b"0001" => led5 <= b"1001111";
			when b"0010" => led5 <= b"0010010";
			when b"0011" => led5 <= b"0000110";
			when b"0100" => led5 <= b"1001100";
			when b"0101" => led5 <= b"0100100";
			when b"0110" => led5 <= b"0100000";
			when b"0111" => led5 <= b"0001111";
			when b"1000" => led5 <= b"0000000";
			when b"1001" => led5 <= b"0000100";
			when others => led5 <= b"0000001";
		end case;	
	end process;
	
end Behavioral;