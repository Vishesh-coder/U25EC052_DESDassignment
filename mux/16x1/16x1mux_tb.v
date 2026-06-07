module sixteenxone_mux_tb ();
reg [15:0] i;
reg [3:0] s;
wire y;

sixteenxone_mux uut(
    .i(i),
    .s(s),
    .y(y)
);

initial begin
    i = 16'b0000_0000_0000_0000; s = 4'b0000;
    #20 i = 16'b0100_1101_0101_1001; s = 4'b0001;
    #10 s = 4'b0110;
    #10 s = 4'b0010;
    #10 s = 4'b0101;
    #10 s = 4'b1101;
    #10 s = 4'b1001;
    #10 s = 4'b0011;
    #10 s = 4'b1111;

    #10 $finish;
end

endmodule