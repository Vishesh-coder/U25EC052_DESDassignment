module mux_nand(
    input a, b,
    output reg y
);

always @(*) begin
    y = b ? ~a : 1'b1;
end

endmodule