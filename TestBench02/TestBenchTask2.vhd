library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
 
entity TestBenchTask2 is
	port(
		clk : in std_logic;
		datain : in std_logic_vector(7 downto 0);
		address : in std_logic_vector(7 downto 0);
		-- write when 0, read when 1
		w_r : in std_logic;
		dataout : out std_logic_vector(7 downto 0)
	);
end entity;

architecture bev of TestBenchTask2 is

type mem is array (255 downto 0) of std_logic_vector(7 downto 0);
signal memory : mem;

begin
	process(clk)
		variable addr : integer range 0 to 255;
	begin
		if rising_edge(clk) then
			addr := conv_integer(address); -- переменной addr присваивается новое значение сразу. Удобно для преобразования типов.
			if (w_r = '0') then
				memory(addr) <= datain; -- тут уже новое значение переменной addr
			elsif (w_r = '1') then
				dataout <= memory(addr);
			else
				dataout <= "ZZZZZZZZ";
			end if;
		end if;
	end process;
end bev;