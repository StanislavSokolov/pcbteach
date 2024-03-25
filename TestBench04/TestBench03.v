module TestBench03(clk, en_write, address_write, data_write, write_enable, en_read, address_read, data_read);
	parameter D_WIDTH = 16;
	parameter A_WIDTH = 4;
	parameter A_MAX = 16; // 2^A_WIDTH
	input clk;

	// Write port
	input en_write;
	input [A_WIDTH-1:0] address_write;
	input [D_WIDTH-1:0] data_write;
	input write_enable;
	// Read port
	input en_read;
	input [A_WIDTH-1:0] address_read;
	output [D_WIDTH-1:0] data_read;

	reg [D_WIDTH-1:0] data_read;

	// Memory as multi-dimensional array

	reg [D_WIDTH-1:0] memory [A_MAX-1:0];
	// Write and read data
	
	always@(posedge clk)
	begin
		if (en_write)
			begin
				memory[address_write] <= data_write;
			end
		else if (en_read)
			begin
				data_read <= memory[address_read];
			end
	end
endmodule