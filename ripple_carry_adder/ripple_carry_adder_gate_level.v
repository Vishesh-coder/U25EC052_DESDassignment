module ripple_carry_adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

wire c1, c2, c3, w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11, w12;

    xor g1(w1, a[0], b[0]);
    xor g2(w2, a[1], b[1]);
    xor g3(w3, a[2], b[2]);
    xor g4(w4, a[3], b[3]);
    and aa1(w5, a[0], b[0]);
    and aa2(w6, a[1], b[1]);
    and aa3(w7, a[2], b[2]);
    and aa4(w8, a[3], b[3]);
    xor s1(sum[0], w1, cin);
    or o1(c1, w5, w9);
    xor s2(sum[1], w2, c1);
    or o2(c2, w6, w10);
    xor s3(sum[2], w3, c2);
    or o3(c3, w7, w11);
    xor s4(sum[3], w4, c3);
    and a1(w9, w1, cin);
    and a2(w10, w2, c1);
    and a3(w11, w3, c2);
    and a4(w12, w4, c3);
    or o4(cout, w8, w12);

endmodule