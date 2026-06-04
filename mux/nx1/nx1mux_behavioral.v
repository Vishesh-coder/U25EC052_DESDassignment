module nx1_mux #(
    parameter select = 4,
    parameter n = 2 ** select
)(
    input [n-1:0] i,
    input [select-1:0] s,
    output reg y
);

always @(*) begin
    y = i[s];
end

endmodule