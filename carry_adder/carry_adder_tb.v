module carry_adder_tb();

reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;

carry_adder uut(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

initial begin

    a=4'b0000; b=4'b0000; cin = 0;
    #10 a=4'b0010; b=4'b0001; cin = 0;
    #10 a=4'b0110; b=4'b0100; cin = 1;
    #10 a=4'b1100; b=4'b0100; cin = 1;
    #10 a=4'b1111; b=4'b1111; cin = 1;

    #20 $finish;

end

endmodule