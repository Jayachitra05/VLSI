module tb ;
  reg a, ctrl;
  wire b,c; 
  switch_model mos(a, ctrl, b, c);
  initial begin
    $monitor("At time = %0d: ctrl = %b, a = %b, b = %b, c = %b", $time, ctrl, a, b, c);
    ctrl = 0; a = 0;
    #5 ctrl = 1;
    #5 a = 1;
    #5 ctrl = 0;
    #5 a = 0;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
   end
endmodule
