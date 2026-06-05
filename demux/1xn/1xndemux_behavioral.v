module onexn_demux #(
    parameter select = 3,
    parameter out = 2 ** select
)(
    input i,
    input [select-1:0] s,
    output reg [out-1:0] y
);

always @(*) begin
    y[s] = i;
end

endmodule