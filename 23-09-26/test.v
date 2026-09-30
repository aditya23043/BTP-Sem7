module test (
    input  a, b, c, d,
    output y
);

    assign y = (a & b) | (b & c) | (c & a);

endmodule
