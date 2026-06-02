module xor_gate (
    input a,b,
    output y
);

wire w1, w2, w3, w4;

nand g1(w1, a, b);
nand g2(w2, a, w1);
nand g3(w3, b, w1);
nand g4(y, w2, w3);
    
endmodule