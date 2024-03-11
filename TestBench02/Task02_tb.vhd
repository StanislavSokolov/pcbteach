library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
	use ieee.std_logic_unsigned.all;
 
library std;
	use std.textio.all;
	use std.env.stop;
 
entity Task02_tb is
	generic (tp: time := 20ns);
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
signal clk_tp : std_logic := '0';
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
signal enableReadPrev : std_logic_vector := '0';
signal enableWrite : std_logic_vector := '1';
signal enableWritePrev : std_logic_vector := '0';

signal finishRead  : std_logic := '0';

signal x_tb : std_logic_vector(31 downto 0) := (others => '0');
signal countMem : natural range 0 to 255 := 0;


type ReadWriteCheckMachine is (Reading, Checking, Writing, Stopping);
signal stateRWCM : ReadWriteCheckMachine := Reading;

begin

	memory_tb : tb
		port map (
			clk => clk_tb,
			datain => datain_tb,
			address => address_tb,
			w_r => w_r_tb,
			dataout => dataout_tb;		
		);
		
	clk_tp <= not clk_tp after tp;	

	-- читаем данные из файла (по 4 бита 8 раз)
	process(clk_tp)
		variable int : integer := 0;
		variable int_vect : std_logic_vector(31 downto 0) := (others => '0');
		variable count_for_X : natural range 0 to 7 := 0;
	begin
		if rising_edge(clk_tp) then
			if stateRWCM = Reading and enableRead = '1' then
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
			elsif stateRWCM /= Reading then
				enableRead <= '1';
			end if;
		end if;
	end process;
	
	-- процес, в котором перезаписываются предыдущие значения флагом
	process(clk_tp)
	begin 
		if rising_edge(clk_tp) then	
			enableReadPrev <= enableRead;
			enableCheckPrev <= enableCheckPrev;
			enableWritePrev <= enableWrite;
		end if;
	end process;
	
	-- сама машина
	process(clk_tp)
	begin 
		if rising_edge(clk_tp) then
			case stateRWCM is
				when Reading =>
					if enableRead = '0' and enableReadPrev = '1' then
						stateRWCM <= Checking;
					end if;
				when Checking =>
					if enableCheck = '0' and enableCheckPrev = '1' then
						stateRWCM <= Writing;
					end if;
				when Writing => 
					if enableWrite = '0' and enableWritePrev = '1' then
						if finishRead = '1' then
							stateRWCM <= Stopping;
						else 
							stateRWCM <= Reading;
						end if;
					end if;
				when Stopping => 
					file_close(outputFile);
					file_close(inputFile);
					stop;
				when others =>
					file_close(outputFile);
					file_close(inputFile);
					stop;
			end case;
		end if;
	end process;
				
	
	-- записываем в память прочитанный буфер из 32 бит в четыре ячейки и читаем его
	process
		variable count_for_data_tb : natural range 0 to 3 := 0;
	begin
		if stateRWCM = Checking and enableCheck = '1' then
			clk_tb <= '0';
			address_tb <= conv_std_logic_vector(countMem, 8);
			datain_tb <= x_tb(7 + count_for_data_tb*8 downto count_for_data_tb*8);
			w_r_tb <= '0';
			wait for 50ns;
			clk_tb <= '1';
			wait for 50ns;
			clk_tb <= '0';
			w_r_tb <= '1';
			wait for 50ns;
			clk_tb <= '1';
			wait for 50ns;
			y_tb(7 + count_for_data_tb*8 downto count_for_data_tb*8) <= dataout_tb;
			clk_tb <= '0';
			if count_for_data_tb < 3 then
				count_for_data_tb := count_for_data_tb + 1;
			else
				count_for_data_tb := 0;
				enableCheck <= '0';
			end if;
			countMem <= countMem + 1;
			wait for 50ns;
		elsif stateRWCM /= Checking then
				enableCheck <= '1';
		end if;
	end process;
		
	--записываем в файл
	process(clk_tp)
		variable int : integer := 0;
		variable int_vect : std_logic_vector(31 downto 0) := (others => '0');
		variable count_for_Y : natural range 0 to 8 := 0;
	begin
		if rising_edge(clk_tp) then	
			if stateRWCM <= Writing and enableWrite = '1' then 
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
			elsif stateRWCM /= Writing then
				enableWrite = '1';
			end if;	
		end if;
	end process;
	
end bev;