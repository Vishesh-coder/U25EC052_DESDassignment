module comparator(
    input [1:0] a,
    input [1:0] b,
    output a_equal_b, a_greater_b, a_less_b
);

wire [1:0] x;
wire [1:0] na;
wire [1:0] nb;
wire w1, w2, w3, w4;

not nota[1:0] (na, a);
not notb[1:0] (nb, b);

xnor e1[1:0] (x, a, b);
and e(a_equal_b, x[1], x[0]);

and g1(w1, a[1], nb[1]);
and g2(w2, x[1], a[0], nb[0]);
or g(a_greater_b, w1, w2);

and l1(w3, na[1], b[1]);
and l2(w4, x[1], na[0], b[0]);
or l(a_less_b, w3, w4);

endmodule