library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ReceiverUART is

Port ( 
	clk : in STD_LOGIC;
	rx : in STD_LOGIC;
	data : out STD_LOGIC_VECTOR(7 downto 0);
	update : out STD_LOGIC;
	led : out STD_LOGIC
	);
end ReceiverUART;

architecture Behavioral of ReceiverUART is
	signal count : natural range 0 to 52000 := 0; -- 9600 bod (104 msec)
	signal bitPosition : natural range 0 to 7 := 0;
	signal rxPrev : std_logic := '1';
	signal ledBuf : std_logic := '0';
	signal dataBuf : std_logic_vector(7 downto 0) := b"00000000";
	
	
	type UART is (Waiting, Starting, ReceivingData, Stopping, Updating);
	signal stateUART : UART := Waiting;
begin	

	led <= ledBuf;
	
	process(clk)
	begin
		if rising_edge(clk) then
			case stateUART is
				when Waiting =>
					if rx = '0' and rxPrev = '1' then
						stateUART <= Starting;
						count <= 0;
					end if;
				when Starting =>
					if rx = '0' then
						if count < 52000/2 then
							count <= count + 1;
						else
							count <= 0;
							stateUART <= Waiting;
						end if;
					else 
						stateUART <= Waiting;
						count <= 0;
					end if;	
				when ReceivingData =>
					if count < 52000 then
						count <= count + 1;
					else
						count <= 0;
						dataBuf(bitPosition) <= rx;
						if bitPosition < 7 then
							bitPosition <= bitPosition + 1;
						else
							bitPosition <= 0;
							stateUART <= Stopping;
						end if;
					end if;
				when Stopping =>
					data <= dataBuf;
					ledBuf <= not ledBuf;
					stateUART <= Updating;
				when Updating =>
					update <= '1';	
					stateUART <= Waiting;
				when others =>
			end case;
		end if;	
	end process;
	
end Behavioral;