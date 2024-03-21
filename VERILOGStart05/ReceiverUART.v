module ReceiverUART(clk, rx, data, update, led);
	input clk, rx;
	output[7:0] data;
	output update, led;
	
	reg[7:0] data;
	reg update, led;
	reg[15:0] count = 0; // 9600 bod (104 msec)
	reg[2:0] bitPosition = 0;
	reg rxPrev = 1;
	reg[7:0] dataBuf = 0;
	
	parameter Waiting = 0, Starting = 1, ReceivingData = 2, Stopping = 3, Updating = 4;
	reg[2:0] stateUART = Waiting;

	always@(posedge clk)
	begin
		case (stateUART) 
				Waiting : 
					begin
						if (rx == 0 && rxPrev == 1)
							begin
								stateUART <= Starting;
								count <= 0;
							end
						update <= 0;
					end	
				Starting :
					begin
						if (rx == 0)
							begin
								if (count < 5200/2)
									count <= count + 1;
								else
									begin
										count <= 0;
										stateUART <= ReceivingData;
									end
							end		
						else 
							begin
								stateUART <= Waiting;
								count <= 0;
							end	
					end
				ReceivingData :
					begin
						if (count < 5200)
							count <= count + 1;
						else
							begin
								count <= 0;
								dataBuf[bitPosition] <= rx;
								if (bitPosition < 7)
									bitPosition <= bitPosition + 1;
								else
									begin
										bitPosition <= 0;
										stateUART <= Stopping;
									end	
							end
					end 
				Stopping :
					begin
						data <= dataBuf;
						led <= ~ led;
						stateUART <= Updating;
					end	
				Updating :
					begin
						update <= 1;	
						stateUART <= Waiting;
					end
				default : stateUART <= Waiting;
		endcase
		rxPrev <= rx;	
	end
	
endmodule