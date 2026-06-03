module eightxthree_encoder(
    input [7:0] i,
    output [2:0] y,
    output v
);

or o0(y[0], i[7], i[5], i[3], i[1]);
or o1(y[1], i[7], i[6], i[3], i[2]);
or o2(y[2], i[7], i[6], i[5], i[4]);

or valid(v, i);

endmodule