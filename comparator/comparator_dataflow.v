module comparator(
    input [1:0] a,
    input [1:0] b,
    output a_equal_b, a_greater_b, a_less_b
);

wire [1:0] x;
assign x = a ~^ b;
assign a_equal_b = &x;
assign a_greater_b = (a[1] & ~b[1]) | (x[1] & a[0] & ~b[0]);
assign a_greater_b = (~a[1] & b[1]) | (x[1] & ~a[0] & b[0]);

endmodule