class transaction;
  bit [31:0] data;
endclass

module class_example;
  transaction tr1, tr2;
  initial begin
    tr1 = new();
    tr1.data =8 ;
    tr2 = tr1;
    $display("tr1.data = %0h", tr1.data);
    $display("tr2.data = %0h", tr2.data);
    
    tr2.data = 10;
    $display("tr1.data = %0h", tr1.data);
    $display("tr2.data = %0h", tr2.data);
  end
endmodule
/*output
# KERNEL: tr1.data = 8
# KERNEL: tr2.data = 8
# KERNEL: tr1.data = a
# KERNEL: tr2.data = a*/
