module mux_not_tb();
reg a;
wire y;

mux_not uut(
    .a(a),
    .y(y)
);

initial begin
    a = 1'b0;
    #10 a = 1'b1;

    #20 $finish;
end

endmodule