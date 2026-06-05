module ha(
    input a, b,
    output reg sum,
    output reg cout
);

always @(*) begin
   sum = a ^ b;
   cout = a & b;
end

endmodule