virtual class packet;
  bit [31:0] addr;
endclass
 
class extended_packet extends packet;
  function void display;
    $display("Value of addr = %0d", addr);
  endfunction
endclass 
module virtual_class;
  initial begin
    extended_packet p;
    p = new();
    p.addr = 10;
    p.display();
  end
endmodule
