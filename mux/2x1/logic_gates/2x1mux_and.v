module mux_and(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? a : 1'b0;
end

endmodule