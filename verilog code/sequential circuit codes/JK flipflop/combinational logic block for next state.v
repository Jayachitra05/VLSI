module JK_FlipFlop_Combi (
    input wire J,
    input wire K,
    input wire clk,
    input wire rst,
    output reg Q,
    output reg Qn
);
    wire next_Q;
    assign next_Q = (J && ~K) ? 1 :
                    (K && ~J) ? 0 :
                    (J && K) ? ~Q : Q;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;
            Qn <= 1;
        end else begin
            Q <= next_Q; 
            Qn <= ~Q;
        end
    end
endmodule
