module eightxthree_encoder(
    input [7:0] i,
    output reg [2:0] y,
    output reg v
);

always @(*) begin
    case (i)
        8'b00000001: begin 
            y = 3'b000; 
            v = 1'b1; 
            end

        8'b00000010: begin 
            y = 3'b001; 
            v = 1'b1; 
            end
            
        8'b00000100: begin 
            y = 3'b010; 
            v = 1'b1; 
            end
            
        8'b00001000: begin 
            y = 3'b011; 
            v = 1'b1; 
            end
            
        8'b00010000: begin 
            y = 3'b100; 
            v = 1'b1; 
            end
            
        8'b00100000: begin 
            y = 3'b101; 
            v = 1'b1; 
            end
            
        8'b01000000: begin 
            y = 3'b110; 
            v = 1'b1; 
            end
            
        8'b10000000: begin 
            y = 3'b111; 
            v = 1'b1; 
            end

        default: begin 
            y = 3'b000; 
            v = 1'b0; 
            end
    endcase
end

endmodule