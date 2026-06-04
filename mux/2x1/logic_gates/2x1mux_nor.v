module mux_nor(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? 1'b0 : ~a;
end

endmodule