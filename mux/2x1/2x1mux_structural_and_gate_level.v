module twoxone_mux(
    input [1:0] i,
    input s,
    output y
);

wire ns, w1, w2;

not nots(ns, s);

and g1(w1, ns, i[0]);
and g2(w2, s, i[1]);
or out(y, w1, w2);

endmodule