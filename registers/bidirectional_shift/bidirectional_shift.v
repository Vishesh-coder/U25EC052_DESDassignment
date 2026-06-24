module bi_shift(
    input i, m, clk,
    output reg q
);

reg [3:0] register = 4'b0000;

always @(negedge clk) begin
    if (!m) begin
        register <= {i, register[3:1]};
    end else begin
        register <= {register[2:0], i};
    end
end

always @(*) begin
    q = register[0]; 
end

endmodule