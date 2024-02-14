library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity VHDLstart02 is

Port ( 
	clk : in STD_LOGIC;
	buttonWaiting : in STD_LOGIC;
	buttonLeft : in STD_LOGIC;
	buttonRight : in STD_LOGIC;
	buttonSelection : in STD_LOGIC;
	led1 : out STD_LOGIC_VECTOR(3 downto 0) := b"1111";
	led5 : out STD_LOGIC_VECTOR(6 downto 0) := b"1111111";
	en : out STD_LOGIC_VECTOR(3 downto 0) := b"1111"
	);
end VHDLstart02;

architecture Behavioral of VHDLstart02 is
	signal counter : natural range 0 to 16666667 := 0;
	signal led : std_logic_vector(3 downto 0) := b"1111";
	signal latch : std_logic := '0';
	
	signal buttonWaitingPrev : std_logic := '0';
	signal buttonLeftPrev : std_logic := '0';
	signal buttonRightPrev : std_logic := '0';
	signal buttonSelectionPrev : std_logic := '0';
	
	signal timeForNormalSignal : natural range 0 to 100000 := 0;
	signal enableButton : std_logic := '0';
	
	signal selectionDrink : natural range 0 to 3 := 0;
	
	signal money : natural range 0 to 50 := 0;
	
	signal procent : natural range 0 to 100 :=0;
	
	signal timeForUnsuccessfulMessage : natural range 0 to 200000000 := 0;
	
	type CoffeeMachine is (Waiting, Selection, Payment, Implementation, Unsuccessful);
	signal stateCoffeeMachine : CoffeeMachine := Waiting;
	
	signal clkForIndication : natural range 0 to 250000 := 0;
	signal indicator : natural range 0 to 3 := 0; 
	signal bufferForIndicator0 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator1 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator2 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator3 : std_logic_vector(6 downto 0) := b"1111111";
