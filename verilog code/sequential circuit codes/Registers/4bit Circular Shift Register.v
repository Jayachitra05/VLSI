module circular_shift_register (
    input clk,
    input rst,
    input d,
    output reg [3:0] q
);
    always @(posedge clk or posedge rst) begin
        if (rst) 
            q <= 0;
        else 
            q <= {q[2:0], q[3]}; // Circular shift left
    end
    initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
    end
endmodule
