module tb_ring_counter;
    reg clk;               
    reg reset;             
    wire [3:0] q;       
    ring_counter uut(.clk(clk),.reset(reset),.q(q));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        reset = 1;           
        #10 reset = 0;      
        #50;                
        $finish;
    end
    initial begin
        $monitor("Time = %0t, Reset = %b, Output = %b", $time, reset, q);
    end
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars();
  end
endmodule
