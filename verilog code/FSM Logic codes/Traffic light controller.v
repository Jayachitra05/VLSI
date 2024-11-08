module traffic_light_controller(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);
    parameter RED = 2'b00;
    parameter GREEN = 2'b01;
    parameter YELLOW = 2'b10;

    reg [1:0] state, next_state;
    integer count;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= RED;
            count <= 0;
        end else begin
            state <= next_state;
            if ((state == RED && count == 29) ||
                (state == GREEN && count == 59) ||
                (state == YELLOW && count == 9)) begin
                count <= 0;  
            end else begin
                count <= count + 1;
            end
        end
    end
    always @(*) begin
        case (state)
            RED:    next_state = (count == 29) ? GREEN : RED;
            GREEN:  next_state = (count == 59) ? YELLOW : GREEN;
            YELLOW: next_state = (count == 9) ? RED : YELLOW;
            default: next_state = RED;
        endcase
    end
    always @(*) begin
        red = (state == RED);
        green = (state == GREEN);
        yellow = (state == YELLOW);
    end

endmodule
