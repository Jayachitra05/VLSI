module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );
     wire [31:0] combined;
    assign combined = {a, b, c, d, e, f, 2'b11};
    assign w = combined[31:24];
    assign x = combined[23:16];
    assign y = combined[15:8];
    assign z = combined[7:0];
endmodule
