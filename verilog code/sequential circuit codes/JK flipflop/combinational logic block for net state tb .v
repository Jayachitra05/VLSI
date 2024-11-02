module JK_FlipFlop_Combi_TB;
    reg J;         
    reg K;        
    reg clk;       
    reg rst;     
    wire Q;       
    wire Qn;     
    JK_FlipFlop_Combi dut (.J(J),.K(K),.clk(clk),.rst(rst),.Q(Q),.Qn(Qn));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        J = 0;
        K = 0;
        rst = 1;
        #10 rst = 0; 
        J = 0; K = 0;
        #10;
        J = 1; K = 0;
        #10;
        J = 0; K = 1;
        #10;
        J = 1; K = 1;
        #20;
        J = 0; K = 0;
        #10;
        J = 0; K = 1;
        #10;
        $finish;
    end
    initial begin
        $monitor("At time %0t: J=%b, K=%b, Q=%b, Qn=%b", $time, J, K, Q, Qn);
    end
endmodule
