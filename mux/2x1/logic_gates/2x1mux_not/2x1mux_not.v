module mux_not(
    input a,
    output reg y
);

always @(*) begin
    y = a ? 1'b0 : 1'b1;
end

endmodule