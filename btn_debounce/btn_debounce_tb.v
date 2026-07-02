`timescale 1ns / 1ps

module btn_debounce_tb;
reg i, clk;
wire y;

btn_debounce uut(
    .i(i),
    .clk(clk),
    .y(y)
);

always begin
    #5 clk = ~clk;
end

initial begin
    clk = 0; i = 0;

    #100;
    
    i = 1;
    #2000000;
    i = 0;
    
    #1000000;
    
    i = 1;
    #15000000;
    
    i = 0;
    #5000000;

    $finish;
    
end

endmodule