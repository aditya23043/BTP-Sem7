module popcount64 (
    input  [63:0] x,
    output [6:0]  count
);

    integer i;
    reg [6:0] sum;

    always @(*) begin
        sum = 0;

        for (i = 0; i < 64; i = i + 1)
            sum = sum + x[i];

        count = sum;
    end

endmodule
