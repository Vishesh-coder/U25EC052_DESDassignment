module carry_look_ahead_tb;
parameter n = 16;

reg [n-1:0] a;
reg [n-1:0] b;
reg cin;
wire [n-1:0] y;
wire cout;

carry_look_ahead #(
    .n(n)
) uut(
    .a(a),
    .b(b),
    .cin(cin),
    .y(y),
    .cout(cout)
);

initial begin
    a = 16'b0000_0000_0000_0000; b = 16'b0000_0000_0000_0000; cin = 1'b0;
    #10 a = 16'b0001_0111_1010_0100; b = 16'b0010_1000_0110_0100;
    #10 a = 16'b0101_0111_1010_0110; b = 16'b0110_1000_0110_0110;
    #10 a = 16'b0011_0011_1000_1100; b = 16'b1010_1010_0110_0101;
    #10 a = 16'b1101_0100_1011_0110; b = 16'b0110_1011_0110_0110; cin = 1'b1;
    #10 a = 16'b1111_1111_1111_1111; b = 16'b1111_1111_1111_1111; cin = 1'b1;

    #10 $finish;

end

endmodule