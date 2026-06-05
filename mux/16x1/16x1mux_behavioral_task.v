module sixteenxone_mux(
    input [15:0] i,
    input [3:0] s,
    output reg y
);
task mux;
    input [15:0] inp;
    input [3:0] select;
    output out;

    begin
        out = inp[select];
    end
    
endtask

always @(*) begin
    mux(i, s, y);
end

endmodule