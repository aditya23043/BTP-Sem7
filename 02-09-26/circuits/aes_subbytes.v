module aes_subbytes (
    input  [127:0] in,
    output [127:0] out
);

    genvar i;

    generate
        for (i = 0; i < 16; i = i + 1) begin
            aes_sbox sbox (
                .in  (in[i*8 +: 8]),
                .out (out[i*8 +: 8])
            );
        end
    endgenerate

endmodule
