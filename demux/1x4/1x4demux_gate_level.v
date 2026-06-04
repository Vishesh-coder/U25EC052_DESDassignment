module onexfour_demux(
    input i,
    input [1:0] s,
    output [3:0] y
);

wire [1:0] ns;

not n0(ns[0], s[0]);
not n1(ns[1], s[1]);

and o0(y[0], ns[1], ns[0], i);
and o1(y[1], ns[1], s[0], i);
and o2(y[2], s[1], ns[0], i);
and o3(y[3], s[1], s[0], i);

endmodule