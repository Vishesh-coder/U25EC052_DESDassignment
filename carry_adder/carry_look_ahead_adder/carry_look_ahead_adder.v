module carry_look_ahead #(
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

genvar i;
generate
    for (i = 0; i < n; i = i + 1) begin
        assign c[i+1] = g[i] | (p[i] & c[i]);
    end
endgenerate

assign cout = c[n];
assign y = p ^ c[n-1:0];

endmodule