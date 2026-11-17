module test5 (
    input  x, y, z,
    output a
);

    wire bruh;

    assign bruh = y & z;
    assign a = bruh | (z & x) | (x & y);

endmodule
