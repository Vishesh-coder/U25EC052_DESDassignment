module booth_mul_tb();
reg signed [3:0] a;
reg signed [3:0] b;
wire signed [7:0] y;

booth_mul uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    a = 4'sd0; b = 4'sd0;
    #10 a = 4'sd4; b = 4'sd2;
    #10 a = -4'sd3; b = 4'sd7;
    #10 a = 4'sd5; b = 4'sd6;
    #10 a = -4'sd4; b = -4'sd5;
    #10 a = -4'sd7; b = 4'sd8;
    #10 a = -4'sd8; b = -4'sd9;

    #20 $finish;
end

endmodule