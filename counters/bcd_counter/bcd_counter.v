module bcd_counter(
    input clk, clear,
    output [3:0] q
);

wire rst;

assign rst = ~(q[3] & q[1] & ~q[2] & ~q[0]) & ~clear;

t_ff t0(
    .t(1'b1),
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .q(q[0])
);

t_ff t1(
    .t(1'b1),
    .clk(q[0]),
    .clr(rst),
    .pre(1'b1),
    .q(q[1])
);

t_ff t2(
    .t(1'b1),
    .clk(q[1]),
    .clr(rst),
    .pre(1'b1),
    .q(q[2])
);

t_ff t3(
    .t(1'b1),
    .clk(q[2]),
    .clr(rst),
    .pre(1'b1),
    .q(q[3])
);

endmodule