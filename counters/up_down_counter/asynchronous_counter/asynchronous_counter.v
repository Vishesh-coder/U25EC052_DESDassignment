module async_count(
    input m, clk, rst,
    output [3:0] q
);

wire [1:0] o0, o1, o2, o3;
wire mux0, mux1, mux2;        

t_ff q0(
    .clk(clk), 
    .clr(rst), 
    .pre(1'b1),
    .t(1'b1),
    .q(o0[0]), 
    .qbar(o0[1])
);
twoxone_mux m0(
    .i(o0), 
    .s(m), 
    .y(mux0)
);

t_ff q1(
    .clk(mux0), 
    .clr(rst), 
    .pre(1'b1),
    .t(1'b1),
    .q(o1[0]), 
    .qbar(o1[1])
);
twoxone_mux m1(
    .i(o1), 
    .s(m), 
    .y(mux1)
);

t_ff q2(
    .clk(mux1), 
    .clr(rst), 
    .pre(1'b1),
    .t(1'b1),
    .q(o2[0]), 
    .qbar(o2[1])
);
twoxone_mux m2(
    .i(o2), 
    .s(m), 
    .y(mux2)
);

t_ff q3(
    .clk(mux2), 
    .clr(rst), 
    .pre(1'b1),
    .t(1'b1),
    .q(o3[0]), 
    .qbar(o3[1])
);

assign q = {o3[0], o2[0], o1[0], o0[0]};

endmodule