module onexsixteen_demux(
    input i,
    input [3:0] s,
    output reg [15:0] y
);

task demux;
    input inp;
    input [3:0] select;
    output reg [15:0] out;

    begin
        out = 0;
        out[select] = inp;
    end

endtask

always @(*) begin
    demux(i, s, y);
end

endmodule