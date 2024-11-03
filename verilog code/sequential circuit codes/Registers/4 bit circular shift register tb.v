module tb_circular_shift_register;
    reg clk;
    reg rst;
    reg d;
    wire [3:0] q;
    circular_shift_register dut (.clk(clk),.rst(rst),.d(d),.q(q));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $dumpfile("waves.vcd");
        $dumpvars(0, tb_circular_shift_register);
        rst = 1;
        d = 0;
        #10;
        rst = 0;
        #10; 
        repeat (8) begin
            #10; 
        end
        rst = 1;
        #10;
        rst = 0;
        #50;
        $finish;
    end
endmodule

