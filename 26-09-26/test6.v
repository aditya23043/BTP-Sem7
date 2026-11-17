module foo(
    input a, b,
    output y
);
    assign y = a & b;
endmodule

module bar(
    input a, b,
    output y
);
    assign y = a | b;
endmodule

module test6(
    input a,b,c,
    output y
);

    wire x1, x2, x3, x4;

    foo f1(.a(a), .b(b), .y(x1));
    foo f2(.a(b), .b(c), .y(x2));
    foo f3(.a(c), .b(a), .y(x3));

    bar b1(.a(x1), .b(x2), .y(x4));
    bar b2(.a(x4), .b(x3), .y(y));

endmodule
