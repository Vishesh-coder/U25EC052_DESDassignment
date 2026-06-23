module sipo(
    input i, clk, rst,
    output [3:0] q
);

d_ff d0(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(i),
    .q(q[3])
);

d_ff d1(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(q[3]),
    .q(q[2])
);

d_ff d2(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(q[2]),
    .q(q[1])
);

d_ff d3(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(q[1]),
    .q(q[0])
);

endmodule