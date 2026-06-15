module booth_mul #(
    parameter n = 8
)(
    input signed [n-1:0] a, b,
    output reg signed [2*n-1:0] y
);

reg signed [n-1:0] A, Q, M;
reg Q_1;
integer i;

always @(*) begin
    Q = a;
    M = b;
    A = 0;
    Q_1 = 1'b0;

    for (i = 0; i < n; i = i + 1) begin
        case({Q[0], Q_1})
            2'b01: A = A + M;
            2'b10: A = A - M;
            default: A = A;
        endcase

        {A, Q, Q_1} = $signed({A, Q, Q_1}) >>> 1;

    end

    y = {A, Q};

end

endmodule