module ripple_carry_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire o0, o1, o2;

fa fa0(
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(sum[0]),
    .cout(o0)
);

fa fa1(
    .a(a[1]),
    .b(b[1]),
    .cin(o0),
    .sum(sum[1]),
    .cout(o1)
);

fa fa2(
    .a(a[2]),
    .b(b[2]),
    .cin(o1),
    .sum(sum[2]),
    .cout(o2)
);

fa fa3(
    .a(a[3]),
    .b(b[3]),
    .cin(o2),
    .sum(sum[3]),
    .cout(cout)
);

endmodule