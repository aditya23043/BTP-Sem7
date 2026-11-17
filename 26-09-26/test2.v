module test2 (
    input  a, b, c,
    output y
);

    assign y = (b & c) | (c & a) | (a & b);

endmodule
