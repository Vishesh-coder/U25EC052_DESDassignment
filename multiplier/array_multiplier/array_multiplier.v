module array_mul(
    input [3:0] a,b,
    output [7:0] y
);

wire [3:0] p [0:3];
wire [5:0] s;
wire [10:0] c;

genvar i, j;

generate
    for (i = 0; i < 4; i = i + 1) begin
        for (j = 0; j < 4; j = j + 1) begin
            assign p[i][j] = a[i] & b[j];
        end
    end
endgenerate

assign y[0] = p[0][0];

ha h0r0(
    .a(p[0][1]),
    .b(p[1][0]),
    .s(y[1]),
    .cout(c[0])
);
ha h1r0(
    .a(p[1][1]),
    .b(p[2][0]),
    .s(s[0]),
    .cout(c[1])
);
ha h2r0(
    .a(p[2][1]),
    .b(p[3][0]),
    .s(s[1]),
    .cout(c[2])
);


fa f0r1(
    .a(p[0][2]),
    .b(c[0]),
    .cin(s[0]),
    .s(y[2]),
    .cout(c[3])
);
fa f1r1(
    .a(p[1][2]),
    .b(c[1]),
    .cin(s[1]),
    .s(s[2]),
    .cout(c[4])
);
fa f2r1(
    .a(p[2][2]),
    .b(c[2]),
    .cin(p[3][1]),
    .s(s[3]),
    .cout(c[5])
);


fa f3r2(
    .a(p[0][3]),
    .b(c[3]),
    .cin(s[2]),
    .s(y[3]),
    .cout(c[6])
);
fa f4r2(
    .a(p[1][3]),
    .b(c[4]),
    .cin(s[3]),
    .s(s[4]),
    .cout(c[7])
);
fa f5r2(
    .a(p[2][3]),
    .b(c[5]),
    .cin(p[3][2]),
    .s(s[5]),
    .cout(c[8])
);


ha h3r3(
    .a(c[6]),
    .b(s[4]),
    .s(y[4]),
    .cout(c[9])
);
fa f6r3(
    .a(c[9]),
    .b(c[7]),
    .cin(s[5]),
    .s(y[5]),
    .cout(c[10])
);
fa f7r3(
    .a(c[10]),
    .b(c[8]),
    .cin(p[3][3]),
    .s(y[6]),
    .cout(y[7])
);

endmodule