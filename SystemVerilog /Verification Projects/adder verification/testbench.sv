// Code your testbench here
// or browse Examples
`include"interface.sv"
`include"test.sv"
module add_tb;
  adder_test test;
  mailbox mail;
  adder_if intf();
  adder dut(.a(intf.a),.b(intf.b),.y(intf.y));
  initial begin
    mail = new();
    test=new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
  initial begin
    $monitor(" Testbench:Time=%0t,a=%0d, b=%0d,y=%0d",$time,intf.a,intf.b,intf.y);
  end
endmodule
    
