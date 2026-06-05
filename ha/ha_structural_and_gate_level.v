module ha(
    input a, b,
    output sum,
    output cout
);

xor s(sum, a, b);
and c(cout, a, b);

endmodule