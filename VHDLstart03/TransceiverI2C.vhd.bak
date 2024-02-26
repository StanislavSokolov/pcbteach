library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TransceiverI2C is

Port ( 
	clk : in STD_LOGIC;
	start : in STD_LOGIC;
	scl : out STD_LOGIC;
	sda : inout STD_LOGIC;
	data : out STD_LOGIC_VECTOR(7 downto 0);
	update : out STD_LOGIC;
	led : out STD_LOGIC
	);
end TransceiverI2C;

architecture Behavioral of TransceiverI2C is
	signal count : natural range 0 to 5200 := 0; -- 9600 bod (104 msec)
	signal bitPosition : natural range 0 to 7 := 0;
	signal startPrev : std_logic := '1';
	signal ledBuf : std_logic := '0';
	signal dataBuf : std_logic_vector(7 downto 0) := b"00000000";
	
	
	type I2C is (Waiting, Starting, TransmittingData, ReceivingData, Stopping, Updating);
	signal stateI2C : I2C := Waiting;
begin	

	led <= ledBuf;
	
	process(clk)
	begin
		if rising_edge(clk) then
			case stateI2C is
				when Waiting =>
					if start = '0' and startPrev = '1' then
						stateI2C <= Starting;
						count <= 0;
					end if;
					update <= '0';
				when Starting =>
					if rx = '0' then
						if count < 5200/2 then
							count <= count + 1;
						else
							count <= 0;
							stateUART <= ReceivingData;
						end if;
					else 
						stateUART <= Waiting;
						count <= 0;
					end if;	
				when ReceivingData =>
					if count < 5200 then
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
			startPrev <= start;
		end if;	
	end process;
	
end Behavioral;