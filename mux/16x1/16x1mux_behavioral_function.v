module sixteenxone_mux(
    input [15:0] i,
    input [3:0] s,
    output reg y
);
function mux;
    input [15:0] inp;
    input [3:0] select;

    begin
        mux = inp[select];
    end
    
endfunction

always @(*) begin
    y = mux(i, s);
end

endmodule