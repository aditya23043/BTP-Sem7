module lzc32 (
    input  [31:0] x,
    output [5:0]  count
);

    integer i;
    reg found;

    always @(*) begin
        count = 32;
        found = 0;

        for (i = 31; i >= 0; i = i - 1) begin
            if (x[i] && !found) begin
                count = 31 - i;
                found = 1;
            end
        end
    end

endmodule
