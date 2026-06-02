module and_tb();
reg a,b;
wire y;

and_gate uut(
    .a(a),
    .b(b),
    .y(y)
);

initial begin 
    a=1'b0; b=1'b0;
    #10 a=1'b0; b=1'b1;
    #10 a=1'b1; b=1'b0;
    #10 a=1'b1; b=1'b1;
    #20 $finish;
end


endmodule