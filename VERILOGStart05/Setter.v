module Setter(clk, key1, key2, key3, key4, reset, data, update);
	input clk, key1, key2, key3, key4, reset;
	output[7:0] data;
	output update;

	reg[7:0] data;
	reg update;

	reg[2:0] countUpdate = 0;
	reg resetPrev = 1, key1Prev = 1, key2Prev = 1, key3Prev = 1, key4Prev = 1;
	reg[7:0] dataBuf = 8'b11111111;
	reg[3:0] dataBuf0 = 15, dataBuf1 = 15;

	always@(posedge clk)
	begin	
		dataBuf <= dataBuf1 & dataBuf0;
		if (reset == 0 && resetPrev == 1)
			update <= 1;				
		else
			begin
				if (update == 1)
					begin
						if (countUpdate < 7)
							countUpdate <= countUpdate + 1;
						else 
							begin
								countUpdate <= 0;
								update <= 0;
							end
					end
			end
			resetPrev <= reset;
	end
	
	always@(posedge clk)
	begin
		if (key1 == 0 && key1Prev == 1)
			begin
				if (dataBuf0 < 15)
					dataBuf0 <= dataBuf0 + 1;
				else 
					dataBuf0 <= 0;
			end
		key1Prev <= key1;
		if (key2 == 0 & key2Prev == 1)
			begin
				if (dataBuf0 > 0)
					dataBuf0 <= dataBuf0 - 1;
				else 
					dataBuf0 <= 15;
			end
		key2Prev <= key2;
		if (key3 == 0 && key3Prev == 1)
			begin
				if (dataBuf1 < 15)
					dataBuf1 <= dataBuf1 + 1;
				else 
					dataBuf1 <= 0;
			end
		key3Prev <= key3;
		if (key4 == 0 && key4Prev == 1)
			begin
				if (dataBuf1 > 0)
					dataBuf1 <= dataBuf1 - 1;
				else 
					dataBuf1 <= 15;
			end
		key4Prev <= key4;
	end
endmodule	