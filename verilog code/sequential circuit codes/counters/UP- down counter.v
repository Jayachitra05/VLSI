module up_down_counter (
    input clk,
    input rst,
    input up_down, 
    output reg [3:0] count
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 0;
        else
            count <= up_down ? count + 1 : count - 1;
    end
endmodule
