class transaction;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] m_data);
    $display("inside constructor");
    data = m_data;
  endfunction
endclass

module class_example;
  initial begin
    transaction tr = new(10);
    $display("Value of data = %0h", tr.data);
  end
endmodule
/*output
# KERNEL: Value of data = a*/
