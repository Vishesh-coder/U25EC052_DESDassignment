module onexfour_demux_tb();
reg i;
reg [1:0] s;
wire [3:0] y;

onexfour_demux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    s = 2'b00; i = 1'b0;
    #10 i = 1'b1;

    #10 s = 2'b01; i = 1'b0;
    #10 i = 1'b1;

    #10 s = 2'b10; i = 1'b0;
    #10 i = 1'b1;

    #10 s = 2'b11; i = 1'b0;
    #10 i = 1'b1;

    #20 $finish;
end

endmodule