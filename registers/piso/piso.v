module piso(
    input [3:0] i,
    input clk, load,
    output reg q
);

reg [3:0] shift = 4'b0000;

always @(negedge clk) begin
    if(load) shift <= i;
    else shift <= shift >> 1;
end

always @(*) begin
    q = shift[0];
end

endmodule