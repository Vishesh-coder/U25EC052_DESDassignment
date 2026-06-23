module d_ff (
    input clk, clr, pre, d,
    output reg q
);

always @(negedge clk or negedge clr or negedge pre) begin
    if (!clr) q <= 1'b0;
    else if (!pre) q <= 1'b1;
    else q <= d;
end

endmodule