module fourxone_mux(
    input [3:0] i,
    input [1:0] s,
    output y
);

wire [1:0] out;

twoxone_mux m0(
    .i(i[1:0]),
    .s(s[0]),
    .y(out[0])
);

twoxone_mux m1(
    .i(i[3:2]),
    .s(s[0]),
    .y(out[1])
);

twoxone_mux m2(
    .i(out[1:0]),
    .s(s[1]),
    .y(y)
);

endmodule