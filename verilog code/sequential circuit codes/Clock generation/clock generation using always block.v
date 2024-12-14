module gen_clk();
  reg clk;
  integer no_of_clk;
  
  initial begin
    clk=0;
    no_of_clk=0;
  end
  
  always #2 clk = ~clk;
  
  always@(posedge clk)
    no_of_clk = no_of_clk + 1;
  
  initial begin
    $monitor($time, "clock = %d",clk);
    #100 $display("No. of clock cycles = %d",no_of_clk);
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
endmodule
