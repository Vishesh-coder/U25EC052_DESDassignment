module btn_debounce(
    input i, clk,
    output reg y = 0
);

reg [19:0] count = 0;

always @(negedge clk) begin
    if (!i) begin
        count <= 0;
        y <= 1'b0;
    end else if (count < 20'd1_000_000) begin
        count <= count + 1;
    end else begin
        y <= 1'b1;
    end
end

endmodule