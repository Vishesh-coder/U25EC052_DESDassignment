module onextwo_demux(
    input i,s,
    output reg [1:0] y
);

always @(*) begin
    y = 2'b00;
    case(s)
        1'b0: y[0] = i;
        1'b1: y[1] = i;
        default: begin
            y = 2'b00;
        end
    endcase
end

endmodule