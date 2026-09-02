module priority_encoder64 (
    input  [63:0] in,
    output [5:0]  index,
    output        valid
);

    integer i;
    reg found;

    always @(*) begin
        index = 0;
        found = 0;

        for (i = 63; i >= 0; i = i - 1) begin
            if (in[i] && !found) begin
                index = i;
                found = 1;
            end
        end
    end

    assign valid = |in;

endmodule
