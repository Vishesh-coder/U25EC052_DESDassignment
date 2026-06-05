module threexeightdecoder(
    input en,
    input [2:0] i,
    output [7:0] y
);

wire en_low, en_high;
and el(en_low, en, ~i[2])
and eh(en_high, en, i[2])

twoxfourdecoder d0(
    .en(en_low),
    .i(i[1:0]),
    .y(y[3:0])
);

twoxfourdecoder d1(
    .en(en_high),
    .i(i[1:0]),
    .y(y[7:4])
);

endmodule