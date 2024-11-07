module moore_state_machine (
    input clk,      
    input rst,    
    input A,        
    input B,        
    output reg Y    
);
    parameter S0 = 1'b0;
    parameter S1 = 1'b1;

    reg state, next_state;
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;    
        else
            state <= next_state;
    end
    always @(*) begin
        case (state)
            S0: begin
                if (A)
                    next_state = S1;
                else
                    next_state = S0;
            end
            S1: begin
                if (B)
                    next_state = S0;
                else
                    next_state = S1;
            end
            default: next_state = S0;
        endcase
    end
    always @(*) begin
        case (state)
            S0: Y = 1'b0;
            S1: Y = 1'b1;
            default: Y = 1'b0;
        endcase
    end

endmodule
