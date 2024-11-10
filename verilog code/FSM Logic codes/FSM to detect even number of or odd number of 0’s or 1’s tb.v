module even_odd_fsm_tb;
    reg clk;
    reg reset;
    reg in;
    wire even_0s;
    wire even_1s;
    even_odd_fsm uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .even_0s(even_0s),
        .even_1s(even_1s)
    );
    always #5 clk = ~clk; 
    initial begin
        clk = 0;
        reset = 1;
        in = 0;
        #10 reset = 0;
        #10 in = 0; 
        #10 in = 1; 
        #10 in = 0; 
        #10 in = 1; 
        #10 in = 1; 
        #10 in = 0; 
        #10 $finish;
    end
    initial begin
        $monitor("Time = %0d, clk = %b, reset = %b, in = %b, even_0s = %b, even_1s = %b", $time, clk, reset, in, even_0s, even_1s);
    end

endmodule
