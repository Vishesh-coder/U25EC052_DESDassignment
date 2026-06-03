module fourxtwoencoder(
    input [3:0] i,
    output reg [1:0] y,
    output reg v,
);

always @(*) begin
    case (i)
        4'b0001: begin 
            y = 2'b00; 
            v = 1'b1; 
            end

        4'b0010: begin 
            y = 2'b01; 
            v = 1'b1; 
            end

        4'b0100: begin 
            y = 2'b10; 
            v = 1'b1; 
            end

        4'b1000: begin 
            y = 2'b11; 
            v = 1'b1; 
            end

        default: begin 
            y = 2'b00; 
            v = 1'b0; 
            end

    endcase
end

endmodule