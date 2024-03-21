module TransmitterUART(clk, tx, data, update, led);
	input clk, update;
	input[7:0] data;
	output tx, led;
	
	reg tx, led;
	reg[15:0] count = 0; // 9600 bod (104 msec)
	reg[2:0] bitPosition = 0;
	reg updatePrev = 0;
	reg[7:0] dataBuf = 8'b00000000;
	
	parameter Waiting = 0, Starting = 1, ReceivingData = 2, Stopping = 3;
	reg[1:0] stateUART = Waiting;

	always@(posedge clk)
	begin
		case (stateUART)
			Waiting :
				begin
					if (update == 1 && updatePrev == 0)
						begin
							dataBuf <= data;
							stateUART <= Starting;
							count <= 0;
						end
					tx <= 1;
				end	
			Starting :
				begin
					if (count < 5200)
						count <= count + 1;
					else
						begin
							count <= 0;
							stateUART <= ReceivingData;
						end
					tx <= 0;
				end	
			ReceivingData :
				begin
					if (count < 5200)
						begin
							count <= count + 1;
							tx <= dataBuf[bitPosition];
						end	
					else
						begin
							count <= 0;
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
					tx <= 1;
					if (count < 5200)
						count <= count + 1;
					else
						begin
							count <= 0;
							led <= ~ led;
							stateUART <= Waiting;
						end
				end		
			default :
				stateUART <= Waiting;
		endcase
		updatePrev <= update;
	end
	
endmodule