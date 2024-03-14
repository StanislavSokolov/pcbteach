module countMod9(count, clk, button);
	output[3:0] count;
	input clk, button;
	
	reg[3:0] count;
	reg buttonPrev;
	
	always@(posedge clk)
	begin
		if (button == 1 && buttonPrev == 0)
			begin
				if (count < 4'd9)
					begin
						count <= count + 1;
					end	
				else
					begin
						count <= 0;
					end
			end
		buttonPrev <= button;	
	end
endmodule	
	