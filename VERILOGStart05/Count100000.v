module Count100000(clkIn, clkOut);
	input clkIn;
	output clkOut;

	reg clkOut;
	reg[16:0] counter = 0;
	
	always@(posedge clkIn)
	begin
		if (counter < 17'd100000)
				counter <= counter + 1;
		else
			begin
				counter <= 0;
				clkOut <= ~ clkOut;		
			end	
	end
endmodule