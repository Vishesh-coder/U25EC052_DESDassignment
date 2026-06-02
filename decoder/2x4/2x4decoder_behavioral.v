module twoxfourdecoder(
    input en,
    input [1:0] i,
    output reg [3:0] y
);

always @(*) begin
    if(en == 1'b1) y = 4'b0001 << i;
    else y = 4'b0000;
end

endmodule