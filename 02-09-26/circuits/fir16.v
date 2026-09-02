module fir16 (
    input               clk,
    input               rst,
    input  signed [15:0] x,
    output signed [31:0] y
);

    reg signed [15:0] samples [0:15];
    reg signed [15:0] coeff [0:15];

    integer i;
    reg signed [47:0] acc;

    always @(posedge clk) begin
        if (rst) begin
            for (i = 0; i < 16; i = i + 1)
                samples[i] <= 0;
        end
        else begin
            samples[0] <= x;

            for (i = 1; i < 16; i = i + 1)
                samples[i] <= samples[i-1];
        end
    end

    always @(*) begin
        acc = 0;

        for (i = 0; i < 16; i = i + 1)
            acc = acc + samples[i] * coeff[i];
    end

    assign y = acc[31:0];

endmodule
