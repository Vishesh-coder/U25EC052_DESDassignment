module pattern_counter(
    input clk, rst,
    output [7:0] q
);

t_ff t0(
    .clk(clk),
    .clr(1'b1),
    .pre(rst),
    .t(q[0] | q[7]),
    .q(q[0])
);

t_ff t1(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(1'b0),
    .q(q[1])
);

t_ff t2(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(1'b0),
    .q(q[2])
);

t_ff t3(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(1'b0),
    .q(q[3])
);

t_ff t4(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(1'b0),
    .q(q[4])
);

t_ff t5(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(q[0] | q[5]),
    .q(q[5])
);

t_ff t6(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(q[5] | q[6]),
    .q(q[6])
);

t_ff t7(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .t(q[6] | q[7]),
    .q(q[7])
);

endmodule