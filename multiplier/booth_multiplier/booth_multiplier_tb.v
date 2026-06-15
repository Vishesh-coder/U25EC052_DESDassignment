module booth_mul_tb();
parameter n = 8;

reg signed [n-1:0] a;
reg signed [n-1:0] b;
wire signed [2*n-1:0] y;

booth_mul #(
    .n(n)
) uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    a = 8'sd0; b = 8'sd0;
    #10 a = 8'sd25; b = 8'sd45;
    #10 a = -8'sd13; b = 8'sd70;
    #10 a = 8'sd54; b = 8'sd63;
    #10 a = -8'sd4; b = -8'sd9;
    #10 a = 8'sd127; b = 8'sd100;
    #10 a = -8'sd127; b = 8'sd80;
    #10 a = -8'sd260; b = -8'sd40;

    #20 $finish;
end

endmodule