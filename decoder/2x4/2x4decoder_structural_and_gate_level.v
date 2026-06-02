module twoxfourdecoder(
    input en,
    input [1:0] i,
    output [3:0] y
);

wire [1:0] ni;
wire o0, o1, o2, o3;

not [1:0] n(ni, i);

and ot0(o0, ni[1], ni[0]);
and ot1(o1, ni[1], i[0]);
and ot2(o2, i[1], ni[0]);
and ot3(o3, i[1], i[0]);

and y0(y[0], o0, en);
and y1(y[1], o1, en);
and y2(y[2], o2, en);
and y3(y[3], o3, en);

endmodule