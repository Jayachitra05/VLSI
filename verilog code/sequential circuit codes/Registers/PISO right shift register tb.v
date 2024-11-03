module tb_piso_shift_register;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] parallel_in;
    wire serial_out;

  piso_shift_register dut (.clk(clk),.rst(rst),.load(load),.parallel_in(parallel_in),.serial_out(serial_out));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        rst = 1;         
        load = 0;       
        parallel_in = 4'b0000;
        #10;
        rst = 0;
        parallel_in = 4'b1010; 
        load = 1;
        #10;
        load = 0;
        #10;
        #10; 
        #10; 
        #10; 
        parallel_in = 4'b1111; 
        load = 1;
        #10; 
        load = 0; 
        #10; 
        #10; 
        #10; 
        #10; 
        rst = 1;
        #10;
        rst = 0;
        #20;
        $finish;
    end
    initial begin
        $monitor("Time: %0t | rst: %b | load: %b | parallel_in: %b | serial_out: %b", 
                  $time, rst, load, parallel_in, serial_out);
    end

endmodule
