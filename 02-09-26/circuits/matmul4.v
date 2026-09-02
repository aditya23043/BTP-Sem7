module matmul4 (
    input  signed [15:0] a [0:3][0:3],
    input  signed [15:0] b [0:3][0:3],
    output signed [31:0] c [0:3][0:3]
);

    integer i, j, k;
    reg signed [63:0] acc;

    always @(*) begin
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = j + 1) begin
                acc = 0;

                for (k = 0; k < 4; k = k + 1)
                    acc = acc + a[i][k] * b[k][j];

                c[i][j] = acc[31:0];
            end
        end
    end

endmodule
