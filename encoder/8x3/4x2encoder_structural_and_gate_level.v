module fourxtwoencoder(
    input [3:0] i,
    output [1:0] y,
    output v
);

or o0(y[0], i[3], i[1]);
or o1(y[1], i[3], i[2]);
or valid(v, i);
endmodule