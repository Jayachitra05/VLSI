
/*16. Write a test bench to test the dynamic array data type and its predefined methods by using
the following statements
a. declare two dynamic arrays d1, d of type int
b. initialize d array elements with (9,1,8,3,4,4)
c. allocate six elements in array d1
d. initialize array d1 with index as its value
e. display d1 and its size
f. delete array d1
g. reverse, sort, reverse sort, and shuffle the array d*/

module test_dynamic_array;
  int d1[];
  int d[];

  initial begin
    d = new[6];
    d = '{9, 1, 8, 3, 4, 4};
    $display("Initial d array: %p", d);

    d1 = new[6];
    foreach (d1[i]) begin
      d1[i] = i;
    end
    $display("Array d1: %p", d1);
    $display("Size of d1: %0d", d1.size());

    d1.delete();
    $display("After deleting d1, its size is: %0d", d1.size());

    d.reverse();
    $display("Array d after reverse: %p", d);

    d.sort();
    $display("Array d after sort (ascending): %p", d);

    d.rsort();
    $display("Array d after sort (descending): %p", d);
  end
endmodule

/*Output
Initial d array: '{9, 1, 8, 3, 4, 4}
Array d1: '{0, 1, 2, 3, 4, 5}
Size of d1: 6
After deleting d1, its size is: 0
Array d after reverse: '{4, 4, 3, 8, 1, 9}
Array d after sort (ascending): '{1, 3, 4, 4, 8, 9}
Array d after sort (descending): '{9, 8, 4, 4, 3, 1}*/
