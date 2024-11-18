module array_locator_methods;
  int arr[9] = '{4, 5, 7, 0, 2, 3, 8, 1, 6};
  int q[$];
  initial begin
    q = arr.find(x) with (x>3);
    $display("find(x) = %p",q);
    q = arr.find_index with (item == 4);
    $display("find index = q[%0d] = 4",q[0]);
    q = arr.find_first with (item < 5 & item >= 3);
    $display ("find first = %p", q);
    q = arr.find_first_index(x) with (x > 5);
    $display ("find first index: %p", q);
    q = arr.find_last with (item <= 7 & item > 3);
    $display ("find last = %p", q);
    q = arr.find_last_index(x) with (x < 3);
    $display ("find last index = %p", q);
  end
endmodule

    
    
