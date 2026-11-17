module test3 (
    input  a, b, c,
    output y
);

    wire bruh;

    assign bruh = a & b;
    assign y = bruh | (b & c) | (c & a);

endmodule
