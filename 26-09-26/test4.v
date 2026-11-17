module test4 (
    input a,
    input b,
    input c,
    input d,
    output y
);

    assign y = (a & b)
                | (b & c)
                | (c & a);

endmodule
