module johnson_counter (
    input clk,
    input rst,
    output reg [3:0] count
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 0;
        else
            count <= {count[2:0], ~count[3]};
    end
endmodule
