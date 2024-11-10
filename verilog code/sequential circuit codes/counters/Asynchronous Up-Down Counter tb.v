module test_async_up_down_counter;
    reg clk;             
    reg reset;            
    reg up_down;          
    wire [3:0] count;     
    async_up_down_counter uut (
.clk(clk),.reset(reset),.up_down(up_down),.count(count));
    always #5 clk = ~clk;
   initial begin
        $monitor("At time %t: clk = %b, reset = %b, up_down = %b, count = %b", $time, clk, reset, up_down, count);
    end
    initial begin
        clk = 0;
        reset = 0;
        up_down = 1; 
        #10 reset = 1;
        #10 reset = 0; 
        #20 up_down = 1; 
        #20 up_down = 0;  
        #20 up_down = 1;  
        #20 up_down = 0;  
        #50 $stop;
    end
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule
