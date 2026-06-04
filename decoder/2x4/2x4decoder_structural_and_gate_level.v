module twoxfourdecoder(
    input en,
    input [1:0] i,
    output [3:0] y
);

wire [1:0] ni;

not n0(ni[0], i[0]);
not n1(ni[1], i[1]);

and y0(y[0], ni[1], ni[0], en);
and y1(y[1], ni[1], i[0],  en);
and y2(y[2], i[1],  ni[0], en);
and y3(y[3], i[1],  i[0],  en);

endmodule