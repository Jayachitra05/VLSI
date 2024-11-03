module tb_async_load_shift_register;
    reg clk;
    reg rst;
    reg load;
    reg [3:0] parallel_in;
    wire [3:0] q;
    async_load_shift_register dut (.clk(clk),.rst(rst),.load(load),.parallel_in(parallel_in),.q(q));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        $dumpfile("waves.vcd");
      $dumpvars(0);
        rst = 1;       
        load = 0;    
        parallel_in = 4'b0000; 
        #10;         
        rst = 0;     
        parallel_in = 4'b1010; 
        load = 1;             
        #10;                 
        load = 0;             
        repeat (4) begin
            #10; // Wait for the next clock cycle
        end
        
        // Reset the shift register
        rst = 1;             // Assert reset
        #10;                 // Wait for reset to take effect
        rst = 0;             // Deassert reset

        // Finish the simulation
        $finish;
    end

endmodule

