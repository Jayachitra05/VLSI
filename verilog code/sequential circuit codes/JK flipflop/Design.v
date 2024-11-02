module JK_FlipFlop (
    input wire J,
    input wire K,
    input wire clk,
    input wire rst,
    output reg Q,
    output reg Qn
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Q <= 0;
            Qn <= 1;
        end else begin
            case ({J, K})
                2'b00: ;
                2'b01: begin
                    Q <= 1; 
                    Qn <= 0;
                end
                2'b10: begin
                    Q <= 0;
                    Qn <= 1;
                end
                2'b11: begin
                    Q <= ~Q; 
                    Qn <= ~Qn;
                end
            endcase
        end
    end
endmodule
