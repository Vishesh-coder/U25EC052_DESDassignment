module twoxone_mux_tb();
reg [1:0] i;
reg s;
wire y;

twoxone_mux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    s = 1'b0; i = 1'b00;
    #10 i = 2'b01;
    #10 i = 2'b10;
    #10 i = 2'b11;
    #10 s = 1'b1; i = 2'b00;
    #10 i = 2'b01;
    #10 i = 2'b10;
    #10 i = 2'b11;

    #10 $finish;
end

endmodule