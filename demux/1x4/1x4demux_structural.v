module onexfour_demux(
    input i,
    input [1:0] s,
    output [3:0] y
);

wire [1:0] out;

onextwo_demux d0(
    .i(i),
    .s(s[1]),
    .y(out)
);

onextwo_demux d1(
    .i(out[0]),
    .s(s[0]),
    .y(y[1:0])
);
onextwo_demux d2(
    .i(out[1]),
    .s(s[0]),
    .y(y[3:2])
);

endmodule