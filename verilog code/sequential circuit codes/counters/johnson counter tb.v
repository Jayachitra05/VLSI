module tb_johnson_counter;
    reg clk;
    reg rst;
    wire [3:0] count;
    johnson_counter dut (.clk(clk),.rst(rst),.count(count));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        rst = 1;
        #10;    
        rst = 0; 
        #100; 
        rst = 1;
        #10; 
        rst = 0;
        #50; 
        #20; 
        $finish;
    end
    initial begin
        $monitor("Time: %0t | rst: %b | count: %b",$time, rst, count);
    end

endmodule
