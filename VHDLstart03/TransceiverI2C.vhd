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
	signal ledBuf : std_logic := '1';
	signal dataBuf : std_logic_vector(7 downto 0) := b"00000011";
	
	signal rw : std_logic := '0';
	signal deviceAddress : std_logic_vector(6 downto 0) := b"1001000";
	signal readBit : std_logic := '1';
	signal writeBit : std_logic := '0';
	signal pointerByte : std_logic_vector(7 downto 0) := b"00000000";
	signal mSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	signal lSByteFromDevice : std_logic_vector(7 downto 0) := b"00000000";
	
	signal error : std_logic := '1';
	
	
	type I2C is (Waiting, Starting, DeviceAddressPreparing, DeviceAddressSending, WriteBitPreparing, WriteBitSending, ReadBitPreparing, ReadBitSending, AcknowledgeChecking1, AcknowledgeChecking2, AcknowledgeChecking3, AcknowledgeChecking4, AcknowledgeChecking5, AcknowledgeChecking6, AcknowledgeChecking7, AcknowledgeChecking8, AcknowledgeChecking9, AcknowledgeChecking10, PointerBytePreparing, PointerByteSending, MSByteFromDeviceReading, MSByteFromDevicePreparing, LSByteFromDeviceReading, LSByteFromDevicePreparing, PresetPointerStopping, Updating);
	signal stateI2C : I2C := Waiting;
begin	

	led <= ledBuf;
	ledError <= error;
	
	process(clk)
	begin
		if rising_edge(clk) then
			startPrev <= start;
			case stateI2C is
				when Waiting =>
					if start = '0' and startPrev = '1' then						
						stateI2C <= Starting;	
					end if;
					count <= 0;
					sda <= 'Z';
					scl <= 'Z';
					update <= '0';
					bitPosition <= 6;
					rw <= '0';
				when Starting =>
					if count < 25 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= '0';
					else 
						count <= 0;
						scl <= '0';						
						stateI2C <= DeviceAddressPreparing;
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
						if bitPosition > 0 then
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
						sda <= 'Z';						
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
							bitPosition <= 6;
							stateI2C <= AcknowledgeChecking3;
							sda <= 'Z';
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
							stateI2C <= PresetPointerStopping;
						else 
							stateI2C <= Waiting;
							error <= not error;
						end if;	
					end if;
				when PresetPointerStopping =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= '1';
					else 	
						count <= 0;
						scl <= '1';
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
						sda <= 'Z';
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
							bitPosition <= 7;
						else 							
							stateI2C <= Waiting;
							error <= not error;
						end if;	
					end if;
				when MSByteFromDeviceReading =>
					if count < 125 then
						count <= count + 1;
					else 
						scl <= '1';
						count <= 0;
						mSByteFromDevice(bitPosition) <= sda;
						stateI2C <= MSByteFromDevicePreparing;		
					end if;
				when MSByteFromDevicePreparing => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						if bitPosition > 0 then
							bitPosition <= bitPosition - 1;
							stateI2C <= MSByteFromDeviceReading;
						else 
							bitPosition <= 7;
							stateI2C <= AcknowledgeChecking7;
							sda <= '0';
						end if;
					end if;
				when AcknowledgeChecking7 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '1';
						stateI2C <= AcknowledgeChecking8;
					end if;	
				when AcknowledgeChecking8 =>
					if count < 125 then
						count <= count + 1;
					else	
						count <= 0;
						scl <= '0';
						stateI2C <= LSByteFromDeviceReading;							
					end if;
				when LSByteFromDeviceReading =>
					if count < 125 then
						count <= count + 1;
					else 
						scl <= '1';
						count <= 0;
						lSByteFromDevice(bitPosition) <= sda;
						stateI2C <= LSByteFromDevicePreparing;		
					end if;
				when LSByteFromDevicePreparing => 
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';						
						if bitPosition > 0 then
							bitPosition <= bitPosition - 1;
							stateI2C <= LSByteFromDeviceReading;
						else 
							bitPosition <= 7;
							stateI2C <= AcknowledgeChecking9;							
						end if;
					end if;
				when AcknowledgeChecking9 =>
					if count < 100 then
						count <= count + 1;
					elsif count < 125 then
						count <= count + 1;
						sda <= '1';
					else	
						count <= 0;
						scl <= '1';	
						stateI2C <= AcknowledgeChecking10;
					end if;	
				when AcknowledgeChecking10 =>
					if count < 125 then
						count <= count + 1;
					else
						count <= 0;
						scl <= '0';
						stateI2C <= Updating;
						ledBuf <= not ledBuf;
						bitPosition <= 6;
						data(7 downto 3) <= mSByteFromDevice(4 downto 0);
						data(2 downto 0) <= lSByteFromDevice(7 downto 5);
					end if;	
				when Updating =>
					if count < 25 then
						count <= count + 1;						
					elsif count < 125 then
						count <= count + 1;
						sda <= '0';
						update <= '1';
					else						
						count <= 0;	
						stateI2C <= Waiting;
					end if;	
				when others =>
			end case;			
		end if;	
	end process;
	
end Behavioral;