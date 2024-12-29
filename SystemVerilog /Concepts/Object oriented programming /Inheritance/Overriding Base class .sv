class parent_cls;
  int data;
  function call(int m_data);
    data = m_data;
  endfunction
endclass
class child_cls extends parent_cls;
  int addr;
  function call(int m_data);
    data = m_data +2;
  endfunction
endclass
module class_example;
  child_cls c1 = new();
  initial begin
    c1.call(5);
    $display("%0d",c1.data);
    c1.data = 2;
    $display("%0d",c1.data);
    c1.addr = 6;
    $display("%0d",c1.addr);
    c1.addr = 8;
    $display("%0d",c1.addr);   
  end
endmodule
/*OUTPUT
7
2
6
8
*/
