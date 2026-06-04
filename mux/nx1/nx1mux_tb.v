module nx1_mux_tb(
    parameter select = 4,
    parameter n = 2 ** select
);

reg [n-1:0] i;
reg [select-1:0] s;
wire y;

endmodule