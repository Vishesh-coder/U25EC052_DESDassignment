module threexeightdecoder(
    input en,
    input [2:0] i,
    output [7:0] y
);

assign y[0] = en & (~i[2] & ~i[1] & ~i[0]);
assign y[1] = en & (~i[2] & ~i[1] & i[0]);
assign y[2] = en & (~i[2] & i[1] & ~i[0]);
assign y[3] = en & (~i[2] & i[1] & i[0]);
assign y[4] = en & (i[2] & ~i[1] & ~i[0]);
assign y[5] = en & (i[2] & ~i[1] & i[0]);
assign y[6] = en & (i[2] & i[1] & ~i[0]);
assign y[7] = en & (i[2] & i[1] & i[0]);

endmodule