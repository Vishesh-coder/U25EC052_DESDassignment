module onextwo_demux_tb();
reg i,s;
wire [1:0] y;

onextwo_demux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    s = 1'b0; i = 1'b0;
    #10 i = 1'b1;

    #10 s = 1'b1; i = 1'b0;
    #10 i = 1'b1;

    #20 $finish;
end

endmodule