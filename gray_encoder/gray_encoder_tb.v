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
    #10 b = 4'b1110;
    #10 b = 4'b0111;
    #10 b = 4'b1010;
    #10 b = 4'b1111;

    #10 $finish;
end

endmodule