begin		

	
	-- делитель частоты для динамической подсветки индикаторов
	process(clk)
	begin
		if rising_edge(clk) then
			if clkForIndication < 250000 then
				clkForIndication <= clkForIndication + 1;
			else
				clkForIndication <= 0;
				if indicator < 3 then
					indicator <= indicator + 1;
				else
					indicator <= 0;
				end if;			
			end if;
		end if;	
	end process;
	
	-- последовательный перебор индикаторов и вывод значения из буфера
	process(indicator)
	begin
		case indicator is
			when 0 => 
				en <= b"0111";
				led5 <= bufferForIndicator0;			
			when 1 => 
				en <= b"1011";
				led5 <= bufferForIndicator1;	
			when 2 => 
				en <= b"1101";
				led5 <= bufferForIndicator2;
			when 3 => 
				en <= b"1110";
				led5 <= bufferForIndicator3;
			when others => 
				en <= b"1111";
				led5 <= b"0000000";
		end case;
	end process;
	
	-- индикация светодиодов в зависимости от состояния CoffeeMachine 
	process(clk)
	begin
		if rising_edge(clk) then 
			case stateCoffeeMachine is
				when Waiting => 
					if counter < 16666667 then
						counter <= counter + 1;
					else 
						counter <= 0;
						if latch = '0' then 
							latch <= '1';
							led <= b"1111";
						else						
							led <= not led;
						end if;	
					end if;
				when Selection	=> 
					latch <= '0';
					led <= b"0011";
				when Payment => 
					latch <= '0';
					led <= b"0001";
				when Implementation =>
					latch <= '0';
					led <= b"0000";
				when Unsuccessful =>
					latch <= '0';
					led <= b"0000";
				when others => 
					latch <= '0';
					led <= b"1111";	
			end case;
		end if;
	end process;
	
	led1 <= led;
	
	-- запоминаем предыдущее состояние кнопок
	process(clk)
	begin
		if rising_edge(clk) then 
			if enableButton = '0' then	
				buttonWaitingPrev <= buttonWaiting; 
				buttonLeftPrev <= buttonLeft;
				buttonRightPrev <= buttonRight;
				buttonSelectionPrev <= buttonSelection;
			end if;	
		end if;
	end process;	
	
	-- CoffeeMachine
	process(clk)
	begin
		if rising_edge(clk) then
			case stateCoffeeMachine is 
				when Waiting => 
					if (buttonWaiting = '0' and buttonWaitingPrev = '1') or
						(buttonLeft = '0' and buttonLeftPrev = '1') or
						(buttonRight = '0' and buttonRightPrev = '1') or
						(buttonSelection = '0' and buttonSelectionPrev = '1') then
						stateCoffeeMachine <= Selection;
						enableButton <= '1';
					end if;
					selectionDrink <= 0;
					money <= 0;
					procent <= 0;
					timeForUnsuccessfulMessage <= 0;
				when Selection	=> 
					if buttonLeft = '0' and buttonLeftPrev = '1' then
						if selectionDrink = 0 then
							selectionDrink <= 3;
						else 
							selectionDrink <= selectionDrink - 1;
						end if;
						enableButton <= '1';
					elsif buttonRight = '0' and buttonRightPrev = '1' then 	
						if selectionDrink = 3 then
							selectionDrink <= 0;
						else 
							selectionDrink <= selectionDrink + 1;
						end if;
						enableButton <= '1';
					elsif buttonSelection = '0' and buttonSelectionPrev = '1' then
						stateCoffeeMachine <= Payment;
						enableButton <= '1';
					elsif buttonWaiting = '0' and buttonWaitingPrev = '1' then
						stateCoffeeMachine <= Waiting;
						enableButton <= '1';
					end if;										
				when Payment => 
					if buttonLeft = '0' and buttonLeftPrev = '1' then
						if money > 0 then 
							money <= money - 5;
						end if;
						enableButton <= '1';
					elsif buttonRight = '0' and buttonRightPrev = '1' then 
						if money < 50 then 
							money <= money + 5;
						end if;
						enableButton <= '1';
					elsif buttonSelection = '0' and buttonSelectionPrev = '1' then	
						case selectionDrink is
							when 0 => 
								if money >= 10 then
									stateCoffeeMachine <= Implementation;
								else 
									stateCoffeeMachine <= Unsuccessful;
								end if;
							when 1 => 
								if money >= 20 then
									stateCoffeeMachine <= Implementation;
								else 
									stateCoffeeMachine <= Unsuccessful;
								end if;
							when 2 => 
								if money >= 35 then
									stateCoffeeMachine <= Implementation;
								else 
									stateCoffeeMachine <= Unsuccessful;
								end if;
							when 3 => 
								if money >= 50 then
									stateCoffeeMachine <= Implementation;
								else 
									stateCoffeeMachine <= Unsuccessful;
								end if;
							when others => stateCoffeeMachine <= Waiting;
						end case;
					enableButton <= '1';	
					elsif buttonWaiting = '0' and buttonWaitingPrev = '1' then
						stateCoffeeMachine <= Waiting;
						enableButton <= '1';		
					end if;	
				when Implementation =>
					if procent = 100 then
						stateCoffeeMachine <= Waiting;
					end if;
				when Unsuccessful => 
					if timeForUnsuccessfulMessage < 200000000 then
						timeForUnsuccessfulMessage <= timeForUnsuccessfulMessage + 1;
					else 
						stateCoffeeMachine <= Waiting;
					end if;				
				when others => led <= b"1111";
			end case;
			if enableButton = '1' then
				if timeForNormalSignal < 100000 then
					timeForNormalSignal <= timeForNormalSignal + 1;
				else 
					timeForNormalSignal <= 0;
					enableButton <= '0';
				end if;
			end if;	
		end if;
	end process;
	
	-- вывод информации на индикаторы в зависимости от состояния CoffeeMachine и других текущих настроек
	
	process(clk)
	begin
		if rising_edge(clk) then 
			case stateCoffeeMachine is
				when Waiting => 
					bufferForIndicator0 <= b"1111111";
					bufferForIndicator1 <= b"1111111";
					bufferForIndicator2 <= b"1111111";
					bufferForIndicator3 <= b"1111111";
				when Selection	=> 
					case selectionDrink is 
						when 0 => 
							bufferForIndicator0 <= b"1111111";
							bufferForIndicator1 <= b"0110000";
							bufferForIndicator2 <= b"0100100";
							bufferForIndicator3 <= b"0011000";
						when 1 => 
							bufferForIndicator0 <= b"1111111";
							bufferForIndicator1 <= b"0110001";
							bufferForIndicator2 <= b"0000001";
							bufferForIndicator3 <= b"0111000";
						when 2 => 
							bufferForIndicator0 <= b"1111111";
							bufferForIndicator1 <= b"0110001";
							bufferForIndicator2 <= b"0001000";
							bufferForIndicator3 <= b"0011000";
						when 3 => 
							bufferForIndicator0 <= b"1111111";
							bufferForIndicator1 <= b"1110001";
							bufferForIndicator2 <= b"0001000";
							bufferForIndicator3 <= b"1110000";
						when others => 
							bufferForIndicator0 <= b"1111111";
							bufferForIndicator1 <= b"1111111";
							bufferForIndicator2 <= b"1111111";
							bufferForIndicator3 <= b"1111111";	
					end case;		
				when Payment => 
					bufferForIndicator0 <= b"1111111";
					bufferForIndicator1 <= b"1111111";
					case money is
						when 0 =>
							bufferForIndicator2 <= b"1111111";
							bufferForIndicator3 <= b"0000001";
						when 5 => 
							bufferForIndicator2 <= b"1111111";
							bufferForIndicator3 <= b"0100100";
						when 10 => 
							bufferForIndicator2 <= b"1001111";
							bufferForIndicator3 <= b"0000001";
						when 15 => 
							bufferForIndicator2 <= b"1001111";
							bufferForIndicator3 <= b"0100100";						
						when 20 => 
							bufferForIndicator2 <= b"0010010";
							bufferForIndicator3 <= b"0000001";						
						when 25 =>
							bufferForIndicator2 <= b"0010010";
							bufferForIndicator3 <= b"0100100";						
						when 30 =>
							bufferForIndicator2 <= b"0000110";
							bufferForIndicator3 <= b"0000001";						
						when 35 =>
							bufferForIndicator2 <= b"0000110";
							bufferForIndicator3 <= b"0100100";						
						when 40 =>
							bufferForIndicator2 <= b"1001100";
							bufferForIndicator3 <= b"0000001";						
						when 45 =>
							bufferForIndicator2 <= b"1001100";
							bufferForIndicator3 <= b"0100100";							
						when 50 => 
							bufferForIndicator2 <= b"0100100";
							bufferForIndicator3 <= b"0000001";						
						when others => 
							bufferForIndicator2 <= b"1111111";
							bufferForIndicator3 <= b"1111111";
					end case;	
				when Implementation =>

				when Unsuccessful =>
					bufferForIndicator0 <= b"1111111";
					bufferForIndicator1 <= b"1110001";
					bufferForIndicator2 <= b"0100100";
					bufferForIndicator3 <= b"0100100";
				when others => 							
					bufferForIndicator0 <= b"1111111";
					bufferForIndicator1 <= b"1111111";
					bufferForIndicator2 <= b"1111111";
					bufferForIndicator3 <= b"1111111";	
			end case;
		end if;
	end process;
	
--	process(counter)
--	begin
--		case counter is
--			when 0 => led5 <= b"0000001";
--			when 1 => led5 <= b"1001111";
--			when 2 => led5 <= b"0010010";
--			when 3 => led5 <= b"0000110";
--			when 4 => led5 <= b"1001100";
--			when 5 => led5 <= b"0100100";
--			when 6 => led5 <= b"0100000";
--			when 7 => led5 <= b"0001111";
--			when 8 => led5 <= b"0000000";
--			when 9 => led5 <= b"0000100";
--			when others => led5 <= b"0000001";
--		end case;	
--	end process;
	
end Behavioral;