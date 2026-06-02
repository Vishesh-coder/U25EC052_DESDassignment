module comparator(
    input [1:0] a, 
    input [1:0] b,
    output reg a_equal_b, 
    output reg a_greater_b, 
    output reg a_less_b
);

always @(*) begin

a_equal_b = 0;
a_greater_b = 0;
a_less_b = 0;

if(a > b) begin
    a_greater_b = 1;
end else if(a < b) begin
    a_less_b = 1;
end else begin
    a_equal_b = 1;
end

end

endmodule