library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
 
library std;
	use std.textio.all;
	use std.env.stop;
 
entity Task02_tb is
	generic (tp: time := 10ns);
end entity;

architecture bev of Task02_tb is

component or_gate
port(
	clk : in std_logic;
	datain : in std_logic_vector(7 downto 0);
	address : in std_logic_vector(7 downto 0);
	-- write when 0, read when 1
	w_r : in std_logic;
	dataout : out std_logic_vector(7 downto 0)
);
end component;

signal clk_tb : std_logic := '0';
signal datain_tb : std_logic_vector(7 downto 0);
signal address_tb : std_logic_vector(7 downto 0);
	-- write when 0, read when 1
signal w_r_tb : std_logic;
signal dataout_tb : std_logic_vector(7 downto 0);

type mem is array (255 downto 0) of std_logic_vector(7 downto 0);
signal memory : mem;

type intfile is file of integer;
file inputFile : intfile open read_mode is "test.hex";
file outputFile : intfile open write_mode is "test2.hex";

signal enableRead : std_logic_vector := '1';
signal enableWrite : std_logic_vector := '0';

signal finishRead  : std_logic := '0';

signal x_tb : std_logic_vector(31 downto 0) := (others => '0');
signal countMem : natural range 0 to 255 := 0;

begin

	memory_tb : tb
		port map (
			clk => clk_tb,
			datain => datain_tb,
			address => address_tb,
			w_r => w_r_tb,
			dataout => dataout_tb;		
		);
		
	clk_tb <= not clk_tb after 20ns;	

	-- читаем данные из файла (по 4 бита 8 раз)
	process(clk_tb)
		variable int : integer := 0;
		variable int_vect : std_logic_vector(31 downto 0) := (others => '0');
		variable count_for_X : natural range 0 to 7 := 0;
	begin
		if rising_edge(clk_tb) then
			if enableRead = '1' then
				if count_for_X = 0 then	
					if not EndFile(test.hex) then
						Read(test.hex, int);
						int_vect := conv_std_logic_vector(int, 32);
					else 
						finishRead <= '1';
					end if;
				end if;
				x_tb <= int_vect(3 + count_for_X*4 downto count_for_X*4);
				if count_for_X = 7 then	
					count_for_X := 0;
					enableRead <= '0';
				else 
					count_for_X := count_for_X + 1;
				end if;
			else
				if startRead = '1' then
					enableRead <= '1';
				end if;	
			end if;	
		end if;
	end process;
	
	-- записываем в память прочитанный буфер из 32 бит в четыре ячейки
	process(clk_tb)
		variable count_for_datain_tb : natural range 0 to 3 := 0;
	begin
		if enableRead = '0' and startWrite = '0' then
			clk_tb <= '0';
			wait for 50ns;
			address_tb <= conv_std_logic_vector(countMem, 8);
			datain_tb <= x_tb(7 + count_for_datain_tb*8 downto count_for_datain_tb*8);
			clk_tb <= '1';
			w_r_tb <= '0';
			if count_for_datain_tb < 3 then
				count_for_datain_tb := count_for_datain_tb + 1;
			else
				count_for_datain_tb := 0;
				startWrite <= '1';
			end if;
			wait for 50ns;
		elsif enableRead = '0' and startWrite = '1'
			startRead <= '0';
		end if;
	end process;

		
		
	
	process(clk_tb)
		variable int : integer := 0;
		variable int_vect : std_logic_vector(31 downto 0) := (others => '0');
		variable count_for_Y : natural range 0 to 8 := 0;
	begin
		if rising_edge(clk_tb) then	
			if find_tb = '0' then
				int_vect(3 + count_for_Y*4 downto count_for_Y*4) := y_tb;
				count_for_Y := count_for_Y + 1;
			end if;
			if count_for_Y = 8 then
				if finish = '1' then
					int_vect(31 downto count_for_Y*4) := (others => '0');
					int := conv_integer(int_vect(31 downto 0));
					write (outputFile, int);
					file_close(outputFile);
				else
					int := conv_integer(int_vect(31 downto 0));	
					write (outputFile, int);
				end if;
				int_vect(31 downto 0) := (others => '0')	;
				count_for_Y := 0;
			end if;	
		end if;
	end process;
	
	process (finish)
	begin
		if finish = '1' then	
			file_close(inputFile);
			stop;
		end if;
	end process;	
end bev;