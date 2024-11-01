module tb_dff;
  reg clk;
  reg d;
  wire q,q';
  
  dff_gate_level dff1(d,clk,q,q');
  
  always #2 clk = ~clk;
  initial begin
    clk = 0; //rst_n = 0;
    d = 0;
    //#3 rst_n = 1;
    repeat(6) begin
      d = $urandom_range(0, 1);
      #3;
    end
    $finish;
  end
  initial begin
    $monitor("At time %0t : d=%d,clk=%d,q=%d,q'=%d",$time,d,clk,q,q');
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
endmodule
