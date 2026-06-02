module threexeightdecoder(
    input en,
    input [2:0] i,
    output reg [7:0] y
);

always @(*) begin
    if(en == 1'b1) y = 4'b00000001 << i;
    else y = 4'b00000000;
end

endmodule