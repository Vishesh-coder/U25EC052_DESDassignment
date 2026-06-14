module booth_mul(
    input signed [3:0] a, b,
    output reg signed [7:0] y
);

reg signed [3:0] A, Q, M;
reg Q_1;
integer i;

always @(*) begin
    Q = a;
    M = b;
    A = 4'b0000;
    Q_1 = 1'b0;

    for (i = 0; i < 4; i = i + 1) begin
        case({Q[0], Q_1})
            2'b01: A = A + M;
            2'b10: A = A - M;
            default: A = A;
        endcase

        {A, Q, Q_1} = {A[3], A[3:1], A[0], Q[3:1], Q[0]};

    end

    y = {A, Q};

end

endmodule