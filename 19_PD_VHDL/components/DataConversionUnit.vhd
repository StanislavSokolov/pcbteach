library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity DataConversionUnit is

Port ( 
	clk : in STD_LOGIC;
	update : in STD_LOGIC;
	data : in STD_LOGIC_VECTOR(7 downto 0);
	indicator0 : out STD_LOGIC_vector(7 downto 0);
	indicator1 : out STD_LOGIC_vector(7 downto 0);
	indicator2 : out STD_LOGIC_vector(7 downto 0)
	);
end DataConversionUnit;

architecture Behavioral of DataConversionUnit is
	signal indicator0Buf : natural range 0 to 15 := 0;
	signal indicator1Buf : natural range 0 to 15 := 0;
	signal indicator2Buf : natural range 0 to 15 := 0;	
	signal dataBuf : natural range 0 to 255 := 0;
	signal updatePrev : std_logic := '0';
	
	signal precision : std_logic := '0';

begin	
	
	process(clk)
	begin
		if rising_edge(clk) then
			if update = '1' and updatePrev = '0' then				
				dataBuf <= to_integer(unsigned(data(7 downto 1)));
				precision <= data(0);
			elsif update = '0' and updatePrev = '1' then
				indicator1Buf <= dataBuf rem 10;
				indicator2Buf <= (dataBuf - (dataBuf rem 10))/10;
				if precision = '0' then
					indicator0Buf <= 0;
				else 
					indicator0Buf <= 5;
				end if;	
			end if;
			updatePrev <= update;
		end if;	
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			case indicator0Buf is
				when 0 => indicator0 <= b"11000000";
				when 1 => indicator0 <= b"11111001";
				when 2 => indicator0 <= b"10100100";
				when 3 => indicator0 <= b"10110000";
				when 4 => indicator0 <= b"10011001";
				when 5 => indicator0 <= b"10010010";
				when 6 => indicator0 <= b"10000010";
				when 7 => indicator0 <= b"11111000";
				when 8 => indicator0 <= b"10000000";
				when 9 => indicator0 <= b"10010000";
				when 10 => indicator0 <= b"10001000";
				when 11 => indicator0 <= b"10000011";
				when 12 => indicator0 <= b"11000110";
				when 13 => indicator0 <= b"10100001";
				when 14 => indicator0 <= b"10000110";
				when 15 => indicator0 <= b"10001110";
				when others => indicator0 <= b"10111111";
			end case;
		end if;	
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			case indicator1Buf is
				when 0 => indicator1 <= b"01000000";
				when 1 => indicator1 <= b"01111001";
				when 2 => indicator1 <= b"00100100";
				when 3 => indicator1 <= b"00110000";
				when 4 => indicator1 <= b"00011001";
				when 5 => indicator1 <= b"00010010";
				when 6 => indicator1 <= b"00000010";
				when 7 => indicator1 <= b"01111000";
				when 8 => indicator1 <= b"00000000";
				when 9 => indicator1 <= b"00010000";
				when 10 => indicator1 <= b"00001000";
				when 11 => indicator1 <= b"00000011";
				when 12 => indicator1 <= b"01000110";
				when 13 => indicator1 <= b"00100001";
				when 14 => indicator1 <= b"00000110";
				when 15 => indicator1 <= b"00001110";
				when others => indicator1 <= b"10111111";
			end case;
		end if;	
	end process;

	process(clk)
	begin
		if rising_edge(clk) then
			case indicator2Buf is
				when 0 => indicator2 <= b"11000000";
				when 1 => indicator2 <= b"11111001";
				when 2 => indicator2 <= b"10100100";
				when 3 => indicator2 <= b"10110000";
				when 4 => indicator2 <= b"10011001";
				when 5 => indicator2 <= b"10010010";
				when 6 => indicator2 <= b"10000010";
				when 7 => indicator2 <= b"11111000";
				when 8 => indicator2 <= b"10000000";
				when 9 => indicator2 <= b"10010000";
				when 10 => indicator2 <= b"10001000";
				when 11 => indicator2 <= b"10000011";
				when 12 => indicator2 <= b"11000110";
				when 13 => indicator2 <= b"10100001";
				when 14 => indicator2 <= b"10000110";
				when 15 => indicator2 <= b"10001110";
				when others => indicator2 <= b"10111111";
			end case;
		end if;	
	end process;	
end Behavioral;