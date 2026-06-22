module ring_counter(
    input clk, ori,
    output reg [3:0] q
);

always @(negedge clk or negedge ori) begin
    if (!ori) begin
        q <= 4'b1000;
    end else begin
        q <= {q[0], q[3:1]};
    end
end

endmodule