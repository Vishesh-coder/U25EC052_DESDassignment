module twoxfourdecoder_tb();
reg en;
reg [1:0] i;
wire [3:0] y;

twoxfourdecoder uut(
    .en(en),
    .i(i),
    .y(y)
);

initial begin
    i = 2'b00; en =1'b1;
    #10 i = 2'b01;
    #10 i = 2'b10;
    #10 i = 2'b11;

    #20 $finish;
end

endmodule