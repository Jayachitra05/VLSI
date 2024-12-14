module clk_gen;
  reg clk;
  initial begin 
    clk = 0;
  end
  always begin
    if(clk)
      #1 clk=1'b0;
    else
      #1 clk=1'b1;
  end
  initial begin
    $monitor("At time %0t : clk = %d",$time,clk);
    $dumpfile("waves.vcd");
    $dumpvars(0);
    #30 $finish;
  end  
endmodule
