library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VHDLstart01 is

Port ( 
	clk : in STD_LOGIC;
	button0 : in STD_LOGIC;
	button1 : in STD_LOGIC;
	button2 : in STD_LOGIC;
	led0 : out STD_LOGIC;
	led1 : out STD_LOGIC;
	led2 : out STD_LOGIC;
	led3 : out STD_LOGIC;
	buzz : out STD_LOGIC
	);
end VHDLstart01;

architecture Behavioral of VHDLstart01 is
	signal clk_counter_0 : natural range 0 to 25000000 := 0;
	signal clk_counter_1 : natural range 0 to 12500000 := 0;
	signal clk_counter_2 : natural range 0 to 6250000 := 0;
	signal blinker_0 : std_logic := '0';
	signal blinker_1 : std_logic := '0';
	signal blinker_2 : std_logic := '0';
	signal blinker_3 : std_logic := '1';
	
	signal buttonPrev0 : std_logic := '1';
	signal buttonPrev1 : std_logic := '1';
	signal buttonPrev2 : std_logic := '1';
	
	signal enBuzz : std_logic := '0';
	signal clk_counter_buzz : natural range 0 to 56818 := 0;
	signal buzzer : std_logic := '1';
begin

	process(clk)
	begin
		if rising_edge(clk) then 
			clk_counter_0 <= clk_counter_0 + 1;
			clk_counter_1 <= clk_counter_1 + 1;
			clk_counter_2 <= clk_counter_2 + 1;
			clk_counter_buzz <= clk_counter_buzz + 1;	
			
			if clk_counter_0 >= 25000000 then				
				blinker_0 <= not blinker_0;
				clk_counter_0 <= 0;					
			end if;
			
			if clk_counter_1 >= 12500000 then
					blinker_1 <= not blinker_1;
					clk_counter_1 <= 0;
			end if;
			
			if clk_counter_2 >= 6250000 then
				blinker_2 <= not blinker_2;
				clk_counter_2 <= 0;
			end if;
			
			if button0 = '0' and buttonPrev0 = '1' then
				blinker_3 <= not blinker_3;
			end if;			
			buttonPrev0 <= button0;
			
			if button1 = '0' and buttonPrev1 = '1' then
				enBuzz <= '1';
			end if;
			buttonPrev1 <= button1;
			
			if button2 = '0' and buttonPrev2 = '1' then
				enBuzz <= '0';
			end if;
			buttonPrev2 <= button2;
			
			if enBuzz = '1' then 
				clk_counter_buzz <= clk_counter_buzz + 1;
				if clk_counter_buzz >= 56818 then
					buzzer <= not buzzer;
					clk_counter_buzz <= 0;
				end if;	
			else 
				clk_counter_buzz <= 0;
				buzzer <= '1';
			end if;		
		end if;
	end process;
	
	led0 <= blinker_0;
	led1 <= blinker_1;
	led2 <= blinker_2;
	led3 <= blinker_3;
	buzz <= buzzer;
	
end Behavioral;