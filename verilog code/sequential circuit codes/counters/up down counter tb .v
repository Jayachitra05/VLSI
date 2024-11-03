module tb_up_down_counter;
    reg clk;
    reg rst;
    reg up_down; 
    wire [3:0] count;

    up_down_counter dut (.clk(clk),.rst(rst),.up_down(up_down),.count(count));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        rst = 1;      
        up_down = 1;  
        #10;          
        rst = 0;    
        #100; 
        up_down = 0;
        #50;  
        rst = 1;
        #10; 
        rst = 0;
        up_down = 1;
        #40;  
        #20; 
        $finish;
    end
    initial begin
        $monitor("Time: %0t | rst: %b | up_down: %b | count: %d",$time, rst, up_down, count);
    end

endmodule
