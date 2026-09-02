module crc32 (
    input  [63:0] data,
    input  [31:0] crc_in,
    output [31:0] crc_out
);

    reg [31:0] crc;
    integer i;

    always @(*) begin
        crc = crc_in;

        for (i = 0; i < 64; i = i + 1) begin
            if (crc[31] ^ data[i])
                crc = {crc[30:0],1'b0} ^ 32'h04C11DB7;
            else
                crc = {crc[30:0],1'b0};
        end
    end

    assign crc_out = crc;

endmodule
