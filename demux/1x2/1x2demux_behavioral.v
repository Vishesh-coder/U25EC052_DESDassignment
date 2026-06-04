module onextwo_demux(
    input i,s,
    output [1:0] y
);

assign y[0] = ~s & i;
assign y[1] = s & i;

endmodule