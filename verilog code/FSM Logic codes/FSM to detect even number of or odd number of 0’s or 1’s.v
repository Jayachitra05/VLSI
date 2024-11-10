module even_odd_fsm (
    input clk,
    input reset,
    input in,               
    output reg even_0s,     
    output reg even_1s      
);
    parameter S00 = 2'b00; 
    parameter S01 = 2'b01; 
    parameter S10 = 2'b10;
    parameter S11 = 2'b11; 
    reg [1:0] state, next_state;
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S00;    
        else
            state <= next_state;
    end
    always @(*) begin
        case (state)
            S00: next_state = (in == 0) ? S10 : S01;
            S01: next_state = (in == 0) ? S11 : S00;
            S10: next_state = (in == 0) ? S00 : S11;
            S11: next_state = (in == 0) ? S01 : S10;
            default: next_state = S00;
        endcase
    end
    always @(*) begin
        case (state)
            S00: begin
                even_0s = 1;
                even_1s = 1;
            end
            S01: begin
                even_0s = 1;
                even_1s = 0;
            end
            S10: begin
                even_0s = 0;
                even_1s = 1;
            end
            S11: begin
                even_0s = 0;
                even_1s = 0;
            end
            default: begin
                even_0s = 1;
                even_1s = 1;
            end
        endcase
    end
endmodule
