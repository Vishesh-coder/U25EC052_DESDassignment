module eightxthree_encoder(
    input [7:0] i,
    output [2:0] y,
    output v
);

assign y[0] = i[7] | i[5] | i[3] | i[1];
assign y[1] = i[7] | i[6] | i[3] | i[2];
assign y[2] = i[7] | i[6] | i[5] | i[4];

assign v = |i;

endmodule