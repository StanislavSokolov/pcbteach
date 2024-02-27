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
	signal count : natural range 0 to 250 := 0; -- period = 5 msec
	signal bitPosition : natural range 0 to 7 := 0;
	signal startPrev : std_logic := '1';
	signal ledBuf : std_logic := '0';
	signal dataBuf : std_logic_vector(7 downto 0) := b"00000000";
	
	signal deviceAddress : std_logic_vector(6 downto 0) := b"1001000";
	signal readBit : std_logic := '1';
	signal writeBit : std_logic := '0';
	signal pointerByte : std_logic_vector(7 downto 0) := b"00000000";
	signal mSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	signal lSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	
	
	type I2C is (Waiting, Starting, WritingBit, TransmittingData, ReceivingData, Stopping, Updating);
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
					end if;
					count <= 0;
					sda <= '1';
					scl <= '1';
					update <= '0';
					bitPosition <= 7;
				when Starting =>
					if count < 125 then
						count <= count + 1;
						sda <= '0';
					else
						count <= 0;
						scl <= '0';
						stateUART <= WritingBit;
					end if;
				when WritingBit =>
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '1';	
						if bitPosition > 0 then 		
							stateUART <= ReceivingData;
							bitPosition <= bitPosition - 1;
						else 
							stateUART <= Stopping;
							bitPosition <= 7;
					end if;
				when ReceivingData =>
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						sda <= deviceAddress(bitPosition);
						scl <= '0';						
						stateUART <= WritingBit;
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