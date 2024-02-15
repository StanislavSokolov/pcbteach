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
	
	signal timeForNormalSignal : natural range 0 to 2000000 := 0;
	signal enableButton : std_logic := '0';
	signal enableButtonPrev : std_logic := '0';
	
	signal selectionDrink : natural range 0 to 3 := 0;
	
	signal money : natural range 0 to 50 := 0;
	
	signal procent : natural range 0 to 101 :=0;
	signal procentCount : natural range 0 to 20000000 := 0;
	
	signal timeForUnsuccessfulMessage : natural range 0 to 200000000 := 0;
	
	type CoffeeMachine is (Waiting, Selection, Payment, Implementation, Unsuccessful);
	signal stateCoffeeMachine : CoffeeMachine := Waiting;
	
	signal clkForIndication : natural range 0 to 250000 := 0;
	signal indicator : natural range 0 to 3 := 0; 
	signal bufferForIndicator0 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator1 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator2 : std_logic_vector(6 downto 0) := b"1111111";
	signal bufferForIndicator3 : std_logic_vector(6 downto 0) := b"1111111";
	signal digit0 : natural range 0 to 9 := 0;
	signal digit1 : natural range 0 to 9 := 0;
	signal digit2 : natural range 0 to 9 := 0;
	signal digit3 : natural range 0 to 9 := 0;
	signal digitBuf1 : natural range 0 to 9 := 0;
	signal digitBuf2 : natural range 0 to 9 := 0;
	signal digitBuf3 : natural range 0 to 9 := 0;
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
			enableButtonPrev <= enableButton;
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
					procentCount <= 0;
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
					if (procent > 100) then
						stateCoffeeMachine <= Waiting;
					else 
						if (procentCount < 20000000) then 
							procentCount <= procentCount + 1;
						else 
							procentCount <= 0;
							procent <= procent + 1;
						end if;
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
				if timeForNormalSignal < 2000000 then
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
					if (enableButton = '1' and enableButtonPrev = '0') then
						digitBuf3 <= money rem 10;
						digitBuf2 <= (money - (money rem 10)) / 10;
					end if;
					digit3 <= digitBuf3;
					digit2 <= digitBuf2;
						case digit3 is
							when 0 => bufferForIndicator3 <= b"0000001";
							when 1 => bufferForIndicator3 <= b"1001111";
							when 2 => bufferForIndicator3 <= b"0010010";
							when 3 => bufferForIndicator3 <= b"0000110";
							when 4 => bufferForIndicator3 <= b"1001100";
							when 5 => bufferForIndicator3 <= b"0100100";
							when 6 => bufferForIndicator3 <= b"0100000";
							when 7 => bufferForIndicator3 <= b"0001111";
							when 8 => bufferForIndicator3 <= b"0000000";
							when 9 => bufferForIndicator3 <= b"0000100";
							when others => bufferForIndicator3 <= b"0000001";
						end case;
						case digit2 is							
							when 0 => if money > 9 then
											bufferForIndicator2 <= b"0000001";
										else
											bufferForIndicator2 <= b"1111111";
										end if;	
							when 1 => bufferForIndicator2 <= b"1001111";
							when 2 => bufferForIndicator2 <= b"0010010";
							when 3 => bufferForIndicator2 <= b"0000110";
							when 4 => bufferForIndicator2 <= b"1001100";
							when 5 => bufferForIndicator2 <= b"0100100";
							when 6 => bufferForIndicator2 <= b"0100000";
							when 7 => bufferForIndicator2 <= b"0001111";
							when 8 => bufferForIndicator2 <= b"0000000";
							when 9 => bufferForIndicator2 <= b"0000100";
							when others => bufferForIndicator2 <= b"0000001";
						end case;
				when Implementation =>						
					bufferForIndicator0 <= b"1111111";
					digit3 <= procent rem 10;
					if (procent = 100) then
						digit2 <= 0;
					else 	
						digit2 <= (procent - (procent rem 10)) / 10;
					end if;
					digit1 <= (procent - (procent rem 10) - (procent rem 100)) / 100;
						case digit3 is
							when 0 => bufferForIndicator3 <= b"0000001";
							when 1 => bufferForIndicator3 <= b"1001111";
							when 2 => bufferForIndicator3 <= b"0010010";
							when 3 => bufferForIndicator3 <= b"0000110";
							when 4 => bufferForIndicator3 <= b"1001100";
							when 5 => bufferForIndicator3 <= b"0100100";
							when 6 => bufferForIndicator3 <= b"0100000";
							when 7 => bufferForIndicator3 <= b"0001111";
							when 8 => bufferForIndicator3 <= b"0000000";
							when 9 => bufferForIndicator3 <= b"0000100";
							when others => bufferForIndicator3 <= b"0000001";
						end case;
						case digit2 is							
							when 0 => if procent > 9 then
											bufferForIndicator2 <= b"0000001";
										else
											bufferForIndicator2 <= b"1111111";
										end if;	
							when 1 => bufferForIndicator2 <= b"1001111";
							when 2 => bufferForIndicator2 <= b"0010010";
							when 3 => bufferForIndicator2 <= b"0000110";
							when 4 => bufferForIndicator2 <= b"1001100";
							when 5 => bufferForIndicator2 <= b"0100100";
							when 6 => bufferForIndicator2 <= b"0100000";
							when 7 => bufferForIndicator2 <= b"0001111";
							when 8 => bufferForIndicator2 <= b"0000000";
							when 9 => bufferForIndicator2 <= b"0000100";
							when others => bufferForIndicator2 <= b"0000001";
						end case;
						case digit1 is
							when 0 => if procent > 99 then
											bufferForIndicator1 <= b"0000001";
										else
											bufferForIndicator1 <= b"1111111";
										end if;
							when 1 => bufferForIndicator1 <= b"1001111";
							when 2 => bufferForIndicator1 <= b"0010010";
							when 3 => bufferForIndicator1 <= b"0000110";
							when 4 => bufferForIndicator1 <= b"1001100";
							when 5 => bufferForIndicator1 <= b"0100100";
							when 6 => bufferForIndicator1 <= b"0100000";
							when 7 => bufferForIndicator1 <= b"0001111";
							when 8 => bufferForIndicator1 <= b"0000000";
							when 9 => bufferForIndicator1 <= b"0000100";
							when others => bufferForIndicator1 <= b"0000001";
						end case;
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
	
end Behavioral;