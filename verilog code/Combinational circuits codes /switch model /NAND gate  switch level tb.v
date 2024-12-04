module  tb;
  reg a,b;
  wire f;
  nand_gate dut(.f(f),.a(a),.b(b));
  initial begin
    a=1'b0;b=1'b0;
    #1 a=1'b0 ;b=1'b1;
     #1 a=1'b1;b=1'b0;
     #1 a=1'b1;b=1'b1;
  end
  initial begin
    $monitor($time, "a=%b,b=%b,f=%b",a,b,f);
  end
   initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
   end
endmodule
