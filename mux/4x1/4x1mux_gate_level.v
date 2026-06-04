module fourxone_mux(
    input [3:0] i,
    input [1:0] s,
    output y
);

wire [1:0] ns;
wire a0, a1, a2, a3;

not n1(ns[1], s[1]);
not n0(ns[0], s[0]);

and g0(a0, ns[1], ns[0], i[0]);
and g1(a1, ns[1], s[0], i[1]);
and g2(a2, s[1], ns[0], i[2]);
and g3(a3, s[1], s[0], i[3]);

or gf(y, a0, a1, a2, a3);

endmodule