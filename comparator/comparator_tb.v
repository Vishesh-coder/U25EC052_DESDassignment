module comparator_tb();
reg [1:0] a;
reg [1:0] b;
wire a_equal_b, a_greater_b, a_less_b;

comparator uut(
    .a(a),
    .b(b),
    .a_equal_b(a_equal_b),
    .a_greater_b(a_greater_b),
    .a_less_b(a_less_b)
);

initial begin

    a = 2'b00; b = 2'b00;
    #10 a = 2'b01; b = 2'b10;
    #10 a = 2'b11; b = 2'b01;
    #10 a = 2'b10; b = 2'b10;

    #20 $finish;
end

endmodule