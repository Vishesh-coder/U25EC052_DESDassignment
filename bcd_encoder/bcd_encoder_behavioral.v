module bcd_encoder(
    input [3:0] b,
    output reg [7:0] d
);

always @(*) begin
    if(b >= 4'd10) begin
        d[7:4] = 4'd1;
        d[3:0] = b - 4'd10;
    end

    else begin
        d[7:4] = 4'd0;
        d[3:0] = b;
    end
end

endmodule