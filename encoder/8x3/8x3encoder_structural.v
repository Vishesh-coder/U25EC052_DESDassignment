module eightxthree_encoder(
    input [7:0] i,
    output [2:0] y,
    output v
);

wire [1:0] y_lower;
wire [1:0] y_upper;
wire v_lower, v_upper;

fourxtwoencoder enc_lower(
    .i(i[3:0]),
    .y(y_lower),
    .v(v_lower)
);

fourxtwoencoder enc_upper(
    .i(i[7:4]),
    .y(y_upper),
    .v(v_upper)
);

buf g2(y[2], v_upper);
or g1(y[1], y_upper[1], y_lower[1]);
or g0(y[0], y_upper[0], y_lower[0]);

or valid(v, v_lower, v_upper);

endmodule