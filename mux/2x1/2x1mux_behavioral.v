module twoxone_mux(
    input [1:0] i,
    input s,
    output reg y
);

always @(*) begin
    case(s)
        1'b0: y = i[0];
        1'b1: y = i[1];
    endcase
end

endmodule