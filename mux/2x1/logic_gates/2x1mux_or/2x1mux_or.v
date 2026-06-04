module mux_or(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? 1'b1 : a;
end

endmodule