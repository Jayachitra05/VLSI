module tff_tb;
  reg clk,rst,t;
  wire q,q';
  
  tff_asyn_rst tf(clk,rst,t,q,q');
  
  always #2 clk=~clk;
  
  initial begin
    clk=0;rst=0;
    $display("rst=%d, q=%d, q'=%d",rst,q,q');
    #3 rst=1;
    $display("rst=%d, q=%d, q'=%d",rst,q,q');
    
    drive(0);
    drive(1);
    drive(1);
    drive(1);
    drive(0);
    
    #5;
    $finish;
  end
  
  task drive(input ip);
    begin
      @(posedge clk);
      t=ip;
      #1 $display("T=%d, q=%d, q'=%d",t,q,q');
    end
  endtask
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
endmodule
