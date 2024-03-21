module filter30(q, d, clk);
output q;
input d, clk;

reg q;
reg latch = 0;
reg[4:0] count = 0;

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
					if (count < 5'd30)
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
					if (count < 5'd30)
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