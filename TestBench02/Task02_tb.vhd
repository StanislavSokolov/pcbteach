library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_arith.all;
--	use ieee.numeric_std.all;
	use ieee.std_logic_unsigned.all;
 
library std;
	use std.textio.all;
 
entity Task02_tb is
	generic (tp: time := 20ns);
end entity;

architecture bev of Task02_tb is

component TestBenchTask2
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
file inputFile : text open read_mode is "test.dat";
file outputFile : intfile open write_mode is "test2.dat";

signal enableRead : std_logic := '1';
signal enableReadPrev : std_logic := '1';
signal enableWrite : std_logic := '1';
signal enableWritePrev : std_logic := '1';
signal enableCheck : std_logic := '1';
signal enableCheckPrev : std_logic := '1';

signal finishRead  : std_logic := '0';

signal x_tb : std_logic_vector(15 downto 0) := x"ABCD";
signal y_tb : std_logic_vector(15 downto 0) := (others => '0');
signal countMem : natural range 0 to 255 := 0;


type ReadWriteCheckMachine is (Reading, Checking, Writing, Stopping);
signal stateRWCM : ReadWriteCheckMachine := Checking;

begin

	memory_tb : TestBenchTask2
		port map (
			clk => clk_tb,
			datain => datain_tb,
			address => address_tb,
			w_r => w_r_tb,
			dataout => dataout_tb		
		);
		
	clk_tp <= not clk_tp after 20ns;	

	-- С‡РёС‚Р°РµРј РґР°РЅРЅС‹Рµ РёР· С„Р°Р№Р»Р° (РїРѕ 4 Р±РёС‚Р° 8 СЂР°Р·)
	process(clk_tp)
		variable int : integer := 0;
		variable str : line;
		variable int_vect : std_logic_vector(15 downto 0) := (others => '0');
	begin
		if rising_edge(clk_tp) then
			if stateRWCM = Reading and enableRead = '1' then
				if not EndFile(inputFile) then
					ReadLine(inputFile, str);
					read(str, int);
					int_vect := conv_std_logic_vector(int, 16);
				else 
					finishRead <= '1';
					enableRead <= '0';
				end if;
				x_tb <= int_vect;
				enableRead <= '0';				
			elsif stateRWCM /= Reading then
				enableRead <= '1';
			end if;
		end if;
	end process;
	
	-- РїСЂРѕС†РµСЃ, РІ РєРѕС‚РѕСЂРѕРј РїРµСЂРµР·Р°РїРёСЃС‹РІР°СЋС‚СЃСЏ РїСЂРµРґС‹РґСѓС‰РёРµ Р·РЅР°С‡РµРЅРёСЏ С„Р»Р°РіРѕРј
	process(clk_tp)
	begin 
		if rising_edge(clk_tp) then	
			enableReadPrev <= enableRead;
			enableCheckPrev <= enableCheckPrev;
			enableWritePrev <= enableWrite;
		end if;
	end process;
	
	-- СЃР°РјР° РјР°С€РёРЅР°
	process(clk_tp)
	begin 
		if rising_edge(clk_tp) then
			case stateRWCM is
				when Reading =>
					if enableRead = '0' and enableReadPrev = '1' then
						stateRWCM <= Checking;
					elsif finishRead = '1' then
						stateRWCM <= Stopping;
					end if;	
				when Checking =>
					if enableCheck = '0' and enableCheckPrev = '1' then
						stateRWCM <= Writing;
						assert (x_tb = y_tb)
						report "Mismatch at t = " & time'image(now) & " x_tb /= y_tb"
						severity failure;
						assert (x_tb /= y_tb)
						report "At t = " & time'image(now) & " x_tb = y_tb. It's ok"
						severity note;
					end if;
				when Writing => 
					if enableWrite = '0' and enableWritePrev = '1' then
						--stateRWCM <= Reading;
						stateRWCM <= Stopping;
					end if;
				when Stopping => 
					file_close(outputFile);
					file_close(inputFile);
					assert (false)
					report "Finish at t = " & time'image(now)
					severity failure;
				when others =>
					file_close(outputFile);
					file_close(inputFile);
					assert (false)
					report "Finish at t = " & time'image(now)
					severity failure;
			end case;
		end if;
	end process;
				
	
	-- Р·Р°РїРёСЃС‹РІР°РµРј РІ РїР°РјСЏС‚СЊ РїСЂРѕС‡РёС‚Р°РЅРЅС‹Р№ Р±СѓС„РµСЂ РёР· 32 Р±РёС‚ РІ С‡РµС‚С‹СЂРµ СЏС‡РµР№РєРё Рё С‡РёС‚Р°РµРј РµРіРѕ
	process
		variable count_for_data_tb : natural range 0 to 1 := 1;
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
			if count_for_data_tb > 0 then
				count_for_data_tb := count_for_data_tb - 1;
			else
				count_for_data_tb := 1;
				enableCheck <= '0';
			end if;
			countMem <= countMem + 1;
		elsif stateRWCM /= Checking then
				enableCheck <= '1';
		end if;
	end process;
		
	--Р·Р°РїРёСЃС‹РІР°РµРј РІ С„Р°Р№Р»
	process(clk_tp)
		variable int : integer := 0;
		variable int_vect : std_logic_vector(15 downto 0) := (others => '0');
	begin
		if rising_edge(clk_tp) then	
			if stateRWCM = Writing and enableWrite = '1' then 
				int_vect := y_tb;
				int := conv_integer(int_vect(15 downto 0));
				write (outputFile, int);
				enableWrite <= '0';	
			elsif stateRWCM /= Writing then
				enableWrite <= '1';
			end if;	
		end if;
	end process;
	
end bev;