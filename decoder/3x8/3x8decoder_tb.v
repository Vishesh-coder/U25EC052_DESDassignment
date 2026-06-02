module threexeightdecoder_tb();

reg en;
reg [2:0] i;
wire [7:0] y;

threexeightdecoder uut(
    .en(en),
    .i(i),
    .y(y)
);

initial begin
    i = 3'b000; en =1'b1;
    #10 i = 3'b001;
    #10 i = 3'b010;
    #10 i = 3'b011;
    #10 i = 3'b100;
    #10 i = 3'b101;
    #10 i = 3'b110;
    #10 i = 3'b111;

    #20 $finish;
end

endmodule