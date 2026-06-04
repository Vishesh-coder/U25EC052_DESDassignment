module gray_encoder_tb();
reg [3:0] b;
wire [3:0] g;

gray_encoder uut(
    .b(b),
    .g(g)
);

initial begin
    b = 4'b0000;
    #10 b = 4'b0011;
    #10 b = 4'b1001;
    #10 b = 4'b0110;
    #10 b = 4'b1010;

    #20 $finish;
end

endmodule