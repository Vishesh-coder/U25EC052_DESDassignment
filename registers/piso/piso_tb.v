module piso_tb;
reg [3:0] i;
reg clk, load;
wire q;

piso uut(
    .i(i),
    .clk(clk),
    .load(load),
    .q(q)
);

always begin
    #10 clk = ~clk;
end

initial begin
    i = 4'b0000; clk = 1'b0; load = 1'b0;
    #10 i = 4'b1101; load = 1'b1;
    #20 load = 1'b0;

    #100 $finish;
end

endmodule