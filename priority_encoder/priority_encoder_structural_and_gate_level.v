module priority_encoder(
    input [3:0] i,
    output [1:0] y,
    output v
);

wire ni2, a;

or g1(y[1], i[3], i[2]);

not n(ni2, i[2]);
and a1(a, ni2, i[1]);
or g0(y[0], i[3], a);
or valid(v, i);

endmodule