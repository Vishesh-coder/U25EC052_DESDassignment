module pattern_counter_tb;
reg clk, rst;
wire [7:0] q;

pattern_counter uut(
    .clk(clk),
    .rst(rst),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    clk = 1'b0; rst = 1'b0;
    #15 rst = 1'b1;
    
    #100 $finish;
end

endmodule