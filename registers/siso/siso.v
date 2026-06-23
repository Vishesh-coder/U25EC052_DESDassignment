module siso(
    input i, clk, rst,
    output q
);

wire [3:0] d;

d_ff d0(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(i),
    .q(d[3])
);

d_ff d1(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(d[3]),
    .q(d[2])
);

d_ff d2(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(d[2]),
    .q(d[1])
);

d_ff d3(
    .clk(clk),
    .clr(rst),
    .pre(1'b1),
    .d(d[1]),
    .q(d[0])
);

assign q = d[0];

endmodule