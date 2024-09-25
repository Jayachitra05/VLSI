module tb_top;
  reg a, b;
  wire s, c;
  
  half_adder ha(a, b, s, c);
  
  initial begin
    $monitor("At time %0t: a=%b b=%b, sum=%b, carry=%b",$time, a,b,s,c);
    a = 0; b = 0;
    #1;
    a = 0; b = 1;
    #1;
    a = 1; b = 0;
    #1;
    a = 1; b = 1;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
   end
endmodule
