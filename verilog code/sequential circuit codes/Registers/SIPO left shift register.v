module sipo_shift_register (
    input clk,
    input rst,
    input serial_in,
    output reg [3:0] parallel_out
);
    reg [3:0] q;
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else 
            q <= {q[2:0], serial_in}; 
    end
    always @(posedge clk) 
        parallel_out <= q; 
endmodule
