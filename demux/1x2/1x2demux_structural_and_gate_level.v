module onextwo_demux(
    input i,s,
    output [1:0] y
);

wire ns;

not n(ns, s);
and o0(y[0], ns, i);
and o1(y[1], s, i);

endmodule