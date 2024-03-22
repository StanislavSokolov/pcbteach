`timescale 10ns / 100ps
module TestBench03;
	reg clk_tb, rst_tb, d_tb, q_exp;
	
	wire q_tb, qb_tb;
	
	dfftestmod test(
		.clk(clk_tb),
		.reset(rst_tb),
		.d(d_tb),
		.q(q_tb),
		.qb(qb_tb)
	);
	
initial // start condition
begin
clk_tb <= 1'b0;
rst_tb <= 1'b1;
d_tb <= 1'b0;
q_exp <= 1'b0;
#50;
$finish;
end

initial
begin
#10; rst_tb <= 1'b0;
end

always #1 clk_tb <= ~clk_tb;

always
begin
#3; d_tb <= 1'b1;
#3; d_tb <= 1'b0;
#6; d_tb <= 1'b1;
#3; d_tb <= 1'b0;
#100;
end

always
begin
#13; q_exp <= 1'b1;
#2; q_exp <= 1'b0;
#100;
end

always
begin
	#1;
	if(q_tb != q_exp) 
		begin
			$display("***** Mismatch q_tb and q_exp in time %d ", $time);
		end
end
endmodule