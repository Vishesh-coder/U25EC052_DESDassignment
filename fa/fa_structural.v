module fa(
    input a, b, cin,
    output sum, cout
);

wire s0, c0, c1;

ha h0(
    .a(a),
    .b(b),
    .sum(s0),
    .cout(c0)
);

ha h1(
    .a(cin),
    .b(s0),
    .sum(sum),
    .cout(c1)
);

or c(cout, c0, c1);

endmodule