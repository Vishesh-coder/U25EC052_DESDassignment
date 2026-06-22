module carry_skip #(
    parameter n = 16
)(
    input [n-1:0] a,b,
    input cin,
    output [n-1:0] y,
    output cout
);

wire [n:0] c;
wire [n-1:0] p;
wire [n-1:0] g;

assign c[0] = cin;
assign p = a ^ b;
assign g = a & b;

genvar j;
generate
    for (j = 0; j < n; j = j + 4) begin
        wire co, and_block;

        assign c[j+1] = g[j]   | (c[j]   & p[j]);
        assign c[j+2] = g[j+1] | (c[j+1] & p[j+1]);
        assign c[j+3] = g[j+2] | (c[j+2] & p[j+2]);
        assign co     = g[j+3] | (c[j+3] & p[j+3]);

        assign and_block = p[j] & p[j+1] & p[j+2] & p[j+3];

        twoxone_mux mux (
            .i({c[j], co}), 
            .s(and_block),
            .y(c[j+4])
        );
    end
endgenerate

assign cout = c[n];
assign y = p ^ c[n-1:0];

endmodule