module tb_shift_register_parallel_load;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] parallel_in;
    wire [3:0] q;
    shift_register_parallel_load dut (.clk(clk), .rst(rst), .load(load), .parallel_in(parallel_in), .q(q));
    initial begin
        clk = 0; rst = 1; load = 0; parallel_in = 4'b0000;
        #10 rst = 0; load = 1; parallel_in = 4'b1010; 
        #10 clk = 1; #10 clk = 0; 
        #10 load = 0; 
        #10 clk = 1; #10 clk = 0; 
        #10 $finish;
    end
    always #5 clk = ~clk; 
endmodule
