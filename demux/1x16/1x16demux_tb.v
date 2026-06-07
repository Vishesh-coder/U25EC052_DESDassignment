module onexsixteen_demux_tb();
reg i;
reg [3:0] s;
wire [15:0] y;

onexsixteen_demux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    i = 1'b0; s = 4'b0000;
    #10 i = 1'b1;
    #10 s = 4'b0110;
    #10 s = 4'b1011;
    #10 s = 4'b1001;
    #10 s = 4'b1110;
    #10 s = 4'b1111;

    #10 $finish;
end

endmodule