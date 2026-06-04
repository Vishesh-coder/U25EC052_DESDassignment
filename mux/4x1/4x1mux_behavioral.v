module fourxone_mux(
    input [3:0] i,
    input [1:0] s,
    output reg y
);

always @(*) begin
    // if(s == 2'b00) y = i[0];
    // else if(s == 2'b01) y = i[1];
    // else if(s == 2'b10) y = i[2];
    // else y = i[3];

    case(s)
        2'b00: y = i[0];
        2'b01: y = i[1];
        2'b10: y = i[2];
        2'b11: y = i[3];
    endcase
end

endmodule