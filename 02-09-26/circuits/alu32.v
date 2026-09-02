module alu32 (
    input  [31:0] a,
    input  [31:0] b,
    input  [3:0]  op,
    output [31:0] y,
    output        carry,
    output        zero
);

    reg [32:0] tmp;

    always @(*) begin
        case (op)
            4'b0000: tmp = {1'b0,a} + {1'b0,b};
            4'b0001: tmp = {1'b0,a} - {1'b0,b};
            4'b0010: tmp = {1'b0,a & b};
            4'b0011: tmp = {1'b0,a | b};
            4'b0100: tmp = {1'b0,a ^ b};
            4'b0101: tmp = {1'b0,~(a ^ b)};
            4'b0110: tmp = {1'b0,a << b[4:0]};
            4'b0111: tmp = {1'b0,a >> b[4:0]};
            4'b1000: tmp = {1'b0,(a < b)};
            default: tmp = 0;
        endcase
    end

    assign y = tmp[31:0];
    assign carry = tmp[32];
    assign zero = (y == 0);

endmodule
