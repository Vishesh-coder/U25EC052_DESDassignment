module sync_count(
    input m, clk, rst,
    output [3:0] q
);

wire [1:0] o0, o1, o2, o3;
wire mux1, mux2; 
wire t1, t2, t3;       

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
    .y(t1)
);

t_ff q1(
    .clk(clk), 
    .clr(rst), 
    .pre(1'b1),
    .t(t1),
    .q(o1[0]), 
    .qbar(o1[1])
);

twoxone_mux m1(
    .i(o1), 
    .s(m), 
    .y(mux1)
);
assign t2 = mux1 & t1; 

t_ff q2(
    .clk(clk), 
    .clr(rst), 
    .pre(1'b1),
    .t(t2),
    .q(o2[0]), 
    .qbar(o2[1])
);

twoxone_mux m2(
    .i(o2), 
    .s(m), 
    .y(mux2)
);
assign t3 = mux2 & t2; 

t_ff q3(
    .clk(clk), 
    .clr(rst), 
    .pre(1'b1),
    .t(t3),
    .q(o3[0]), 
    .qbar(o3[1])
);

assign q = {o3[0], o2[0], o1[0], o0[0]};

endmodule