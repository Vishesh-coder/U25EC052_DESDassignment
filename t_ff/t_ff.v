module t_ff (
    input clk, clr, pre, t,
    output reg q
);

always @(negedge clk or negedge clr or negedge pre) begin
    if (!clr) q <= 1'b0;
    else if (!pre) q <= 1'b1;
    else begin
        if (t) q <= ~q;
    end
end

endmodule