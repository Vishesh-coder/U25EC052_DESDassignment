module onexn_mux #(
    parameter select = 4,
    parameter out = 2 ** select
)(
    input i,
    input [select-1:0] s,
    output reg [out-1:0] y
);



endmodule