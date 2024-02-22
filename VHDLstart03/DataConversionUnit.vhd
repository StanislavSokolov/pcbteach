library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity DataConversionUnit is

Port ( 
	clk : in STD_LOGIC;
	update : in STD_LOGIC;
	data : in STD_LOGIC_VECTOR(7 downto 0);
	indicator0 : out STD_LOGIC_vector(6 downto 0);
	indicator1 : out STD_LOGIC_vector(6 downto 0)
	);
end DataConversionUnit;

architecture Behavioral of DataConversionUnit is
	signal indicator0Buf : natural range 0 to 15 := 0;
	signal indicator1Buf : natural range 0 to 15 := 0; 
	signal dataBuf : natural range 0 to 255 := 0;
	signal updatePrev : std_logic := '0';
begin	
	
	process(clk)
	begin
		if rising_edge(clk) then
			if update = '1' and updatePrev = '0' then
				dataBuf <= to_integer(unsigned(data(7 downto 0)));
			end if;
			updatePrev <= update;
		end if;	
	end process;
	
	process(dataBuf)
	begin
		indicator0Buf <= dataBuf rem 16;
		indicator1Buf <= (dataBuf - (dataBuf rem 16))/16;
	end process;
	
	process(indicator0Buf)
	begin
		case indicator0Buf is
			when 0 => indicator0 <= b"1000000";
			when 1 => indicator0 <= b"1111001";
			when 2 => indicator0 <= b"0100100";
			when 3 => indicator0 <= b"0110000";
			when 4 => indicator0 <= b"0011001";
			when 5 => indicator0 <= b"0010010";
			when 6 => indicator0 <= b"0000010";
			when 7 => indicator0 <= b"1111000";
			when 8 => indicator0 <= b"0000000";
			when 9 => indicator0 <= b"0010000";
			when 10 => indicator0 <= b"0001000";
			when 11 => indicator0 <= b"0000011";
			when 12 => indicator0 <= b"1000110";
			when 13 => indicator0 <= b"0100001";
			when 14 => indicator0 <= b"0000110";
			when 15 => indicator0 <= b"0001110";
			when others => indicator0 <= b"0111111";
		end case;
	end process;

	process(indicator1Buf)
	begin
		case indicator1Buf is
			when 0 => indicator1 <= b"1000000";
			when 1 => indicator1 <= b"1111001";
			when 2 => indicator1 <= b"0100100";
			when 3 => indicator1 <= b"0110000";
			when 4 => indicator1 <= b"0011001";
			when 5 => indicator1 <= b"0010010";
			when 6 => indicator1 <= b"0000010";
			when 7 => indicator1 <= b"1111000";
			when 8 => indicator1 <= b"0000000";
			when 9 => indicator1 <= b"0010000";
			when 10 => indicator1 <= b"0001000";
			when 11 => indicator1 <= b"0000011";
			when 12 => indicator1 <= b"1000110";
			when 13 => indicator1 <= b"0100001";
			when 14 => indicator1 <= b"0000110";
			when 15 => indicator1 <= b"0001110";
			when others => indicator1 <= b"0111111";
		end case;
	end process;	
end Behavioral;