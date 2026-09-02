module barrel_shifter (
    input  [31:0] a,
    input  [4:0]  shamt,
    input         right,
    input         arithmetic,
    output [31:0] y
);

    wire [31:0] s1, s2, s4, s8, s16;

    assign s1  = shamt[0] ? (right ? (arithmetic ? {{1{a[31]}},a[31:1]} : {1'b0,a[31:1]}) : {a[30:0],1'b0}) : a;
    assign s2  = shamt[1] ? (right ? (arithmetic ? {{2{s1[31]}},s1[31:2]} : {2'b0,s1[31:2]}) : {s1[29:0],2'b0}) : s1;
    assign s4  = shamt[2] ? (right ? (arithmetic ? {{4{s2[31]}},s2[31:4]} : {4'b0,s2[31:4]}) : {s2[27:0],4'b0}) : s2;
    assign s8  = shamt[3] ? (right ? (arithmetic ? {{8{s4[31]}},s4[31:8]} : {8'b0,s4[31:8]}) : {s4[23:0],8'b0}) : s4;
    assign s16 = shamt[4] ? (right ? (arithmetic ? {{16{s8[31]}},s8[31:16]} : {16'b0,s8[31:16]}) : {s8[15:0],16'b0}) : s8;

    assign y = s16;

endmodule
