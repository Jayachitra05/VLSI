module tb_traffic_light_controller;
    reg clk;
    reg reset;
    wire red;
    wire yellow;
    wire green;
  traffic_light_controller dut(.clk(clk),.reset(reset),.red(red),.yellow(yellow),.green(green));
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end
    initial begin
        reset = 1;
        #5;
        reset = 0;
      $monitor("Time=%0t : Red=%b , Yellow=%b , Green=%b ,state=%b", $time, red, yellow, green,dut.state);
        #1000; 
        $stop;
    end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
