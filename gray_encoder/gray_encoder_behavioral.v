module gray_encoder(
    input [3:0] b,
    output reg [3:0] g
);

integer i;

always @(*) begin
    g[3] = b[3];

    for (i = 2; i >= 0; i = i - 1) begin
        g[i] = b[i+1] ^ b[i];
    end
end

endmodule