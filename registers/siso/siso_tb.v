module siso_tb;
reg i, clk, rst;
wire q;

siso uut(
    .i(i),
    .clk(clk),
    .rst(rst),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    clk = 1'b0; i = 1'b0; rst = 1'b0;
    #5 rst = 1'b1;
    #15 i = 1'b1;
    #20 i = 1'b0;
    #20 i = 1'b1;
    #20 i = 1'b0;

    #100 $finish;
end

endmodule