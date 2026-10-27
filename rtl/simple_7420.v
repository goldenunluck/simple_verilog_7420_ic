`default_nettype none
module top_module(
	input p1a, p2a, p1b, p2b, p1c, p2c, p1d, p2d,
	output p1y, p2y
);
	assign p1y = ~ ( p1a & p1b & p1c & p1d );
	assign p2y = ~ ( p2a & p2b & p2c & p2d );
endmodule
