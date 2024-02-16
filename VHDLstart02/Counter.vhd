library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is

Port ( 
	clk : in STD_LOGIC;
	button : in STD_LOGIC;
	output : out STD_LOGIC_VECTOR(3 downto 0) := b"0000"
	);
end Counter;

architecture Behavioral of Counter is
	signal counter : natural range 0 to 9 := 0;
	signal buttonPrev : std_logic := '0';
begin		

	process(clk)
	begin
		if rising_edge(clk) then 
			if button = '0' and buttonPrev = '1' then
				if (counter = 9) then 
					counter <= 0;
				else	
					counter <= counter + 1;
				end if;
			end if;	
			buttonPrev <= button;	
		end if;
	end process;
	
	process(counter)
	begin
		case counter is
			when 0 => output <= b"0000";
			when 1 => output <= b"0001";
			when 2 => output <= b"0010";
			when 3 => output <= b"0011";
			when 4 => output <= b"0100";
			when 5 => output <= b"0101";
			when 6 => output <= b"0110";
			when 7 => output <= b"0111";
			when 8 => output <= b"1000";
			when 9 => output <= b"1001";
			when others => output <= b"0000";
		end case;	
	end process;
	
end Behavioral;