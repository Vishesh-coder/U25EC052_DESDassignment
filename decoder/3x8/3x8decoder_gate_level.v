module threexeightdecoder(
    input en,
    input [2:0] i,
    output [7:0] y
);

wire [2:0] ni;

not n[2:0] (ni, i);

and y0(y[0], ni[2], ni[1], ni[0], en);
and y1(y[1], ni[2], ni[1], i[0],  en);
and y2(y[2], ni[2], i[1],  ni[0], en);
and y3(y[3], ni[2], i[1],  i[0],  en);
and y4(y[4], i[2],  ni[1], ni[0], en);
and y5(y[5], i[2],  ni[1], i[0],  en);
and y6(y[6], i[2],  i[1],  ni[0], en);
and y7(y[7], i[2],  i[1],  i[0],  en);

endmodule