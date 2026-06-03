module fourxtwoencoder_tb();
reg [3:0] i;
wire [1:0] y;
wire v;

fourxtwoencoder uut(
    .i(i),
    .y(y),
    .v(v)
);

initial begin
    i = 4'b0000;
    #10 i = 4'b0001;
    #10 i = 4'b0010;
    #10 i = 4'b0100;
    #10 i = 4'b1000;

    #20 $finish;
end

endmodule