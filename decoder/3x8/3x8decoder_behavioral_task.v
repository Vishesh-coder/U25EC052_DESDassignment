module threexeightdecoder(
    input en,
    input [2:0] i,
    output reg [7:0] y
);

task decode;
    input enable;
    input [2:0] inp;
    output reg [7:0] out;

    begin
        if(enable) out = 8'b00000001 << inp;
        else out = 8'b00000000; 
    end

endtask

always @(*) begin
    decode(en, i, y);
end

endmodule