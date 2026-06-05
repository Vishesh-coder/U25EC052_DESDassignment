module ha_tb();
reg a,b;
wire sum, cout;

ha uut(
    .a(a),
    .b(b),
    .sum(sum),
    .cout(cout)
);

initial begin
    a = 1'b0; b = 1'b0;
    #10 a = 1'b0; b = 1'b1;
    #10 a = 1'b1; b = 1'b0;
    #10 a = 1'b1; b = 1'b1;

    #20 $finish;
end

endmodule