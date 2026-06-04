module priority_encoder(
    input [3:0] i,
    output reg [1:0] y,
    output reg v
);

always @(*) begin
    v = 1'b1;

    if(i[3] == 1'b1) y = 2'b11;
    else if(i[2] == 1'b1) y = 2'b10;
    else if(i[1] == 1'b1) y = 2'b01;
    else if(i[0] == 1'b1) y = 2'b00;

    else begin
        y = 2'b00;
        v = 1'b0;
    end
end

endmodule