module filter8(q, d, clk);
output q;
input d, clk;

reg q;
reg latch;
reg[3:0] count = 4'd0;

always@(posedge clk)
begin
	if (d == 1)
		begin
			if (latch == 0)
				begin
					count <= 0;
					latch <= 1;
				end
			else
				begin
					if (count < 4'd8)
						begin
							count <= count + 1;
						end
					else 
						begin
							q <= 1;
							count <= 0;
						end
				end
		end	
	else
		begin
			if (latch == 1)
				begin
					count <= 0;
					latch <= 0;
				end
			else
				begin
					if (count < 4'd8)
						begin
							count <= count + 1;
						end
					else 
						begin
							q <= 0;
							count <= 0;
						end
				end
		end
	end
	
endmodule