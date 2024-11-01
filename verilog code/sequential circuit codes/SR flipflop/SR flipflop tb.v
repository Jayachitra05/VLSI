module tb_sr_flip_flop;
    reg S; 
    reg R; 
    reg clk; 
    wire Q; 
    wire Qn;
    sr_flip_flop uut (.S(S), .R(R),.clk(clk),.Q(Q),.Qn(Qn)  );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        S = 0; R = 0; 
        #10;
        S = 1; R = 0;
        #10;
        S = 0; R = 1; 
        #10;
        S = 1; R = 1; 
        #10;
        S = 0; R = 0;
        #10;
        $finish;
    end
    initial begin
        $monitor("Time: %0t | S: %b | R: %b | Q: %b | Qn: %b", $time, S, R, Q, Qn);
    end
endmodule
