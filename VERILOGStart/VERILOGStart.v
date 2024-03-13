module VERILOGStart(led0, led1, led2, led3, bzzz, clk, key0, key1, key2);
	output led0, led1, led2, led3, bzzz;
	input clk, key0, key1, key2;
	
	reg led0, led1, led2, led3, bzzz;
	reg key0Prev, key1Prev, key2Prev;
	reg onBzzz;
	reg[24:0] counter0, counter1, counter2, counter3;

	always@(posedge clk)	
	begin
		if(counter0 < 25'd25000000)
			begin
				counter0 <= counter0 + 1;
			end
		else
			begin			
				led0 <= ~led0;
				counter0 <= 0;
			end
		if(counter1 < 24'd12500000)
			begin
				counter1 <= counter1 + 1;
			end
		else
			begin			
				led1 <= ~led1;
				counter1 <= 0;
			end
		if(counter2 < 23'd6250000)
			begin
				counter2 <= counter2 + 1;
			end
		else
			begin			
				led2 <= ~led2;
				counter2 <= 0;
			end
		if(counter3 < 16'd56818)
			begin
				counter3 <= counter3 + 1;
			end
		else
			begin				
				counter3 <= 0;
				if(onBzzz == 1)
					begin
						bzzz <= ~bzzz;
					end 
				else
					begin
						bzzz <= 0;
					end	
			end		
	end
	
	always@(posedge clk)	
	begin
		if(key0 == 1 && key0Prev == 0)
			begin
				led3 <= ~led3;
			end
			
		if(key1 == 1 && key1Prev == 0)
			begin
				onBzzz <= 1;
			end
			
		if(key2 == 1 && key2Prev == 0)
			begin
				onBzzz <= 0;
			end			
		key0Prev <= key0;
		key1Prev <= key1;
		key2Prev <= key2;
	end
endmodule
