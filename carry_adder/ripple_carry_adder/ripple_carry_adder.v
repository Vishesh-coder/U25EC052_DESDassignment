module ripple_carry #(
    parameter n = 16
)(
    input [n-1:0] a,b,
    input cin,
    output [n-1:0] y,
    output cout
);

wire [n:0] c;

assign c[0] = cin;
assign cout = c[n];

genvar i;

generate
    for(i = 0; i < n; i = i + 1) begin
        fa fa_unit(
            .a(a[i]),
            .b(b[i]),
            .cin(c[i]),
            .y(y[i]),
            .cout(c[i+1])
        );
    end
endgenerate

endmodule