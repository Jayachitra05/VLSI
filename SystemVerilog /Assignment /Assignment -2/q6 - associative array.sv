/*6. Write a associative array example .explain its functionality.*/

module queue_operations;
  int que_eg[$];

  initial begin
    que_eg = {2, 4, 6, 8};
    $display("Initial queue: %p", que_eg);

    que_eg.insert(0, 1);
    $display("Queue after inserting 1 at the first index: %p", que_eg);

    que_eg.delete(2);
    $display("Queue after deleting element at the third index: %p", que_eg);

    que_eg.push_back(9);
    $display("Queue after inserting 9 as the last element: %p", que_eg);

    que_eg.shuffle();
    $display("Queue after shuffling: %p", que_eg);

    que_eg.reverse();
    $display("Queue after reversing: %p", que_eg);
  end
endmodule

/*Output
assoc_array[apple] = 10
assoc_array[banana] = 20
assoc_array[cherry] = 30
Value associated with 'banana': 20
'cherry' exists in the array with value: 30
After deleting 'apple':
assoc_array[banana] = 20
assoc_array[cherry] = 30*/
