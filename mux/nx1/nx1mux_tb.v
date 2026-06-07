module nx1_mux_tb;
parameter n = 8;
parameter select = $clog2(n);

reg [n-1:0] i;
reg [select-1:0] s;
wire y;

nx1_mux #(
    .select(select),
    .n(n)
) uut (
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    i = 8'b00000000; s = 3'b000;
    #10 i = 8'b10010110;
    #10 s = 3'b001;
    #10 s = 3'b101;
    #10 s = 3'b110;
    #10 s = 3'b010;
    #10 i = 8'b10011111;
    #10 s = 3'b011;
    #10 s = 3'b101;
    #10 s = 3'b110;
    #10 s = 3'b111;

    #10 $finish;
end

endmodule