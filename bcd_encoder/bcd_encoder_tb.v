module bcd_encoder_tb();
reg [3:0] b;
wire [7:0] d;

bcd_encoder uut(
    .b(b),
    .d(d)
);

initial begin
    b = 4'b0000;
    #10 b = 4'b0010;
    #10 b = 4'b1010;
    #10 b = 4'b1100;
    #10 b = 4'b1111;

    #20 $finish;
end

endmodule