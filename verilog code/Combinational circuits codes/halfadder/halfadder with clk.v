module half_adder (
    input wire a,
    input wire b,
    input wire clk,
    output reg sum,
    output reg carry
);
    always @(posedge clk) begin
        sum   <= a ^ b;       
        carry <= a & b;      
    end
endmodule
