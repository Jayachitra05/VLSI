module clk_gen;
  reg clk;
  initial 
    clk=0;
  always #2 clk = clk+1;
  initial begin
    $monitor("At time %0t : clk = %d",$time,clk);
    $dumpfile("waves.vcd");
    $dumpvars(0);
    #30 $finish;
  end  
endmodule
