module DataConversionUnit(clk, update, data, indicator0, indicator1);
	input clk, update;
	input[7:0] data;
	output[6:0] indicator0, indicator1;

	reg[6:0] indicator0, indicator1;
	
	reg[3:0] indicator0Buf = 0, indicator1Buf = 0;
	reg[7:0] dataBuf = 0;
	reg updatePrev = 0;

	always@(posedge clk)
	begin
		if (update == 1 && updatePrev == 0)
			dataBuf <= data;
		updatePrev <= update;
	end
	
	always@(dataBuf)
	begin
		indicator0Buf <= dataBuf % 16;
		indicator1Buf <= (dataBuf - (dataBuf % 16))/16;
	end
	
	always@(indicator0Buf)
	begin
		case (indicator0Buf)
			0 : indicator0 <= 7'b1000000;
			1 : indicator0 <= 7'b1111001;
			2 : indicator0 <= 7'b0100100;
			3 : indicator0 <= 7'b0110000;
			4 : indicator0 <= 7'b0011001;
			5 : indicator0 <= 7'b0010010;
			6 : indicator0 <= 7'b0000010;
			7 : indicator0 <= 7'b1111000;
			8 : indicator0 <= 7'b0000000;
			9 : indicator0 <= 7'b0010000;
			10 : indicator0 <= 7'b0001000;
			11 : indicator0 <= 7'b0000011;
			12 : indicator0 <= 7'b1000110;
			13 : indicator0 <= 7'b0100001;
			14 : indicator0 <= 7'b0000110;
			15 : indicator0 <= 7'b0001110;
			default : indicator0 <= 7'b0111111;
		endcase
	end

	always@(indicator1Buf)
	begin
		case (indicator1Buf)
			0 : indicator1 <= 7'b1000000;
			1 : indicator1 <= 7'b1111001;
			2 : indicator1 <= 7'b0100100;
			3 : indicator1 <= 7'b0110000;
			4 : indicator1 <= 7'b0011001;
			5 : indicator1 <= 7'b0010010;
			6 : indicator1 <= 7'b0000010;
			7 : indicator1 <= 7'b1111000;
			8 : indicator1 <= 7'b0000000;
			9 : indicator1 <= 7'b0010000;
			10 : indicator1 <= 7'b0001000;
			11 : indicator1 <= 7'b0000011;
			12 : indicator1 <= 7'b1000110;
			13 : indicator1 <= 7'b0100001;
			14 : indicator1 <= 7'b0000110;
			15 : indicator1 <= 7'b0001110;
			default : indicator1 <= 7'b0111111;
		endcase
	end	
endmodule