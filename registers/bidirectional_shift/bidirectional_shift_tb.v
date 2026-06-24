module bi_shift_tb;
reg i, m;
reg clk;
wire q;

bi_shift uut(
    .i(i),
    .m(m),
    .clk(clk),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    clk = 1'b0; i = 1'b0; m = 1'b0;

    #20 i = 1'b1;
    #20 i = 1'b0;
    #20 i = 1'b1;
    #20 i = 1'b1;

    #20 m = 1'b1; i = 1'b1;
    #20 i = 1'b0;
    #20 i = 1'b0;
    #20 i = 1'b1;

    #100 $finish;
end

endmodule