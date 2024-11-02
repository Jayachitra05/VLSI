module shift_register_parallel_load (
    input clk,
    input rst,
    input load,
    input [3:0] parallel_in,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else if (load) 
            q <= parallel_in; 
        else 
            q <= {q[2:0], 1'b0}; 
    end
endmodule
