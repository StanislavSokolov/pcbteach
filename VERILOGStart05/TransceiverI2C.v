module TransceiverI2C(clk, start, scl, sda, data, update, led, ledError);
	input clk, start;
	output scl, update, led, ledError;
	output[7:0] data;
	inout sda;

	reg scl, update, led, ledError;
	reg [7:0] data;
	reg sda;

	reg[7:0] count = 0; // period = 5 msec
	reg[2:0] bitPosition = 0;
	reg startPrev = 1;
	reg[7:0] dataBuf = 8'b00000011;
	
	reg rw = 0;
	reg[6:0] deviceAddress = 7'b1001000;
	reg readBit = 1, writeBit = 0;
	reg[7:0] pointerByte = 8'b00000000;
	reg[7:0] mSByteFromDevice = 8'b00000000;
	reg[7:0] lSByteFromDevice = 8'b00000000;
	
	reg error = 1;
	
	parameter Waiting = 0, Starting = 1, DeviceAddressPreparing = 2, DeviceAddressSending = 3, WriteBitPreparing = 4, WriteBitSending = 5, ReadBitPreparing = 6, ReadBitSending = 7, AcknowledgeChecking1 = 8, AcknowledgeChecking2 = 9, AcknowledgeChecking3 = 10, AcknowledgeChecking4 = 11, AcknowledgeChecking5 = 12, AcknowledgeChecking6 = 13, AcknowledgeChecking7 = 14, AcknowledgeChecking8 = 15, AcknowledgeChecking9 = 16, AcknowledgeChecking10 = 17, PointerBytePreparing = 17, PointerByteSending = 18, MSByteFromDeviceReading = 19, MSByteFromDevicePreparing = 20, LSByteFromDeviceReading = 21, LSByteFromDevicePreparing = 22, PresetPointerStopping = 23, Updating = 24;
	reg[4:0] stateI2C = Waiting;
	
	always@(posedge clk)
	begin
		startPrev <= start;
		case (stateI2C)
			Waiting :
				begin
					if (start == 0 && startPrev == 1)						
						stateI2C <= Starting;	
					count <= 0;
					sda <= 1'bz;
					scl <= 1'bz;
					update <= 0;
					bitPosition <= 6;
					rw <= 0;
				end
			Starting :
				begin	
					if (count < 25)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= 0;
						end	
					else 
						begin
							count <= 0;
							scl <= 0;						
							stateI2C <= DeviceAddressPreparing;
						end
				end
			DeviceAddressPreparing :
				begin
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= deviceAddress[bitPosition];
						end
					else	
						begin
							count <= 0;
							scl <= 1;						
							stateI2C <= DeviceAddressSending;
						end;
				end		
			DeviceAddressSending :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							if (bitPosition > 0)
								begin
									bitPosition <= bitPosition - 1;
									stateI2C <= DeviceAddressPreparing;
								end	
							else 
								begin
									bitPosition <= 7;
									if (rw == 0)
										stateI2C <= WriteBitPreparing;
									else 
										stateI2C <= ReadBitPreparing;
								end
						end
				end		
			WriteBitPreparing :
				begin
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= writeBit;
						end	
					else	
						begin
							count <= 0;
							scl <= 1;						
							stateI2C <= WriteBitSending;
						end	
				end
			WriteBitSending :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							sda <= 1'bz;						
							stateI2C <= AcknowledgeChecking1;
						end	
				end	
			AcknowledgeChecking1 :
				begin	
					if (count < 125)
						count <= count + 1;						
					else	
						begin
							count <= 0;
							scl <= 1;
							stateI2C <= AcknowledgeChecking2;
						end
				end	
			AcknowledgeChecking2 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 0;
							if (sda == 0)	
								begin
									stateI2C <= PointerBytePreparing;
									//led <= ~ led;
								end	
							else 
								begin
									stateI2C <= Waiting;
									error <= ~error;
								end						
						end
				end		
			PointerBytePreparing :
				begin	
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= pointerByte[bitPosition];
						end	
					else	
						begin
							count <= 0;
							scl <= 1;						
							stateI2C <= PointerByteSending;
						end
				end		
			PointerByteSending :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							if (bitPosition > 0)
								begin
									bitPosition <= bitPosition - 1;
									stateI2C <= PointerBytePreparing;
								end
							else
								begin
									bitPosition <= 6;
									stateI2C <= AcknowledgeChecking3;
									sda <= 1'bz;
								end	
						end
				end	
			AcknowledgeChecking3 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 1;
							stateI2C <= AcknowledgeChecking4;
						end
				end		
			AcknowledgeChecking4 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 0;
							if (sda == 0)	
								begin 
									led <= ~ led;
									stateI2C <= PresetPointerStopping;
								end	
							else 
								begin
									stateI2C <= Waiting;
									error <= ~ error;
								end	
						end	
				end
			PresetPointerStopping :
				begin
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= 1;
						end	
					else 	
						begin
							count <= 0;
							scl <= 1;
							rw <= 1;
							stateI2C <= Starting;
						end
				end		
			ReadBitPreparing :
				begin
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= readBit;
						end	
					else	
						begin
							count <= 0;
							scl <= 1;						
							stateI2C <= ReadBitSending;
						end	
				end
			ReadBitSending :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							sda <= 1'bz;
							stateI2C <= AcknowledgeChecking5;
						end
				end		
			AcknowledgeChecking5 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 1;
							stateI2C <= AcknowledgeChecking6;
						end
				end		
			AcknowledgeChecking6 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 0;
							if (sda == 0)
								begin
									stateI2C <= MSByteFromDeviceReading;
									bitPosition <= 7;
								end	
							else 	
								begin
									stateI2C <= Waiting;
									error <= ~error;
								end	
						end
				end		
			MSByteFromDeviceReading :
				begin	
					if (count < 125)
						count <= count + 1;
					else 
						begin
							scl <= 1;
							count <= 0;
							mSByteFromDevice[bitPosition] <= sda;
							stateI2C <= MSByteFromDevicePreparing;		
						end;	
				end
			MSByteFromDevicePreparing :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							if (bitPosition > 0)
								begin
									bitPosition <= bitPosition - 1;
									stateI2C <= MSByteFromDeviceReading;
								end	
							else 
								begin
									bitPosition <= 7;
									stateI2C <= AcknowledgeChecking7;
									sda <= 0;
								end
						end
				end		
			AcknowledgeChecking7 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 1;
							stateI2C <= AcknowledgeChecking8;
						end	
				end
			AcknowledgeChecking8 :
				begin
					if (count < 125)
						count <= count + 1;
					else	
						begin
							count <= 0;
							scl <= 0;
							stateI2C <= LSByteFromDeviceReading;							
						end	
				end
			LSByteFromDeviceReading :
				begin
					if (count < 125)
						count <= count + 1;
					else 
						begin
							scl <= 1;
							count <= 0;
							lSByteFromDevice[bitPosition] <= sda;
							stateI2C <= LSByteFromDevicePreparing;		
						end
				end		
			LSByteFromDevicePreparing :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;						
							if (bitPosition > 0)
								begin
									bitPosition <= bitPosition - 1;
									stateI2C <= LSByteFromDeviceReading;
								end
							else
								begin
									bitPosition <= 7;
									stateI2C <= AcknowledgeChecking9;	
								end			
						end
				end
			AcknowledgeChecking9 :
				begin
					if (count < 100)
						count <= count + 1;
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= 1;
						end
					else
						begin
							count <= 0;
							scl <= 1;	
							stateI2C <= AcknowledgeChecking10;
						end	
				end	
			AcknowledgeChecking10 :
				begin
					if (count < 125)
						count <= count + 1;
					else
						begin
							count <= 0;
							scl <= 0;
							stateI2C <= Updating;
							//led <= ~ led;
							bitPosition <= 6;
							data[7:3] <= mSByteFromDevice[4:0];
							//data[7:3] <= 5'b10101;
							data[2:0] <= lSByteFromDevice[7:5];
						end
				end		
			Updating :
				begin
					if (count < 25)
						count <= count + 1;						
					else if (count < 125)
						begin
							count <= count + 1;
							sda <= 0;
							update <= 1;
						end	
					else
						begin
							count <= 0;	
							stateI2C <= Waiting;
						end
				end		
			default : 
					stateI2C <= Waiting;
		endcase			
	end
	
endmodule	