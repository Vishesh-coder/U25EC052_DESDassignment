module onexn_demux_tb;
parameter out = 8;
parameter select = $clog2(out);

reg i;
reg [select-1:0] s;
wire [out-1:0] y;

onexn_demux #(
    .select(select),
    .out(out)
) uut (
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    i = 1'b0; s = 3'b000;
    #10 i = 1'b1;
    #10 s = 3'b010;
    #10 s = 3'b101;
    #10 s = 3'b110;
    #10 s = 3'b111;
    #10 i = 1'b0;

    #10 $finish;
end

endmodule