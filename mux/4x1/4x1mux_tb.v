module fourxone_mux_tb();
reg [3:0] i;
reg [1:0] s;
wire y;

fourxone_mux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    s = 2'b00; i = 4'b0000;
    #10 i = 4'b0001;
    #10 i = 4'b0110;

    #10 s = 2'b01; i = 4'b0100;
    #10 i = 4'b0111;
    #10 i = 4'b0011;

    #10 s = 2'b10; i = 4'b0101;
    #10 i = 4'b1101;
    #10 i = 4'b1010;

    #10 s = 2'b11; i = 4'b1110;
    #10 i = 4'b0100;
    #10 i = 4'b1111;

    #10 $finish;
end

endmodule