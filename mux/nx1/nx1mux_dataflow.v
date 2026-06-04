module nx1_mux #(
    parameter select = 4,
    parameter n = 2 ** select
)(
    input [n-1:0] i,
    input [select-1:0] s,
    output y
);

assign y = i[s];

endmodule