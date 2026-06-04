module mux_xor(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? ~a : a;
end

endmodule