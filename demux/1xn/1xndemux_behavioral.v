module onexn_demux #(
    parameter out = 8,
    parameter select = $clog2(out)
)(
    input i,
    input [select-1:0] s,
    output reg [out-1:0] y
);

always @(*) begin
    y = 0;
    y[s] = i;
end

endmodule