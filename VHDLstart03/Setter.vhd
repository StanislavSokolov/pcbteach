library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Setter is

Port ( 
	clk : in STD_LOGIC;
	key1 : in STD_LOGIC;
	key2 : in STD_LOGIC;
	key3 : in STD_LOGIC;
	key4 : in STD_LOGIC;
	reset : in STD_LOGIC;
	data : out STD_LOGIC_VECTOR(7 downto 0);
	update : out STD_LOGIC
	);
end Setter;

architecture Behavioral of Setter is
	signal countUpdate : natural range 0 to 7 := 0;
	signal resetPrev : std_logic := '1';
	signal key1Prev : std_logic := '1';
	signal key2Prev : std_logic := '1';
	signal key3Prev : std_logic := '1';
	signal key4Prev : std_logic := '1';
	signal updateBuf : std_logic := '1';
	signal dataBuf : std_logic_vector(7 downto 0) := b"11111111";
	signal dataBuf0 : std_logic_vector(3 downto 0) := b"1111";
	signal dataBuf1 : std_logic_vector(3 downto 0) := b"1111";
begin	

	update <= updateBuf;
	data <= dataBuf;

	process(clk)
	begin
		if rising_edge(clk) then
			dataBuf <= dataBuf1 & dataBuf0;
			if reset = '0' and resetPrev = '1' then
				updateBuf <= '1';				
			else
				if updateBuf = '1' then 
					if countUpdate < 7 then
						countUpdate <= countUpdate + 1;
					else 
						countUpdate <= 0;
						updateBuf <= '0';
					end if;
				end if;
			end if;
			resetPrev <= reset;
		end if;
	end process;
	
	process(clk)
	begin
		if rising_edge(clk) then
			if key1 = '0' and key1Prev = '1' then
				if dataBuf0 < b"1111" then
					dataBuf0 <= dataBuf0 + 1;
				else 
					dataBuf0 <= b"0000";
				end if;	
			end if;
			key1Prev <= key1;
			if key2 = '0' and key2Prev = '1' then
				if dataBuf0 > b"0000" then
					dataBuf0 <= dataBuf0 - 1;
				else 
					dataBuf0 <= b"1111";
				end if;	
			end if;
			key2Prev <= key2;
			if key3 = '0' and key3Prev = '1' then
				if dataBuf1 < b"1111" then
					dataBuf1 <= dataBuf1 + 1;
				else 
					dataBuf1 <= b"0000";
				end if;
			end if;
			key3Prev <= key3;
			if key4 = '0' and key4Prev = '1' then
				if dataBuf1 > b"0000" then
					dataBuf1 <= dataBuf1 - 1;
				else 
					dataBuf1 <= b"1111";
				end if;	
			end if;
			key4Prev <= key4;
		end if;
	end process;

		
	
	
	
end Behavioral;