module bcd_counter_tb;
reg clk, clear;
wire [3:0] q;

bcd_counter uut(
    .clk(clk),
    .clear(clear),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    clk = 1'b0; clear = 1'b1;
    #20 clear = 1'b0;

    #300 $finish;
end

endmodule