module threexeightdecoder(
    input en,
    input [2:0] i,
    output reg [7:0] y
);

function [7:0] decode;
    input [2:0] inp;

    begin
        decode = 8'b00000001 << inp;
    end

endfunction

always @(*) begin
    if(en) y = decode(i);
    else y = 8'b00000000;
end

endmodule