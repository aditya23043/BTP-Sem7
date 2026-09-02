// N-bit ripple-carry adder built from the existing full_adder module.
// The carry chain (Cout[i] -> Cin[i+1]) is the critical path, and it
// scales linearly with WIDTH -- pick WIDTH so the total delay lands
// comfortably inside the integer-nanosecond range your -D sweep can hit.
//
// Rule of thumb: if a single full_adder's Cin->Cout delay is ~D ns
// (check this with a quick baseline synth of full_adder.v alone),
// a WIDTH-bit RCA's critical path is roughly WIDTH * D ns.
// Pick WIDTH so WIDTH * D covers a few integer -D values you care about
// e.g. if D ~ 0.3ns and you want to sweep -D 2..6, WIDTH=16-24 is a good range.

module rca #(parameter WIDTH = 16) (
    input  [WIDTH-1:0] A,
    input  [WIDTH-1:0] B,
    input              Cin,
    output [WIDTH-1:0] Sum,
    output             Cout
);

    wire [WIDTH:0] carry;
    assign carry[0] = Cin;
    assign Cout = carry[WIDTH];

    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin : bit_stage
            full_adder fa_inst (
                .A    (A[i]),
                .B    (B[i]),
                .Cin  (carry[i]),
                .Sum  (Sum[i]),
                .Cout (carry[i+1])
            );
        end
    endgenerate

endmodule
