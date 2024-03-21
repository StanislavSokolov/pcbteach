module DynamicIllumination4Indicators(clk, enable, indicator0, indicator1, indicator2, indicator3, segment, indicator);
	input clk;
	input[3:0] enable;
	input[6:0] indicator0, indicator1, indicator2, indicator3;
	output[6:0] segment;
	output[3:0] indicator;
	
	reg[6:0] segment;
	reg[3:0] indicator;
	reg[3:0] counter = 0;

	always@(posedge clk)
	begin
		if (counter < 3)
			counter <= counter + 1;
		else
			counter <= 0;		
	end
	
	always@(counter)
	begin
		case (counter)
			0 : if (enable[0] == 1) 
					begin
						indicator <= 4'b1110;
						segment <= indicator0;
					end
			1 : if (enable[1] == 1) 
					begin
						indicator <= 4'b1101;
						segment <= indicator1;
					end
			2 : if (enable[2] == 1) 
					begin
						indicator <= 4'b1011;
						segment <= indicator2;
					end
			3 : if (enable[3] == 1) 
					begin	
						indicator <= 4'b0111;
						segment <= indicator3;
					end
			default : 
					begin
						indicator <= 4'b0000; 
						segment <= 7'b0000000;
					end	
		endcase
	end
	
endmodule