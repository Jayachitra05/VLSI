
class parent_cls;
  int add;
  function add_int(int a,b);
    add = a+b;
  endfunction
endclass
class child_cls_1 extends parent_cls;
  int sub;
  function sub_int(int a,b);
    sub = a-b;
  endfunction
endclass
class child_cls_2 extends child_cls_1;
  int mul;
  function mul_int(int a,b);
    mul = a*b;
  endfunction
endclass
module class_example;
  child_cls_2 c2 = new();
  
  initial begin
   
    c2.add_int(5,7);
    $display("%0d",c2.add);
    c2.sub_int(5,7);
    $display("%0b",c2.sub);
    c2.mul_int(5,7);
    $display("%0d",c2.mul);
  end
endmodule


/*OUTPUT
12
11111111111111111111111111111110
35
*/
