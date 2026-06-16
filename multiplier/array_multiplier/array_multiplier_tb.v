module array_mul_tb();
reg [3:0] a;
reg [3:0] b;
wire [7:0] y;

array_mul uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    a = 4'd0; b = 4'd0;
    #10 a = 4'd2; b = 4'd8;
    #10 a = 4'd15; b = 4'd8;
    #10 a = 4'd15; b = 4'd15;
    #10 a = 4'd15; b = 4'd17;

    #20 $finish;

end

endmodule