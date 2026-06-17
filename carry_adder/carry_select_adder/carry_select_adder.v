module carry_select #(
    parameter n = 16
)(
    input [n-1:0] a,b,
    input cin,
    output [n-1:0] y,
    output cout
);

wire [n:0] c0;
wire [n-1:0] s0;
wire [n:0] c1;
wire [n-1:0] s1;

wire [n:0] s_c;
assign s_c[0] = cin;
assign cout = s_c[n];

assign c0[0] = 1'b0;
assign c1[0] = 1'b1;

genvar i;

generate
    for(i = 0; i < n; i = i + 1) begin
        fa fa_unit0(
            .a(a[i]),
            .b(b[i]),
            .cin(c0[i]),
            .y(s0[i]),
            .cout(c0[i+1])
        );
        fa fa_unit1(
            .a(a[i]),
            .b(b[i]),
            .cin(c1[i]),
            .y(s1[i]),
            .cout(c1[i+1])
        );

        twoxone_mux mux_cout(
            .i({c1[i+1], c0[i+1]}),
            .s(s_c[i]),
            .y(s_c[i+1])
        );

        twoxone_mux mux_sum(
            .i({s1[i], s0[i]}),
            .s(s_c[i]),
            .y(y[i])
        );
    end
endgenerate

endmodule