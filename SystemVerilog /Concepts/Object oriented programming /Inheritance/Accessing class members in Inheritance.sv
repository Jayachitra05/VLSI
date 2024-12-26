class parent;
  bit [31:0] data;
  bit id;
  function void display();
    $display("Parent : Data = %0h, id = %0h",data,id);
  endfunction
endclass

class child extends parent;
  bit [31:0] data;
  bit id;
  function void display();
    $display("Child : Data = %0h, id = %0h",data,id);
  endfunction
endclass

module tb;
  initial begin
    parent p = new();
    child c = new();
    
    c.data = 200;
    c.id = 3;
    
    p.data = 100;
    p.id = 2;
    
    c.display();
    p.display();
  end
endmodule

/*Output
Child : Data = c8, id = 1
Parent : Data = 64, id = 0*/
