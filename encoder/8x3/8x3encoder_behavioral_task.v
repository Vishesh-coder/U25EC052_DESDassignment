module eightxthree_encoder(
    input [7:0] i,
    output reg [2:0] y,
    output reg v
);

task encode;
    input [7:0] inp;
    output [2:0] out;

    begin
        case (inp)
            8'b00000001: out = 3'b000; 
            8'b00000010: out = 3'b001; 
            8'b00000100: out = 3'b010;            
            8'b00001000: out = 3'b011;            
            8'b00010000: out = 3'b100;            
            8'b00100000: out = 3'b101;            
            8'b01000000: out = 3'b110;            
            8'b10000000: out = 3'b111;
            default: out = 3'b000; 
        endcase
    end
    
endtask

always @(*) begin
    if(i == 8'b00000000 || (i & (i - 1)) != 0) begin
        v = 1'b0;
        y = 3'b000;
    end else begin
        v = 1'b1;
        encode(i, y);
    end
end

endmodule