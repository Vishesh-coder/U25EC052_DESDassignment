module not_tb();
reg a;
wire y;

not_gate uut(
    .a(a),
    .y(y)
);

initial begin
    a = 1'b0;
    #10 a = 1'b1;

    #10 $finish;
end

endmodule