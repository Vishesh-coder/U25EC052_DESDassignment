module fourxtwoencoder(
    input [3:0] i,
    output [1:0] y,
    output v
);

assign y[0] = i[3] | i[1];
assign y[1] = i[3] | i[2];
assign v = |i;

endmodule