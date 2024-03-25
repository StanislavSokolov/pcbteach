`timescale 10ns / 100ps
module tb_03;
	parameter D_WIDTH = 16;
	parameter A_WIDTH = 4;
	parameter A_MAX = 16; // 2^A_WIDTH
	parameter CHECK_WIDTH = 8;
	
	reg clk_tb, en_write_tb, write_enable_tb, en_read_tb;

	reg[A_WIDTH-1:0] address_write_tb;
	reg[D_WIDTH-1:0] data_write_tb;
	reg[A_WIDTH-1:0] address_read_tb;
	wire[D_WIDTH-1:0] data_read_tb;
	reg[D_WIDTH-1:0] memory_tb [A_MAX-1:0];
	
	reg[D_WIDTH - 1:0] array[0:CHECK_WIDTH - 1];
	integer inLog;
	integer outLog;
	integer count = CHECK_WIDTH, i = 0, j = 0;
	reg[D_WIDTH - 1:0] bufData;
	
	TestBench03 test(
		.clk(clk_tb),
		.en_write(en_write_tb),
		.address_write(address_write_tb),
		.data_write(data_write_tb),
		.write_enable(write_enable_tb),
		.en_read(en_read_tb),
		.address_read(address_read_tb),
		.data_read(data_read_tb)
	);
	
initial
begin
	en_read_tb = 1'b0;
	en_write_tb = 1'b0;
	write_enable_tb = 1'b0;
	inLog = $fopen("file1.dat", "r");
	outLog = $fopen("file2.dat", "w");
	//while (! $feof(inLog))
	//	begin
	//		count = count + 1;
	$readmemh("file1.dat", array);
	//	end		
	$fclose(inLog);
	#1000;
	$fclose(outLog);
	$finish;	
end

always #1 clk_tb <= ~clk_tb;

always
begin
if (i < count)
	begin
		#1; en_write_tb <= 1'b1; address_write_tb <= i; data_write_tb = array[i];
		#1; clk_tb <= 1'b1;
		#1; clk_tb <= 1'b0; i = i + 1;
	end
else if (j < count)
	begin
		#1; en_write_tb <= 1'b0; en_read_tb <= 1'b1; address_read_tb <= j;
		#1; clk_tb <= 1'b1; bufData <= array[j];
		#1; array[j] <= data_read_tb;
		#1; clk_tb <= 1'b0;
		if(array[j] != bufData) 
			begin
				$display("***** Mismatch data (memory[%d]) in time %d", j, $time);
			end
		else	
			begin
				$display("***** It's OK. Data (memory[%d]) in time %d is normal", j, $time);
			end	
		j = j + 1;
	end
else 
	begin
		$writememh("file2.dat", array);
		$fclose(outLog);
		$finish;
	end	
end
endmodule