`default_nettype none
`timescale 1ps/1ps
module tb_module;
	reg [3:0] tb_p [1:0];
	wire [1:0] tb_y;
	top_module tb(
		.p1a(tb_p[0][0]),
		.p1b(tb_p[0][1]),
		.p1c(tb_p[0][2]),
		.p1d(tb_p[0][3]),
		.p2a(tb_p[1][0]),
		.p2b(tb_p[1][1]),
		.p2c(tb_p[1][2]),
		.p2d(tb_p[1][3]),
		.p1y(tb_y[0]),
		.p2y(tb_y[1])
	);
	initial begin
	$dumpfile("sim_output.vcd");
	$dumpvars(0, tb_module);
	tb_p[0] = 4'b0000; tb_p[1] = 4'b0000;
	#100;
	$finish;
	end
	always begin
	#5 tb_p[0][0] = ~ tb_p[0][0]; tb_p[1][0] = ~ tb_p[1][0];
	end
	always begin
	#10 tb_p[0][1] = ~ tb_p[0][1]; tb_p[1][1] = ~ tb_p[1][1];
	end
	always begin
	#20 tb_p[0][2] = ~ tb_p[0][2]; tb_p[1][2] = ~ tb_p[1][2];
	end
	always begin
	#40 tb_p[0][3] = ~ tb_p[0][3]; tb_p[1][3] = ~ tb_p[1][3];
	end
endmodule
