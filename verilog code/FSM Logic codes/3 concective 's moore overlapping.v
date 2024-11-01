module cons_3_ones_moore(
    input clk,
    input rst,
    input x,
    output reg z
);
   parameter S0 = 2'b00; 
   parameter S1 = 2'b01; 
   parameter S2 = 2'b10;  
   parameter S3 = 2'b11;   
  reg[1:0] state_t;
    state_t state, next_state;
    always @(posedge clk or negedge rst) begin
        if (!rst)
            state <= S0;  
        else
            state <= next_state;  
    end
    always @(*) begin
        case(state)
            S0: begin
                if (x)
                    next_state = S1;
                else
                    next_state = S0;
                z = 0;  
            end
            
            S1: begin
                if (x)
                    next_state = S2;
                else
                    next_state = S0;
                z = 0;  
            end
            
            S2: begin
                if (x)
                    next_state = S3;
                else
                    next_state = S0;
                z = 0;  
            end
            
            S3: begin
                if (x)
                    next_state = S3;  
                else
                    next_state = S0;
                z = 1; 
            end
            
            default: begin
                next_state = S0; 
                z = 0; 
            end
        endcase
    end
endmodule
