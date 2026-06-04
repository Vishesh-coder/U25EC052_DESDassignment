module priority_encoder(
    input [3:0] i,
    output [1:0] y,
    output v
);

assign y[1] = i[3] | i[2];
assign y[0] = i[3] | (~i[2] & i[1]);
assign v = |i;

endmodule