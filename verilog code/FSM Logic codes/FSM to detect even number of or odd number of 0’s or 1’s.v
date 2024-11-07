module fsm_even_odd (
    input clk,
    input reset,
    input a,             
  output reg [3:0] y  
);

    parameter s0 = 4'b1000;
    parameter s1 = 4'b0100; 
    parameter s2 = 4'b0010;
    parameter s3 = 4'b0001;
    reg [3:0] state, next_state;
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= s0;  
        else
            state <= next_state;
    end
    always @(*) begin
        case (state)
            s0: begin
              if (a == 0)
                    next_state = s2;  
                else
                    next_state = s1;   
            end
            s1: begin
              if (a == 0)
                    next_state = s3; 
                else
                    next_state = s0;  
            end
            s2: begin
              if (a == 0)
                    next_state = s0;  
                else
                    next_state = s3;  
            end
            s3: begin
              if (a == 0)
                    next_state = s1;
                else
                    next_state = s2;  
            end
            default: next_state = s0; 
        endcase
    end
    always @(*) begin
        case (state)
            s0: y = 4'b1000;
            s1: y = 4'b0100;
            s2: y = 4'b0010;
            s3: y = 4'b0001;
            default: y = 4'b0000;
        endcase
    end

endmodule
