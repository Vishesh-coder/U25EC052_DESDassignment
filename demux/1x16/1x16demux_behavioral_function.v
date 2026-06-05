module onexsixteen_demux(
    input i,
    input [3:0] s,
    output reg [15:0] y
);

function [15:0] demux;
    input inp;
    input [3:0] select;

    begin
        demux = (16'd1 << select) * inp;
    end

endfunction

always @(*) begin
    y = demux(i, s);
end

endmodule