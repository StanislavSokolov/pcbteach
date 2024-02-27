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
	led : out STD_LOGIC;
	ledError : out STD_LOGIC
	);
end TransceiverI2C;

architecture Behavioral of TransceiverI2C is
	signal count : natural range 0 to 250 := 0; -- period = 5 msec
	signal bitPosition : natural range 0 to 7 := 0;
	signal startPrev : std_logic := '1';
	signal ledBuf : std_logic := '0';
	signal dataBuf : std_logic_vector(7 downto 0) := b"00000000";
	
	signal rw : std_logic := '0';
	signal deviceAddress : std_logic_vector(6 downto 0) := b"1001000";
	signal readBit : std_logic := '1';
	signal writeBit : std_logic := '0';
	signal pointerByte : std_logic_vector(7 downto 0) := b"00000000";
	signal mSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	signal lSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	
	signal error : std_logic := '1';
	
	
	type I2C is (Waiting, Starting, DeviceAddressPreparing, DeviceAddressSending, TransmittingData, ReceivingData, Stopping, Updating);
	signal stateI2C : I2C := Waiting;
begin	

	led <= ledBuf;
	ledError <= error;
	
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
					rw <= '0';
				when Starting =>
					if count < 125 then
						sda <= '0';
					else 
						count <= 0;
						scl <= '0';
						stateUART <= DeviceAddressPreparing;
					end if;				
				when DeviceAddressPreparing =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= deviceAddress(bitPosition);
					else	
						count <= 0;
						scl <= '1';						
						stateI2C <= DeviceAddressSending;
					end if;
				when DeviceAddressSending => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						if bitPosition > 1 then
							bitPosition <= bitPosition - 1;
							stateI2C <= DeviceAddressPreparing;
						else 
							bitPosition <= 7;
							if rw = '0' then
								stateI2C <= WriteBitPreparing;
							else 
								stateI2C <= ReadBitPreparing;
							end if;
						end if;
					end if;						
				when WriteBitPreparing =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= writeBit;
					else	
						count <= 0;
						scl <= '1';						
						stateI2C <= WriteBitSending;
					end if;
				when WriteBitSending => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						stateI2C <= AcknowledgeChecking1;
					end if;	
				when AcknowledgeChecking1 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '1';
						stateI2C <= AcknowledgeChecking2;
					end if;	
				when AcknowledgeChecking2 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '0';
						if sda = '0' then
							stateI2C <= PointerBytePreparing;
						else 
							stateI2C <= Waiting;
							error <= not error;
						end if;	
					end if;
				when PointerBytePreparing =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= pointerByte(bitPosition);
					else	
						count <= 0;
						scl <= '1';						
						stateI2C <= PointerByteSending;
					end if;
				when PointerByteSending => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						if bitPosition > 0 then
							bitPosition <= bitPosition - 1;
							stateI2C <= PointerBytePreparing;
						else 
							bitPosition <= 7;
							stateI2C <= AcknowledgeChecking3;
						end if;
					end if;	
				when AcknowledgeChecking3 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '1';
						stateI2C <= AcknowledgeChecking4;
					end if;	
				when AcknowledgeChecking4 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '0';
						if sda = '0' then
							stateI2C <= PresetPointerStopping1;
						else 
							stateI2C <= Waiting;
							error <= not error;
						end if;	
					end if;
				when PresetPointerStopping1 =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= '1';
					else 	
						count <= 0;
						scl <= '1';
						stateI2C <= PresetPointerStopping2;
					end if;
				when PresetPointerStopping2 =>
					if count < 125 then
						count <= count + 1;
					else 
						count <= 0;
						rw <= '1';
						stateI2C <= Starting;
					end if;	
				when ReadBitPreparing =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= readBit;
					else	
						count <= 0;
						scl <= '1';						
						stateI2C <= ReadBitSending;
					end if;
				when ReadBitSending => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						stateI2C <= AcknowledgeChecking5;
					end if;
				when AcknowledgeChecking5 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '1';
						stateI2C <= AcknowledgeChecking6;
					end if;	
				when AcknowledgeChecking6 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '0';
						if sda = '0' then
							stateI2C <= MSByteFromDeviceReading;
						else 
							stateI2C <= Waiting;
							error <= not error;
						end if;	
					end if;		
				when Updating =>
					update <= '1';	
					stateUART <= Waiting;
				when others =>
			end case;
			startPrev <= start;
		end if;	
	end process;
	
end Behavioral;