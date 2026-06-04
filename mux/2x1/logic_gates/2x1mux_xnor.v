module mux_xnor(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? a : ~a;
end

endmodule