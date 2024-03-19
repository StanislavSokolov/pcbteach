module Count250(clkIn, clkOut);
	input clkIn;
	output clkOut;

	reg clkOut;
	reg[7:0] counter = 0;
	
	always@(posedge clkIn)
	begin
		if (counter < 8'd250)
				counter <= counter + 1;
		else
			begin
				counter <= 0;
				clkOut <= ~ clkOut;		
			end	
	end
endmodule