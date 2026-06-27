module bcd_counter(
    input clk, rst,
    output [3:0] q
);

t_ff t0(
    .t(1'b1),
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .q(q[0])
);

t_ff t1(
    .t(q[0] & ~q[3]),
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .q(q[1])
);

t_ff t2(
    .t(q[1] & q[0]),
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .q(q[2])
);

t_ff t3(
    .t(q[0] & (q[3] | (q[1] & q[2]))),
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .q(q[3])
);

endmodule