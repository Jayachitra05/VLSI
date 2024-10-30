module gen_clk;
  reg clk; 
  initial begin
    clk=0;
    forever
      #2 clk=~clk;
  end 
  initial begin
    $monitor("At time %t : clock = %d",$time,clk);
    $dumpfile("waves.vcd");
    $dumpvars(0);
    #20 $finish;
  end 
endmodule
