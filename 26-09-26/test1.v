module test1 (
    input  a, b, c,
    output y
);

    assign y = (a & b) | (b & c) | (c & a);

endmodule
