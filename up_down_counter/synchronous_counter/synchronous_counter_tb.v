module sync_count_tb;
reg m, clk, rst;
wire [3:0] q;

sync_count uut (
    .m(m), 
    .clk(clk), 
    .rst(rst),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    rst = 1'b0; clk = 1'b0; m = 1'b0;
    #10 rst = 1'b1;
    #310 m = 1;
    
    #300 $finish;
end

endmodule